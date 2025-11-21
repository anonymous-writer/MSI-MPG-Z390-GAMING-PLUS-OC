# MSI MPG Z390 GAMING PLUS – Hackintosh EFI (Catalina → Tahoe)

**Mainboard:** MSI MPG Z390 GAMING PLUS  
**CPU:** Intel Core i7-9700 (Coffee Lake Refresh)  
**iGPU:** Intel UHD Graphics 630  
**dGPU:** AMD Radeon RX 570 (nativ unterstützt)  
**EFI kompatibel mit:** macOS Catalina bis macOS Tahoe  
*(Identische Funktion auf **MSI MPG Z390 Gaming Pro Carbon AC**)*

---
## 🔗 Relevante Links
- **OpenCorePkg (Acidanthera):** https://github.com/acidanthera/OpenCorePkg
- **Support & Fragen:** https://www.root86.com/collections/item/326-msi-mpg-z390-gaming-plus/

---
## 🛠️ Hardware-Übersicht
- **Mainboard:** MSI MPG Z390 GAMING PLUS
- **Prozessor:** Intel Core i7‑9700
- **Grafik:** Intel UHD 630 (voll funktionsfähig)
- **Grafikkarte:** AMD Radeon RX 570 – sofort einsatzbereit ohne Anpassungen
- **WLAN & Bluetooth:** Fenvi FV‑T919 (BCM94360CD)  
  → Vollständige macOS‑Integration: AirDrop, Handoff, Continuity, Sidecar, Unlock mit Apple Watch uvm.

---
## ✅ Funktioniert unter macOS Sonoma 14.x
- Intel UHD Graphics 630 inkl. Hardwarebeschleunigung / Metal
- Alle USB‑Ports inkl. USB‑C
- Sleep & Wake (inkl. Hibernatemode 25)
- Audio (Rear + Front‑Panel 3,5 mm Klinke mit Mikrofon)
- HDMI über die iGPU
- WLAN + Bluetooth (Fenvi FV‑T919)
- Alle Apple‑Services (iMessage, FaceTime, iCloud, AirDrop …)
- iServices vollständig ohne zusätzliche Fixes

---
## ❌ Funktioniert nicht
- Onboard Intel WLAN/Bluetooth → wird durch Fenvi ersetzt
- Mögliche DRM‑Probleme mit der RX 570 unter neuen macOS‑Versionen  
  → Lösung: WhateverGreen + Shiki‑Bootflag

---
## ⚙️ Wichtiger Installationshinweis
Bei Installation über USB‑Install‑Stick bitte in der `config.plist` setzen:
```
Misc → Security → SecureBootModel → Disabled
```

---
## 🖼️ Screenshots
### macOS Sonoma Desktop
![macOS Sonoma Desktop](https://raw.githubusercontent.com/anonymous-writer/MSI-MPG-Z390-GAMING-PLUS-OC/master/Pictures/Tahoe.png)

### OpenCore Boot Picker
![macOS Sonoma Startbildschirm](https://raw.githubusercontent.com/anonymous-writer/MSI-MPG-Z390-GAMING-PLUS-OC/master/Pictures/Startbildschierm.png)

### USB‑Port‑Mapping
![macOS Sonoma USB-Ports](https://raw.githubusercontent.com/anonymous-writer/MSI-MPG-Z390-GAMING-PLUS-OC/master/Pictures/USB-Ports.png)
