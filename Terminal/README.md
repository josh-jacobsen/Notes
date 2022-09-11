# Terminal 

### iTerm2
There's really only one, which is iTerm2

Set the left option key to transmit Esc+ 


<img width=50% src="https://user-images.githubusercontent.com/17820600/189553587-72e56528-2de2-47ac-9cfa-f7b34099e2dd.png">


#### Setting navigation keys 

Navigate to Profiles => Keys => Key Mappings 

There are a couple of ways I've experimented with setting up hotkeys. 

The set up I'm using at the moment is 

|Shortcut| Command | Action | Hex key/Escape sequence | Misc |
|-----|-----|-----|-----|---|
|Jump to start of line|| ⌘ <-| Jump to start of line|
|Jump to end of line|| ⌘ ->| Jump to end of line|
| ⌥ <- |Move 1 word to the left|Escape sequence| b| 
|Move 1 word to the right|| ⌥ ->| Move 1 word to the right|
|Delete 1 word to the right|d| ⇧ ->| Delete 1 word to the right|
|Delete 1 word to the left|0x1B 0x08| ⇧ <-| Delete 1 word to the left|
|Delete line|0x15| ⌘ Del| Delete line|


| Hex key | Command | Action|
|-----|-----|---|
|0x1b 0x08| ⌘ <-| Delete word to the left|
|0x1b 0x64| ⌘ ->| Delete word to the right|
|0x1b 0x62| ⌥ <-| Jump word to the left|
|0x1b 0x66| ⌥ ->| Jump word to the right|


Setting navigation so alt + -> / alt + <- moves the cursor over words 
and so command + -> / command + <- will delete words 
