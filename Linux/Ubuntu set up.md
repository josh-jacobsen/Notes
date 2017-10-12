# Ubuntu Virtual Machine Set Up

1. Set up VM

2. Install guest additions (this from https://askubuntu.com/questions/792832/how-to-install-virtualbox-guest-additions-for-ubuntu-16-04):

There is a guest additions package, but this only enabled some of the features for me.

The most reliable way is probably to use the built-in installer that comes with VirtualBox.

This is for Ubuntu Desktop. For Ubuntu Server, see @ThisClark's answer.

#### Updates

Make sure you have the latest version of VirtualBox.
It might be good to first sudo apt update and sudo apt upgrade and restart if needed.

##### Guest Additions

Power on virtual machine
Click "Devices" on the VirtualBox menu at the top of the screen
Click "Install Guest Additions CD Image..."
Follow the on-screen prompts as needed, enter your password, etc.
Restart the virtual machine

##### Enable features

Machine -> Settings -> General -> Advanced -> enable Shared Clipboard and/or Drag'n'Drop.
Make sure View -> Auto-resize Guest Display is checked.




1. Terminator 

2. Simlink host directories that need to be accessed
