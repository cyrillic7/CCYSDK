.class Lcom/snda/youni/sdk/YouniPay$3;
.super Landroid/content/BroadcastReceiver;
.source "YouniPay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snda/youni/sdk/YouniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snda/youni/sdk/YouniPay;


# direct methods
.method constructor <init>(Lcom/snda/youni/sdk/YouniPay;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snda/youni/sdk/YouniPay$3;->this$0:Lcom/snda/youni/sdk/YouniPay;

    .line 201
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/snda/youni/sdk/YouniHelper;->PKG_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 226
    :cond_1c
    :goto_1c
    return-void

    .line 209
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$3;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->jsonParams:Ljava/lang/String;
    invoke-static {v1}, Lcom/snda/youni/sdk/YouniPay;->access$11(Lcom/snda/youni/sdk/YouniPay;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 210
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$3;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->downloadPage:Lcom/snda/youni/sdk/DownloadWebPage;
    invoke-static {v1}, Lcom/snda/youni/sdk/YouniPay;->access$12(Lcom/snda/youni/sdk/YouniPay;)Lcom/snda/youni/sdk/DownloadWebPage;
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_64

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 212
    :try_start_2d
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$3;->this$0:Lcom/snda/youni/sdk/YouniPay;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/snda/youni/sdk/YouniPay;->access$13(Lcom/snda/youni/sdk/YouniPay;Z)V

    .line 213
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$3;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->downloadPage:Lcom/snda/youni/sdk/DownloadWebPage;
    invoke-static {v1}, Lcom/snda/youni/sdk/YouniPay;->access$12(Lcom/snda/youni/sdk/YouniPay;)Lcom/snda/youni/sdk/DownloadWebPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snda/youni/sdk/DownloadWebPage;->dismiss()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3c} :catch_82
    .catchall {:try_start_2d .. :try_end_3c} :catchall_64

    .line 217
    :cond_3c
    :goto_3c
    :try_start_3c
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$3;->this$0:Lcom/snda/youni/sdk/YouniPay;

    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$3;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->jsonParams:Ljava/lang/String;
    invoke-static {v2}, Lcom/snda/youni/sdk/YouniPay;->access$11(Lcom/snda/youni/sdk/YouniPay;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snda/youni/sdk/YouniPay;->performPay(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_64

    .line 220
    :cond_47
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$3;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->isReceiverRegistered:Z
    invoke-static {v1}, Lcom/snda/youni/sdk/YouniPay;->access$8(Lcom/snda/youni/sdk/YouniPay;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 221
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$3;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/snda/youni/sdk/YouniPay;->access$5(Lcom/snda/youni/sdk/YouniPay;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$3;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->mPackageInstallationListener:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/snda/youni/sdk/YouniPay;->access$9(Lcom/snda/youni/sdk/YouniPay;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 222
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$3;->this$0:Lcom/snda/youni/sdk/YouniPay;

    invoke-static {v1, v4}, Lcom/snda/youni/sdk/YouniPay;->access$10(Lcom/snda/youni/sdk/YouniPay;Z)V

    goto :goto_1c

    .line 219
    :catchall_64
    move-exception v1

    .line 220
    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$3;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->isReceiverRegistered:Z
    invoke-static {v2}, Lcom/snda/youni/sdk/YouniPay;->access$8(Lcom/snda/youni/sdk/YouniPay;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 221
    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$3;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/snda/youni/sdk/YouniPay;->access$5(Lcom/snda/youni/sdk/YouniPay;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/snda/youni/sdk/YouniPay$3;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->mPackageInstallationListener:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/snda/youni/sdk/YouniPay;->access$9(Lcom/snda/youni/sdk/YouniPay;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 222
    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$3;->this$0:Lcom/snda/youni/sdk/YouniPay;

    invoke-static {v2, v4}, Lcom/snda/youni/sdk/YouniPay;->access$10(Lcom/snda/youni/sdk/YouniPay;Z)V

    .line 224
    :cond_81
    throw v1

    .line 214
    :catch_82
    move-exception v1

    goto :goto_3c
.end method
