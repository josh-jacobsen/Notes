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
```
grep -v -e "master" -e "vscode-improvements" -e "feature/KATOA-2808-Showing-care-team-sharee"
```


.gitconfig example 

```
[core]
	editor = \"C:/Users/Josh.Jacobsen/AppData/Local/Programs/Microsoft VS Code/code.exe\" --wait
[merge]
	tool = vscode
	guitool = vscode
[pull]
	rebase = false
[fetch]
	prune = false
[rebase]
	autoStash = false
[mergetool "vscode"]
	cmd = \"C:/Users/Josh.Jacobsen/AppData/Local/Programs/Microsoft VS Code/Code.exe\" --wait \"$MERGED\"
	path = C:/Users/Josh.Jacobsen/AppData/Local/Programs/Microsoft VS Code/Code.exe
[diff]
	tool = vscode
	guitool = vscode
[difftool "vscode"]
	cmd = \"C:/Users/Josh.Jacobsen/AppData/Local/Programs/Microsoft VS Code/Code.exe\" --wait --diff \"$LOCAL\" \"$REMOTE\"
	path = C:/Users/Josh.Jacobsen/AppData/Local/Programs/Microsoft VS Code/Code.exe
[user]
	name = Josh Jacobsen
	email = josh.jacobsen@myfoodbag.co.nz

 [alias]
 # logs
 l = log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short
 lg='git log --graph --oneline --decorate --all'

 a = add
 ap = add -p
 aa = add .
 ac = !git add -A && git commit -m
 c = commit --verbose
 ca = commit -a --verbose
 cm = commit -m
 cam = commit -a -m
 m = commit --amend --verbose
 gcm = checkout master
    
 d = diff
 ds = diff --stat
 dc = diff --cached
 a = add
 ap = add -p
 aa = add .
 c = commit --verbose
 ca = commit -a --verbose
 cm = commit -m
 cam = commit -a -m
 m = commit --amend --verbose
    
 d = diff
 ds = diff --stat
 dc = diff --cached

 s = status -s
 co = checkout
 cob = checkout -b
 # list branches sorted by last modified
 b = "!git for-each-ref --sort='-authordate' --format='%(authordate)%09%(objectname:short)%09%(refname)' refs/heads | sed -e 's-refs/heads/--'"

 # list aliases
 la = "!git config -l | grep alias | cut -c 7-"
 
 # prune all loacl branches (run from master)
 prune-local = !git branch | grep -v -e "master" | xargs git branch -D 
 # with multiple branches:
 # prune-local-master=!git branch | grep -v -e master -e vscode-improvements -e feature/KATOA-2808-Showing-care-team-sharee | xargs git branch -D

 # get latest from master and update all submodules 
 pull-and-update-submodules = "!git pull --recurse-submodules; git submodule update --remote --recursive"


```
