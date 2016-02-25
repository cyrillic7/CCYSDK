.class Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;
.super Ljava/lang/Object;
.source "SMCHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;-><init>(Lcom/shengpay/smc/sdk/SMCHelper;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;


# direct methods
.method constructor <init>(Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;->this$1:Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;)Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;->this$1:Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 157
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 158
    iget-object v1, p0, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;->this$1:Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;

    # getter for: Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;
    invoke-static {v1}, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;->access$0(Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;)Lcom/shengpay/smc/sdk/SMCHelper;

    move-result-object v1

    # getter for: Lcom/shengpay/smc/sdk/SMCHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/shengpay/smc/sdk/SMCHelper;->access$3(Lcom/shengpay/smc/sdk/SMCHelper;)Landroid/content/Context;

    move-result-object v1

    .line 157
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 160
    const-string v1, "\u786e\u8ba4\u53d6\u6d88\u4e0b\u8f7d\u5b89\u88c5\u5305\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 161
    const-string v1, "\u786e\u8ba4"

    .line 162
    new-instance v2, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1$1;

    invoke-direct {v2, p0}, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1$1;-><init>(Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;)V

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    const-string v1, "\u53d6\u6d88"

    .line 172
    new-instance v2, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1$2;

    invoke-direct {v2, p0}, Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1$2;-><init>(Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask$1;)V

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 186
    return-void
.end method
