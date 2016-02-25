.class Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$2;
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
    iput-object p1, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$2;->this$1:Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$2;->this$1:Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;

    # getter for: Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->access$3(Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;)Lcom/snda/youni/sdk/YouniHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snda/youni/sdk/YouniHelper;->access$3(Lcom/snda/youni/sdk/YouniHelper;Z)V

    .line 117
    return-void
.end method
