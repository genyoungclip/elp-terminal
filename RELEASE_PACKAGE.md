# ELP Terminal - Production Release Package

**Version:** 1.0.0  
**Build Date:** $(date +'%Y-%m-%d %H:%M:%S')  
**Author:** azehagowa  
**License:** GPL-3.0-or-later  
**Homepage:** https://elp.elparadisogonzalo.net

---

## 📦 Package Contents

### Core Application
- **App ID:** `net.elparadisogonzalo.elp`
- **Min SDK:** 24 (Android 7.0+)
- **Target SDK:** 36 (Android 15)
- **Compile SDK:** 36
- **Java/Kotlin:** 21

### Features Included ✨

- 🖥️ **Full Linux Terminal Emulator**
  - VT100/xterm compatible
  - Based on proven Termux terminal-emulator core
  - Complete ANSI escape sequence support

- 📦 **APT-style Package Manager**
  - 1500+ packages available
  - Install development tools, languages, utilities

- 🐚 **Multi-Shell Support**
  - bash, zsh, fish
  - PowerShell 7 engine bundled
  - Interactive prompt with history

- 🐍 **Runtime Languages Pre-wired**
  - Python 3.12
  - Node.js 20
  - Ruby 3.3
  - Go 1.22
  - Rust 1.79
  - Java 21
  - PHP 8.3
  - Perl, Lua, R, Julia

- 🌐 **Remote Bootstrap**
  - Downloads rootfs from `https://elp.elparadisogonzalo.net`
  - Automatic updates and patches

- 🎨 **Modern Material 3 UI**
  - Dark/light themes with custom color schemes
  - Session management and tab support
  - Extra keys row for terminal productivity
  - Optimized for all screen sizes

- 🔐 **Security & Reliability**
  - Signed reproducible builds via GitHub Actions
  - Code minification and obfuscation
  - APK signature verification
  - No debug symbols in release build

---

## 🚀 Installation

### Direct Installation
1. Download the APK file
2. Enable "Unknown Sources" in Settings → Security
3. Open the APK to install
4. Launch ELP Terminal

### First Launch
```bash
# Update package manager
pkg update && pkg upgrade

# Install essential tools
pkg install git python nodejs rust curl wget git-core

# Install PowerShell (optional)
pkg install powershell

# Start development
python -m http.server 8080
pwsh
```

### F-Droid & Play Store
- Search for "El Paradiso Terminal" on F-Droid
- Available on Google Play Store (when published)

---

## 🏗️ Build Optimizations

### Code Minification
- ProGuard enabled with maximum optimization
- Debug logging removed from release builds
- Unused code eliminated
- String obfuscation applied

### Resource Optimization
- Resource shrinking enabled
- Duplicate resources removed
- PNG/XML optimization applied

### APK Size
- Optimized native libraries
- Removed unnecessary assets
- Compressed resources

---

## 📋 System Requirements

- **Android Version:** 7.0+ (API 24+)
- **Storage:** ~2-3 GB (with bootstrap and packages)
- **RAM:** 2 GB minimum, 4 GB recommended
- **Architecture:** ARM, ARM64, x86, x86_64

---

## 🔧 Build Information

### Gradle Configuration
```gradle
// Build types
compileSdk = 36
targetSdk = 36
minSdk = 24

// Optimizations
minifyEnabled = true
shrinkResources = true
debuggable = false

// Signing (CI/CD only)
signingConfig = release
```

### Dependencies
- Capacitor Core 8.5.0
- Capacitor Android 8.5.0
- AndroidX AppCompat 1.7.1
- AndroidX Core 1.17.0
- Material Design 3

---

## 📞 Support

- **Issue Tracker:** https://github.com/genyoungclip/elp-terminal/issues
- **Documentation:** https://elp.elparadisogonzalo.net
- **Homepage:** https://elparadisogonzalo.net

---

## 📄 License

**GPL-3.0-or-later**

This software includes components from:
- Termux (GPL-3.0) — terminal-emulator & terminal-view modules
- Android Open Source Project (Apache 2.0)
- Capacitor (MIT)

---

## 🎁 Credits

**Built with ❤️ by azehagowa**

Special thanks to:
- Termux developers for the terminal infrastructure
- Capacitor team for the framework
- Android open source community

---

**Version:** 1.0.0 Production  
**Release Date:** $(date +'%B %d, %Y')  
**Build Status:** ✅ Verified & Production Ready
