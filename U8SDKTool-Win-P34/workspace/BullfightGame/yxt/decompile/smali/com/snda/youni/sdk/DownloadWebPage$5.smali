.class Lcom/snda/youni/sdk/DownloadWebPage$5;
.super Ljava/lang/Object;
.source "DownloadWebPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snda/youni/sdk/DownloadWebPage;->getRetryButton()Landroid/widget/Button;
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
    iput-object p1, p0, Lcom/snda/youni/sdk/DownloadWebPage$5;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 304
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage$5;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    invoke-static {v0, v2}, Lcom/snda/youni/sdk/DownloadWebPage;->access$4(Lcom/snda/youni/sdk/DownloadWebPage;Z)V

    .line 305
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage$5;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    # getter for: Lcom/snda/youni/sdk/DownloadWebPage;->loadingFailedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/snda/youni/sdk/DownloadWebPage;->access$5(Lcom/snda/youni/sdk/DownloadWebPage;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage$5;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    # getter for: Lcom/snda/youni/sdk/DownloadWebPage;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/snda/youni/sdk/DownloadWebPage;->access$0(Lcom/snda/youni/sdk/DownloadWebPage;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage$5;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    # getter for: Lcom/snda/youni/sdk/DownloadWebPage;->loadingLayout:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/snda/youni/sdk/DownloadWebPage;->access$2(Lcom/snda/youni/sdk/DownloadWebPage;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage$5;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    # getter for: Lcom/snda/youni/sdk/DownloadWebPage;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/snda/youni/sdk/DownloadWebPage;->access$0(Lcom/snda/youni/sdk/DownloadWebPage;)Landroid/webkit/WebView;

    move-result-object v0

    sget-object v1, Lcom/snda/youni/sdk/YouniPay;->guideUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 309
    return-void
.end method
