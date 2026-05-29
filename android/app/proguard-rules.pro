# Pulsar — ProGuard / R8 rules
# Used only when isMinifyEnabled = true (currently OFF).
# Kept here so you can safely enable shrinking later.

# Flutter
-keep class io.flutter.embedding.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.plugins.** { *; }

# Firebase
-keepattributes Signature
-keepattributes *Annotation*
-keep class com.google.firebase.** { *; }
-keep class com.google.android.gms.** { *; }
-dontwarn com.google.firebase.**
-dontwarn com.google.android.gms.**

# Isar
-keep class io.isar.** { *; }
-dontwarn io.isar.**

# mobile_scanner / MLKit
-keep class com.google.mlkit.** { *; }
-keep class com.google.android.gms.vision.** { *; }
-dontwarn com.google.mlkit.**

# kotlinx serialization (transitive)
-keep,includedescriptorclasses class kotlinx.serialization.** { *; }
-dontwarn kotlinx.serialization.**

# Connectivity / network info
-keep class androidx.lifecycle.DefaultLifecycleObserver { *; }
