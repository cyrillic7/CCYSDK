.class Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$3;
.super Lcom/shengpay/smc/ICheckoutCallback$Stub;
.source "SMCPayGateway.java"


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
    iput-object p1, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$3;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    .line 165
    invoke-direct {p0}, Lcom/shengpay/smc/ICheckoutCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 171
    .local v1, "intent":Landroid/content/Intent;
    if-nez p4, :cond_f

    .line 172
    new-instance p4, Landroid/os/Bundle;

    .end local p4    # "bundle":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 175
    .restart local p4    # "bundle":Landroid/os/Bundle;
    :cond_f
    :try_start_f
    const-string v2, "CallingPid"

    invoke-virtual {p4, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    invoke-virtual {v1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_24

    .line 181
    :goto_17
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v2, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$3;->this$0:Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    # getter for: Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->access$1(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 183
    return-void

    .line 177
    :catch_24
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method
