# Proguard rules for ELP Terminal production build

# Keep application classes
-keep class net.elparadisogonzalo.** { *; }
-keep class net.elparadisogonzalo.elp.** { *; }

# Keep native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep activity classes
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.app.Fragment
-keep public class * extends androidx.fragment.app.Fragment

# Keep constructors
-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

# Keep enums
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# Keep callback interfaces
-keep interface * {
    <methods>;
}

# Keep view constructors (required for inflation)
-keepclasseswithmembers class * {
    public <init>(android.content.Context);
}

# Keep Capacitor core
-keep class com.getcapacitor.** { *; }
-keep interface com.getcapacitor.** { *; }

# Keep Androidx
-keep class androidx.** { *; }
-keep interface androidx.** { *; }

# Keep Google Material Design
-keep class com.google.android.material.** { *; }
-keep interface com.google.android.material.** { *; }

# Remove logging in release build
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** v(...);
    public static *** i(...);
}

# Optimization settings
-optimizationpasses 5
-dontusemixedcaseclassnames
-verbose

# Remove unused resources
-dontshrink

