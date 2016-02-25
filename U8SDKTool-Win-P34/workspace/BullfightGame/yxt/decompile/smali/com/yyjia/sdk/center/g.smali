.class Lcom/yyjia/sdk/center/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/center/GMcenter;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/center/GMcenter;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/center/g;->a:Lcom/yyjia/sdk/center/GMcenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_52

    :goto_5
    :pswitch_5
    return-void

    :pswitch_6
    # getter for: Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;
    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->access$0()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/d/a;->a(Landroid/content/Context;)Lcom/yyjia/sdk/d/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6b22\u8fce\u56de\u6765,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/d/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/center/g;->a:Lcom/yyjia/sdk/center/GMcenter;

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->loginListener:Lcom/yyjia/sdk/listener/LoginListener;
    invoke-static {v0}, Lcom/yyjia/sdk/center/GMcenter;->access$1(Lcom/yyjia/sdk/center/GMcenter;)Lcom/yyjia/sdk/listener/LoginListener;

    move-result-object v0

    const-string v1, "1"

    invoke-interface {v0, v1}, Lcom/yyjia/sdk/listener/LoginListener;->loginSuccessed(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/center/g;->a:Lcom/yyjia/sdk/center/GMcenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/center/GMcenter;->setIsLogin(I)V

    goto :goto_5

    :pswitch_38
    iget-object v0, p0, Lcom/yyjia/sdk/center/g;->a:Lcom/yyjia/sdk/center/GMcenter;

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->loginListener:Lcom/yyjia/sdk/listener/LoginListener;
    invoke-static {v0}, Lcom/yyjia/sdk/center/GMcenter;->access$1(Lcom/yyjia/sdk/center/GMcenter;)Lcom/yyjia/sdk/listener/LoginListener;

    move-result-object v0

    const-string v1, "1"

    invoke-interface {v0, v1}, Lcom/yyjia/sdk/listener/LoginListener;->loginSuccessed(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_44
    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    move-result-object v0

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;
    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->access$0()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/e/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_data_52
    .packed-switch -0x4
        :pswitch_38
        :pswitch_5
        :pswitch_44
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
