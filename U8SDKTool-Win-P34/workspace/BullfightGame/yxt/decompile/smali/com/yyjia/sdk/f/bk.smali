.class Lcom/yyjia/sdk/f/bk;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/bj;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/bk;->a:Lcom/yyjia/sdk/f/bj;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_98

    :goto_a
    return-void

    :pswitch_b
    iget-object v2, p0, Lcom/yyjia/sdk/f/bk;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v2}, Lcom/yyjia/sdk/f/bj;->a(Lcom/yyjia/sdk/f/bj;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bk;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bj;->b(Lcom/yyjia/sdk/f/bj;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bk;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bj;->a(Lcom/yyjia/sdk/f/bj;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "abc"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v0, "p"

    const-string v4, ""

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "userrnums"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    move v0, v1

    :goto_3f
    if-lt v0, v4, :cond_4e

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/yyjia/sdk/f/bk;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bj;->c(Lcom/yyjia/sdk/f/bj;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->logout()V

    goto :goto_a

    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "username_"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v2, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/yyjia/sdk/f/bk;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v5}, Lcom/yyjia/sdk/f/bj;->c(Lcom/yyjia/sdk/f/bj;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yyjia/sdk/center/GMcenter;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "password_"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-interface {v3, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_86
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :pswitch_89
    iget-object v2, p0, Lcom/yyjia/sdk/f/bk;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v2}, Lcom/yyjia/sdk/f/bj;->a(Lcom/yyjia/sdk/f/bj;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_a

    :pswitch_data_98
    .packed-switch 0x7d1
        :pswitch_b
        :pswitch_89
    .end packed-switch
.end method
