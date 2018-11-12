# Raspberry Pi

#### Connecting via serial cable 

From Mac:
```
screen /dev/cu.SLAB_USBtoUART 115200
```

To exit:
`ctrl + A` then `ctrl + D`

#### Interacting with RPi

`adb connect Android.local` - Connect to the device

`adb shell` - Opens a shell on the target device 
