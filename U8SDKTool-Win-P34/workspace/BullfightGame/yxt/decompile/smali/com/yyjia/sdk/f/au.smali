.class Lcom/yyjia/sdk/f/au;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/at;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/at;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_19e

    :cond_7
    :goto_7
    return-void

    :sswitch_8
    iget-object v2, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v2}, Lcom/yyjia/sdk/f/at;->a(Lcom/yyjia/sdk/f/at;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/yyjia/sdk/center/GMcenter;->getInstance(Landroid/content/Context;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v2

    iget-object v3, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v3}, Lcom/yyjia/sdk/f/at;->b(Lcom/yyjia/sdk/f/at;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yyjia/sdk/center/GMcenter;->setUsername(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v2}, Lcom/yyjia/sdk/f/at;->c(Lcom/yyjia/sdk/f/at;)Lcom/yyjia/sdk/listener/LoginListener;

    move-result-object v2

    const-string v3, "1"

    invoke-interface {v2, v3}, Lcom/yyjia/sdk/listener/LoginListener;->loginSuccessed(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v2}, Lcom/yyjia/sdk/f/at;->a(Lcom/yyjia/sdk/f/at;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "abc"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "u"

    iget-object v4, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v4}, Lcom/yyjia/sdk/f/at;->b(Lcom/yyjia/sdk/f/at;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "p"

    iget-object v4, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v4}, Lcom/yyjia/sdk/f/at;->d(Lcom/yyjia/sdk/f/at;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "logintype"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v2}, Lcom/yyjia/sdk/f/at;->e(Lcom/yyjia/sdk/f/at;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_19a

    iget-object v2, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v2}, Lcom/yyjia/sdk/f/at;->e(Lcom/yyjia/sdk/f/at;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    move v2, v0

    :goto_82
    if-lt v4, v3, :cond_11a

    move v0, v3

    :goto_85
    if-eq v2, v1, :cond_d7

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "username_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v4}, Lcom/yyjia/sdk/f/at;->b(Lcom/yyjia/sdk/f/at;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "password_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v4}, Lcom/yyjia/sdk/f/at;->d(Lcom/yyjia/sdk/f/at;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "userrnums"

    mul-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_d7
    iget-object v0, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v0}, Lcom/yyjia/sdk/f/at;->a(Lcom/yyjia/sdk/f/at;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/center/GMcenter;->getInstance(Landroid/content/Context;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/center/GMcenter;->setIsLogin(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v0}, Lcom/yyjia/sdk/f/at;->a(Lcom/yyjia/sdk/f/at;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/d/a;->a(Landroid/content/Context;)Lcom/yyjia/sdk/d/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6b22\u8fce\u56de\u6765,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "u"

    const/4 v3, 0x0

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/d/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v0}, Lcom/yyjia/sdk/f/at;->f(Lcom/yyjia/sdk/f/at;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v0}, Lcom/yyjia/sdk/f/at;->f(Lcom/yyjia/sdk/f/at;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_7

    :cond_11a
    iget-object v0, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v0}, Lcom/yyjia/sdk/f/at;->e(Lcom/yyjia/sdk/f/at;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v6}, Lcom/yyjia/sdk/f/at;->b(Lcom/yyjia/sdk/f/at;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_198

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "password_"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v6}, Lcom/yyjia/sdk/f/at;->d(Lcom/yyjia/sdk/f/at;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v1

    :goto_162
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto/16 :goto_82

    :sswitch_168
    iget-object v0, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v0}, Lcom/yyjia/sdk/f/at;->f(Lcom/yyjia/sdk/f/at;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v0}, Lcom/yyjia/sdk/f/at;->c(Lcom/yyjia/sdk/f/at;)Lcom/yyjia/sdk/listener/LoginListener;

    move-result-object v0

    const-string v1, "1"

    invoke-interface {v0, v1}, Lcom/yyjia/sdk/listener/LoginListener;->loginSuccessed(Ljava/lang/String;)V

    goto/16 :goto_7

    :sswitch_17e
    iget-object v0, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v0}, Lcom/yyjia/sdk/f/at;->c(Lcom/yyjia/sdk/f/at;)Lcom/yyjia/sdk/listener/LoginListener;

    move-result-object v0

    const-string v1, "-1"

    invoke-interface {v0, v1}, Lcom/yyjia/sdk/listener/LoginListener;->loginSuccessed(Ljava/lang/String;)V

    goto/16 :goto_7

    :sswitch_18b
    iget-object v0, p0, Lcom/yyjia/sdk/f/au;->a:Lcom/yyjia/sdk/f/at;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yyjia/sdk/f/at;->a(Lcom/yyjia/sdk/f/at;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_198
    move v0, v2

    goto :goto_162

    :cond_19a
    move v2, v0

    goto/16 :goto_85

    nop

    :sswitch_data_19e
    .sparse-switch
        -0x4 -> :sswitch_168
        -0x1 -> :sswitch_17e
        0x1 -> :sswitch_8
        0x7e2 -> :sswitch_18b
    .end sparse-switch
.end method
