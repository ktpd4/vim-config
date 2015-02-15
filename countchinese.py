import vim
cb=vim.current.buffer
'''i=len(cb)
j=0
while j<i:
    cb[j]=cb[j]+"***"
    j+=1
<<<<<<< HEAD
'''
'''
j=0
import sys
for i in sys.stdin:
#    cb[j]=i+"fdfdfdfdsafdaf"
    j+=1
    print "xxx"



'''
wordcount=''.join(cb)
print "total  {0} charactors".format(len(wordcount.decode("utf-8")))

