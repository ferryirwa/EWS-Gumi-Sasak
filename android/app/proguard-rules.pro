# ===== FLUTTER (WAJIB) =====
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }
-keep class io.flutter.embedding.** { *; }
-dontwarn io.flutter.embedding.**

# ===== WEBVIEW (WAJIB - INI YANG HILANG) =====
-keep class androidx.webkit.** { *; }
-keep class androidx.webkit.internal.** { *; }
-dontwarn androidx.webkit.**

# ===== ANDROIDX LIFECYCLE (WAJIB) =====
-keep class androidx.lifecycle.** { *; }

# ===== ANDROIDX WORKMANAGER =====
-keep class androidx.work.** { *; }
-keep class androidx.startup.** { *; }

# ===== GOOGLE PLAY CORE =====
-keep class com.google.android.play.core.** { *; }
-dontwarn com.google.android.play.core.**

# ===== ANDROID WINDOW (untuk gesture back di Android 13+) =====
-keep class android.window.BackEvent { *; }
-keep class android.window.OnBackInvokedCallback { *; }
-keep class android.window.OnBackInvokedDispatcher { *; }

# ===== UMUM =====
-keepattributes Signature
-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute SourceFile