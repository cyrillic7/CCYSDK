.class Lcom/xw/BullfightGame/BullfightGame$5;
.super Ljava/lang/Object;
.source "BullfightGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xw/BullfightGame/BullfightGame;->pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xw/BullfightGame/BullfightGame;

.field private final synthetic val$payInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xw/BullfightGame/BullfightGame;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xw/BullfightGame/BullfightGame$5;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    iput-object p2, p0, Lcom/xw/BullfightGame/BullfightGame$5;->val$payInfo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v3, p0, Lcom/xw/BullfightGame/BullfightGame$5;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    invoke-direct {v0, v3}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    iget-object v3, p0, Lcom/xw/BullfightGame/BullfightGame$5;->val$payInfo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/xw/BullfightGame/BullfightGame$5;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    # getter for: Lcom/xw/BullfightGame/BullfightGame;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/xw/BullfightGame/BullfightGame;->access$3(Lcom/xw/BullfightGame/BullfightGame;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
