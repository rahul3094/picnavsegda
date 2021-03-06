#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-gc010.mk)" "nbproject/Makefile-local-gc010.mk"
include nbproject/Makefile-local-gc010.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=gc010
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ethernet.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ethernet.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED="TCPIP Stack/Announce.c" "TCPIP Stack/ARCFOUR.c" "TCPIP Stack/ARP.c" "TCPIP Stack/AutoIP.c" "TCPIP Stack/BerkeleyAPI.c" "TCPIP Stack/BigInt.c" "TCPIP Stack/Delay.c" "TCPIP Stack/DHCP.c" "TCPIP Stack/DHCPs.c" "TCPIP Stack/DNS.c" "TCPIP Stack/DNSs.c" "TCPIP Stack/DynDNS.c" "TCPIP Stack/ENC28J60.c" "TCPIP Stack/ENCX24J600.c" "TCPIP Stack/ETH97J60.c" "TCPIP Stack/FileSystem.c" "TCPIP Stack/FTP.c" "TCPIP Stack/Hashes.c" "TCPIP Stack/Helpers.c" "TCPIP Stack/HTTP2.c" "TCPIP Stack/ICMP.c" "TCPIP Stack/IP.c" "TCPIP Stack/LCDBlocking.c" "TCPIP Stack/MPFS2.c" "TCPIP Stack/NBNS.c" "TCPIP Stack/Random.c" "TCPIP Stack/Reboot.c" "TCPIP Stack/RSA.c" "TCPIP Stack/SMTP.c" "TCPIP Stack/SNMP.c" "TCPIP Stack/SNMPv3.c" "TCPIP Stack/SNMPv3USM.c" "TCPIP Stack/SNTP.c" "TCPIP Stack/SPIEEPROM.c" "TCPIP Stack/SPIFlash.c" "TCPIP Stack/SPIRAM.c" "TCPIP Stack/SSL.c" "TCPIP Stack/StackTsk.c" "TCPIP Stack/TCP.c" "TCPIP Stack/TCPPerformanceTest.c" "TCPIP Stack/Telnet.c" "TCPIP Stack/TFTPc.c" "TCPIP Stack/Tick.c" "TCPIP Stack/UART.c" "TCPIP Stack/UART2TCPBridge.c" "TCPIP Stack/UDP.c" "TCPIP Stack/UDPPerformanceTest.c" "TCPIP Stack/ZeroconfHelper.c" "TCPIP Stack/ZeroconfLinkLocal.c" "TCPIP Stack/ZeroconfMulticastDNS.c" "TCPIP Stack/MODBUSTCPServer.c" main.c CustomHTTPApp.c GenericTCPClient.c GenericTCPServer.c BerkeleyTCPClientDemo.c BerkeleyTCPServerDemo.c BerkeleyUDPClientDemo.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED="${OBJECTDIR}/TCPIP Stack/Announce.o" "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o" "${OBJECTDIR}/TCPIP Stack/ARP.o" "${OBJECTDIR}/TCPIP Stack/AutoIP.o" "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o" "${OBJECTDIR}/TCPIP Stack/BigInt.o" "${OBJECTDIR}/TCPIP Stack/Delay.o" "${OBJECTDIR}/TCPIP Stack/DHCP.o" "${OBJECTDIR}/TCPIP Stack/DHCPs.o" "${OBJECTDIR}/TCPIP Stack/DNS.o" "${OBJECTDIR}/TCPIP Stack/DNSs.o" "${OBJECTDIR}/TCPIP Stack/DynDNS.o" "${OBJECTDIR}/TCPIP Stack/ENC28J60.o" "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o" "${OBJECTDIR}/TCPIP Stack/ETH97J60.o" "${OBJECTDIR}/TCPIP Stack/FileSystem.o" "${OBJECTDIR}/TCPIP Stack/FTP.o" "${OBJECTDIR}/TCPIP Stack/Hashes.o" "${OBJECTDIR}/TCPIP Stack/Helpers.o" "${OBJECTDIR}/TCPIP Stack/HTTP2.o" "${OBJECTDIR}/TCPIP Stack/ICMP.o" "${OBJECTDIR}/TCPIP Stack/IP.o" "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o" "${OBJECTDIR}/TCPIP Stack/MPFS2.o" "${OBJECTDIR}/TCPIP Stack/NBNS.o" "${OBJECTDIR}/TCPIP Stack/Random.o" "${OBJECTDIR}/TCPIP Stack/Reboot.o" "${OBJECTDIR}/TCPIP Stack/RSA.o" "${OBJECTDIR}/TCPIP Stack/SMTP.o" "${OBJECTDIR}/TCPIP Stack/SNMP.o" "${OBJECTDIR}/TCPIP Stack/SNMPv3.o" "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o" "${OBJECTDIR}/TCPIP Stack/SNTP.o" "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o" "${OBJECTDIR}/TCPIP Stack/SPIFlash.o" "${OBJECTDIR}/TCPIP Stack/SPIRAM.o" "${OBJECTDIR}/TCPIP Stack/SSL.o" "${OBJECTDIR}/TCPIP Stack/StackTsk.o" "${OBJECTDIR}/TCPIP Stack/TCP.o" "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o" "${OBJECTDIR}/TCPIP Stack/Telnet.o" "${OBJECTDIR}/TCPIP Stack/TFTPc.o" "${OBJECTDIR}/TCPIP Stack/Tick.o" "${OBJECTDIR}/TCPIP Stack/UART.o" "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o" "${OBJECTDIR}/TCPIP Stack/UDP.o" "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o" "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o" "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o" "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o" "${OBJECTDIR}/TCPIP Stack/MODBUSTCPServer.o" ${OBJECTDIR}/main.o ${OBJECTDIR}/CustomHTTPApp.o ${OBJECTDIR}/GenericTCPClient.o ${OBJECTDIR}/GenericTCPServer.o ${OBJECTDIR}/BerkeleyTCPClientDemo.o ${OBJECTDIR}/BerkeleyTCPServerDemo.o ${OBJECTDIR}/BerkeleyUDPClientDemo.o
POSSIBLE_DEPFILES="${OBJECTDIR}/TCPIP Stack/Announce.o.d" "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o.d" "${OBJECTDIR}/TCPIP Stack/ARP.o.d" "${OBJECTDIR}/TCPIP Stack/AutoIP.o.d" "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o.d" "${OBJECTDIR}/TCPIP Stack/BigInt.o.d" "${OBJECTDIR}/TCPIP Stack/Delay.o.d" "${OBJECTDIR}/TCPIP Stack/DHCP.o.d" "${OBJECTDIR}/TCPIP Stack/DHCPs.o.d" "${OBJECTDIR}/TCPIP Stack/DNS.o.d" "${OBJECTDIR}/TCPIP Stack/DNSs.o.d" "${OBJECTDIR}/TCPIP Stack/DynDNS.o.d" "${OBJECTDIR}/TCPIP Stack/ENC28J60.o.d" "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o.d" "${OBJECTDIR}/TCPIP Stack/ETH97J60.o.d" "${OBJECTDIR}/TCPIP Stack/FileSystem.o.d" "${OBJECTDIR}/TCPIP Stack/FTP.o.d" "${OBJECTDIR}/TCPIP Stack/Hashes.o.d" "${OBJECTDIR}/TCPIP Stack/Helpers.o.d" "${OBJECTDIR}/TCPIP Stack/HTTP2.o.d" "${OBJECTDIR}/TCPIP Stack/ICMP.o.d" "${OBJECTDIR}/TCPIP Stack/IP.o.d" "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o.d" "${OBJECTDIR}/TCPIP Stack/MPFS2.o.d" "${OBJECTDIR}/TCPIP Stack/NBNS.o.d" "${OBJECTDIR}/TCPIP Stack/Random.o.d" "${OBJECTDIR}/TCPIP Stack/Reboot.o.d" "${OBJECTDIR}/TCPIP Stack/RSA.o.d" "${OBJECTDIR}/TCPIP Stack/SMTP.o.d" "${OBJECTDIR}/TCPIP Stack/SNMP.o.d" "${OBJECTDIR}/TCPIP Stack/SNMPv3.o.d" "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o.d" "${OBJECTDIR}/TCPIP Stack/SNTP.o.d" "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o.d" "${OBJECTDIR}/TCPIP Stack/SPIFlash.o.d" "${OBJECTDIR}/TCPIP Stack/SPIRAM.o.d" "${OBJECTDIR}/TCPIP Stack/SSL.o.d" "${OBJECTDIR}/TCPIP Stack/StackTsk.o.d" "${OBJECTDIR}/TCPIP Stack/TCP.o.d" "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o.d" "${OBJECTDIR}/TCPIP Stack/Telnet.o.d" "${OBJECTDIR}/TCPIP Stack/TFTPc.o.d" "${OBJECTDIR}/TCPIP Stack/Tick.o.d" "${OBJECTDIR}/TCPIP Stack/UART.o.d" "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o.d" "${OBJECTDIR}/TCPIP Stack/UDP.o.d" "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o.d" "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o.d" "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o.d" "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o.d" "${OBJECTDIR}/TCPIP Stack/MODBUSTCPServer.o.d" ${OBJECTDIR}/main.o.d ${OBJECTDIR}/CustomHTTPApp.o.d ${OBJECTDIR}/GenericTCPClient.o.d ${OBJECTDIR}/GenericTCPServer.o.d ${OBJECTDIR}/BerkeleyTCPClientDemo.o.d ${OBJECTDIR}/BerkeleyTCPServerDemo.o.d ${OBJECTDIR}/BerkeleyUDPClientDemo.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/TCPIP\ Stack/Announce.o ${OBJECTDIR}/TCPIP\ Stack/ARCFOUR.o ${OBJECTDIR}/TCPIP\ Stack/ARP.o ${OBJECTDIR}/TCPIP\ Stack/AutoIP.o ${OBJECTDIR}/TCPIP\ Stack/BerkeleyAPI.o ${OBJECTDIR}/TCPIP\ Stack/BigInt.o ${OBJECTDIR}/TCPIP\ Stack/Delay.o ${OBJECTDIR}/TCPIP\ Stack/DHCP.o ${OBJECTDIR}/TCPIP\ Stack/DHCPs.o ${OBJECTDIR}/TCPIP\ Stack/DNS.o ${OBJECTDIR}/TCPIP\ Stack/DNSs.o ${OBJECTDIR}/TCPIP\ Stack/DynDNS.o ${OBJECTDIR}/TCPIP\ Stack/ENC28J60.o ${OBJECTDIR}/TCPIP\ Stack/ENCX24J600.o ${OBJECTDIR}/TCPIP\ Stack/ETH97J60.o ${OBJECTDIR}/TCPIP\ Stack/FileSystem.o ${OBJECTDIR}/TCPIP\ Stack/FTP.o ${OBJECTDIR}/TCPIP\ Stack/Hashes.o ${OBJECTDIR}/TCPIP\ Stack/Helpers.o ${OBJECTDIR}/TCPIP\ Stack/HTTP2.o ${OBJECTDIR}/TCPIP\ Stack/ICMP.o ${OBJECTDIR}/TCPIP\ Stack/IP.o ${OBJECTDIR}/TCPIP\ Stack/LCDBlocking.o ${OBJECTDIR}/TCPIP\ Stack/MPFS2.o ${OBJECTDIR}/TCPIP\ Stack/NBNS.o ${OBJECTDIR}/TCPIP\ Stack/Random.o ${OBJECTDIR}/TCPIP\ Stack/Reboot.o ${OBJECTDIR}/TCPIP\ Stack/RSA.o ${OBJECTDIR}/TCPIP\ Stack/SMTP.o ${OBJECTDIR}/TCPIP\ Stack/SNMP.o ${OBJECTDIR}/TCPIP\ Stack/SNMPv3.o ${OBJECTDIR}/TCPIP\ Stack/SNMPv3USM.o ${OBJECTDIR}/TCPIP\ Stack/SNTP.o ${OBJECTDIR}/TCPIP\ Stack/SPIEEPROM.o ${OBJECTDIR}/TCPIP\ Stack/SPIFlash.o ${OBJECTDIR}/TCPIP\ Stack/SPIRAM.o ${OBJECTDIR}/TCPIP\ Stack/SSL.o ${OBJECTDIR}/TCPIP\ Stack/StackTsk.o ${OBJECTDIR}/TCPIP\ Stack/TCP.o ${OBJECTDIR}/TCPIP\ Stack/TCPPerformanceTest.o ${OBJECTDIR}/TCPIP\ Stack/Telnet.o ${OBJECTDIR}/TCPIP\ Stack/TFTPc.o ${OBJECTDIR}/TCPIP\ Stack/Tick.o ${OBJECTDIR}/TCPIP\ Stack/UART.o ${OBJECTDIR}/TCPIP\ Stack/UART2TCPBridge.o ${OBJECTDIR}/TCPIP\ Stack/UDP.o ${OBJECTDIR}/TCPIP\ Stack/UDPPerformanceTest.o ${OBJECTDIR}/TCPIP\ Stack/ZeroconfHelper.o ${OBJECTDIR}/TCPIP\ Stack/ZeroconfLinkLocal.o ${OBJECTDIR}/TCPIP\ Stack/ZeroconfMulticastDNS.o ${OBJECTDIR}/TCPIP\ Stack/MODBUSTCPServer.o ${OBJECTDIR}/main.o ${OBJECTDIR}/CustomHTTPApp.o ${OBJECTDIR}/GenericTCPClient.o ${OBJECTDIR}/GenericTCPServer.o ${OBJECTDIR}/BerkeleyTCPClientDemo.o ${OBJECTDIR}/BerkeleyTCPServerDemo.o ${OBJECTDIR}/BerkeleyUDPClientDemo.o

