.class public Lcom/u8/sdk/ATETSDK;
.super Ljava/lang/Object;
.source "ATETSDK.java"


# static fields
.field private static instance:Lcom/u8/sdk/ATETSDK;


# instance fields
.field private appid:Ljava/lang/String;

.field private appkey:Ljava/lang/String;

.field private cpid:Ljava/lang/String;

.field private isNeedLogin:Z

.field private payFlag10:Ljava/lang/String;

.field private payFlag100:Ljava/lang/String;

.field private payFlag200:Ljava/lang/String;

.field private payFlag30:Ljava/lang/String;

.field private payFlag50:Ljava/lang/String;

.field private payFlag500:Ljava/lang/String;

.field private payUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/ATETSDK;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/u8/sdk/ATETSDK;->encodeLoginResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encodeLoginResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 126
    .local v1, "ext":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "userID"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    const-string v2, "sdkUserID"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v2, "username"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v2, "sdkUserName"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v2, "token"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v2, "extension"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_28} :catch_2d

    .line 145
    :goto_28
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 133
    :catch_2d
    move-exception v0

    .line 134
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_28
.end method

.method public static getInstance()Lcom/u8/sdk/ATETSDK;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/u8/sdk/ATETSDK;->instance:Lcom/u8/sdk/ATETSDK;

    if-nez v0, :cond_b

    .line 40
    new-instance v0, Lcom/u8/sdk/ATETSDK;

    invoke-direct {v0}, Lcom/u8/sdk/ATETSDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/ATETSDK;->instance:Lcom/u8/sdk/ATETSDK;

    .line 42
    :cond_b
    sget-object v0, Lcom/u8/sdk/ATETSDK;->instance:Lcom/u8/sdk/ATETSDK;

    return-object v0
.end method

