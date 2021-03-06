# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/admin/Library/Android/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
-dontwarn com.lzh.compiler.parceler.processor.**
-dontwarn butterknife.**
#Parceler混淆规则
-keep class com.lzh.compiler.parceler.annotation.**
-keep class * implements com.lzh.compiler.parceler.ParcelInjector

-keepclasseswithmembernames class * {
    @com.lzh.compiler.parceler.annotation.Arg <fields>;
}

#添加ButterKnife混淆规则
-keep class butterknife.** { *; }
-keep class **$$ViewBinder { *; }

-keepclasseswithmembernames class * { @butterknife.* <methods>; }
-keepclasseswithmembernames class * { @butterknife.* <fields>; }

