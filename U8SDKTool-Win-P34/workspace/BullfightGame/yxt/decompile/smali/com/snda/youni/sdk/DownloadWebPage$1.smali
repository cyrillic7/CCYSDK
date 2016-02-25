.class Lcom/snda/youni/sdk/DownloadWebPage$1;
.super Ljava/lang/Object;
.source "DownloadWebPage.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snda/youni/sdk/DownloadWebPage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snda/youni/sdk/DownloadWebPage;


# direct methods
.method constructor <init>(Lcom/snda/youni/sdk/DownloadWebPage;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snda/youni/sdk/DownloadWebPage$1;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 93
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_20

    .line 94
    const/4 v0, 0x4

    if-ne p2, v0, :cond_20

    .line 95
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage$1;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    # getter for: Lcom/snda/youni/sdk/DownloadWebPage;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/snda/youni/sdk/DownloadWebPage;->access$0(Lcom/snda/youni/sdk/DownloadWebPage;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 96
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage$1;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    # getter for: Lcom/snda/youni/sdk/DownloadWebPage;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/snda/youni/sdk/DownloadWebPage;->access$0(Lcom/snda/youni/sdk/DownloadWebPage;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 98
    const/4 v0, 0x1

    .line 101
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method
