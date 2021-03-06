#include "mcc_generated_files/mcc.h"
#include <stdio.h>
#define FCY     (_XTAL_FREQ/2)
#include <libpic30.h>
#include <GenericTypeDefs.h>
#include "modbus.h"

#define DEVICEID 50

mbframestruct askmbframe, reqmbframe;

unsigned short table[100] = {0xABCD, 0xDEAD};
unsigned char bctable[100] = {0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0 ,0 , 0, 1 };
unsigned short amount = 100;

WORD CRC16 (const BYTE *nData, WORD wLength);

#define LOBYTE(w) ((BYTE)(w))
#define HIBYTE(w) ((BYTE)(((WORD)(w) >> 8) & 0xFF))

/*
                         Main application
 */

#define byteswap(toswap) asm("swap %0" : "+r"(toswap))

int Swap(int number)
{
    byteswap(number);
    return number;
}

int MODBUS_WriteBuffer(void *buffer, unsigned int len) {
    int i;
    for (i = len; i; --i)
    {
        while(U2STAbits.UTXBF == 1);
        U2TXREG = *(char*)buffer++;        
    }
    return(len);
}

int main(void)
{
    int numread, i;
    unsigned short mycrc;
    
    // initialize the device
    SYSTEM_Initialize();
    __delay_ms(100);
    printf("Unit ID: %d\r\n", DEVICEID);
   

    while (1)
    {
        numread = UART2_ReadBuffer((uint8_t *)&askmbframe,10);
        if (numread > 0)
        {
            //UART2_WriteBuffer(buffer,number);
            printf("Recieved %d bytes to the buffer\r\n",numread);
            for (i=0; i<numread;i++)
                printf("0x%02X ",((uint8_t *)&askmbframe)[i]);
            printf("\r\n");
            printf("Unit id: %u\r\n", askmbframe.unitid);
            printf("Function code: %d\r\n", askmbframe.fncode);
            for (i=0; i<((numread-2)/2)-1;i++)
                printf("%u ",Swap(askmbframe.data.words[i]));
            printf("\r\n");
            printf("recieved CRC 0x%04X\n\r",askmbframe.data.words[((numread-2)/2)-1]);
            
            if (askmbframe.unitid == DEVICEID)
            {
                printf("device id matches\r\n");
                mycrc = CRC16((unsigned char *)&askmbframe,numread-2);
                printf("calculated CRC 0x%04X\r\n",mycrc);
                
                if (askmbframe.data.words[((numread-2)/2)-1] == mycrc)
                {
                    printf("crc matches\r\n");
                    
                    int firstrequest = 0;
                    int requestnumber = 0;
                    int replylength;
                    switch (askmbframe.fncode) {
                        case 1:
                        case 2:
                            firstrequest = Swap(askmbframe.data.askreadregs.firstreg);
                            printf("Requesting bits starting from: %d\n", firstrequest);
                            requestnumber = Swap(askmbframe.data.askreadregs.regnumber);
                            printf("Number of bits requested: %d\n", requestnumber);
                            askmbframe.data.reqread.bytestofollow = requestnumber / 8;
                            if ((requestnumber % 8)>0)
                                askmbframe.data.reqread.bytestofollow++;
                            replylength = askmbframe.data.reqread.bytestofollow + 3;
                            // fill all requested coil bytes with zeroes
                            for (i = 0; i < askmbframe.data.reqread.bytestofollow;i++)
                                askmbframe.data.reqread.bytes[i] = 0;
                            // fill requested coil in bytes with bits
                            for (i = 0; i < requestnumber;i++)
                                if (firstrequest+i < amount)
                                    if (bctable[firstrequest+i] != 0)
                                        askmbframe.data.reqread.bytes[i/8] = askmbframe.data.reqread.bytes[i/8] | (0x01 << i%8);
                        break;
                        case 3:
                        case 4:
                            firstrequest = Swap(askmbframe.data.askreadregs.firstreg);
                            printf("Requesing register starting from: %d\r\n", firstrequest);
                            requestnumber = Swap(askmbframe.data.askreadregs.regnumber);
                            printf("Number of registers requested: %d\r\n", requestnumber);
                            askmbframe.data.reqread.bytestofollow = requestnumber * 2;
                            replylength = askmbframe.data.reqread.bytestofollow + 3;
                            // fill every requested register with table values
                            for (i = 0; i < requestnumber;i++)
                                if (firstrequest+i < amount)
                                {
                                    askmbframe.data.reqread.bytes[i*2] = HIBYTE(table[firstrequest+i]);
                                    askmbframe.data.reqread.bytes[(i*2)+1] = LOBYTE(table[firstrequest+i]);
                                }
                                else
                                {
                                    askmbframe.data.reqread.bytes[i*2] = 0;
                                    askmbframe.data.reqread.bytes[(i*2)+1] = 0;
                                }
                        break;
                        case 5:
                            if (Swap(askmbframe.data.writereg.regaddress) < amount)
                            {
                                if (askmbframe.data.writereg.regvalue == 0)
                                    bctable[Swap(askmbframe.data.writereg.regaddress)] = 0;
                                else
                                    bctable[Swap(askmbframe.data.writereg.regaddress)] = 1;
                            }
                            break;
                        case 6:
                            if (Swap(askmbframe.data.writereg.regaddress) < amount)
                                table[Swap(askmbframe.data.writereg.regaddress)] = Swap(askmbframe.data.writereg.regvalue);
                            break;
                        case 15:
                            for (i = 0; i<Swap(askmbframe.data.writemultireg.regnumber);i++)
                                if(Swap(askmbframe.data.writemultireg.firstreg)+i < amount)
                                {
                                    if (askmbframe.data.writereg.regvalue == 0)
                                        bctable[Swap(askmbframe.data.writereg.regaddress)] = 0;
                                    else
                                        bctable[Swap(askmbframe.data.writereg.regaddress)] = 1;
                                }
                            break;
                            replylength = 9;
                            break;
                        case 16:
                            for (i = 0; i<Swap(askmbframe.data.writemultireg.regnumber);i++)
                                if(Swap(askmbframe.data.writemultireg.firstreg)+i < amount)
                                    table[Swap(askmbframe.data.writemultireg.firstreg)+i] = Swap(askmbframe.data.writemultireg.registers[i]);
                            replylength = 9;
                            break;
                        break;
                    }

                    printf("replylength %d\r\n",replylength+2);

                    askmbframe.checksum = CRC16((unsigned char *)&askmbframe,replylength);

                    printf("checksum %02X\r\n",askmbframe.checksum);
                    
                    for (i=0; i<replylength;i++)
                        printf("0x%02X ",((uint8_t *)&askmbframe)[i]);
                    printf("\r\n");
                    
                    //_LATF1 = 1;
                    UART2_WriteBuffer((unsigned char *)&askmbframe,replylength);
                    UART2_WriteBuffer((unsigned char *)&askmbframe.checksum,2);
                    //_LATF1 = 0;
                }
                else
                    printf("crc mismatch\r\n");
            }
            else
                printf("device id mismatch\r\n");
        }
        __delay_ms(50);
    }

    return -1;
}
/**
 End of File
*/