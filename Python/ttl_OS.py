#!/usr/bin/python

from scapy.all import *
import logging
logging.getLogger("scapy.runtime").setLevel(logging.ERROR)
import sys

if len(sys.argv)!= 2:
    print "===================================="
    print "Bu tegkodni BUGHRA goruppisi yazdi."
    print "===================================="
    print "Ishlitish usuli : ./ttl_OS.py [IP adresi]"
    print "Mesilen: ./ttl_OS.py 10.0.0.5"
    print "Bu Tegkod IP ning qaysi meshghulat sistemisini ishletkinini eniqlap beridu."
    sys.exit()
    
ip=sys.argv[1]
    
ans=sr1(IP(dst=str(ip))/ICMP(),timeout=1,verbose=0)
if ans==None:
    print "=========================="
    print "Hechqandaq uchur qaytmidi."
    print "=========================="
    
elif int(ans[IP].ttl)<=64:
    print "======================================="
    print "Bu uskunige Linux sistemisi qollanghan."
    print "======================================="
else:
    print "========================================="
    print "Bu uskunige Windows sistemisi qollanghan."
    print "========================================="
