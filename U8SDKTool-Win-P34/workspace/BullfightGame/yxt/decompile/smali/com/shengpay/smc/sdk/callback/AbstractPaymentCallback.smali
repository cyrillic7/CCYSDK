.class public abstract Lcom/shengpay/smc/sdk/callback/AbstractPaymentCallback;
.super Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;
.source "AbstractPaymentCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractPaymentCallback"


# instance fields
.field private callbackJson:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;-><init>()V

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/shengpay/smc/sdk/callback/AbstractPaymentCallback;->callbackJson:Lorg/json/JSONObject;

    .line 18
    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .registers 4

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/shengpay/smc/sdk/callback/AbstractPaymentCallback;->callbackJson:Lorg/json/JSONObject;

    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 71
    :goto_8
    return-object v1

    .line 69
    :catch_9
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbstractPaymentCallback"

    invoke-static {v1, v0}, Lcom/shengpay/smc/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getTransStatus()Lcom/shengpay/smc/sdk/common/enums/TransStatus;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 55
    :try_start_1
    iget-object v2, p0, Lcom/shengpay/smc/sdk/callback/AbstractPaymentCallback;->callbackJson:Lorg/json/JSONObject;

    const-string v3, "transStatus"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c

    .line 60
    :goto_b
    return-object v1

    .line 58
    :cond_c
    iget-object v2, p0, Lcom/shengpay/smc/sdk/callback/AbstractPaymentCallback;->callbackJson:Lorg/json/JSONObject;

    const-string v3, "transStatus"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->getByCode(Ljava/lang/String;)Lcom/shengpay/smc/sdk/common/enums/TransStatus;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_17} :catch_19

    move-result-object v1

    goto :goto_b

    .line 59
    :catch_19
    move-exception v0

    .line 60
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_b
.end method

.method public isFailed()Z
    .registers 3

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/shengpay/smc/sdk/callback/AbstractPaymentCallback;->getTransStatus()Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    move-result-object v0

    .local v0, "status":Lcom/shengpay/smc/sdk/common/enums/TransStatus;
    if-eqz v0, :cond_b

    .line 47
    invoke-virtual {v0}, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->isFailed()Z

    move-result v1

    .line 49
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isSuccess()Z
    .registers 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/shengpay/smc/sdk/callback/AbstractPaymentCallback;->getTransStatus()Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    move-result-object v0

    .local v0, "status":Lcom/shengpay/smc/sdk/common/enums/TransStatus;
    if-eqz v0, :cond_b

    .line 38
    invoke-virtual {v0}, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->isSuccess()Z

    move-result v1

    .line 40
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public onFinished(Ljava/lang/String;)V
    .registers 4
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 27
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/shengpay/smc/sdk/callback/AbstractPaymentCallback;->callbackJson:Lorg/json/JSONObject;

    .line 28
    invoke-virtual {p0, p1}, Lcom/shengpay/smc/sdk/callback/AbstractPaymentCallback;->onPaymentFinished(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 33
    :goto_a
    return-void

    .line 29
    :catch_b
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbstractPaymentCallback"

    invoke-static {v1, v0}, Lcom/shengpay/smc/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method protected abstract onPaymentFinished(Ljava/lang/String;)V
.end method
