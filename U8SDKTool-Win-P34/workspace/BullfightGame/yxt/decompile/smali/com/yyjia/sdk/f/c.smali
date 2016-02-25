.class Lcom/yyjia/sdk/f/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/b;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/b;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/c;->a:Lcom/yyjia/sdk/f/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_3e

    :goto_a
    return-void

    :sswitch_b
    iget-object v1, p0, Lcom/yyjia/sdk/f/c;->a:Lcom/yyjia/sdk/f/b;

    invoke-static {v1}, Lcom/yyjia/sdk/f/b;->a(Lcom/yyjia/sdk/f/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a

    :sswitch_19
    iget-object v1, p0, Lcom/yyjia/sdk/f/c;->a:Lcom/yyjia/sdk/f/b;

    invoke-static {v1}, Lcom/yyjia/sdk/f/b;->a(Lcom/yyjia/sdk/f/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/c;->a:Lcom/yyjia/sdk/f/b;

    invoke-static {v0}, Lcom/yyjia/sdk/f/b;->b(Lcom/yyjia/sdk/f/b;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_a

    :sswitch_30
    iget-object v1, p0, Lcom/yyjia/sdk/f/c;->a:Lcom/yyjia/sdk/f/b;

    invoke-static {v1}, Lcom/yyjia/sdk/f/b;->a(Lcom/yyjia/sdk/f/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a

    :sswitch_data_3e
    .sparse-switch
        0x7d1 -> :sswitch_b
        0xbb9 -> :sswitch_19
        0xbba -> :sswitch_30
    .end sparse-switch
.end method
