.class public Lcom/shengpay/smc/sdk/pay/gateway/AbstractPayGateway;
.super Ljava/lang/Object;
.source "AbstractPayGateway.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected errorCallBackJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 22
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 23
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "orderNo"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v2, "transStatus"

    const-string v3, "02"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v2, "msg"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 30
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_18
    return-object v1

    .line 27
    :catch_19
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    const-string v2, "errorCallBackJson"

    invoke-static {v2, v0}, Lcom/shengpay/smc/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_18
.end method

.method protected errorCallBackMsg(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/shengpay/smc/sdk/pay/gateway/AbstractPayGateway;->errorCallBackJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
