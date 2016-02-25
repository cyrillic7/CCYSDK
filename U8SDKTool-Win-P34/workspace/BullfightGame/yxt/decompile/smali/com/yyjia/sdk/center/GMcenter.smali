.class public final Lcom/yyjia/sdk/center/GMcenter;
.super Ljava/lang/Object;


# static fields
.field private static configInfo:Lcom/yyjia/sdk/data/a;

.field private static context:Landroid/content/Context;

.field private static mCenter:Lcom/yyjia/sdk/center/GMcenter;


# instance fields
.field private bbsUrl:Ljava/lang/String;

.field private flToolBarPlace:Lcom/yyjia/sdk/e/g;

.field private isLogin:I

.field private ischeck:I

.field private loginListener:Lcom/yyjia/sdk/listener/LoginListener;

.field private loginType:Ljava/lang/String;

.field private logoutListener:Lcom/yyjia/sdk/listener/LogoutListener;

.field private mHandle:Landroid/os/Handler;

.field private moreappUrl:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private payListener:Lcom/yyjia/sdk/listener/PayListener;

.field private paylogUrl:Ljava/lang/String;

.field private uid:I

.field private username:Ljava/lang/String;

.field private username1:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/yyjia/sdk/center/GMcenter;->flToolBarPlace:Lcom/yyjia/sdk/e/g;

    const/4 v0, 0x0

    iput v0, p0, Lcom/yyjia/sdk/center/GMcenter;->ischeck:I

    iput-object v1, p0, Lcom/yyjia/sdk/center/GMcenter;->username:Ljava/lang/String;

    iput-object v1, p0, Lcom/yyjia/sdk/center/GMcenter;->username1:Ljava/lang/String;

    new-instance v0, Lcom/yyjia/sdk/center/g;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/center/g;-><init>(Lcom/yyjia/sdk/center/GMcenter;)V

    iput-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->mHandle:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/yyjia/sdk/center/GMcenter;->flToolBarPlace:Lcom/yyjia/sdk/e/g;

    const/4 v0, 0x0

    iput v0, p0, Lcom/yyjia/sdk/center/GMcenter;->ischeck:I

    iput-object v1, p0, Lcom/yyjia/sdk/center/GMcenter;->username:Ljava/lang/String;

    iput-object v1, p0, Lcom/yyjia/sdk/center/GMcenter;->username1:Ljava/lang/String;

    new-instance v0, Lcom/yyjia/sdk/center/g;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/center/g;-><init>(Lcom/yyjia/sdk/center/GMcenter;)V

    iput-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->mHandle:Landroid/os/Handler;

    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    if-eqz v0, :cond_27

    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_26

    sput-object p1, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    :cond_26
    :goto_26
    return-void

    :cond_27
    sput-object p1, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    goto :goto_26
.end method

.method static synthetic access$0()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yyjia/sdk/center/GMcenter;)Lcom/yyjia/sdk/listener/LoginListener;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->loginListener:Lcom/yyjia/sdk/listener/LoginListener;

    return-object v0
.end method

.method static synthetic access$2()Lcom/yyjia/sdk/data/a;
    .registers 1

    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;

    return-object v0
.end method

.method static synthetic access$3(Lcom/yyjia/sdk/center/GMcenter;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->loginType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/yyjia/sdk/center/GMcenter;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->username1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/yyjia/sdk/center/GMcenter;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/yyjia/sdk/center/GMcenter;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->mHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/yyjia/sdk/center/GMcenter;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/yyjia/sdk/center/GMcenter;->getSessionId(Ljava/lang/String;)V

    return-void
.end method

.method public static getConfigInfo()Lcom/yyjia/sdk/data/a;
    .registers 1

    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/yyjia/sdk/center/GMcenter;
    .registers 6

    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    if-nez v0, :cond_64

    new-instance v0, Lcom/yyjia/sdk/center/GMcenter;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/center/GMcenter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yyjia/sdk/center/GMcenter;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    :try_start_b
    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "YYJIA_COOPID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "YYJIA_APPID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, ""

    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    new-instance v0, Lcom/yyjia/sdk/data/a;

    invoke-direct {v0, v3, v2, v1}, Lcom/yyjia/sdk/data/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;

    new-instance v0, Lcom/yyjia/sdk/center/h;

    invoke-direct {v0}, Lcom/yyjia/sdk/center/h;-><init>()V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_57
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_57} :catch_5f

    :goto_57
    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->showtoolbar()V

    :goto_5c
    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    return-object v0

    :catch_5f
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_57

    :cond_64
    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    goto :goto_5c
.end method

