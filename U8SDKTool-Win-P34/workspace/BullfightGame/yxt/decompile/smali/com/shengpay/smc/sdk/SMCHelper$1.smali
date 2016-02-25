.class Lcom/shengpay/smc/sdk/SMCHelper$1;
.super Landroid/os/Handler;
.source "SMCHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shengpay/smc/sdk/SMCHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shengpay/smc/sdk/SMCHelper;


# direct methods
.method constructor <init>(Lcom/shengpay/smc/sdk/SMCHelper;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/shengpay/smc/sdk/SMCHelper$1;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;

    .line 64
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 66
    iget-object v3, p0, Lcom/shengpay/smc/sdk/SMCHelper$1;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;

    # invokes: Lcom/shengpay/smc/sdk/SMCHelper;->closeProgress()V
    invoke-static {v3}, Lcom/shengpay/smc/sdk/SMCHelper;->access$0(Lcom/shengpay/smc/sdk/SMCHelper;)V

    .line 67
    iget v2, p1, Landroid/os/Message;->what:I

    .line 68
    .local v2, "whatId":I
    packed-switch v2, :pswitch_data_58

    .line 96
    :goto_a
    return-void

    .line 70
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_17

    .line 72
    iget-object v3, p0, Lcom/shengpay/smc/sdk/SMCHelper$1;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;

    # invokes: Lcom/shengpay/smc/sdk/SMCHelper;->showCheckFailedDialog()V
    invoke-static {v3}, Lcom/shengpay/smc/sdk/SMCHelper;->access$1(Lcom/shengpay/smc/sdk/SMCHelper;)V

    goto :goto_a

    .line 74
    :cond_17
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;

    iget-object v5, p0, Lcom/shengpay/smc/sdk/SMCHelper$1;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;

    invoke-direct {v4, v5, v0}, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;-><init>(Lcom/shengpay/smc/sdk/SMCHelper;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_a

    .line 78
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_27
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 79
    .local v1, "status":I
    packed-switch v1, :pswitch_data_60

    .line 90
    iget-object v3, p0, Lcom/shengpay/smc/sdk/SMCHelper$1;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;

    # invokes: Lcom/shengpay/smc/sdk/SMCHelper;->showCheckFailedDialog()V
    invoke-static {v3}, Lcom/shengpay/smc/sdk/SMCHelper;->access$1(Lcom/shengpay/smc/sdk/SMCHelper;)V

    goto :goto_a

    .line 81
    :pswitch_3a
    iget-object v3, p0, Lcom/shengpay/smc/sdk/SMCHelper$1;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;

    # invokes: Lcom/shengpay/smc/sdk/SMCHelper;->showCheckFailedDialog()V
    invoke-static {v3}, Lcom/shengpay/smc/sdk/SMCHelper;->access$1(Lcom/shengpay/smc/sdk/SMCHelper;)V

    goto :goto_a

    .line 84
    :pswitch_40
    iget-object v3, p0, Lcom/shengpay/smc/sdk/SMCHelper$1;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;

    # invokes: Lcom/shengpay/smc/sdk/SMCHelper;->showInstallConfirmDialog()V
    invoke-static {v3}, Lcom/shengpay/smc/sdk/SMCHelper;->access$2(Lcom/shengpay/smc/sdk/SMCHelper;)V

    goto :goto_a

    .line 87
    :pswitch_46
    iget-object v3, p0, Lcom/shengpay/smc/sdk/SMCHelper$1;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;

    # getter for: Lcom/shengpay/smc/sdk/SMCHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/shengpay/smc/sdk/SMCHelper;->access$3(Lcom/shengpay/smc/sdk/SMCHelper;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u4e0b\u8f7d\u5df2\u53d6\u6d88"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 68
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_b
        :pswitch_27
    .end packed-switch

    .line 79
    :pswitch_data_60
    .packed-switch -0x1
        :pswitch_46
        :pswitch_3a
        :pswitch_40
    .end packed-switch
.end method
