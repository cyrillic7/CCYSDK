.class Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;
.super Ljava/lang/Object;
.source "SMCHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shengpay/smc/sdk/SMCHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadSmcTask"
.end annotation


# instance fields
.field private postData:Ljava/lang/String;

.field final synthetic this$0:Lcom/shengpay/smc/sdk/SMCHelper;


# direct methods
.method public constructor <init>(Lcom/shengpay/smc/sdk/SMCHelper;Ljava/lang/String;)V
    .registers 6
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 148
    iput-object p1, p0, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;->postData:Ljava/lang/String;

    .line 150
    new-instance v0, Landroid/app/ProgressDialog;

    # getter for: Lcom/shengpay/smc/sdk/SMCHelper;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/shengpay/smc/sdk/SMCHelper;->access$3(Lcom/shengpay/smc/sdk/SMCHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/shengpay/smc/sdk/SMCHelper;->access$5(Lcom/shengpay/smc/sdk/SMCHelper;Landroid/app/ProgressDialog;)V

    .line 151
    # getter for: Lcom/shengpay/smc/sdk/SMCHelper;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {p1}, Lcom/shengpay/smc/sdk/SMCHelper;->access$8(Lcom/shengpay/smc/sdk/SMCHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 153
    # getter for: Lcom/shengpay/smc/sdk/SMCHelper;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {p1}, Lcom/shengpay/smc/sdk/SMCHelper;->access$8(Lcom/shengpay/smc/sdk/SMCHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;

    invoke-direct {v1, p0}, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;-><init>(Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 188
    # getter for: Lcom/shengpay/smc/sdk/SMCHelper;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {p1}, Lcom/shengpay/smc/sdk/SMCHelper;->access$8(Lcom/shengpay/smc/sdk/SMCHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 189
    # getter for: Lcom/shengpay/smc/sdk/SMCHelper;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {p1}, Lcom/shengpay/smc/sdk/SMCHelper;->access$8(Lcom/shengpay/smc/sdk/SMCHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u5b89\u88c5\u5305"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    # getter for: Lcom/shengpay/smc/sdk/SMCHelper;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {p1}, Lcom/shengpay/smc/sdk/SMCHelper;->access$8(Lcom/shengpay/smc/sdk/SMCHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 191
    return-void
.end method

.method static synthetic access$0(Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;)Lcom/shengpay/smc/sdk/SMCHelper;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 195
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 196
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 198
    :try_start_8
    iget-object v3, p0, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;

    iget-object v4, p0, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;->postData:Ljava/lang/String;

    # invokes: Lcom/shengpay/smc/sdk/SMCHelper;->downloadApkFromURL(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/shengpay/smc/sdk/SMCHelper;->access$10(Lcom/shengpay/smc/sdk/SMCHelper;Ljava/lang/String;)I

    move-result v2

    .line 200
    .local v2, "result":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_20

    .line 205
    .end local v2    # "result":I
    :goto_16
    iget-object v3, p0, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;

    # getter for: Lcom/shengpay/smc/sdk/SMCHelper;->smcHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/shengpay/smc/sdk/SMCHelper;->access$7(Lcom/shengpay/smc/sdk/SMCHelper;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    return-void

    .line 201
    :catch_20
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_16
.end method
