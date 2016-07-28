local key = {a='v',b='T',c='r',d='s',e='|',f='%',g='P',h='q',i='L',j='a',k='[',l='f',m='R',n='^',o='$',p='#',q='g',r='m',s='A',t='e',u='8',v='I',w='A',x='*',y='B',z='U',['{']='a',['}']='b',['_']='c',[' ']='!',['nil']='SOMETHING WENT WRONG WITH THE ENCRYPTION'}

local s = "hello world"

local ss = ''
for i=1,s:len() do
ss = ss..key[s:sub(i,i) or 'nil']
end

print(ss)

--outputs q|ff$!A$mfs (encryption of 'hello world' with this key)
