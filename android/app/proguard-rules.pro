# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /usr/local/google/buildbot/src/android/gradle/gradle/jetifier/jetifier-transform/proguard-library/proguard-library.txt
# You can edit this file to add project specific repackage, shrinking and obfuscation properties

# For example, to enable ProGuard to remove debug logging code, uncomment the following line
# and specify the name of your application's BuildConfig class (you can find the correct name
# in the generated R.java class or by inspecting the APK):
#-assumenosideeffects class com.your.package.BuildConfig {
#    public static final boolean DEBUG = false;
#}

# Flutter dependencies
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.embedding.** { *; }
-keep class io.flutter.** { *; }

# Ensure Firebase classes are not removed
-keep class com.google.firebase.** { *; }
-keep class com.google.android.gms.** { *; }

# Ensure your app's main activity is not removed
-keep class com.your.package.MainActivity { *; }

# Ensure your app's application class is not removed
-keep class com.your.package.YourApplication { *; }
