Git

When master has moved and need to rebase feature branch onto it prior to pushing up the feature branch 


```
git checkout master
git pull 
git checkout <feature>
git rebase master
```
