.class Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;
.super Ljava/lang/Object;
.source "SMCPayGateway.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->performPay(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

.field private final synthetic val$orderJson:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    iput-object p2, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->val$orderJson:Lorg/json/JSONObject;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 83
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 85
    .local v1, "msg":Landroid/os/Message;
    :try_start_6
    iget-object v3, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    iget-object v4, v3, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->lock:Ljava/lang/Integer;

    monitor-enter v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_67
    .catchall {:try_start_6 .. :try_end_b} :catchall_a7

    .line 86
    :try_start_b
    iget-object v3, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    iget-object v3, v3, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->sftCheckout:Lcom/shengpay/smc/ISFTCheckout;

    if-nez v3, :cond_18

    .line 87
    iget-object v3, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    iget-object v3, v3, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->lock:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 85
    :cond_18
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_64

    .line 91
    :try_start_19
    iget-object v3, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    iget-object v3, v3, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->sftCheckout:Lcom/shengpay/smc/ISFTCheckout;

    iget-object v4, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    # getter for: Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mCallback:Lcom/shengpay/smc/ICheckoutCallback;
    invoke-static {v4}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->access$4(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)Lcom/shengpay/smc/ICheckoutCallback;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/shengpay/smc/ISFTCheckout;->registerCallback(Lcom/shengpay/smc/ICheckoutCallback;)V

    .line 94
    iget-object v3, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    iget-object v3, v3, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->sftCheckout:Lcom/shengpay/smc/ISFTCheckout;

    iget-object v4, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->val$orderJson:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/shengpay/smc/ISFTCheckout;->payOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "strRet":Ljava/lang/String;
    iget-object v3, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    iget-object v3, v3, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->sftCheckout:Lcom/shengpay/smc/ISFTCheckout;

    iget-object v4, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    # getter for: Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mCallback:Lcom/shengpay/smc/ICheckoutCallback;
    invoke-static {v4}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->access$4(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)Lcom/shengpay/smc/ICheckoutCallback;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/shengpay/smc/ISFTCheckout;->unregisterCallback(Lcom/shengpay/smc/ICheckoutCallback;)V

    .line 99
    const/4 v3, -0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 100
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    iget-object v3, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    # getter for: Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->access$5(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_4f} :catch_67
    .catchall {:try_start_19 .. :try_end_4f} :catchall_a7

    .line 108
    iget-object v3, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    # getter for: Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->access$1(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    # getter for: Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mSDPayConnection:Landroid/content/ServiceConnection;
    invoke-static {v4}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->access$2(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 109
    iget-object v3, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    invoke-static {v3, v6}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->access$3(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;Z)V

    .line 111
    .end local v2    # "strRet":Ljava/lang/String;
    :goto_63
    return-void

    .line 85
    :catchall_64
    move-exception v3

    :try_start_65
    monitor-exit v4
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw v3
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_67} :catch_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_a7

    .line 102
    :catch_67
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    :try_start_68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    const/4 v3, -0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 105
    iget-object v3, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u652f\u4ed8\u5931\u8d25:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->errorCallBackMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    iget-object v3, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    # getter for: Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->access$5(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_92
    .catchall {:try_start_68 .. :try_end_92} :catchall_a7

    .line 108
    iget-object v3, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    # getter for: Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->access$1(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    # getter for: Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mSDPayConnection:Landroid/content/ServiceConnection;
    invoke-static {v4}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->access$2(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 109
    iget-object v3, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    invoke-static {v3, v6}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->access$3(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;Z)V

    goto :goto_63

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_a7
    move-exception v3

    .line 108
    iget-object v4, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    # getter for: Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->access$1(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    # getter for: Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mSDPayConnection:Landroid/content/ServiceConnection;
    invoke-static {v5}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->access$2(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 109
    iget-object v4, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    invoke-static {v4, v6}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->access$3(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;Z)V

    .line 110
    throw v3
.end method
