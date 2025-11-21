# MSI MPG Z390 GAMING PLUS mit Intel Core i7-9700  
*(Funktioniert identisch auf MSI MPG Z390 Gaming Pro Carbon AC)*

OpenCore EFI-Ordner für macOS Catalina bis Sonoma (getestet von Catalina bis macOS 14 Sonoma)

**OpenCore Version:** Aktuelle Acidanthera OpenCorePkg  
→ https://github.com/acidanthera/OpenCorePkg

Fragen & Support:  
→ https://www.root86.com/collections/item/326-msi-mpg-z390-gaming-plus/

## Hardware
- Mainboard: MSI MPG Z390 GAMING PLUS  
- CPU: Intel Core i7-9700 (Coffee Lake Refresh)  
- iGPU: Intel UHD Graphics 630 (voll funktionsfähig)  
- dGPU: AMD Radeon RX 570 (nativ unterstützt)  
- WLAN/Bluetooth: Fenvi FV-T919 (BCM94360CD) → nativer AirDrop, Handoff, Continuity etc.

## Was funktioniert (macOS Sonoma 14.x)
- Intel UHD Graphics 630 (inkl. Hardwarebeschleunigung & Metal)
- Alle USB-Ports (inkl. USB-C)
- Sleep / Wake (inkl. Hibernatemode 25)
- Audio (interne Lautsprecher + Front-Panel 3,5 mm Klinke mit Mikrofon)
- HDMI-Ausgang (iGPU)
- WLAN & Bluetooth (Fenvi FV-T919)
- Alle Apple-Dienste (iMessage, FaceTime, iCloud, Unlock mit Apple Watch, Sidecar, AirDrop, Continuity, etc.)
- iServices komplett ohne zusätzliche Fixes

## Was nicht funktioniert
- Onboard Intel WLAN/Bluetooth (wird durch Fenvi-Karte ersetzt)
- DRM-Probleme bei Nutzung der RX 570 unter neueren macOS-Versionen nur mit WhateverGreen + Shiki-Bootflag (bei Bedarf)

## Wichtige Hinweise für die Installation
Bei der Installation von einem macOS-Installations-USB-Stick bitte in der `config.plist` folgendes setzen:  

Misc → Security → SecureBootModel → Disabled

![macOS Sonoma Desktop](https://raw.githubusercontent.com/anonymous-writer/MSI-MPG-Z390-GAMING-PLUS-OC/master/Pictures/Sonoma.png)

![macOS Sonoma Startbildschirm](https://raw.githubusercontent.com/anonymous-writer/MSI-MPG-Z390-GAMING-PLUS-OC/master/Pictures/Startbildschierm.png)

![macOS Sonoma USB-Ports](https://raw.githubusercontent.com/anonymous-writer/MSI-MPG-Z390-GAMING-PLUS-OC/master/Pictures/USB-Ports.png)
