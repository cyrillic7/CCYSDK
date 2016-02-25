.class Lcom/xw/BullfightGame/BullfightGame$4$2;
.super Ljava/lang/Object;
.source "BullfightGame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xw/BullfightGame/BullfightGame$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xw/BullfightGame/BullfightGame$4;


# direct methods
.method constructor <init>(Lcom/xw/BullfightGame/BullfightGame$4;)V
    .locals 0

    iput-object p1, p0, Lcom/xw/BullfightGame/BullfightGame$4$2;->this$1:Lcom/xw/BullfightGame/BullfightGame$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xw/BullfightGame/BullfightGame$4$2;->this$1:Lcom/xw/BullfightGame/BullfightGame$4;

    # getter for: Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;
    invoke-static {v0}, Lcom/xw/BullfightGame/BullfightGame$4;->access$0(Lcom/xw/BullfightGame/BullfightGame$4;)Lcom/xw/BullfightGame/BullfightGame;

    move-result-object v0

    # getter for: Lcom/xw/BullfightGame/BullfightGame;->iActionType:I
    invoke-static {v0}, Lcom/xw/BullfightGame/BullfightGame;->access$0(Lcom/xw/BullfightGame/BullfightGame;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    const-string v0, ""

    const-string v1, ""

    invoke-static {v2, v0, v1}, Lcom/xw/BullfightGame/BullfightGame;->JniQQLogin(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xw/BullfightGame/BullfightGame$4$2;->this$1:Lcom/xw/BullfightGame/BullfightGame$4;

    # getter for: Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;
    invoke-static {v0}, Lcom/xw/BullfightGame/BullfightGame$4;->access$0(Lcom/xw/BullfightGame/BullfightGame$4;)Lcom/xw/BullfightGame/BullfightGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xw/BullfightGame/BullfightGame;->removeWebView()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xw/BullfightGame/BullfightGame$4$2;->this$1:Lcom/xw/BullfightGame/BullfightGame$4;

    # getter for: Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;
    invoke-static {v0}, Lcom/xw/BullfightGame/BullfightGame$4;->access$0(Lcom/xw/BullfightGame/BullfightGame$4;)Lcom/xw/BullfightGame/BullfightGame;

    move-result-object v0

    # getter for: Lcom/xw/BullfightGame/BullfightGame;->iActionType:I
    invoke-static {v0}, Lcom/xw/BullfightGame/BullfightGame;->access$0(Lcom/xw/BullfightGame/BullfightGame;)I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xw/BullfightGame/BullfightGame$4$2;->this$1:Lcom/xw/BullfightGame/BullfightGame$4;

    # getter for: Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;
    invoke-static {v0}, Lcom/xw/BullfightGame/BullfightGame$4;->access$0(Lcom/xw/BullfightGame/BullfightGame$4;)Lcom/xw/BullfightGame/BullfightGame;

    move-result-object v0

    iget-object v0, v0, Lcom/xw/BullfightGame/BullfightGame;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xw/BullfightGame/BullfightGame$4$2;->this$1:Lcom/xw/BullfightGame/BullfightGame$4;

    # getter for: Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;
    invoke-static {v0}, Lcom/xw/BullfightGame/BullfightGame$4;->access$0(Lcom/xw/BullfightGame/BullfightGame$4;)Lcom/xw/BullfightGame/BullfightGame;

    move-result-object v0

    iget-object v0, v0, Lcom/xw/BullfightGame/BullfightGame;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/xw/BullfightGame/BullfightGame;->JniOnActivity(I)V

    iget-object v0, p0, Lcom/xw/BullfightGame/BullfightGame$4$2;->this$1:Lcom/xw/BullfightGame/BullfightGame$4;

    # getter for: Lcom/xw/BullfightGame/BullfightGame$4;->this$0:Lcom/xw/BullfightGame/BullfightGame;
    invoke-static {v0}, Lcom/xw/BullfightGame/BullfightGame$4;->access$0(Lcom/xw/BullfightGame/BullfightGame$4;)Lcom/xw/BullfightGame/BullfightGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xw/BullfightGame/BullfightGame;->removeWebView()V

    goto :goto_0
.end method
