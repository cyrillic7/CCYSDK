.class Lcom/snda/youni/sdk/YouniPay$4;
.super Ljava/lang/Object;
.source "YouniPay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snda/youni/sdk/YouniPay;->checkInstalledYouni(ILandroid/os/Handler;Lcom/snda/youni/sdk/Version;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snda/youni/sdk/YouniPay;

.field private final synthetic val$callback:Landroid/os/Handler;

.field private final synthetic val$myWhat:I


# direct methods
.method constructor <init>(Lcom/snda/youni/sdk/YouniPay;ILandroid/os/Handler;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snda/youni/sdk/YouniPay$4;->this$0:Lcom/snda/youni/sdk/YouniPay;

    iput p2, p0, Lcom/snda/youni/sdk/YouniPay$4;->val$myWhat:I

    iput-object p3, p0, Lcom/snda/youni/sdk/YouniPay$4;->val$callback:Landroid/os/Handler;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$4;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->isReceiverRegistered:Z
    invoke-static {v1}, Lcom/snda/youni/sdk/YouniPay;->access$8(Lcom/snda/youni/sdk/YouniPay;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 83
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$4;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/snda/youni/sdk/YouniPay;->access$5(Lcom/snda/youni/sdk/YouniPay;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$4;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->mPackageInstallationListener:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/snda/youni/sdk/YouniPay;->access$9(Lcom/snda/youni/sdk/YouniPay;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$4;->this$0:Lcom/snda/youni/sdk/YouniPay;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/snda/youni/sdk/YouniPay;->access$10(Lcom/snda/youni/sdk/YouniPay;Z)V

    .line 86
    :cond_1d
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$4;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->installed:Z
    invoke-static {v1}, Lcom/snda/youni/sdk/YouniPay;->access$16(Lcom/snda/youni/sdk/YouniPay;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 87
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 88
    .local v0, "message":Landroid/os/Message;
    iget v1, p0, Lcom/snda/youni/sdk/YouniPay$4;->val$myWhat:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 89
    const-string v1, "{\"transStatus\":\"00\",\"msg\":\"\u7528\u6237\u5df2\u53d6\u6d88\"}"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$4;->val$callback:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    .end local v0    # "message":Landroid/os/Message;
    :cond_37
    return-void
.end method
