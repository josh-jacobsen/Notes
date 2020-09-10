# Git

When master has moved and need to rebase feature branch onto it prior to pushing up the feature branch 


```
git checkout master
git pull 
git checkout <feature>
git rebase master
```


Remove all branches except those specified: 
```
git branch | grep -v "master\|voucher-delay" | xargs git branch -D 
```
```
git branch | grep -v "master" | xargs git branch -D 
```

Useful aliases to add: 
```
l=log --pretty=format:%C(yellow)%h\ %ad%Cred%d\ %Creset%s%Cblue\ [%cn] --decorate --date=short
lg='git log --graph --oneline --decorate --all'
a=add
ap=add -p
aa=add .
ac=!git add -A && git commit -m
c=commit --verbose
ca=commit -a --verbose
cm=commit -m
cam=commit -a -m
m=commit --amend --verbose
gcm=checkout master
d=diff
ds=diff --stat
dc=diff --cached
a=add
ap=add -p
aa=add .
c=commit --verbose
ca=commit -a --verbose
cm=commit -m
cam=commit -a -m
m=commit --amend --verbose
d=diff
ds=diff --stat
dc=diff --cached
s=status -s
co=checkout
cob=checkout -b
b=!git for-each-ref --sort='-authordate' --format='%(authordate)%09%(objectname:short)%09%(refname)' refs/heads | sed -e 's-refs/heads/--'
la=!git config -l | grep alias | cut -c 7-
prune-local=!git branch | grep -v master | xargs git branch -D
```
