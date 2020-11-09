# Powershell 

The `$PROFILE` I have set: 

```
Function CD-Dev { cd C:\dev\ }
New-Alias cdev CD-Dev

Function Run-Sieve { cd C:\dev\pantry\src ; C:\dev\pantry\src\run-sieve.ps1 }

Function Open-Profile { code "C:\Users\Josh.Jacobsen\OneDrive - My Food Bag\Documents\WindowsPowerShell\profile.ps1" }

Function Run-Admin { cd C:\dev\repo2\src\core\src\Admin\Client; $env:NODE_OPTIONS = "--max-http-header-size=15000"; yarn start }
```
