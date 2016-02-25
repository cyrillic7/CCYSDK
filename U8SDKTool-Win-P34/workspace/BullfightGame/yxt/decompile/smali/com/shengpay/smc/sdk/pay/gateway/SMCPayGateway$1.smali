.class Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$1;
.super Ljava/lang/Object;
.source "SMCPayGateway.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;


# direct methods
.method constructor <init>(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$1;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$1;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    iget-object v1, v0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->lock:Ljava/lang/Integer;

    monitor-enter v1

    .line 139
    :try_start_5
    iget-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$1;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    invoke-static {p2}, Lcom/shengpay/smc/ISFTCheckout$Stub;->asInterface(Landroid/os/IBinder;)Lcom/shengpay/smc/ISFTCheckout;

    move-result-object v2

    iput-object v2, v0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->sftCheckout:Lcom/shengpay/smc/ISFTCheckout;

    .line 140
    iget-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$1;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    iget-object v0, v0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->lock:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 138
    monitor-exit v1

    .line 142
    return-void

    .line 138
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$1;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->sftCheckout:Lcom/shengpay/smc/ISFTCheckout;

    .line 146
    return-void
.end method
