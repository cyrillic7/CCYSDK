.class Lcom/xw/BullfightGame/BullfightGame$4;
.super Ljava/lang/Object;
.source "BullfightGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xw/BullfightGame/BullfightGame;->openWebview(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xw/BullfightGame/BullfightGame;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xw/BullfightGame/BullfightGame;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    iput-object p2, p0, Lcom/xw/BullfightGame/BullfightGame$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/xw/BullfightGame/BullfightGame$4;)Lcom/xw/BullfightGame/BullfightGame;
    .locals 1

    iget-object v0, p0, Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v2, Lcom/xw/BullfightGame/BullfightGame;->game:Lcom/xw/BullfightGame/BullfightGame;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    iget-object v2, v2, Lcom/xw/BullfightGame/BullfightGame;->m_webLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    const v2, 0x7f060003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, v3, Lcom/xw/BullfightGame/BullfightGame;->m_webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    iget-object v2, v2, Lcom/xw/BullfightGame/BullfightGame;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v2, p0, Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    iget-object v2, v2, Lcom/xw/BullfightGame/BullfightGame;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, p0, Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    iget-object v2, v2, Lcom/xw/BullfightGame/BullfightGame;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    iget-object v2, v2, Lcom/xw/BullfightGame/BullfightGame;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v2, p0, Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    iget-object v2, v2, Lcom/xw/BullfightGame/BullfightGame;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v2, p0, Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    iget-object v2, v2, Lcom/xw/BullfightGame/BullfightGame;->m_webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/xw/BullfightGame/BullfightGame$4;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url::::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xw/BullfightGame/BullfightGame$4;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    iget-object v2, v2, Lcom/xw/BullfightGame/BullfightGame;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocus()Z

    iget-object v2, p0, Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    iget-object v2, v2, Lcom/xw/BullfightGame/BullfightGame;->m_webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/xw/BullfightGame/BullfightGame$4$1;

    invoke-direct {v3, p0}, Lcom/xw/BullfightGame/BullfightGame$4$1;-><init>(Lcom/xw/BullfightGame/BullfightGame$4;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v3, p0, Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v3, Lcom/xw/BullfightGame/BullfightGame;->m_backButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    iget-object v2, v2, Lcom/xw/BullfightGame/BullfightGame;->m_backButton:Landroid/widget/Button;

    new-instance v3, Lcom/xw/BullfightGame/BullfightGame$4$2;

    invoke-direct {v3, p0}, Lcom/xw/BullfightGame/BullfightGame$4$2;-><init>(Lcom/xw/BullfightGame/BullfightGame$4;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
