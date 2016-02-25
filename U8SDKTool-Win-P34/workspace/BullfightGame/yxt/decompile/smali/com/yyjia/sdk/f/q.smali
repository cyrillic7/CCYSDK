.class Lcom/yyjia/sdk/f/q;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/p;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/p;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/q;->a:Lcom/yyjia/sdk/f/p;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_30

    :goto_9
    :pswitch_9
    return-void

    :pswitch_a
    iget-object v1, p0, Lcom/yyjia/sdk/f/q;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v1}, Lcom/yyjia/sdk/f/p;->a(Lcom/yyjia/sdk/f/p;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/yyjia/sdk/d/a;->a(Landroid/content/Context;)Lcom/yyjia/sdk/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yyjia/sdk/d/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/q;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v0}, Lcom/yyjia/sdk/f/p;->b(Lcom/yyjia/sdk/f/p;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_9

    :pswitch_21
    iget-object v1, p0, Lcom/yyjia/sdk/f/q;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v1}, Lcom/yyjia/sdk/f/p;->a(Lcom/yyjia/sdk/f/p;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/yyjia/sdk/d/a;->a(Landroid/content/Context;)Lcom/yyjia/sdk/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yyjia/sdk/d/a;->a(Ljava/lang/String;)V

    goto :goto_9

    nop

    :pswitch_data_30
    .packed-switch -0x1
        :pswitch_21
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
