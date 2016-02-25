.class public Lcom/shengpay/smc/sdk/pay/SMCPaymentClient;
.super Ljava/lang/Object;
.source "SMCPaymentClient.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static performPay(Landroid/content/Context;Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;Lorg/json/JSONObject;Lcom/shengpay/smc/sdk/common/enums/Stage;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gatewayCallback"    # Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;
    .param p2, "orderJson"    # Lorg/json/JSONObject;
    .param p3, "stage"    # Lcom/shengpay/smc/sdk/common/enums/Stage;

    .prologue
    .line 30
    if-eqz p3, :cond_5

    .line 31
    invoke-static {p3}, Lcom/shengpay/smc/sdk/common/Constant;->setTargetStage(Lcom/shengpay/smc/sdk/common/enums/Stage;)V

    .line 33
    :cond_5
    const-string v2, "payType"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "payType":Ljava/lang/String;
    invoke-static {p0, p1, v1}, Lcom/shengpay/smc/sdk/pay/gateway/PayGatewayFactory;->getPayGateway(Landroid/content/Context;Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;Ljava/lang/String;)Lcom/shengpay/smc/sdk/pay/gateway/IPayGateway;

    move-result-object v0

    .line 35
    .local v0, "gateway":Lcom/shengpay/smc/sdk/pay/gateway/IPayGateway;
    invoke-interface {v0, p2}, Lcom/shengpay/smc/sdk/pay/gateway/IPayGateway;->performPay(Lorg/json/JSONObject;)V

    .line 36
    return-void
.end method