.method private initSDK()V
    .registers 5

    .prologue
    .line 68
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/u8/sdk/ATETSDK;->appid:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/u8/sdk/ATETSDK;->isNeedLogin:Z

    invoke-static {v0, v1, v2, v3}, Lcom/atet/api/SDKApi;->init(Landroid/app/Activity;ILjava/lang/String;Z)V

    .line 70
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/ATETSDK$1;

    invoke-direct {v1, p0}, Lcom/u8/sdk/ATETSDK$1;-><init>(Lcom/u8/sdk/ATETSDK;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->setActivityCallback(Lcom/u8/sdk/IActivityCallback;)V

    .line 97
    return-void
.end method

.method private parseSDKParams(Lcom/u8/sdk/SDKParams;)V
    .registers 3
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 51
    const-string v0, "ATET_APPID"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/ATETSDK;->appid:Ljava/lang/String;

    .line 52
    const-string v0, "ATET_APPKEY"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/ATETSDK;->appkey:Ljava/lang/String;

    .line 53
    const-string v0, "ATET_ISNEEDLOGON"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/u8/sdk/ATETSDK;->isNeedLogin:Z

    .line 54
    const-string v0, "ATET_CPID"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/ATETSDK;->cpid:Ljava/lang/String;

    .line 55
    const-string v0, "ATET_PAYURL"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/ATETSDK;->payUrl:Ljava/lang/String;

    .line 56
    const-string v0, "ATET_PAYFLAG_10"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/ATETSDK;->payFlag10:Ljava/lang/String;

    .line 57
    const-string v0, "ATET_PAYFLAG_30"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/ATETSDK;->payFlag30:Ljava/lang/String;

    .line 58
    const-string v0, "ATET_PAYFLAG_50"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/ATETSDK;->payFlag50:Ljava/lang/String;

    .line 59
    const-string v0, "ATET_PAYFLAG_100"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/ATETSDK;->payFlag100:Ljava/lang/String;

    .line 60
    const-string v0, "ATET_PAYFLAG_200"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/ATETSDK;->payFlag200:Ljava/lang/String;

    .line 61
    const-string v0, "ATET_PAYFLAG_500"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/ATETSDK;->payFlag500:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/u8/sdk/ATETSDK;->parseSDKParams(Lcom/u8/sdk/SDKParams;)V

    .line 47
    invoke-direct {p0}, Lcom/u8/sdk/ATETSDK;->initSDK()V

    .line 48
    return-void
.end method

.method public login()V
    .registers 3

    .prologue
    .line 100
    const-string v0, "U8SDK"

    const-string v1, "\u767b\u5f55:login"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/ATETSDK$2;

    invoke-direct {v1, p0}, Lcom/u8/sdk/ATETSDK$2;-><init>(Lcom/u8/sdk/ATETSDK;)V

    invoke-static {v0, v1}, Lcom/atet/api/SDKApi;->LoginUI(Landroid/app/Activity;Lcom/atet/api/pay/ui/service/IAccountExCallback;)V

    .line 119
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 9
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    const/4 v6, 0x1

    .line 149
    new-instance v0, Lcom/atet/api/pay/ui/service/PayRequest;

    invoke-direct {v0}, Lcom/atet/api/pay/ui/service/PayRequest;-><init>()V

    .line 150
    .local v0, "payRequest":Lcom/atet/api/pay/ui/service/PayRequest;
    const-string v3, "appkey"

    iget-object v4, p0, Lcom/u8/sdk/ATETSDK;->appkey:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/atet/api/pay/ui/service/PayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    const-string v3, "appid"

    iget-object v4, p0, Lcom/u8/sdk/ATETSDK;->appid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/atet/api/pay/ui/service/PayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    const-string v3, "cpid"

    iget-object v4, p0, Lcom/u8/sdk/ATETSDK;->cpid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/atet/api/pay/ui/service/PayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    const-string v3, "notifyurl"

    iget-object v4, p0, Lcom/u8/sdk/ATETSDK;->payUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/atet/api/pay/ui/service/PayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    const-string v3, "waresname"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/atet/api/pay/ui/service/PayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v1

    .line 156
    .local v1, "price":I
    const-string v2, ""

    .line 157
    .local v2, "waresid":Ljava/lang/String;
    sparse-switch v1, :sswitch_data_106

    .line 173
    :goto_34
    const-string v3, "U8SDK"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v3, "waresid"

    invoke-virtual {v0, v3, v2}, Lcom/atet/api/pay/ui/service/PayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    const-string v3, "exorderno"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/atet/api/pay/ui/service/PayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    const-string v3, "price"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/atet/api/pay/ui/service/PayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    const-string v3, "quantity"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/atet/api/pay/ui/service/PayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    const-string v3, "U8SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "APPKRY = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "APPKEY"

    invoke-static {v5}, Lcom/atet/api/pay/ui/service/PayRequest;->l1l111lll1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "APPID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 180
    iget-object v5, p0, Lcom/u8/sdk/ATETSDK;->appid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CPID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 181
    iget-object v5, p0, Lcom/u8/sdk/ATETSDK;->cpid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "NOTIFYURL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/u8/sdk/ATETSDK;->payUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "WARESID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 182
    const-string v5, "WARESNAME = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "EXORDERNO = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 183
    const-string v5, "PRICE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v5

    mul-int/lit8 v5, v5, 0x64

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "QUANTITY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v3

    .line 186
    new-instance v4, Lcom/u8/sdk/ATETSDK$3;

    invoke-direct {v4, p0}, Lcom/u8/sdk/ATETSDK$3;-><init>(Lcom/u8/sdk/ATETSDK;)V

    .line 185
    invoke-static {v3, v0, v4}, Lcom/atet/api/SDKApi;->startPay(Landroid/app/Activity;Lcom/atet/api/pay/ui/service/PayRequest;Lcom/atet/api/pay/ui/service/IPayResultCallback;)V

    .line 202
    return-void

    .line 159
    :sswitch_ee
    iget-object v2, p0, Lcom/u8/sdk/ATETSDK;->payFlag10:Ljava/lang/String;

    .line 160
    goto/16 :goto_34

    .line 161
    :sswitch_f2
    iget-object v2, p0, Lcom/u8/sdk/ATETSDK;->payFlag30:Ljava/lang/String;

    .line 162
    goto/16 :goto_34

    .line 163
    :sswitch_f6
    iget-object v2, p0, Lcom/u8/sdk/ATETSDK;->payFlag50:Ljava/lang/String;

    .line 164
    goto/16 :goto_34

    .line 165
    :sswitch_fa
    iget-object v2, p0, Lcom/u8/sdk/ATETSDK;->payFlag100:Ljava/lang/String;

    .line 166
    goto/16 :goto_34

    .line 167
    :sswitch_fe
    iget-object v2, p0, Lcom/u8/sdk/ATETSDK;->payFlag200:Ljava/lang/String;

    .line 168
    goto/16 :goto_34

    .line 169
    :sswitch_102
    iget-object v2, p0, Lcom/u8/sdk/ATETSDK;->payFlag500:Ljava/lang/String;

    goto/16 :goto_34

    .line 157
    :sswitch_data_106
    .sparse-switch
        0xa -> :sswitch_ee
        0x1e -> :sswitch_f2
        0x32 -> :sswitch_f6
        0x64 -> :sswitch_fa
        0xc8 -> :sswitch_fe
        0x1f4 -> :sswitch_102
    .end sparse-switch
.end method
