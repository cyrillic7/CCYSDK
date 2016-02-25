.class public Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway$AcquireOrderTask;
.super Landroid/os/AsyncTask;
.source "YouniPayGateway.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AcquireOrderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lorg/json/JSONObject;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;


# direct methods
.method public constructor <init>(Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway$AcquireOrderTask;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway$AcquireOrderTask;->doInBackground([Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 13
    .param p1, "arg0"    # [Lorg/json/JSONObject;

    .prologue
    .line 95
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 96
    .local v5, "payJson":Lorg/json/JSONObject;
    invoke-static {}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->INSTANCE()Lcom/shengpay/smc/sdk/http/SimpleHttpClient;

    move-result-object v2

    .line 97
    .local v2, "http":Lcom/shengpay/smc/sdk/http/SimpleHttpClient;
    const/4 v8, 0x0

    aget-object v3, p1, v8

    .line 98
    .local v3, "orderJson":Lorg/json/JSONObject;
    const-string v8, "onlyReturnTransInfo"

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 99
    invoke-static {}, Lcom/shengpay/smc/sdk/common/Constant;->getOrderURL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v3}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->sendPostMessage(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 100
    .local v6, "response":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    .local v7, "result":Lorg/json/JSONObject;
    const-string v8, "message"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz v1, :cond_5b

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5b

    .line 103
    const-string v8, "YouniPayGateway"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u751f\u6210\u8ba2\u5355\u5931\u8d25:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/shengpay/smc/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v8, p0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway$AcquireOrderTask;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u751f\u6210\u8ba2\u5355\u5931\u8d25:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->errorCallBackJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 122
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local v2    # "http":Lcom/shengpay/smc/sdk/http/SimpleHttpClient;
    .end local v3    # "orderJson":Lorg/json/JSONObject;
    .end local v5    # "payJson":Lorg/json/JSONObject;
    .end local v6    # "response":Ljava/lang/String;
    .end local v7    # "result":Lorg/json/JSONObject;
    :goto_5a
    return-object v5

    .line 106
    .restart local v1    # "errorMsg":Ljava/lang/String;
    .restart local v2    # "http":Lcom/shengpay/smc/sdk/http/SimpleHttpClient;
    .restart local v3    # "orderJson":Lorg/json/JSONObject;
    .restart local v5    # "payJson":Lorg/json/JSONObject;
    .restart local v6    # "response":Ljava/lang/String;
    .restart local v7    # "result":Lorg/json/JSONObject;
    :cond_5b
    const-string v8, "transInfo"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 107
    .local v4, "orderResult":Lorg/json/JSONObject;
    if-eqz v4, :cond_c3

    const-string v8, "transNo"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c3

    .line 108
    const-string v8, "transNo"

    const-string v9, "transNo"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v8, "sessionId"

    const-string v9, "sessionId"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v8, "tokenId"

    const-string v9, "tokenId"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v8, "productName"

    const-string v9, "productName"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v8, "customerName"

    const-string v9, "customerName"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a2} :catch_a3

    goto :goto_5a

    .line 120
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local v2    # "http":Lcom/shengpay/smc/sdk/http/SimpleHttpClient;
    .end local v3    # "orderJson":Lorg/json/JSONObject;
    .end local v4    # "orderResult":Lorg/json/JSONObject;
    .end local v5    # "payJson":Lorg/json/JSONObject;
    .end local v6    # "response":Ljava/lang/String;
    .end local v7    # "result":Lorg/json/JSONObject;
    :catch_a3
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "YouniPayGateway"

    invoke-static {v8, v0}, Lcom/shengpay/smc/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    iget-object v8, p0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway$AcquireOrderTask;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u521b\u5efa\u8ba2\u5355\u5931\u8d25:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->errorCallBackJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_5a

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "errorMsg":Ljava/lang/String;
    .restart local v2    # "http":Lcom/shengpay/smc/sdk/http/SimpleHttpClient;
    .restart local v3    # "orderJson":Lorg/json/JSONObject;
    .restart local v4    # "orderResult":Lorg/json/JSONObject;
    .restart local v5    # "payJson":Lorg/json/JSONObject;
    .restart local v6    # "response":Ljava/lang/String;
    .restart local v7    # "result":Lorg/json/JSONObject;
    :cond_c3
    :try_start_c3
    const-string v8, "YouniPayGateway"

    const-string v9, "\u751f\u6210\u8ba2\u5355\u5931\u8d25,\u8ba2\u5355\u53f7\u4e3a\u7a7a\uff01"

    invoke-static {v8, v9}, Lcom/shengpay/smc/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v8, p0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway$AcquireOrderTask;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;

    const-string v9, "\u751f\u6210\u8ba2\u5355\u5931\u8d25\uff0c\u8ba2\u5355\u53f7\u4e3a\u7a7a\uff01"

    invoke-virtual {v8, v9}, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->errorCallBackJson(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_d1} :catch_a3

    move-result-object v5

    goto :goto_5a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway$AcquireOrderTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "result"    # Lorg/json/JSONObject;

    .prologue
    .line 133
    if-eqz p1, :cond_2b

    const-string v1, "transStatus"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->getByCode(Ljava/lang/String;)Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    move-result-object v1

    sget-object v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->FAIL:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    if-ne v1, v2, :cond_2b

    .line 135
    iget-object v1, p0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway$AcquireOrderTask;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;

    # getter for: Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->callbackId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->access$0(Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/shengpay/smc/sdk/callback/ActivityCallbackManager;->removeCallback(J)Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;

    move-result-object v0

    .local v0, "callback":Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;
    if-eqz v0, :cond_27

    .line 136
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;->onFinished(Ljava/lang/String;)V

    .line 141
    .end local v0    # "callback":Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;
    :cond_27
    :goto_27
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 142
    return-void

    .line 139
    :cond_2b
    iget-object v1, p0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway$AcquireOrderTask;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->performYouniPay(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->access$2(Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;Ljava/lang/String;)V

    goto :goto_27
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 130
    return-void
.end method
