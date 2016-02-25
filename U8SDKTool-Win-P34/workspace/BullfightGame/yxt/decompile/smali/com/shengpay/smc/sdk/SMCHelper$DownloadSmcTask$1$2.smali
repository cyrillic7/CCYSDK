.class Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1$2;
.super Ljava/lang/Object;
.source "SMCHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;->onCancel(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;


# direct methods
.method constructor <init>(Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1$2;->this$2:Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1$2;->this$2:Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;

    # getter for: Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;->this$1:Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;
    invoke-static {v0}, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;->access$0(Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;)Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;

    move-result-object v0

    # getter for: Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;
    invoke-static {v0}, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;->access$0(Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;)Lcom/shengpay/smc/sdk/SMCHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shengpay/smc/sdk/SMCHelper;->access$9(Lcom/shengpay/smc/sdk/SMCHelper;Z)V

    .line 179
    iget-object v0, p0, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1$2;->this$2:Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;

    # getter for: Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;->this$1:Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;
    invoke-static {v0}, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;->access$0(Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;)Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;

    move-result-object v0

    # getter for: Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;
    invoke-static {v0}, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;->access$0(Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;)Lcom/shengpay/smc/sdk/SMCHelper;

    move-result-object v0

    # getter for: Lcom/shengpay/smc/sdk/SMCHelper;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/shengpay/smc/sdk/SMCHelper;->access$8(Lcom/shengpay/smc/sdk/SMCHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 180
    iget-object v0, p0, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1$2;->this$2:Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;

    # getter for: Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;->this$1:Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;
    invoke-static {v0}, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;->access$0(Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;)Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;

    move-result-object v0

    # getter for: Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;
    invoke-static {v0}, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;->access$0(Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;)Lcom/shengpay/smc/sdk/SMCHelper;

    move-result-object v0

    # getter for: Lcom/shengpay/smc/sdk/SMCHelper;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/shengpay/smc/sdk/SMCHelper;->access$8(Lcom/shengpay/smc/sdk/SMCHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u5b89\u88c5\u5305"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1$2;->this$2:Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;

    # getter for: Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;->this$1:Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;
    invoke-static {v0}, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;->access$0(Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;)Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;

    move-result-object v0

    # getter for: Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;
    invoke-static {v0}, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;->access$0(Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;)Lcom/shengpay/smc/sdk/SMCHelper;

    move-result-object v0

    # getter for: Lcom/shengpay/smc/sdk/SMCHelper;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/shengpay/smc/sdk/SMCHelper;->access$8(Lcom/shengpay/smc/sdk/SMCHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 182
    return-void
.end method
