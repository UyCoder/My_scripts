#!/usr/bin/python

import sys
import logging
logging.getLogger("scapy.runtime").setLevel(logging.ERROR)
from scapy.all import *

if len(sys.argv) != 3:
	print "Ishlitish usulu: ./FW_detect.py [Target IP] [Target Port]"
	print "Mesilen: ./Fw_detect.py 10.0.0.5 443"
	print "Misal boyiche bolhganda 10.0.0.5 diki 443 portining Firewall teripidin tosulghanliqini eniqlap beridu."
	sys.exit()

ip = sys.argv[1]
port = int(sys.argv[2])

ACK_response = sr1(IP(dst=ip)/TCP(dport=port.flag='A'),timeout=1,verbose=0)
SYN_response = sr1(IP(dst=ip)/TCP(dport=port.flag='S'),timeout=1,verbose=0)
if (ACK_response == None) and (SYN_response == None) :
	print "Port filtirlanghan yaki IP ishlimeydu. "
elif ((ACK_response == None) or (SYN_response == None)) and not ((ACK_response == None) and (SYN_response == None)):
	print "Stateful filtering in place"
elif int(SYN_response[TCP].flags) == 18:
	print "Port ochuq we filtirlenmigen."
elif int(SYN_response[TCP].flags) == 20:
	print "Port taqaq we filtirlenmigen."
else:
	print "Portning filtilenginini eniqliyalmidim."

