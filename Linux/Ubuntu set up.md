# Ubuntu Virtual Machine Set Up

### Set up VM
1. Give it a name, hard drive size, etc.
2. Power on the VM and select the .iso image you want to use (Ubuntu 16.04 in this case)

### Install guest additions

this from https://askubuntu.com/questions/792832/how-to-install-virtualbox-guest-additions-for-ubuntu-16-04:

1. `apt-get update && apt-get upgrade`
2. Restart the machine
3. Devices -> "Install Guest Additions CD Image..."
4. Restart 

### Enable features and give VM access to shared folders 

1. Devices -> enable Shared Clipboard and/or Drag'n'Drop.
2. View -> Auto-resize Guest Display is checked.
3. Machine -> Settings -> Shared Folders -> Click "add" -> Folder path (find folder on host machine) -> Tick "auto-mount"
4. Run `sudo usermod -aG vboxsf $(whoami)`. This command will give the current user access to the shared folders; without it, permission will be denied 
5. Restart the machine; shared folders should be under /media

### Add new user 

##### Create the new user 
`adduser newuser`

##### Add the New User to the Sudo Group
Check what groups your new user is in with the groups command: `groups newuser`, which will output `newuser : newuser`
In order to add the user to a new group, we can use the `usermod` command: `usermod -aG sudo newuser`
Swith to the new user, and try ad command that requires super user privilidges to see if it worked. 
Add the new user to the `vboxsf` group by entering  the same command as above (`sudo usermod -aG vboxsf $(whoami)`). This will let the new user perform actions such as accessing shared folders, etc

### Install software 
1. Terminator 
