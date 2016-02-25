.class Lcom/snda/youni/sdk/DownloadWebPage$3;
.super Landroid/webkit/WebViewClient;
.source "DownloadWebPage.java"


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
    iput-object p1, p0, Lcom/snda/youni/sdk/DownloadWebPage$3;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    .line 119
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    .line 127
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage$3;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    # getter for: Lcom/snda/youni/sdk/DownloadWebPage;->loadError:Z
    invoke-static {v0}, Lcom/snda/youni/sdk/DownloadWebPage;->access$1(Lcom/snda/youni/sdk/DownloadWebPage;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 129
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage$3;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    # getter for: Lcom/snda/youni/sdk/DownloadWebPage;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/snda/youni/sdk/DownloadWebPage;->access$0(Lcom/snda/youni/sdk/DownloadWebPage;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage$3;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    # getter for: Lcom/snda/youni/sdk/DownloadWebPage;->loadingLayout:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/snda/youni/sdk/DownloadWebPage;->access$2(Lcom/snda/youni/sdk/DownloadWebPage;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage$3;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    # getter for: Lcom/snda/youni/sdk/DownloadWebPage;->titleLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/snda/youni/sdk/DownloadWebPage;->access$3(Lcom/snda/youni/sdk/DownloadWebPage;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 133
    :cond_29
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 123
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "wallet"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 139
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage$3;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snda/youni/sdk/DownloadWebPage;->access$4(Lcom/snda/youni/sdk/DownloadWebPage;Z)V

    .line 140
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage$3;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    # getter for: Lcom/snda/youni/sdk/DownloadWebPage;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/snda/youni/sdk/DownloadWebPage;->access$0(Lcom/snda/youni/sdk/DownloadWebPage;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage$3;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    # getter for: Lcom/snda/youni/sdk/DownloadWebPage;->loadingLayout:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/snda/youni/sdk/DownloadWebPage;->access$2(Lcom/snda/youni/sdk/DownloadWebPage;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage$3;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    # getter for: Lcom/snda/youni/sdk/DownloadWebPage;->titleLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/snda/youni/sdk/DownloadWebPage;->access$3(Lcom/snda/youni/sdk/DownloadWebPage;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage$3;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    # getter for: Lcom/snda/youni/sdk/DownloadWebPage;->loadingFailedLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/snda/youni/sdk/DownloadWebPage;->access$5(Lcom/snda/youni/sdk/DownloadWebPage;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 145
    :cond_38
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 149
    const-string v1, "walletback://back"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 150
    iget-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage$3;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    invoke-virtual {v1}, Lcom/snda/youni/sdk/DownloadWebPage;->dismiss()V

    move v1, v2

    .line 161
    :goto_10
    return v1

    .line 152
    :cond_11
    const-string v1, "walletdownload://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 153
    invoke-static {p2}, Lcom/snda/youni/sdk/DownloadWebPage;->getQueryParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "url"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 154
    .local v0, "downloadUrl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_42

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 155
    iget-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage$3;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    invoke-virtual {v1}, Lcom/snda/youni/sdk/DownloadWebPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/snda/youni/sdk/YouniHelper;->getInstance(Landroid/content/Context;)Lcom/snda/youni/sdk/YouniHelper;

    move-result-object v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/snda/youni/sdk/YouniHelper;->downloadYouni(Ljava/lang/String;)V

    :goto_40
    move v1, v2

    .line 159
    goto :goto_10

    .line 157
    :cond_42
    iget-object v1, p0, Lcom/snda/youni/sdk/DownloadWebPage$3;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    invoke-virtual {v1}, Lcom/snda/youni/sdk/DownloadWebPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/snda/youni/sdk/YouniHelper;->getInstance(Landroid/content/Context;)Lcom/snda/youni/sdk/YouniHelper;

    move-result-object v1

    const-string v3, "http://y.sdo.com/download/android?net=web&from=sdp_sdk_jdw&ver=1.0.0"

    invoke-virtual {v1, v3}, Lcom/snda/youni/sdk/YouniHelper;->downloadYouni(Ljava/lang/String;)V

    goto :goto_40

    .line 161
    .end local v0    # "downloadUrl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_52
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_10
.end method
