.class Lcom/yyjia/sdk/f/cr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/cf;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/yyjia/sdk/f/cr;->a:Lcom/yyjia/sdk/f/cf;

    iput-object p2, p0, Lcom/yyjia/sdk/f/cr;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v1, Lcom/alipay/sdk/app/PayTask;

    iget-object v0, p0, Lcom/yyjia/sdk/f/cr;->a:Lcom/yyjia/sdk/f/cf;

    invoke-static {v0}, Lcom/yyjia/sdk/f/cf;->e(Lcom/yyjia/sdk/f/cf;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/cr;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/yyjia/sdk/f/cr;->a:Lcom/yyjia/sdk/f/cf;

    iget-object v0, v0, Lcom/yyjia/sdk/f/cf;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