# Source Files
SOURCEFILES=TCPIP Stack/Announce.c TCPIP Stack/ARCFOUR.c TCPIP Stack/ARP.c TCPIP Stack/AutoIP.c TCPIP Stack/BerkeleyAPI.c TCPIP Stack/BigInt.c TCPIP Stack/Delay.c TCPIP Stack/DHCP.c TCPIP Stack/DHCPs.c TCPIP Stack/DNS.c TCPIP Stack/DNSs.c TCPIP Stack/DynDNS.c TCPIP Stack/ENC28J60.c TCPIP Stack/ENCX24J600.c TCPIP Stack/ETH97J60.c TCPIP Stack/FileSystem.c TCPIP Stack/FTP.c TCPIP Stack/Hashes.c TCPIP Stack/Helpers.c TCPIP Stack/HTTP2.c TCPIP Stack/ICMP.c TCPIP Stack/IP.c TCPIP Stack/LCDBlocking.c TCPIP Stack/MPFS2.c TCPIP Stack/NBNS.c TCPIP Stack/Random.c TCPIP Stack/Reboot.c TCPIP Stack/RSA.c TCPIP Stack/SMTP.c TCPIP Stack/SNMP.c TCPIP Stack/SNMPv3.c TCPIP Stack/SNMPv3USM.c TCPIP Stack/SNTP.c TCPIP Stack/SPIEEPROM.c TCPIP Stack/SPIFlash.c TCPIP Stack/SPIRAM.c TCPIP Stack/SSL.c TCPIP Stack/StackTsk.c TCPIP Stack/TCP.c TCPIP Stack/TCPPerformanceTest.c TCPIP Stack/Telnet.c TCPIP Stack/TFTPc.c TCPIP Stack/Tick.c TCPIP Stack/UART.c TCPIP Stack/UART2TCPBridge.c TCPIP Stack/UDP.c TCPIP Stack/UDPPerformanceTest.c TCPIP Stack/ZeroconfHelper.c TCPIP Stack/ZeroconfLinkLocal.c TCPIP Stack/ZeroconfMulticastDNS.c TCPIP Stack/MODBUSTCPServer.c main.c CustomHTTPApp.c GenericTCPClient.c GenericTCPServer.c BerkeleyTCPClientDemo.c BerkeleyTCPServerDemo.c BerkeleyUDPClientDemo.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-gc010.mk dist/${CND_CONF}/${IMAGE_TYPE}/ethernet.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GC010
MP_LINKER_FILE_OPTION=,--script=p24FJ128GC010.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/TCPIP\ Stack/Announce.o: TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Announce.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Announce.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/Announce.c"  -o "${OBJECTDIR}/TCPIP Stack/Announce.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Announce.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Announce.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/ARCFOUR.o: TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/ARCFOUR.c"  -o "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/ARP.o: TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ARP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ARP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/ARP.c"  -o "${OBJECTDIR}/TCPIP Stack/ARP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ARP.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ARP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/AutoIP.o: TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/AutoIP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/AutoIP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/AutoIP.c"  -o "${OBJECTDIR}/TCPIP Stack/AutoIP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/AutoIP.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/AutoIP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/BerkeleyAPI.o: TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/BerkeleyAPI.c"  -o "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/BigInt.o: TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/BigInt.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/BigInt.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/BigInt.c"  -o "${OBJECTDIR}/TCPIP Stack/BigInt.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/BigInt.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/BigInt.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/Delay.o: TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Delay.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Delay.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/Delay.c"  -o "${OBJECTDIR}/TCPIP Stack/Delay.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Delay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Delay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/DHCP.o: TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DHCP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DHCP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/DHCP.c"  -o "${OBJECTDIR}/TCPIP Stack/DHCP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DHCP.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DHCP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/DHCPs.o: TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DHCPs.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DHCPs.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/DHCPs.c"  -o "${OBJECTDIR}/TCPIP Stack/DHCPs.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DHCPs.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DHCPs.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/DNS.o: TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DNS.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DNS.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/DNS.c"  -o "${OBJECTDIR}/TCPIP Stack/DNS.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DNS.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DNS.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/DNSs.o: TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DNSs.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DNSs.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/DNSs.c"  -o "${OBJECTDIR}/TCPIP Stack/DNSs.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DNSs.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DNSs.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/DynDNS.o: TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DynDNS.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DynDNS.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/DynDNS.c"  -o "${OBJECTDIR}/TCPIP Stack/DynDNS.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DynDNS.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DynDNS.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/ENC28J60.o: TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ENC28J60.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ENC28J60.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/ENC28J60.c"  -o "${OBJECTDIR}/TCPIP Stack/ENC28J60.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ENC28J60.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ENC28J60.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/ENCX24J600.o: TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/ENCX24J600.c"  -o "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/ETH97J60.o: TCPIP\ Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETH97J60.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETH97J60.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/ETH97J60.c"  -o "${OBJECTDIR}/TCPIP Stack/ETH97J60.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ETH97J60.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ETH97J60.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/FileSystem.o: TCPIP\ Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/FileSystem.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/FileSystem.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/FileSystem.c"  -o "${OBJECTDIR}/TCPIP Stack/FileSystem.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/FileSystem.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/FileSystem.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/FTP.o: TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/FTP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/FTP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/FTP.c"  -o "${OBJECTDIR}/TCPIP Stack/FTP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/FTP.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/FTP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/Hashes.o: TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Hashes.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Hashes.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/Hashes.c"  -o "${OBJECTDIR}/TCPIP Stack/Hashes.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Hashes.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Hashes.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/Helpers.o: TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Helpers.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Helpers.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/Helpers.c"  -o "${OBJECTDIR}/TCPIP Stack/Helpers.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Helpers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Helpers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/HTTP2.o: TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/HTTP2.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/HTTP2.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/HTTP2.c"  -o "${OBJECTDIR}/TCPIP Stack/HTTP2.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/HTTP2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/HTTP2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/ICMP.o: TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ICMP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ICMP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/ICMP.c"  -o "${OBJECTDIR}/TCPIP Stack/ICMP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ICMP.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ICMP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/IP.o: TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/IP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/IP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/IP.c"  -o "${OBJECTDIR}/TCPIP Stack/IP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/IP.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/IP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/LCDBlocking.o: TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/LCDBlocking.c"  -o "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/MPFS2.o: TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/MPFS2.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/MPFS2.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/MPFS2.c"  -o "${OBJECTDIR}/TCPIP Stack/MPFS2.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/MPFS2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/MPFS2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/NBNS.o: TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/NBNS.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/NBNS.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/NBNS.c"  -o "${OBJECTDIR}/TCPIP Stack/NBNS.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/NBNS.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/NBNS.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/Random.o: TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Random.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Random.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/Random.c"  -o "${OBJECTDIR}/TCPIP Stack/Random.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Random.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Random.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/Reboot.o: TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Reboot.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Reboot.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/Reboot.c"  -o "${OBJECTDIR}/TCPIP Stack/Reboot.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Reboot.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Reboot.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/RSA.o: TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/RSA.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/RSA.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/RSA.c"  -o "${OBJECTDIR}/TCPIP Stack/RSA.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/RSA.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/RSA.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/SMTP.o: TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SMTP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SMTP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/SMTP.c"  -o "${OBJECTDIR}/TCPIP Stack/SMTP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SMTP.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SMTP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/SNMP.o: TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNMP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNMP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/SNMP.c"  -o "${OBJECTDIR}/TCPIP Stack/SNMP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SNMP.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SNMP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/SNMPv3.o: TCPIP\ Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNMPv3.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNMPv3.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/SNMPv3.c"  -o "${OBJECTDIR}/TCPIP Stack/SNMPv3.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SNMPv3.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SNMPv3.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/SNMPv3USM.o: TCPIP\ Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/SNMPv3USM.c"  -o "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/SNTP.o: TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNTP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNTP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/SNTP.c"  -o "${OBJECTDIR}/TCPIP Stack/SNTP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SNTP.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SNTP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/SPIEEPROM.o: TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/SPIEEPROM.c"  -o "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/SPIFlash.o: TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SPIFlash.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SPIFlash.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/SPIFlash.c"  -o "${OBJECTDIR}/TCPIP Stack/SPIFlash.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SPIFlash.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SPIFlash.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/SPIRAM.o: TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SPIRAM.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SPIRAM.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/SPIRAM.c"  -o "${OBJECTDIR}/TCPIP Stack/SPIRAM.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SPIRAM.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SPIRAM.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/SSL.o: TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SSL.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SSL.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/SSL.c"  -o "${OBJECTDIR}/TCPIP Stack/SSL.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SSL.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SSL.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/StackTsk.o: TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/StackTsk.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/StackTsk.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/StackTsk.c"  -o "${OBJECTDIR}/TCPIP Stack/StackTsk.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/StackTsk.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/StackTsk.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/TCP.o: TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TCP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TCP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/TCP.c"  -o "${OBJECTDIR}/TCPIP Stack/TCP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/TCP.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/TCP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/TCPPerformanceTest.o: TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/TCPPerformanceTest.c"  -o "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/Telnet.o: TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Telnet.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Telnet.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/Telnet.c"  -o "${OBJECTDIR}/TCPIP Stack/Telnet.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Telnet.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Telnet.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/TFTPc.o: TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TFTPc.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TFTPc.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/TFTPc.c"  -o "${OBJECTDIR}/TCPIP Stack/TFTPc.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/TFTPc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/TFTPc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/Tick.o: TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Tick.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Tick.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/Tick.c"  -o "${OBJECTDIR}/TCPIP Stack/Tick.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Tick.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Tick.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/UART.o: TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UART.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UART.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/UART.c"  -o "${OBJECTDIR}/TCPIP Stack/UART.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/UART.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/UART.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/UART2TCPBridge.o: TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/UART2TCPBridge.c"  -o "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/UDP.o: TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UDP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UDP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/UDP.c"  -o "${OBJECTDIR}/TCPIP Stack/UDP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/UDP.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/UDP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/UDPPerformanceTest.o: TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/UDPPerformanceTest.c"  -o "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/ZeroconfHelper.o: TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/ZeroconfHelper.c"  -o "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/ZeroconfLinkLocal.o: TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/ZeroconfLinkLocal.c"  -o "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/ZeroconfMulticastDNS.o: TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/ZeroconfMulticastDNS.c"  -o "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/MODBUSTCPServer.o: TCPIP\ Stack/MODBUSTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/MODBUSTCPServer.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/MODBUSTCPServer.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/MODBUSTCPServer.c"  -o "${OBJECTDIR}/TCPIP Stack/MODBUSTCPServer.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/MODBUSTCPServer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/MODBUSTCPServer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/CustomHTTPApp.o: CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/CustomHTTPApp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  CustomHTTPApp.c  -o ${OBJECTDIR}/CustomHTTPApp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/CustomHTTPApp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/CustomHTTPApp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/GenericTCPClient.o: GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/GenericTCPClient.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  GenericTCPClient.c  -o ${OBJECTDIR}/GenericTCPClient.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/GenericTCPClient.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/GenericTCPClient.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/GenericTCPServer.o: GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GenericTCPServer.o.d 
	@${RM} ${OBJECTDIR}/GenericTCPServer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  GenericTCPServer.c  -o ${OBJECTDIR}/GenericTCPServer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/GenericTCPServer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/GenericTCPServer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/BerkeleyTCPClientDemo.o: BerkeleyTCPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BerkeleyTCPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/BerkeleyTCPClientDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BerkeleyTCPClientDemo.c  -o ${OBJECTDIR}/BerkeleyTCPClientDemo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/BerkeleyTCPClientDemo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/BerkeleyTCPClientDemo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/BerkeleyTCPServerDemo.o: BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BerkeleyTCPServerDemo.o.d 
	@${RM} ${OBJECTDIR}/BerkeleyTCPServerDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BerkeleyTCPServerDemo.c  -o ${OBJECTDIR}/BerkeleyTCPServerDemo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/BerkeleyTCPServerDemo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/BerkeleyTCPServerDemo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/BerkeleyUDPClientDemo.o: BerkeleyUDPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BerkeleyUDPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/BerkeleyUDPClientDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BerkeleyUDPClientDemo.c  -o ${OBJECTDIR}/BerkeleyUDPClientDemo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/BerkeleyUDPClientDemo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/BerkeleyUDPClientDemo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/TCPIP\ Stack/Announce.o: TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Announce.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Announce.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/Announce.c"  -o "${OBJECTDIR}/TCPIP Stack/Announce.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Announce.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Announce.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/ARCFOUR.o: TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/ARCFOUR.c"  -o "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/ARP.o: TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ARP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ARP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/ARP.c"  -o "${OBJECTDIR}/TCPIP Stack/ARP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ARP.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ARP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/AutoIP.o: TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/AutoIP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/AutoIP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/AutoIP.c"  -o "${OBJECTDIR}/TCPIP Stack/AutoIP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/AutoIP.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/AutoIP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/BerkeleyAPI.o: TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/BerkeleyAPI.c"  -o "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/BigInt.o: TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/BigInt.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/BigInt.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/BigInt.c"  -o "${OBJECTDIR}/TCPIP Stack/BigInt.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/BigInt.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/BigInt.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/Delay.o: TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Delay.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Delay.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/Delay.c"  -o "${OBJECTDIR}/TCPIP Stack/Delay.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Delay.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Delay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/DHCP.o: TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DHCP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DHCP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/DHCP.c"  -o "${OBJECTDIR}/TCPIP Stack/DHCP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DHCP.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DHCP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/DHCPs.o: TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DHCPs.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DHCPs.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/DHCPs.c"  -o "${OBJECTDIR}/TCPIP Stack/DHCPs.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DHCPs.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DHCPs.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/DNS.o: TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DNS.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DNS.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/DNS.c"  -o "${OBJECTDIR}/TCPIP Stack/DNS.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DNS.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DNS.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/DNSs.o: TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DNSs.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DNSs.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/DNSs.c"  -o "${OBJECTDIR}/TCPIP Stack/DNSs.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DNSs.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DNSs.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/DynDNS.o: TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DynDNS.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DynDNS.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/DynDNS.c"  -o "${OBJECTDIR}/TCPIP Stack/DynDNS.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DynDNS.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DynDNS.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/ENC28J60.o: TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ENC28J60.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ENC28J60.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/ENC28J60.c"  -o "${OBJECTDIR}/TCPIP Stack/ENC28J60.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ENC28J60.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ENC28J60.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/ENCX24J600.o: TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/ENCX24J600.c"  -o "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/ETH97J60.o: TCPIP\ Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETH97J60.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETH97J60.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/ETH97J60.c"  -o "${OBJECTDIR}/TCPIP Stack/ETH97J60.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ETH97J60.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ETH97J60.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/FileSystem.o: TCPIP\ Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/FileSystem.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/FileSystem.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/FileSystem.c"  -o "${OBJECTDIR}/TCPIP Stack/FileSystem.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/FileSystem.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/FileSystem.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/FTP.o: TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/FTP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/FTP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/FTP.c"  -o "${OBJECTDIR}/TCPIP Stack/FTP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/FTP.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/FTP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/Hashes.o: TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Hashes.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Hashes.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/Hashes.c"  -o "${OBJECTDIR}/TCPIP Stack/Hashes.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Hashes.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Hashes.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/Helpers.o: TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Helpers.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Helpers.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/Helpers.c"  -o "${OBJECTDIR}/TCPIP Stack/Helpers.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Helpers.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Helpers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/HTTP2.o: TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/HTTP2.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/HTTP2.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/HTTP2.c"  -o "${OBJECTDIR}/TCPIP Stack/HTTP2.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/HTTP2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/HTTP2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/ICMP.o: TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ICMP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ICMP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/ICMP.c"  -o "${OBJECTDIR}/TCPIP Stack/ICMP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ICMP.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ICMP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/IP.o: TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/IP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/IP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/IP.c"  -o "${OBJECTDIR}/TCPIP Stack/IP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/IP.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/IP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/LCDBlocking.o: TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/LCDBlocking.c"  -o "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/MPFS2.o: TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/MPFS2.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/MPFS2.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/MPFS2.c"  -o "${OBJECTDIR}/TCPIP Stack/MPFS2.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/MPFS2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/MPFS2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/NBNS.o: TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/NBNS.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/NBNS.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/NBNS.c"  -o "${OBJECTDIR}/TCPIP Stack/NBNS.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/NBNS.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/NBNS.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/Random.o: TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Random.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Random.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/Random.c"  -o "${OBJECTDIR}/TCPIP Stack/Random.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Random.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Random.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/Reboot.o: TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Reboot.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Reboot.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/Reboot.c"  -o "${OBJECTDIR}/TCPIP Stack/Reboot.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Reboot.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Reboot.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/RSA.o: TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/RSA.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/RSA.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/RSA.c"  -o "${OBJECTDIR}/TCPIP Stack/RSA.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/RSA.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/RSA.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/SMTP.o: TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SMTP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SMTP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/SMTP.c"  -o "${OBJECTDIR}/TCPIP Stack/SMTP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SMTP.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SMTP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/SNMP.o: TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNMP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNMP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/SNMP.c"  -o "${OBJECTDIR}/TCPIP Stack/SNMP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SNMP.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SNMP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/SNMPv3.o: TCPIP\ Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNMPv3.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNMPv3.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/SNMPv3.c"  -o "${OBJECTDIR}/TCPIP Stack/SNMPv3.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SNMPv3.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SNMPv3.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/SNMPv3USM.o: TCPIP\ Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/SNMPv3USM.c"  -o "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/SNTP.o: TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNTP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNTP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/SNTP.c"  -o "${OBJECTDIR}/TCPIP Stack/SNTP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SNTP.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SNTP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/SPIEEPROM.o: TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/SPIEEPROM.c"  -o "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/SPIFlash.o: TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SPIFlash.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SPIFlash.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/SPIFlash.c"  -o "${OBJECTDIR}/TCPIP Stack/SPIFlash.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SPIFlash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SPIFlash.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/SPIRAM.o: TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SPIRAM.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SPIRAM.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/SPIRAM.c"  -o "${OBJECTDIR}/TCPIP Stack/SPIRAM.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SPIRAM.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SPIRAM.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/SSL.o: TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SSL.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SSL.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/SSL.c"  -o "${OBJECTDIR}/TCPIP Stack/SSL.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SSL.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SSL.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/StackTsk.o: TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/StackTsk.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/StackTsk.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/StackTsk.c"  -o "${OBJECTDIR}/TCPIP Stack/StackTsk.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/StackTsk.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/StackTsk.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/TCP.o: TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TCP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TCP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/TCP.c"  -o "${OBJECTDIR}/TCPIP Stack/TCP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/TCP.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/TCP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/TCPPerformanceTest.o: TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/TCPPerformanceTest.c"  -o "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/Telnet.o: TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Telnet.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Telnet.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/Telnet.c"  -o "${OBJECTDIR}/TCPIP Stack/Telnet.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Telnet.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Telnet.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/TFTPc.o: TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TFTPc.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TFTPc.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/TFTPc.c"  -o "${OBJECTDIR}/TCPIP Stack/TFTPc.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/TFTPc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/TFTPc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/Tick.o: TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Tick.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Tick.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/Tick.c"  -o "${OBJECTDIR}/TCPIP Stack/Tick.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Tick.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Tick.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/UART.o: TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UART.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UART.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/UART.c"  -o "${OBJECTDIR}/TCPIP Stack/UART.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/UART.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/UART.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/UART2TCPBridge.o: TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/UART2TCPBridge.c"  -o "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/UDP.o: TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UDP.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UDP.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/UDP.c"  -o "${OBJECTDIR}/TCPIP Stack/UDP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/UDP.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/UDP.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/UDPPerformanceTest.o: TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/UDPPerformanceTest.c"  -o "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/ZeroconfHelper.o: TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/ZeroconfHelper.c"  -o "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/ZeroconfLinkLocal.o: TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/ZeroconfLinkLocal.c"  -o "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/ZeroconfMulticastDNS.o: TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/ZeroconfMulticastDNS.c"  -o "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TCPIP\ Stack/MODBUSTCPServer.o: TCPIP\ Stack/MODBUSTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/MODBUSTCPServer.o".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/MODBUSTCPServer.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "TCPIP Stack/MODBUSTCPServer.c"  -o "${OBJECTDIR}/TCPIP Stack/MODBUSTCPServer.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/MODBUSTCPServer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/MODBUSTCPServer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/CustomHTTPApp.o: CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/CustomHTTPApp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  CustomHTTPApp.c  -o ${OBJECTDIR}/CustomHTTPApp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/CustomHTTPApp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/CustomHTTPApp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/GenericTCPClient.o: GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/GenericTCPClient.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  GenericTCPClient.c  -o ${OBJECTDIR}/GenericTCPClient.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/GenericTCPClient.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/GenericTCPClient.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/GenericTCPServer.o: GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GenericTCPServer.o.d 
	@${RM} ${OBJECTDIR}/GenericTCPServer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  GenericTCPServer.c  -o ${OBJECTDIR}/GenericTCPServer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/GenericTCPServer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/GenericTCPServer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/BerkeleyTCPClientDemo.o: BerkeleyTCPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BerkeleyTCPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/BerkeleyTCPClientDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BerkeleyTCPClientDemo.c  -o ${OBJECTDIR}/BerkeleyTCPClientDemo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/BerkeleyTCPClientDemo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/BerkeleyTCPClientDemo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/BerkeleyTCPServerDemo.o: BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BerkeleyTCPServerDemo.o.d 
	@${RM} ${OBJECTDIR}/BerkeleyTCPServerDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BerkeleyTCPServerDemo.c  -o ${OBJECTDIR}/BerkeleyTCPServerDemo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/BerkeleyTCPServerDemo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/BerkeleyTCPServerDemo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/BerkeleyUDPClientDemo.o: BerkeleyUDPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BerkeleyUDPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/BerkeleyUDPClientDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BerkeleyUDPClientDemo.c  -o ${OBJECTDIR}/BerkeleyUDPClientDemo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/BerkeleyUDPClientDemo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/BerkeleyUDPClientDemo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/ethernet.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/ethernet.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"."  -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/ethernet.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/ethernet.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_gc010=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"." -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}/xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/ethernet.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/gc010
	${RM} -r dist/gc010

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
