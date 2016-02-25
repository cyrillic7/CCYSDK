.class Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway$1;
.super Landroid/os/Handler;
.source "YouniPayGateway.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;


# direct methods
.method constructor <init>(Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway$1;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;

    .line 149
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 151
    iget v1, p1, Landroid/os/Message;->what:I

    .line 155
    iget-object v1, p0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway$1;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;

    # getter for: Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->callbackId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->access$0(Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/shengpay/smc/sdk/callback/ActivityCallbackManager;->removeCallback(J)Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;

    move-result-object v0

    .local v0, "callback":Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;
    if-eqz v0, :cond_1f

    .line 156
    iget-object v2, p0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway$1;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->convertGatewayCallbackMessage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->access$1(Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;->onFinished(Ljava/lang/String;)V

    .line 160
    :cond_1f
    return-void
.end method
