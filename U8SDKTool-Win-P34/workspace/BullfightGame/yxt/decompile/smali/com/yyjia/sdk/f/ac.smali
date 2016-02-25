.class Lcom/yyjia/sdk/f/ac;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/ab;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_cc

    :cond_b
    :goto_b
    return-void

    :sswitch_c
    iget-object v1, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v1}, Lcom/yyjia/sdk/f/ab;->a(Lcom/yyjia/sdk/f/ab;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0}, Lcom/yyjia/sdk/f/ab;->b(Lcom/yyjia/sdk/f/ab;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yyjia/sdk/f/ab;->a(Lcom/yyjia/sdk/f/ab;Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0}, Lcom/yyjia/sdk/f/ab;->c(Lcom/yyjia/sdk/f/ab;)V

    goto :goto_b

    :sswitch_2d
    iget-object v1, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v1}, Lcom/yyjia/sdk/f/ab;->a(Lcom/yyjia/sdk/f/ab;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_b

    :sswitch_3b
    iget-object v1, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v1}, Lcom/yyjia/sdk/f/ab;->a(Lcom/yyjia/sdk/f/ab;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0}, Lcom/yyjia/sdk/f/ab;->d(Lcom/yyjia/sdk/f/ab;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0}, Lcom/yyjia/sdk/f/ab;->d(Lcom/yyjia/sdk/f/ab;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0}, Lcom/yyjia/sdk/f/ab;->d(Lcom/yyjia/sdk/f/ab;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_65
    iget-object v0, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0, v3}, Lcom/yyjia/sdk/f/ab;->a(Lcom/yyjia/sdk/f/ab;Landroid/widget/PopupWindow;)V

    :cond_6a
    iget-object v0, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0}, Lcom/yyjia/sdk/f/ab;->e(Lcom/yyjia/sdk/f/ab;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->checkLogin()V

    goto :goto_b

    :sswitch_74
    iget-object v1, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v1}, Lcom/yyjia/sdk/f/ab;->a(Lcom/yyjia/sdk/f/ab;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_b

    :sswitch_82
    iget-object v1, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v1}, Lcom/yyjia/sdk/f/ab;->a(Lcom/yyjia/sdk/f/ab;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0}, Lcom/yyjia/sdk/f/ab;->d(Lcom/yyjia/sdk/f/ab;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0}, Lcom/yyjia/sdk/f/ab;->d(Lcom/yyjia/sdk/f/ab;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0}, Lcom/yyjia/sdk/f/ab;->d(Lcom/yyjia/sdk/f/ab;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_ac
    iget-object v0, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0, v3}, Lcom/yyjia/sdk/f/ab;->a(Lcom/yyjia/sdk/f/ab;Landroid/widget/PopupWindow;)V

    :cond_b1
    iget-object v0, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0}, Lcom/yyjia/sdk/f/ab;->e(Lcom/yyjia/sdk/f/ab;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->checkLogin()V

    goto/16 :goto_b

    :sswitch_bc
    iget-object v1, p0, Lcom/yyjia/sdk/f/ac;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v1}, Lcom/yyjia/sdk/f/ab;->a(Lcom/yyjia/sdk/f/ab;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_b

    nop

    :sswitch_data_cc
    .sparse-switch
        0x7d1 -> :sswitch_c
        0x7d2 -> :sswitch_2d
        0xbb9 -> :sswitch_3b
        0xbba -> :sswitch_74
        0xfa1 -> :sswitch_82
        0xfa2 -> :sswitch_bc
    .end sparse-switch
.end method
