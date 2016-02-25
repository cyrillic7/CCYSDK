.class Lcom/yyjia/sdk/f/cl;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/cf;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/cf;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/cl;->a:Lcom/yyjia/sdk/f/cf;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/cl;)Lcom/yyjia/sdk/f/cf;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/cl;->a:Lcom/yyjia/sdk/f/cf;

    return-object v0
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7

    const/4 v2, -0x1

    const-string v0, "code="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "state="

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v2, :cond_8d

    if-eq v1, v2, :cond_89

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :try_start_17
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "client_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->getConfigInfo()Lcom/yyjia/sdk/data/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yyjia/sdk/data/a;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&client_secret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->getConfigInfo()Lcom/yyjia/sdk/data/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yyjia/sdk/data/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&grant_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "authorization_code"

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&redirect_uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "http://api.yxtsy.com/sdkapi.php?ac=qqlogin"

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://graph.qq.com/oauth2.0/token"

    new-instance v1, Lcom/yyjia/sdk/f/cp;

    invoke-direct {v1, p0, v0}, Lcom/yyjia/sdk/f/cp;-><init>(Lcom/yyjia/sdk/f/cl;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_83
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_83} :catch_84

    :goto_83
    return-void

    :catch_84
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_83

    :cond_89
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_83

    :cond_8d
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_83
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/yyjia/sdk/f/cl;->a:Lcom/yyjia/sdk/f/cf;

    invoke-static {v0}, Lcom/yyjia/sdk/f/cf;->f(Lcom/yyjia/sdk/f/cf;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    iget-object v0, p0, Lcom/yyjia/sdk/f/cl;->a:Lcom/yyjia/sdk/f/cf;

    invoke-static {v0}, Lcom/yyjia/sdk/f/cf;->d(Lcom/yyjia/sdk/f/cf;)V

    const-string v0, ".apk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/yyjia/sdk/f/cl;->a:Lcom/yyjia/sdk/f/cf;

    invoke-static {v0}, Lcom/yyjia/sdk/f/cf;->e(Lcom/yyjia/sdk/f/cf;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u4e0d\u901a\uff0c\u8bf7\u68c0\u67e5\u4f60\u7684\u7f51\u7edc\uff01"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "Page not found !"

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {p1, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 15

    const-string v0, ".apk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "code="

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "state="

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "zfb_callback-cporderid"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "wapcashier_pure_login"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "result=success"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v6, "op=close"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    const-string v6, "out_trade_no"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    const-string v6, "http://api.yxtsy.com/sdkapi.php"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const-string v7, "_alipay"

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    const-string v7, "quickpay_alipay"

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v8, "quickpay_shengpay"

    invoke-virtual {p2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_50

    iget-object v9, p0, Lcom/yyjia/sdk/f/cl;->a:Lcom/yyjia/sdk/f/cf;

    const/16 v10, 0x1771

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p2, v11}, Lcom/yyjia/sdk/f/cf;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_50
    const/4 v9, -0x1

    if-eq v7, v9, :cond_5b

    iget-object v9, p0, Lcom/yyjia/sdk/f/cl;->a:Lcom/yyjia/sdk/f/cf;

    const/16 v10, 0x1389

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p2, v11}, Lcom/yyjia/sdk/f/cf;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5b
    const/4 v9, -0x1

    if-eq v3, v9, :cond_84

    const/4 v3, -0x1

    if-ne v7, v3, :cond_84

    const/4 v3, -0x1

    if-ne v8, v3, :cond_84

    const/4 v3, -0x1

    if-ne v4, v3, :cond_84

    const/4 v3, -0x1

    if-eq v5, v3, :cond_a8

    const-string v3, "zfb_callback-cporderid-"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v4, "&out_trade_no="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/yyjia/sdk/f/cl;->a:Lcom/yyjia/sdk/f/cf;

    const/16 v5, 0xfa1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/yyjia/sdk/f/cf;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_84
    :goto_84
    const/4 v3, -0x1

    if-eq v0, v3, :cond_b4

    iget-object v0, p0, Lcom/yyjia/sdk/f/cl;->a:Lcom/yyjia/sdk/f/cf;

    invoke-static {v0}, Lcom/yyjia/sdk/f/cf;->d(Lcom/yyjia/sdk/f/cf;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/cl;->a:Lcom/yyjia/sdk/f/cf;

    invoke-static {v0}, Lcom/yyjia/sdk/f/cf;->e(Lcom/yyjia/sdk/f/cf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/e/b;->a(Landroid/content/Context;)Lcom/yyjia/sdk/e/b;

    move-result-object v0

    new-instance v1, Lcom/yyjia/sdk/f/cm;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/cm;-><init>(Lcom/yyjia/sdk/f/cl;)V

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/e/b;->a(Lcom/yyjia/sdk/e/f;)V

    invoke-virtual {v0, p2}, Lcom/yyjia/sdk/e/b;->a(Ljava/lang/String;)J

    iget-object v0, p0, Lcom/yyjia/sdk/f/cl;->a:Lcom/yyjia/sdk/f/cf;

    invoke-static {v0}, Lcom/yyjia/sdk/f/cf;->f(Lcom/yyjia/sdk/f/cf;)V

    :cond_a6
    :goto_a6
    const/4 v0, 0x1

    return v0

    :cond_a8
    if-nez v6, :cond_84

    iget-object v3, p0, Lcom/yyjia/sdk/f/cl;->a:Lcom/yyjia/sdk/f/cf;

    const/16 v4, 0xfa2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/yyjia/sdk/f/cf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    :cond_b4
    const/4 v0, -0x1

    if-eq v1, v0, :cond_215

    const/4 v0, -0x1

    if-eq v2, v0, :cond_12d

    add-int/lit8 v0, v1, 0x5

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :try_start_c0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "client_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->getConfigInfo()Lcom/yyjia/sdk/data/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yyjia/sdk/data/a;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&client_secret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->getConfigInfo()Lcom/yyjia/sdk/data/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yyjia/sdk/data/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&grant_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "authorization_code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&redirect_uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "http://api.yxtsy.com/sdkapi.php?ac=qqlogin"

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://graph.qq.com/oauth2.0/token"

    new-instance v1, Lcom/yyjia/sdk/f/cn;

    invoke-direct {v1, p0, v0}, Lcom/yyjia/sdk/f/cn;-><init>(Lcom/yyjia/sdk/f/cl;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_126
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c0 .. :try_end_126} :catch_127

    goto :goto_a6

    :catch_127
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_a6

    :cond_12d
    add-int/lit8 v0, v1, 0x5

    :try_start_12f
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "client_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->getConfigInfo()Lcom/yyjia/sdk/data/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yyjia/sdk/data/a;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&client_secret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->getConfigInfo()Lcom/yyjia/sdk/data/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yyjia/sdk/data/a;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&grant_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "authorization_code"

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&redirect_uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "http://api.yxtsy.com/sdkapi.php"

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, "https://api.weibo.com/oauth2/access_token"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/yyjia/sdk/b/b;

    const-string v3, "client_id"

    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->getConfigInfo()Lcom/yyjia/sdk/data/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yyjia/sdk/data/a;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/yyjia/sdk/b/b;

    const-string v4, "client_secret"

    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->getConfigInfo()Lcom/yyjia/sdk/data/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yyjia/sdk/data/a;->d()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/yyjia/sdk/b/b;

    const-string v5, "grant_type"

    const-string v6, "authorization_code"

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/yyjia/sdk/b/b;

    const-string v6, "redirect_uri"

    const-string v7, "http://api.yxtsy.com/sdkapi.php"

    invoke-direct {v5, v6, v7}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/yyjia/sdk/b/b;

    const-string v7, "code"

    const-string v8, "UTF-8"

    invoke-static {v0, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/yyjia/sdk/f/co;

    invoke-direct {v0, p0, v1}, Lcom/yyjia/sdk/f/co;-><init>(Lcom/yyjia/sdk/f/cl;Ljava/util/List;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_20d} :catch_20f

    goto/16 :goto_a6

    :catch_20f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a6

    :cond_215
    const/4 v0, -0x1

    if-ne v7, v0, :cond_a6

    const/4 v0, -0x1

    if-ne v8, v0, :cond_a6

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_a6
.end method
