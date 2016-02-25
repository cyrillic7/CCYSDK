.class Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;
.super Landroid/os/AsyncTask;
.source "YouniHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snda/youni/sdk/YouniHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadYouniTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snda/youni/sdk/YouniHelper;


# direct methods
.method constructor <init>(Lcom/snda/youni/sdk/YouniHelper;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$3(Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;)Lcom/snda/youni/sdk/YouniHelper;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 126
    :try_start_0
    iget-object v2, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    # invokes: Lcom/snda/youni/sdk/YouniHelper;->downloadApkFromURL(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/snda/youni/sdk/YouniHelper;->access$4(Lcom/snda/youni/sdk/YouniHelper;Ljava/lang/String;)I

    move-result v1

    .line 127
    .local v1, "result":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v2

    .line 131
    .end local v1    # "result":I
    :goto_d
    return-object v2

    .line 128
    :catch_e
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_d
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;

    # invokes: Lcom/snda/youni/sdk/YouniHelper;->closeProgress()V
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper;->access$5(Lcom/snda/youni/sdk/YouniHelper;)V

    .line 137
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    .line 145
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;

    # invokes: Lcom/snda/youni/sdk/YouniHelper;->showDownloadFailedDialog()V
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper;->access$7(Lcom/snda/youni/sdk/YouniHelper;)V

    .line 148
    :goto_11
    return-void

    .line 139
    :pswitch_12
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;

    # invokes: Lcom/snda/youni/sdk/YouniHelper;->showInstallConfirmDialog()V
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper;->access$6(Lcom/snda/youni/sdk/YouniHelper;)V

    goto :goto_11

    .line 142
    :pswitch_18
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;

    # getter for: Lcom/snda/youni/sdk/YouniHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper;->access$0(Lcom/snda/youni/sdk/YouniHelper;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u5df2\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_11

    .line 137
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_12
        :pswitch_18
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 75
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;

    # getter for: Lcom/snda/youni/sdk/YouniHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/snda/youni/sdk/YouniHelper;->access$0(Lcom/snda/youni/sdk/YouniHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/snda/youni/sdk/YouniHelper;->access$1(Lcom/snda/youni/sdk/YouniHelper;Landroid/app/ProgressDialog;)V

    .line 76
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;

    # getter for: Lcom/snda/youni/sdk/YouniHelper;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper;->access$2(Lcom/snda/youni/sdk/YouniHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 77
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;

    # getter for: Lcom/snda/youni/sdk/YouniHelper;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper;->access$2(Lcom/snda/youni/sdk/YouniHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;

    invoke-direct {v1, p0}, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$1;-><init>(Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 112
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;

    # getter for: Lcom/snda/youni/sdk/YouniHelper;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper;->access$2(Lcom/snda/youni/sdk/YouniHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 113
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;

    # getter for: Lcom/snda/youni/sdk/YouniHelper;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper;->access$2(Lcom/snda/youni/sdk/YouniHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$2;

    invoke-direct {v1, p0}, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask$2;-><init>(Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 119
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;

    # getter for: Lcom/snda/youni/sdk/YouniHelper;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper;->access$2(Lcom/snda/youni/sdk/YouniHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\uff1aYouni\u5ba2\u6237\u7aef"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;

    # getter for: Lcom/snda/youni/sdk/YouniHelper;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper;->access$2(Lcom/snda/youni/sdk/YouniHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 121
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 4
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->this$0:Lcom/snda/youni/sdk/YouniHelper;

    # getter for: Lcom/snda/youni/sdk/YouniHelper;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/snda/youni/sdk/YouniHelper;->access$2(Lcom/snda/youni/sdk/YouniHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 153
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
