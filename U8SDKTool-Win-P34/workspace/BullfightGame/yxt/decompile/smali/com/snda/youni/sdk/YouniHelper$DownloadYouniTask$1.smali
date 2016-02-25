.class Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;
.super Ljava/lang/Object;
.source "YouniHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;


# direct methods
.method constructor <init>(Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;->this$1:Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;)Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;->this$1:Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 81
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 82
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;->this$1:Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;

    # getter for: Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;
    invoke-static {v1}, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->access$3(Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;)Lcom/snda/youni/sdk/YouniHelper;

    move-result-object v1

    # getter for: Lcom/snda/youni/sdk/YouniHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/snda/youni/sdk/YouniHelper;->access$0(Lcom/snda/youni/sdk/YouniHelper;)Landroid/content/Context;

    move-result-object v1

    .line 81
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 84
    const-string v1, "\u786e\u8ba4\u53d6\u6d88\u4e0b\u8f7dYouni\u5ba2\u6237\u7aef\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 85
    const-string v1, "\u786e\u8ba4"

    .line 86
    new-instance v2, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1$1;

    invoke-direct {v2, p0}, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1$1;-><init>(Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;)V

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    const-string v1, "\u53d6\u6d88"

    .line 96
    new-instance v2, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1$2;

    invoke-direct {v2, p0}, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1$2;-><init>(Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;)V

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 110
    return-void
.end method
