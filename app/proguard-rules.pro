# Add project specific ProGuard rules here.

-keep class com.visa.** { *; }

# Crashlytics code as given below which one can exclude
-keep class com.crashlytics.* { }
-keep class com.crashlytics.android.**
#-keepattributes SourceFile,LineNumberTable