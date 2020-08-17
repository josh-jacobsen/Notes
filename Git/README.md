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
