.class public Lcom/yyjia/sdk/f/bv;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/PopupWindow;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Lcom/yyjia/sdk/listener/LoginListener;

.field private g:Landroid/widget/Button;

.field private h:Ljava/util/ArrayList;

.field private i:F

.field private j:I

.field private k:I

.field private l:Lcom/yyjia/sdk/data/a;

.field private m:Lcom/yyjia/sdk/center/GMcenter;

.field private n:Lcom/yyjia/sdk/a/a/b;

.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yyjia/sdk/listener/LoginListener;Lcom/yyjia/sdk/data/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yyjia/sdk/f/bv;->h:Ljava/util/ArrayList;

    const/16 v0, 0x262

    iput v0, p0, Lcom/yyjia/sdk/f/bv;->j:I

    const/16 v0, 0x226

    iput v0, p0, Lcom/yyjia/sdk/f/bv;->k:I

    new-instance v0, Lcom/yyjia/sdk/a/a/b;

    invoke-direct {v0}, Lcom/yyjia/sdk/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/yyjia/sdk/f/bv;->n:Lcom/yyjia/sdk/a/a/b;

    new-instance v0, Lcom/yyjia/sdk/f/bw;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/f/bw;-><init>(Lcom/yyjia/sdk/f/bv;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/bv;->o:Landroid/os/Handler;

    iput-object p1, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/yyjia/sdk/f/bv;->l:Lcom/yyjia/sdk/data/a;

    invoke-static {p1}, Lcom/yyjia/sdk/center/GMcenter;->getInstance(Landroid/content/Context;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/f/bv;->m:Lcom/yyjia/sdk/center/GMcenter;

    iput-object p2, p0, Lcom/yyjia/sdk/f/bv;->f:Lcom/yyjia/sdk/listener/LoginListener;

    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    invoke-static {p1}, Lcom/yyjia/sdk/e/ad;->a(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/yyjia/sdk/f/bv;->i:F

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/bv;->c:Landroid/widget/EditText;

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/bv;->d:Landroid/widget/EditText;

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/bv;->e:Landroid/widget/EditText;

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/bv;->g:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/yyjia/sdk/f/bv;->a()V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/bv;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .registers 3

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/yyjia/sdk/f/bv;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->b:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1e

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/yyjia/sdk/f/bv;->b()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/yyjia/sdk/f/bv;->i:F

    iget v3, p0, Lcom/yyjia/sdk/f/bv;->j:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/yyjia/sdk/f/bv;->i:F

    iget v4, p0, Lcom/yyjia/sdk/f/bv;->k:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/bv;->b:Landroid/widget/PopupWindow;

    :cond_1e
    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->b:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->b:Landroid/widget/PopupWindow;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    const-string v2, "style"

    const-string v3, "yyjia_sdk_MyAnim"

    invoke-static {v1, v2, v3}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->b:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/yyjia/sdk/f/bx;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/bx;-><init>(Lcom/yyjia/sdk/f/bv;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->b:Landroid/widget/PopupWindow;

    const/16 v1, 0x11

    invoke-virtual {v0, p1, v1, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/bv;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/yyjia/sdk/f/bv;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/bv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/yyjia/sdk/f/bv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    const-string v0, "result"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xe9

    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "sessionid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_17} :catch_1b

    :goto_17
    sparse-switch v1, :sswitch_data_3c

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_17

    :sswitch_20
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1a

    :sswitch_2e
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1a

    :sswitch_data_3c
    .sparse-switch
        -0x3 -> :sswitch_2e
        0x1 -> :sswitch_20
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    new-instance v7, Lcom/yyjia/sdk/c/e;

    new-instance v0, Lcom/yyjia/sdk/f/cd;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/f/cd;-><init>(Lcom/yyjia/sdk/f/bv;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    new-instance v2, Lcom/yyjia/sdk/f/ce;

    invoke-direct {v2, p0}, Lcom/yyjia/sdk/f/ce;-><init>(Lcom/yyjia/sdk/f/bv;)V

    invoke-direct {v7, v0, v1, v2}, Lcom/yyjia/sdk/c/e;-><init>(Lcom/yyjia/sdk/c/d;Landroid/content/Context;Lcom/yyjia/sdk/c/c;)V

    new-instance v1, Lcom/yyjia/sdk/data/b;

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/yyjia/sdk/data/b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->n:Lcom/yyjia/sdk/a/a/b;

    invoke-virtual {v1, v0}, Lcom/yyjia/sdk/data/b;->a(Lcom/yyjia/sdk/a/a/b;)V

    new-instance v0, Lcom/yyjia/sdk/b/c;

    iget-object v2, p0, Lcom/yyjia/sdk/f/bv;->n:Lcom/yyjia/sdk/a/a/b;

    invoke-direct {v0, v1, v2}, Lcom/yyjia/sdk/b/c;-><init>(Lcom/yyjia/sdk/data/b;Lcom/yyjia/sdk/a/a/b;)V

    const-string v3, ""

    const-string v4, "3"

    const-string v5, "5"

    const-string v6, "login"

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/yyjia/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/yyjia/sdk/c/e;->a(Lcom/yyjia/sdk/b/d;)V

    invoke-virtual {v7}, Lcom/yyjia/sdk/c/e;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    invoke-static {p1}, Lcom/yyjia/sdk/e/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    const-string v2, "\u8d26\u53f7\u4e3a6-20\u4f4d\u4e2d/\u82f1\u6587\uff0c\u6570\u5b57"

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/e/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    invoke-static {p2}, Lcom/yyjia/sdk/e/t;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    const-string v2, "\u5bc6\u7801\u957f\u5ea6\u4e0d\u80fd\u4f4e\u4e8e6\u4f4d"

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/e/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11

    :cond_24
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    const-string v0, "CH"

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-direct {p0, p1, p2}, Lcom/yyjia/sdk/f/bv;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_38
    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    const-string v2, "\u8f93\u5165\u7684\u4e24\u6b21\u5bc6\u7801\u4e0d\u4e00\u81f4"

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/e/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11

    :cond_44
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_49
    const-string v0, "username"

    iget-object v2, p0, Lcom/yyjia/sdk/f/bv;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "registType"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "password"

    iget-object v2, p0, Lcom/yyjia/sdk/f/bv;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_6e} :catch_1e9

    :goto_6e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_73
    const-string v0, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v0, "height"

    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "cellId"

    const-string v6, "0"

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "smsCenter"

    const-string v6, "0"

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "width"

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "imei"

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cpu"

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "language"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "imsi"

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v5, :cond_108

    const-string v0, "apn"

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_108
    const-string v3, "country"

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "osversion"

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15e
    .catch Lorg/json/JSONException; {:try_start_73 .. :try_end_15e} :catch_1ef

    :goto_15e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_163
    const-string v0, "subCoopId"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yyjia/sdk/f/bv;->l:Lcom/yyjia/sdk/data/a;

    invoke-virtual {v5}, Lcom/yyjia/sdk/data/a;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "editionId"

    const-string v4, "3.8.2"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "platformId"

    const-string v4, "1"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "productId"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yyjia/sdk/f/bv;->l:Lcom/yyjia/sdk/data/a;

    invoke-virtual {v5}, Lcom/yyjia/sdk/data/a;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a1
    .catch Lorg/json/JSONException; {:try_start_163 .. :try_end_1a1} :catch_1f5

    :goto_1a1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_1a6
    const-string v0, "coopid"

    const-string v5, "1"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1ad
    .catch Lorg/json/JSONException; {:try_start_1a6 .. :try_end_1ad} :catch_1fa

    :goto_1ad
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1b2
    const-string v5, "ac"

    const-string v6, "reg"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "userInfo"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mobileInfo"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clientInfo"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gameInfo"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1da
    .catch Lorg/json/JSONException; {:try_start_1b2 .. :try_end_1da} :catch_1ff

    :goto_1da
    new-instance v0, Lcom/yyjia/sdk/f/cc;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/f/cc;-><init>(Lcom/yyjia/sdk/f/bv;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_11

    :catch_1e9
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_6e

    :catch_1ef
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_15e

    :catch_1f5
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1a1

    :catch_1fa
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1ad

    :catch_1ff
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1da
.end method

.method private b()Landroid/view/View;
    .registers 14

    const/high16 v12, 0x41200000

    const/high16 v9, 0x43fd0000

    const/4 v11, -0x1

    const/4 v3, 0x1

    const/4 v10, 0x0

    new-instance v0, Lcom/yyjia/sdk/f/o;

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    iget v2, p0, Lcom/yyjia/sdk/f/bv;->i:F

    new-instance v6, Lcom/yyjia/sdk/f/by;

    invoke-direct {v6, p0}, Lcom/yyjia/sdk/f/by;-><init>(Lcom/yyjia/sdk/f/bv;)V

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/yyjia/sdk/f/o;-><init>(Landroid/content/Context;FZZZLcom/yyjia/sdk/f/bu;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/f/o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v11, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x42200000

    iget v5, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "\u5feb\u901f\u6ce8\u518c"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/high16 v4, 0x420c0000

    iget v5, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v4, v5

    invoke-virtual {v1, v10, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v11, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x42c80000

    iget v6, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v5, v9

    float-to-int v5, v5

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41b00000

    iget v6, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v1, v6

    invoke-virtual {v5, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, ""

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xc8

    invoke-static {v1, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v5, v9

    float-to-int v5, v5

    const/high16 v6, 0x42700000

    iget v7, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bv;->c:Landroid/widget/EditText;

    const-string v6, "\u8bf7\u8f93\u5165\u7528\u6237\u540d"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bv;->c:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->c:Landroid/widget/EditText;

    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->c:Landroid/widget/EditText;

    iget v5, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v5, v12

    float-to-int v5, v5

    invoke-virtual {v1, v5, v10, v10, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->c:Landroid/widget/EditText;

    const/high16 v5, 0x41d00000

    iget v6, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v5, v6

    invoke-virtual {v1, v10, v5}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->c:Landroid/widget/EditText;

    const/high16 v5, -0x1000000

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->c:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    const-string v6, "drawable"

    const-string v7, "yyjia_sdk_inputbox"

    invoke-static {v5, v6, v7}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->c:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v5, v9

    float-to-int v5, v5

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41b00000

    iget v6, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v1, v6

    invoke-virtual {v5, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, ""

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xc8

    invoke-static {v1, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v5, v9

    float-to-int v5, v5

    const/high16 v6, 0x42700000

    iget v7, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x40a00000

    iget v6, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/yyjia/sdk/f/bv;->d:Landroid/widget/EditText;

    const-string v6, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bv;->d:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bv;->d:Landroid/widget/EditText;

    const/16 v6, 0x81

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bv;->d:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bv;->d:Landroid/widget/EditText;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bv;->d:Landroid/widget/EditText;

    iget v6, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v6, v12

    float-to-int v6, v6

    invoke-virtual {v5, v6, v10, v10, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bv;->d:Landroid/widget/EditText;

    const/high16 v6, 0x41d00000

    iget v7, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v6, v7

    invoke-virtual {v5, v10, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bv;->d:Landroid/widget/EditText;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bv;->d:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    const-string v7, "drawable"

    const-string v8, "yyjia_sdk_inputbox"

    invoke-static {v6, v7, v8}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bv;->d:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bv;->e:Landroid/widget/EditText;

    const-string v6, "\u8bf7\u786e\u8ba4\u5bc6\u7801"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bv;->e:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->e:Landroid/widget/EditText;

    const/16 v5, 0x81

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->e:Landroid/widget/EditText;

    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->e:Landroid/widget/EditText;

    iget v5, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v5, v12

    float-to-int v5, v5

    invoke-virtual {v1, v5, v10, v10, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->e:Landroid/widget/EditText;

    const/high16 v5, 0x41d00000

    iget v6, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v5, v6

    invoke-virtual {v1, v10, v5}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->e:Landroid/widget/EditText;

    const/high16 v5, -0x1000000

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->e:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    const-string v6, "drawable"

    const-string v7, "yyjia_sdk_inputbox"

    invoke-static {v5, v6, v7}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->e:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v5, v9

    float-to-int v5, v5

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41b00000

    iget v6, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v1, v6

    invoke-virtual {v5, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, ""

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xc8

    invoke-static {v1, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v5, v9

    float-to-int v5, v5

    const/high16 v6, 0x42480000

    iget v7, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v5, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v5, v12

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x10

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42480000

    iget v7, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v7, 0x42480000

    iget v8, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v10, v10, v10, v10}, Landroid/widget/CheckBox;->setPadding(IIII)V

    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    const-string v7, "drawable"

    const-string v8, "yyjia_sdk_checkbox"

    invoke-static {v1, v7, v8}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    new-instance v1, Lcom/yyjia/sdk/f/bz;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/bz;-><init>(Lcom/yyjia/sdk/f/bv;)V

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41c80000

    iget v8, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v7, v8

    invoke-virtual {v1, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMinLines(I)V

    const-string v7, "\u6211\u5df2\u9605\u8bfb\u5e76\u540c\u610f"

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x41c80000

    iget v9, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v8, v9

    invoke-virtual {v7, v10, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setMinLines(I)V

    const-string v3, "\u300a\u4e91\u9704\u5802\u6e38\u620f-\u670d\u52a1\u6761\u6b3e\u300b"

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x15

    const/16 v8, 0x7d

    const/16 v9, 0xfa

    invoke-static {v3, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Lcom/yyjia/sdk/f/ca;

    invoke-direct {v3, p0}, Lcom/yyjia/sdk/f/ca;-><init>(Lcom/yyjia/sdk/f/bv;)V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x44004000

    iget v5, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const/high16 v5, 0x42820000

    iget v6, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v3, v12

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/yyjia/sdk/f/bv;->g:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->g:Landroid/widget/Button;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->g:Landroid/widget/Button;

    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->g:Landroid/widget/Button;

    const/high16 v3, 0x41f00000

    iget v5, p0, Lcom/yyjia/sdk/f/bv;->i:F

    mul-float/2addr v3, v5

    invoke-virtual {v1, v10, v3}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->g:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->g:Landroid/widget/Button;

    const-string v3, "\u6ce8\u518c"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->g:Landroid/widget/Button;

    iget-object v3, p0, Lcom/yyjia/sdk/f/bv;->a:Landroid/content/Context;

    const-string v5, "drawable"

    const-string v6, "yyjia_sdk_inputbox2"

    invoke-static {v3, v5, v6}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->g:Landroid/widget/Button;

    new-instance v3, Lcom/yyjia/sdk/f/cb;

    invoke-direct {v3, p0}, Lcom/yyjia/sdk/f/cb;-><init>(Lcom/yyjia/sdk/f/bv;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bv;->g:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic b(Lcom/yyjia/sdk/f/bv;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->b:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic c(Lcom/yyjia/sdk/f/bv;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/yyjia/sdk/f/bv;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/yyjia/sdk/f/bv;)Lcom/yyjia/sdk/listener/LoginListener;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->f:Lcom/yyjia/sdk/listener/LoginListener;

    return-object v0
.end method

.method static synthetic f(Lcom/yyjia/sdk/f/bv;)Lcom/yyjia/sdk/data/a;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->l:Lcom/yyjia/sdk/data/a;

    return-object v0
.end method

.method static synthetic g(Lcom/yyjia/sdk/f/bv;)Lcom/yyjia/sdk/center/GMcenter;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->m:Lcom/yyjia/sdk/center/GMcenter;

    return-object v0
.end method

.method static synthetic h(Lcom/yyjia/sdk/f/bv;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->g:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lcom/yyjia/sdk/f/bv;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bv;->e:Landroid/widget/EditText;

    return-object v0
.end method
