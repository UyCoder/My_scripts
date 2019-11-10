#!/usr/bin/python

import socket
import sys

if len(sys.argv)!=2:
	print "Ishlirtish usuli mundaq: smtp.py <ishletkuchi ismi>"
	sys.exit(0)

s=socket.socket(socket.AF_INET, socket.SOCK_STREAM)
connect=s.connect(('smtp.163.com',25))
banner=s.recv(1024)
print banner + "aaaaaaa"
s.send('VRFY '+ sys.argv[1] + '\r\n')
result=s.recv[1024]
print result
s.close()
