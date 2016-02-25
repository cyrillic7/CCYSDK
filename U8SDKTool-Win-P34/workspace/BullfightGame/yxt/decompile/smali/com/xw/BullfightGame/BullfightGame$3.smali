.class Lcom/xw/BullfightGame/BullfightGame$3;
.super Landroid/content/BroadcastReceiver;
.source "BullfightGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xw/BullfightGame/BullfightGame;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xw/BullfightGame/BullfightGame;


# direct methods
.method constructor <init>(Lcom/xw/BullfightGame/BullfightGame;)V
    .locals 0

    iput-object p1, p0, Lcom/xw/BullfightGame/BullfightGame$3;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/xw/BullfightGame/BullfightGame$3;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/xw/BullfightGame/BullfightGame;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/xw/BullfightGame/BullfightGame;->JniOnActivity(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v5}, Lcom/xw/BullfightGame/BullfightGame;->JniOnActivity(I)V

    goto :goto_0
.end method
