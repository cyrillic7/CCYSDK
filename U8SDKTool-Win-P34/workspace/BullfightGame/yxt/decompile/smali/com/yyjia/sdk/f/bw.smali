.class Lcom/yyjia/sdk/f/bw;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/bv;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/bv;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/bw;->a:Lcom/yyjia/sdk/f/bv;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a4

    :goto_5
    :pswitch_5
    return-void

    :pswitch_6
    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/bw;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v1}, Lcom/yyjia/sdk/f/bv;->a(Lcom/yyjia/sdk/f/bv;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u6ce8\u518c\u6210\u529f"

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/e/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bw;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bv;->b(Lcom/yyjia/sdk/f/bv;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bw;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bv;->a(Lcom/yyjia/sdk/f/bv;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "abc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "u"

    iget-object v2, p0, Lcom/yyjia/sdk/f/bw;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v2}, Lcom/yyjia/sdk/f/bv;->c(Lcom/yyjia/sdk/f/bv;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "p"

    iget-object v2, p0, Lcom/yyjia/sdk/f/bw;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v2}, Lcom/yyjia/sdk/f/bv;->d(Lcom/yyjia/sdk/f/bv;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Lcom/yyjia/sdk/f/at;

    iget-object v1, p0, Lcom/yyjia/sdk/f/bw;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v1}, Lcom/yyjia/sdk/f/bv;->a(Lcom/yyjia/sdk/f/bv;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/yyjia/sdk/f/bw;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v3}, Lcom/yyjia/sdk/f/bv;->c(Lcom/yyjia/sdk/f/bv;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yyjia/sdk/f/bw;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v4}, Lcom/yyjia/sdk/f/bv;->d(Lcom/yyjia/sdk/f/bv;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yyjia/sdk/f/bw;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v5}, Lcom/yyjia/sdk/f/bv;->e(Lcom/yyjia/sdk/f/bv;)Lcom/yyjia/sdk/listener/LoginListener;

    move-result-object v5

    iget-object v6, p0, Lcom/yyjia/sdk/f/bw;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v6}, Lcom/yyjia/sdk/f/bv;->f(Lcom/yyjia/sdk/f/bv;)Lcom/yyjia/sdk/data/a;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/yyjia/sdk/f/at;-><init>(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/yyjia/sdk/listener/LoginListener;Lcom/yyjia/sdk/data/a;)V

    goto/16 :goto_5

    :pswitch_92
    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/bw;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v1}, Lcom/yyjia/sdk/f/bv;->a(Lcom/yyjia/sdk/f/bv;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u7528\u6237\u540d\u5df2\u7ecf\u5b58\u5728"

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/e/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    nop

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_6
        :pswitch_92
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
