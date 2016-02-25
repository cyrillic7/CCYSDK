.class public Lcom/u8/sdk/YXTSDK;
.super Ljava/lang/Object;
.source "YXTSDK.java"


# static fields
.field private static instance:Lcom/u8/sdk/YXTSDK;


# instance fields
.field private appid:Ljava/lang/String;

.field mCenter:Lcom/yyjia/sdk/center/GMcenter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/u8/sdk/YXTSDK;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    .line 14
    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/YXTSDK;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/u8/sdk/YXTSDK;->encodeLoginResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encodeLoginResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "openId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .local v1, "ext":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "userID"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    const-string v2, "sdkUserID"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v2, "username"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v2, "sdkUserName"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v2, "token"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v2, "extension"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_28} :catch_2d

    .line 130
    :goto_28
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 118
    :catch_2d
    move-exception v0

    .line 119
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_28
.end method

.method public static getInstance()Lcom/u8/sdk/YXTSDK;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/u8/sdk/YXTSDK;->instance:Lcom/u8/sdk/YXTSDK;

    if-nez v0, :cond_b

    .line 23
    new-instance v0, Lcom/u8/sdk/YXTSDK;

    invoke-direct {v0}, Lcom/u8/sdk/YXTSDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/YXTSDK;->instance:Lcom/u8/sdk/YXTSDK;

    .line 25
    :cond_b
    sget-object v0, Lcom/u8/sdk/YXTSDK;->instance:Lcom/u8/sdk/YXTSDK;

    return-object v0
.end method

.method private initSDK()V
    .registers 3

    .prologue
    .line 40
    const-string v0, "U8SDK"

    const-string v1, "initSDK 111111"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method private parseSDKParams(Lcom/u8/sdk/SDKParams;)V
    .registers 3
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 34
    const-string v0, "YXT_APPID"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/YXTSDK;->appid:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/u8/sdk/YXTSDK;->parseSDKParams(Lcom/u8/sdk/SDKParams;)V

    .line 30
    invoke-direct {p0}, Lcom/u8/sdk/YXTSDK;->initSDK()V

    .line 31
    return-void
.end method

.method public login()V
    .registers 3

    .prologue
    .line 47
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/center/GMcenter;->getInstance1(Landroid/content/Context;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/YXTSDK;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    .line 49
    iget-object v0, p0, Lcom/u8/sdk/YXTSDK;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    new-instance v1, Lcom/u8/sdk/YXTSDK$1;

    invoke-direct {v1, p0}, Lcom/u8/sdk/YXTSDK$1;-><init>(Lcom/u8/sdk/YXTSDK;)V

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/center/GMcenter;->setLoginListener(Lcom/yyjia/sdk/listener/LoginListener;)V

    .line 80
    iget-object v0, p0, Lcom/u8/sdk/YXTSDK;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->checkLogin()V

    .line 82
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 11
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/u8/sdk/YXTSDK;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getServerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getRoleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    new-instance v8, Lcom/u8/sdk/YXTSDK$2;

    invoke-direct {v8, p0}, Lcom/u8/sdk/YXTSDK$2;-><init>(Lcom/u8/sdk/YXTSDK;)V

    invoke-virtual/range {v0 .. v8}, Lcom/yyjia/sdk/center/GMcenter;->pay(Landroid/content/Context;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yyjia/sdk/listener/PayListener;)V

    .line 104
    return-void
.end method

.method public switchLogin()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/u8/sdk/YXTSDK;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->logout()V

    .line 87
    return-void
.end method