.method public static getInstance1(Landroid/content/Context;)Lcom/yyjia/sdk/center/GMcenter;
    .registers 6

    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    if-nez v0, :cond_64

    new-instance v0, Lcom/yyjia/sdk/center/GMcenter;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/center/GMcenter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yyjia/sdk/center/GMcenter;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    :try_start_b
    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "YYJIA_COOPID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "YYJIA_APPID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, ""

    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    new-instance v0, Lcom/yyjia/sdk/data/a;

    invoke-direct {v0, v3, v2, v1}, Lcom/yyjia/sdk/data/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;

    new-instance v0, Lcom/yyjia/sdk/center/i;

    invoke-direct {v0}, Lcom/yyjia/sdk/center/i;-><init>()V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_57
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_57} :catch_5f

    :goto_57
    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->showtoolbar()V

    :goto_5c
    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    return-object v0

    :catch_5f
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_57

    :cond_64
    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->disstoolbar()V

    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_7b

    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->showtoolbar()V

    goto :goto_5c

    :cond_7b
    new-instance v0, Lcom/yyjia/sdk/center/GMcenter;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/center/GMcenter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yyjia/sdk/center/GMcenter;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    :try_start_82
    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "YYJIA_COOPID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "YYJIA_APPID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, ""

    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    new-instance v0, Lcom/yyjia/sdk/data/a;

    invoke-direct {v0, v3, v2, v1}, Lcom/yyjia/sdk/data/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;

    new-instance v0, Lcom/yyjia/sdk/center/j;

    invoke-direct {v0}, Lcom/yyjia/sdk/center/j;-><init>()V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_ce
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_82 .. :try_end_ce} :catch_d4

    :goto_ce
    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->showtoolbar()V

    goto :goto_5c

    :catch_d4
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_ce
.end method

