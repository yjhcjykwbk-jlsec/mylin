import os
print 'conv gbk quoted dir to utf-8 dir which is supported by system'
from urllib import unquote
files=os.listdir('.')
for file in files:
	nfile=unquote(file).decode('gbk').encode('utf-8')
	#os.rename(file,nfile)
	print 'mv %s \'%s\''%(file,nfile)

