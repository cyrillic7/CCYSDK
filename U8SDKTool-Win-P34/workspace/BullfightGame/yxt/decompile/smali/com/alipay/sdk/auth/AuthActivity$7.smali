.class Lcom/alipay/sdk/auth/AuthActivity$7;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/sdk/auth/AuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/auth/AuthActivity;)V
    .registers 2

    .prologue
    .line 213
    iput-object p1, p0, Lcom/alipay/sdk/auth/AuthActivity$7;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    .prologue
    .line 218
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 219
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity$7;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v0, p2}, Lcom/alipay/sdk/auth/AuthActivity;->d(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 224
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 225
    const/4 v0, 0x1

    .line 227
    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_c
.end method
