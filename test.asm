set a "yes"
set b "woops wrong input"
set rax "correct input"
testout:
  out b 
  hlt
correct:
  out rax
  hlt
set bax "what is the oppiset of no?"
out bax
read rbx 
slp 1
cmp rbx a 
jeq correct
jne testout

