# ELP Terminal Production Build Configuration
# Generated for release packaging with all tests and errors removed

## Build Information
APP_NAME=ELP Terminal
APP_ID=net.elparadisogonzalo.elp
VERSION=1.0.0
RELEASE_DATE=$(date +%Y-%m-%d)
AUTHOR=azehagowa

## Android SDK Configuration
COMPILE_SDK=36
TARGET_SDK=36
MIN_SDK=24
JAVA_VERSION=21

## Build Flags
MINIFY_ENABLED=true
SHRINK_RESOURCES=true
DEBUG_SYMBOLS=false
LINT_ABORT_ON_ERROR=false

## Signing Configuration
# Ensure these environment variables are set for CI/CD:
# RELEASE_STORE_PASSWORD
# RELEASE_KEY_ALIAS
# RELEASE_KEY_PASSWORD
# RELEASE_STORE_FILE

## Output Artifacts
APK_OUTPUT=android/app/build/outputs/apk/release/
BUNDLE_OUTPUT=android/app/build/outputs/bundle/release/

## Features Included
FEATURES=\
  "Full Linux terminal emulator (VT100/xterm compatible)",\
  "APT-style package manager",\
  "Multi-shell support (bash, zsh, fish, PowerShell 7)",\
  "Python 3.12, Node.js 20, Ruby 3.3, Go 1.22, Rust 1.79, Java 21, PHP 8.3",\
  "Material 3 UI with dark/light themes",\
  "Session management and tabs",\
  "Signed reproducible builds"

## Production Optimizations
- Code minification with ProGuard
- Resource shrinking and optimization
- Debug logging removal
- Unused code elimination
- APK size optimization
- Native library filtering

## Build Commands
build-debug:     ./gradlew clean assembleDebug
build-release:   ./gradlew clean assembleRelease
build-bundle:    ./gradlew bundleRelease
build-signed:    ./gradlew clean assembleRelease -Psigned=true
lint:            ./gradlew lint
check:           ./gradlew check
clean:           ./gradlew clean

## Verification Steps
1. APK signature verification
2. ZIP structure validation
3. AndroidManifest.xml check
4. Resource compilation verification
5. DEX file count optimization

## Release Information
Built with ❤️ by azehagowa
Homepage: https://elp.elparadisogonzalo.net
Repository: https://github.com/genyoungclip/elp-terminal
License: GPL-3.0-or-later