.method private getSessionId(Ljava/lang/String;)V
    .registers 11

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x237

    const/4 v4, 0x0

    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a} :catch_6e

    :try_start_a
    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "uid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_15} :catch_84

    move-result v0

    move v4, v0

    move v5, v3

    move-object v0, v1

    :goto_19
    if-ne v5, v8, :cond_6d

    if-nez v0, :cond_86

    :try_start_1d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    :goto_23
    const-string v0, "sessionid"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_28} :catch_76

    move-result-object v1

    :try_start_29
    const-string v0, "username"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_2e} :catch_7e

    move-result-object v0

    :try_start_2f
    sget-object v6, Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;

    const-string v7, "ischeck"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/yyjia/sdk/data/a;->a(I)V
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_3a} :catch_82

    :goto_3a
    sget-object v3, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    const-string v6, "abc"

    invoke-virtual {v3, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "sessionid"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "u"

    invoke-interface {v6, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/center/GMcenter;->setUsername(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/yyjia/sdk/center/GMcenter;->setUid(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v5, v0, Landroid/os/Message;->what:I

    const-string v1, "u"

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/yyjia/sdk/center/GMcenter;->mHandle:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6d
    return-void

    :catch_6e
    move-exception v0

    move-object v1, v2

    :goto_70
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    move v5, v3

    goto :goto_19

    :catch_76
    move-exception v0

    move-object v3, v0

    move-object v1, v2

    move-object v0, v2

    :goto_7a
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3a

    :catch_7e
    move-exception v0

    move-object v3, v0

    move-object v0, v2

    goto :goto_7a

    :catch_82
    move-exception v3

    goto :goto_7a

    :catch_84
    move-exception v0

    goto :goto_70

    :cond_86
    move-object v3, v0

    goto :goto_23
.end method

.method private getUserInfo(Ljava/lang/String;)V
    .registers 12

    const-string v0, "GMcenter.getUserInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1f
    return-void

    :cond_20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "userInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "userInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "userInfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "userInfo"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "timestamp"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "serverInfo"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "opentime"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "serverInfo"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "servername"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "serverInfo"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "servercode"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "code"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    const/4 v9, -0x4

    iput v9, v8, Landroid/os/Message;->what:I

    iget-object v9, p0, Lcom/yyjia/sdk/center/GMcenter;->mHandle:Landroid/os/Handler;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v8, "json"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_107} :catch_109

    goto/16 :goto_1f

    :catch_109
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1f
.end method


# virtual methods
.method public checkLogin()V
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Lcom/yyjia/sdk/center/GMcenter;->ischeck:I

    if-nez v0, :cond_1e

    new-instance v0, Lcom/yyjia/sdk/e/v;

    sget-object v1, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yyjia/sdk/e/v;-><init>(Landroid/content/Context;)V

    :try_start_c
    sget-object v1, Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;

    invoke-virtual {v1}, Lcom/yyjia/sdk/data/a;->a()I

    move-result v1

    sget-object v2, Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;

    invoke-virtual {v2}, Lcom/yyjia/sdk/data/a;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/e/v;->a(II)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1b} :catch_5f

    :goto_1b
    const/4 v0, 0x1

    iput v0, p0, Lcom/yyjia/sdk/center/GMcenter;->ischeck:I

    :cond_1e
    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    const-string v1, "abc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sessionid"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "logintype"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yyjia/sdk/center/GMcenter;->setLoginType(Ljava/lang/String;)V

    const-string v2, "u"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yyjia/sdk/center/GMcenter;->username1:Ljava/lang/String;

    const-string v2, "p"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->password:Ljava/lang/String;

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->loginType:Ljava/lang/String;

    if-nez v0, :cond_4f

    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/center/GMcenter;->setLoginType(Ljava/lang/String;)V

    :cond_4f
    if-eqz v1, :cond_64

    new-instance v0, Lcom/yyjia/sdk/center/k;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/center/k;-><init>(Lcom/yyjia/sdk/center/GMcenter;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_5e
    return-void

    :catch_5f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    :cond_64
    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/yyjia/sdk/center/GMcenter;->loginListener:Lcom/yyjia/sdk/listener/LoginListener;

    invoke-virtual {p0, v0, v1}, Lcom/yyjia/sdk/center/GMcenter;->login(Landroid/content/Context;Lcom/yyjia/sdk/listener/LoginListener;)V

    goto :goto_5e
.end method

.method public disstoolbar()V
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->flToolBarPlace:Lcom/yyjia/sdk/e/g;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->flToolBarPlace:Lcom/yyjia/sdk/e/g;

    invoke-virtual {v0}, Lcom/yyjia/sdk/e/g;->b()V

    :cond_9
    return-void
.end method

.method public getBbsUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->bbsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLogin()I
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/center/GMcenter;->isLogin:I

    return v0
.end method

.method public getLoginListener()Lcom/yyjia/sdk/listener/LoginListener;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->loginListener:Lcom/yyjia/sdk/listener/LoginListener;

    return-object v0
.end method

.method public getLoginType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->loginType:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoutListener()Lcom/yyjia/sdk/listener/LogoutListener;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->logoutListener:Lcom/yyjia/sdk/listener/LogoutListener;

    return-object v0
.end method

.method public getMoreappUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->moreappUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPayListener()Lcom/yyjia/sdk/listener/PayListener;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->payListener:Lcom/yyjia/sdk/listener/PayListener;

    return-object v0
.end method

.method public getPaylogUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->paylogUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    sget-object v1, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    const-string v2, "abc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    :try_start_b
    const-string v2, "sessionid"

    const-string v3, "abc"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_18} :catch_1a

    move-result-object v0

    :goto_19
    return-object v0

    :catch_1a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_19
.end method

.method public getUid()I
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/center/GMcenter;->uid:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getbarUrl()V
    .registers 3

    new-instance v0, Lcom/yyjia/sdk/center/m;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/center/m;-><init>(Lcom/yyjia/sdk/center/GMcenter;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public login(Landroid/content/Context;Lcom/yyjia/sdk/listener/LoginListener;)V
    .registers 10

    const/4 v2, 0x0

    const-string v0, "abc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "u"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yyjia/sdk/center/GMcenter;->username1:Ljava/lang/String;

    const-string v1, "p"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->password:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/yyjia/sdk/center/GMcenter;->setUsername(Ljava/lang/String;)V

    new-instance v0, Lcom/yyjia/sdk/f/at;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/yyjia/sdk/center/GMcenter;->username1:Ljava/lang/String;

    iget-object v4, p0, Lcom/yyjia/sdk/center/GMcenter;->password:Ljava/lang/String;

    sget-object v6, Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/yyjia/sdk/f/at;-><init>(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/yyjia/sdk/listener/LoginListener;Lcom/yyjia/sdk/data/a;)V

    return-void
.end method

.method public logout()V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    const-string v1, "abc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sessionid"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "logintype"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "u"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/center/GMcenter;->logoutServer(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/center/GMcenter;->setIsLogin(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/center/GMcenter;->setUsername(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->loginListener:Lcom/yyjia/sdk/listener/LoginListener;

    const-string v1, "1"

    invoke-interface {v0, v1}, Lcom/yyjia/sdk/listener/LoginListener;->logoutSuccessed(Ljava/lang/String;)V

    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/yyjia/sdk/center/GMcenter;->loginListener:Lcom/yyjia/sdk/listener/LoginListener;

    invoke-virtual {p0, v0, v1}, Lcom/yyjia/sdk/center/GMcenter;->login(Landroid/content/Context;Lcom/yyjia/sdk/listener/LoginListener;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    :goto_3b
    return-void

    :catch_3c
    move-exception v0

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->loginListener:Lcom/yyjia/sdk/listener/LoginListener;

    const-string v1, "-1"

    invoke-interface {v0, v1}, Lcom/yyjia/sdk/listener/LoginListener;->logoutSuccessed(Ljava/lang/String;)V

    goto :goto_3b
.end method

.method public logout1()V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    const-string v1, "abc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sessionid"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "logintype"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "u"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/center/GMcenter;->logoutServer(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/center/GMcenter;->setIsLogin(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/center/GMcenter;->setUsername(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->loginListener:Lcom/yyjia/sdk/listener/LoginListener;

    const-string v1, "1"

    invoke-interface {v0, v1}, Lcom/yyjia/sdk/listener/LoginListener;->logoutSuccessed(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    :goto_34
    return-void

    :catch_35
    move-exception v0

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->loginListener:Lcom/yyjia/sdk/listener/LoginListener;

    const-string v1, "-1"

    invoke-interface {v0, v1}, Lcom/yyjia/sdk/listener/LoginListener;->logoutSuccessed(Ljava/lang/String;)V

    goto :goto_34
.end method

.method public logoutServer(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/yyjia/sdk/center/l;

    invoke-direct {v0, p0, p1}, Lcom/yyjia/sdk/center/l;-><init>(Lcom/yyjia/sdk/center/GMcenter;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public pay(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "rmb"

    const v2, 0x3c23d70a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v1, "productname"

    const-string v2, "TestProduct"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "APPID"

    sget-object v2, Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;

    invoke-virtual {v2}, Lcom/yyjia/sdk/data/a;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "COOPID"

    sget-object v2, Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;

    invoke-virtual {v2}, Lcom/yyjia/sdk/data/a;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class v1, Lcom/yyjia/sdk/PayActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public pay(Landroid/content/Context;FLjava/lang/String;)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "rmb"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v1, "productname"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "APPID"

    sget-object v2, Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;

    invoke-virtual {v2}, Lcom/yyjia/sdk/data/a;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "COOPID"

    sget-object v2, Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;

    invoke-virtual {v2}, Lcom/yyjia/sdk/data/a;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class v1, Lcom/yyjia/sdk/PayActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public pay(Landroid/content/Context;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yyjia/sdk/listener/PayListener;)V
    .registers 12

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "rmb"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v1, "productname"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "serverId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "charId"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "callbackInfo"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cporderid"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p8}, Lcom/yyjia/sdk/center/GMcenter;->setPayListener(Lcom/yyjia/sdk/listener/PayListener;)V

    const-string v1, "APPID"

    sget-object v2, Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;

    invoke-virtual {v2}, Lcom/yyjia/sdk/data/a;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "COOPID"

    sget-object v2, Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;

    invoke-virtual {v2}, Lcom/yyjia/sdk/data/a;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class v1, Lcom/yyjia/sdk/PayActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setBbsUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/center/GMcenter;->bbsUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsLogin(I)V
    .registers 2

    iput p1, p0, Lcom/yyjia/sdk/center/GMcenter;->isLogin:I

    return-void
.end method

.method public setLoginListener(Lcom/yyjia/sdk/listener/LoginListener;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/center/GMcenter;->loginListener:Lcom/yyjia/sdk/listener/LoginListener;

    return-void
.end method

.method public setLoginType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/center/GMcenter;->loginType:Ljava/lang/String;

    return-void
.end method

.method public setLogoutListener(Lcom/yyjia/sdk/listener/LogoutListener;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/center/GMcenter;->logoutListener:Lcom/yyjia/sdk/listener/LogoutListener;

    return-void
.end method

.method public setMoreappUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/center/GMcenter;->moreappUrl:Ljava/lang/String;

    return-void
.end method

.method public setPayListener(Lcom/yyjia/sdk/listener/PayListener;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/center/GMcenter;->payListener:Lcom/yyjia/sdk/listener/PayListener;

    return-void
.end method

.method public setPaylogUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/center/GMcenter;->paylogUrl:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .registers 2

    iput p1, p0, Lcom/yyjia/sdk/center/GMcenter;->uid:I

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/center/GMcenter;->username:Ljava/lang/String;

    return-void
.end method

.method public showtoolbar()V
    .registers 3

    new-instance v0, Lcom/yyjia/sdk/e/g;

    sget-object v1, Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yyjia/sdk/e/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->flToolBarPlace:Lcom/yyjia/sdk/e/g;

    iget-object v0, p0, Lcom/yyjia/sdk/center/GMcenter;->flToolBarPlace:Lcom/yyjia/sdk/e/g;

    invoke-virtual {v0}, Lcom/yyjia/sdk/e/g;->a()V

    return-void
.end method
