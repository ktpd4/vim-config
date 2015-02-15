import vim
from datetime  import datetime
cb=vim.current.buffer
blogheader='''Title:
Date:
Modified:
Category:
Tags:
Slug:
Author:liucan
Summary:
    '''

now=datetime.now().strftime("%Y-%m-%d %H:%M")
slug=datetime.now().strftime("%Y-%m-%d-%H-%M")
def modifytest():
    for i in cb:
        if i.startswith("Title"):
            return True
    return False

def change(where,content):
    j=0
    for i in cb:
        if i.startswith(where):
            cb[j]=where+':'+content
            return True
        j+=1
    return False

if modifytest():
    change('Modified',now)
else:
    headeritems=blogheader.split("\n")[::-1]
    for item in headeritems:
        cb.append(item,0)
    change("Date",now)
    change("Modified",now)
    change("Slug",slug)
    vim.command("normal gg$")

