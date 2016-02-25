.class Lcom/yyjia/sdk/f/cg;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/cf;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/cf;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/cg;->a:Lcom/yyjia/sdk/f/cf;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_e4

    :goto_8
    return-void

    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yyjia/sdk/f/cg;->a:Lcom/yyjia/sdk/f/cf;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/yyjia/sdk/f/cf;->a(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :sswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yyjia/sdk/f/cg;->a:Lcom/yyjia/sdk/f/cf;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/yyjia/sdk/f/cf;->b(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :sswitch_35
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yyjia/sdk/f/cg;->a:Lcom/yyjia/sdk/f/cf;

    const-string v2, "1"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/yyjia/sdk/f/cf;->c(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :sswitch_47
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yyjia/sdk/f/cg;->a:Lcom/yyjia/sdk/f/cf;

    const-string v1, "-1"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/f/cf;->c(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :sswitch_53
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yyjia/sdk/f/cg;->a:Lcom/yyjia/sdk/f/cf;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/yyjia/sdk/f/cf;->a(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;)V

    goto :goto_8

    :sswitch_63
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yyjia/sdk/f/cg;->a:Lcom/yyjia/sdk/f/cf;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/yyjia/sdk/f/cf;->b(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;)V

    goto :goto_8

    :sswitch_73
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yyjia/sdk/f/cg;->a:Lcom/yyjia/sdk/f/cf;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/yyjia/sdk/f/cf;->c(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;)V

    goto :goto_8

    :sswitch_83
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yyjia/sdk/f/cg;->a:Lcom/yyjia/sdk/f/cf;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/yyjia/sdk/f/cf;->d(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;)V

    goto/16 :goto_8

    :sswitch_94
    iget-object v0, p0, Lcom/yyjia/sdk/f/cg;->a:Lcom/yyjia/sdk/f/cf;

    invoke-static {v0}, Lcom/yyjia/sdk/f/cf;->a(Lcom/yyjia/sdk/f/cf;)V

    goto/16 :goto_8

    :sswitch_9b
    iget-object v0, p0, Lcom/yyjia/sdk/f/cg;->a:Lcom/yyjia/sdk/f/cf;

    const-string v1, "1"

    iget-object v2, p0, Lcom/yyjia/sdk/f/cg;->a:Lcom/yyjia/sdk/f/cf;

    invoke-static {v2}, Lcom/yyjia/sdk/f/cf;->b(Lcom/yyjia/sdk/f/cf;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/f/cf;->c(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :sswitch_aa
    iget-object v0, p0, Lcom/yyjia/sdk/f/cg;->a:Lcom/yyjia/sdk/f/cf;

    const-string v1, "-1"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/f/cf;->c(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :sswitch_b3
    new-instance v1, Lcom/a/a/a/a/a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/a/a/a/a/a;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    const-string v1, "9000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d5

    iget-object v0, p0, Lcom/yyjia/sdk/f/cg;->a:Lcom/yyjia/sdk/f/cf;

    const-string v1, "1"

    iget-object v2, p0, Lcom/yyjia/sdk/f/cg;->a:Lcom/yyjia/sdk/f/cf;

    invoke-static {v2}, Lcom/yyjia/sdk/f/cf;->b(Lcom/yyjia/sdk/f/cf;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/f/cf;->c(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_d5
    const-string v1, "8000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/yyjia/sdk/f/cg;->a:Lcom/yyjia/sdk/f/cf;

    const-string v1, "-1"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/f/cf;->c(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    nop

    :sswitch_data_e4
    .sparse-switch
        0x1 -> :sswitch_b3
        0x7d1 -> :sswitch_9
        0x7d2 -> :sswitch_1f
        0xfa1 -> :sswitch_35
        0xfa2 -> :sswitch_47
        0x1389 -> :sswitch_53
        0x138a -> :sswitch_83
        0x1771 -> :sswitch_63
        0x1772 -> :sswitch_73
        0x1b59 -> :sswitch_94
        0x1f41 -> :sswitch_9b
        0x1f42 -> :sswitch_aa
    .end sparse-switch
.end method
