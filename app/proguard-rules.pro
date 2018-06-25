# To enable ProGuard in your project, edit project.properties
# to define the proguard.config property as described in that file.
#
# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in ${sdk.dir}/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the ProGuard
# include property in project.properties.
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

-optimizationpasses 5
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontskipnonpubliclibraryclassmembers
-dontpreverify
-verbose
-dontoptimize
-dontpreverify
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*


-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class com.android.vending.licensing.ILicensingService
-keep public class * extends android.view.View
-keep public class * implements java.io.Serializable

-keepattributes *Annotation*
-keepattributes Signature

-keepclasseswithmembernames class * {
    native <methods>;
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

-keepclassmembers class * implements java.io.Serializable {
	<fields>;
	<methods>;
}

-keepclassmembers class * extends android.view.View {
	<methods>;
}

-keep class vi.com.gdi.bgl.android.**{*;}

-dontshrink
-dontoptimize
-dontwarn com.google.android.maps.**
-dontwarn android.webkit.WebView
-dontwarn com.umeng.**
-dontwarn com.tencent.weibo.sdk.**
-dontwarn com.facebook.**

-keep enum com.facebook.**
-keepattributes Exceptions,InnerClasses,Signature
-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable

-keep public class com.umeng.socialize.* {*;}
-keep public class javax.**
-keep public class android.webkit.**

-keep class com.tencent.mm.sdk.modelmsg.WXMediaMessage {*;}

-keep class com.tencent.mm.sdk.modelmsg.** implements com.tencent.mm.sdk.modelmsg.WXMediaMessage$IMediaObject {*;}

-keep class im.yixin.sdk.api.YXMessage {*;}
-keep class im.yixin.sdk.api.** implements im.yixin.sdk.api.YXMessage$YXMessageData{*;}

-keep public class [cn.com.sina_esf].R$*{
    public static final int *;
}

# Only required if you use AsyncExecutor
-keepclassmembers class * extends de.greenrobot.event.util.ThrowableFailureEvent {
    <init>(java.lang.Throwable);
}

-dontwarn android.support.v4.**
-dontwarn android.support.v7.**
-dontwarn com.baidu.**
-dontwarn com.google.zxing.**
-dontwarn com.alibaba.fastjson.**
-dontwarn com.nineoldandroids.**
-dontwarn com.j256.ormlite.**
-dontwarn com.nostra13.universalimageloader.**
-dontwarn lecho.lib.hellocharts.**
-dontwarn com.sea_monster.**
-dontwarn com.ultrapower.**
-dontwarn de.greenrobot.**
-dontwarn de.keyboardsurfer.**
-dontwarn io.rong.**
-dontwarn me.add1.**
-dontwarn uk.co.senab.photoview.**
-dontwarn com.umeng.socialize.controller.**
-dontwarn com.tencent.stat.**
-dontwarn com.tencent.**
-dontwarn com.umeng.scrshot.**
-dontwarn com.umeng.socialize.sensor.**
-dontwarn com.tencent.weibo.sdk.android.**
-dontwarn com.tencent.mm.**
-dontwarn com.umeng.**
-dontwarn com.iflytek.**
-dontwarn com.iflytek.sunflower.**
-dontwarn com.umeng.analytics.**
-dontwarn u.aly.**

-keep class  android.support.v4.** { *; }
-keep class  android.support.v7.** { *; }
-keep class  com.baidu.** { *; }
-keep class  com.google.zxing.** { *; }
-keep class  com.alibaba.fastjson.** { *; }
-keep class  com.nineoldandroids.** { *; }
-keep class  com.j256.ormlite.** { *; }
-keep class  com.nostra13.universalimageloader.** { *; }
-keep class  lecho.lib.hellocharts.** { *; }
-keep class  com.sea_monster.** { *; }
-keep class  com.ultrapower.** { *; }
-keep class  de.greenrobot.** { *; }
-keep class de.keyboardsurfer.** { *; }
-keep class  io.rong.** { *; }
-keep class  me.add1.** { *; }
-keep class  uk.co.senab.photoview.** { *; }
-keep class  com.umeng.socialize.controller.** { *; }
-keep class  com.tencent.stat.** { *; }
-keep class  com.thoughtworks.xstream.** { *; }
-keep class  com.tencent.** { *; }
-keep class  com.umeng.scrshot.** { *; }
-keep class  com.umeng.socialize.sensor.** { *; }
-keep class  com.tencent.weibo.sdk.android.** { *; }
-keep class  com.tencent.mm.** { *; }
-keep class  com.umeng.** { *; }
-keep class  com.iflytek.** { *; }
-keep class  com.iflytek.sunflower.** { *; }
-keep class com.umeng.analytics.** { *; }
-keep class com.leju.esf.utils.event.** { *; }
-keep class u.aly.** { *; }
-keep class com.baidu.** { *; }

-keep class **.R$*{ *; }
-keepattributes InnerClasses

#webview相关混淆js调java
-keepattributes *Annotation*
-keepattributes *JavascriptInterface*
-keep class android.webkit.JavascriptInterface {*;}
-keepclassmembers class com.leju.esf.utils.WebViewActivity1$MyJavaScriptInterface {
   public *;
}

# 支付宝相关混淆
-keep class com.alipay.android.app.IAlixPay{*;}
-keep class com.alipay.android.app.IAlixPay$Stub{*;}
-keep class com.alipay.android.app.IRemoteServiceCallback{*;}
-keep class com.alipay.android.app.IRemoteServiceCallback$Stub{*;}
-keep class com.alipay.sdk.app.PayTask{ public *;}
-keep class com.alipay.sdk.app.AuthTask{ public *;}

# EventBus相关混淆
-keepclassmembers class ** {
    public void onEvent*(**);
}

-keepattributes *Annotation*

-keep class com.taobao.** {*;}
-keep class org.android.** {*;}
-keep class anet.channel.** {*;}
-keep class com.umeng.** {*;}
-keep class com.xiaomi.** {*;}
-keep class com.huawei.** {*;}
-keep class org.apache.thrift.** {*;}

-keep class com.alibaba.sdk.android.**{*;}
-keep class com.ut.**{*;}
-keep class com.ta.**{*;}

-keep public class **.R$*{
   public static final int *;
}


-keep class com.qiniu.**{*;}
-keep class com.qiniu.**{public <init>();}
-keep class com.ioyouyun.wchat.**{*;}
-keep class com.leju.esf.utils.CameraPreview

-keep class * extends java.lang.annotation.Annotation
-keepclasseswithmembernames class * {
    native <methods>;
}

-printmapping mapping.txt
-keep class com.taobao.android.**{*;}
-keep class com.ta.utdid2.device.**{*;}
-keep class com.taobao.sophix.**{*;}

-keep class butterknife.** { *; }
-dontwarn butterknife.internal.**
-keep class **$$ViewBinder { *; }
-keepclasseswithmembernames class * {
    @butterknife.* <fields>;
}
-keepclasseswithmembernames class * {
    @butterknife.* <methods>;
}
# 融云推送相关混淆begin
-dontwarn com.huawei.android.**
-dontwarn com.xiaomi.mipush.sdk.**
-keep public class com.huawei.android.* {*; }
-keep public class com.xiaomi.mipush.sdk.* {*; }
-keep public class com.google.android.gms.gcm.**
-keep class io.agora.** {*; }

-dontwarn io.rong.push.**
-dontnote com.google.android.gms.gcm.**
-keep class com.leju.esf.customer.rongCloud.PushNotificationReceiver {*;}
-ignorewarning -keepattributes *Annotation*
-keepattributes Exceptions -keepattributes InnerClasses
-keepattributes Signature
# hmscore-support: remote transport
-keep class * extends com.huawei.hms.core.aidl.IMessageEntity { *; }
# hmscore-support: remote transport
-keepclasseswithmembers class * implements com.huawei.hms.support.api.transport.DatagramTransport {<init>(...); }
# manifest: provider for updates
-keep public class com.huawei.hms.update.provider.UpdateProvider { public *; protected *; }

-ignorewarning -keepattributes *Annotation*
-keepattributes Exceptions -keepattributes InnerClasses -keepattributes Signature
# hmscore-support: remote transport
-keep class * extends com.huawei.hms.core.aidl.IMessageEntity { *; }
# hmscore-support: remote transport
-keepclasseswithmembers class * implements com.huawei.hms.support.api.transport.DatagramTransport {
<init>(...); }
# manifest: provider for updates
-keep public class com.huawei.hms.update.provider.UpdateProvider { public *; protected *; }
# 融云推送相关混淆end

-dontwarn org.apache.commons.**
-dontwarn java.nio.file.**
-dontwarn javax.imageio.**
-dontwarn java.awt.image.**
-dontwarn com.melink.bqmmsdk.**
-dontwarn org.codehaus.mojo.animal_sniffer.**

-dontwarn me.nereo.multi_image_selector.**
-keep class  me.nereo.multi_image_selector.**{*;}

-dontwarn android.net.SSLCertificateSocketFactory
-dontwarn com.squareup.okhttp.internal.huc.HttpURLConnectionImpl

-dontwarn okhttp3.**
-dontwarn okio.**

-dontwarn javax.annotation.**
-keep class com.szb.grossipnews.**{*;}
-keep class com.tencent.**{*;}
-dontwarn com.szb.grossipnews.**
-dontwarn com.tencent.**

-keep class tencent.**{*;}
-dontwarn tencent.**

-keep class qalsdk.**{*;}
-dontwarn qalsdk.**

