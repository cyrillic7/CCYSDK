.class Lcom/yyjia/sdk/e/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/e/b;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/e/d;->a:Lcom/yyjia/sdk/e/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/yyjia/sdk/e/d;->a:Lcom/yyjia/sdk/e/b;

    invoke-static {v1}, Lcom/yyjia/sdk/e/b;->a(Lcom/yyjia/sdk/e/b;)Lcom/yyjia/sdk/e/f;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/yyjia/sdk/e/d;->a:Lcom/yyjia/sdk/e/b;

    invoke-static {v1}, Lcom/yyjia/sdk/e/b;->a(Lcom/yyjia/sdk/e/b;)Lcom/yyjia/sdk/e/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/yyjia/sdk/e/f;->a(I)V

    goto :goto_5

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
