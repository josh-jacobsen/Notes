# Oh my zsh

Folder structure: 

```
.
├── .android
├── .aws
├── .aws-sam
├── .bashrc
├── .cache
├── .config
├── .docker
├── .fzf
├── .fzf.bash
├── .fzf.zsh
├── .gitconfig
├── .gnupg
├── .gnupg_pre_2.1
├── .ivy2
├── .local
├── .mongodb
├── .node_repl_history
├── .npm
├── .oh-my-zsh
├── .pkg-cache
├── .pulumi
├── .quokka
├── .redhat
├── .sbt
├── .serverless
├── .serverlessrc
├── .ssh
├── .terraform.d
├── .viminfo
├── .vscode
├── .wallaby
├── .yarn
├── .yarnrc
├── .zcompdump-Josh’s MacBook Pro (2)-5.8
├── .zprofile
├── .zsh_history
├── .zshrc
```
```
~./.zshrc
~./.bashrc
~./.fzf.zsh
~./.fzf.bash
```


## Plugins 

### fzf
fzf will display a history search when you hit ctrl + R 
![1](https://user-images.githubusercontent.com/17820600/148470437-a8cb5602-231a-4c05-855e-79e65244362c.jpg)

#### Installation 
Install it from https://github.com/junegunn/fzf

It will add the following line to the `.zshrc` file:
```
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
```

