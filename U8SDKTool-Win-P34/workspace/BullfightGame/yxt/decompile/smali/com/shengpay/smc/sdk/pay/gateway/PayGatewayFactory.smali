.class public Lcom/shengpay/smc/sdk/pay/gateway/PayGatewayFactory;
.super Ljava/lang/Object;
.source "PayGatewayFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPayGateway(Landroid/content/Context;Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;Ljava/lang/String;)Lcom/shengpay/smc/sdk/pay/gateway/IPayGateway;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gatewayCallback"    # Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;
    .param p2, "payType"    # Ljava/lang/String;

    .prologue
    .line 18
    const-string v0, "PT052"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 19
    invoke-static {p0, p1}, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->getInstance(Landroid/content/Context;Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;)Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;

    move-result-object v0

    .line 21
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0, p1}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->getInstance(Landroid/content/Context;Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;)Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    move-result-object v0

    goto :goto_c
.end method
