.class Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1$2;
.super Ljava/lang/Object;
.source "YouniHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;->onCancel(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;


# direct methods
.method constructor <init>(Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1$2;->this$2:Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1$2;->this$2:Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;

    # getter for: Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;->this$1:Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;->access$0(Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;)Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;

    move-result-object v0

    # getter for: Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->access$3(Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;)Lcom/snda/youni/sdk/YouniHelper;

    move-result-object v0

    # getter for: Lcom/snda/youni/sdk/YouniHelper;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper;->access$2(Lcom/snda/youni/sdk/YouniHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 103
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1$2;->this$2:Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;

    # getter for: Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;->this$1:Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;->access$0(Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;)Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;

    move-result-object v0

    # getter for: Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->access$3(Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;)Lcom/snda/youni/sdk/YouniHelper;

    move-result-object v0

    # getter for: Lcom/snda/youni/sdk/YouniHelper;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper;->access$2(Lcom/snda/youni/sdk/YouniHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\uff1aYouni\u5ba2\u6237\u7aef"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1$2;->this$2:Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;

    # getter for: Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;->this$1:Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;->access$0(Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;)Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;

    move-result-object v0

    # getter for: Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->access$3(Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;)Lcom/snda/youni/sdk/YouniHelper;

    move-result-object v0

    # getter for: Lcom/snda/youni/sdk/YouniHelper;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper;->access$2(Lcom/snda/youni/sdk/YouniHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 105
    return-void
.end method
