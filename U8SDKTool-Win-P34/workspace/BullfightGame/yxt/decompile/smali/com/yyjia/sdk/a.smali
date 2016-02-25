.class Lcom/yyjia/sdk/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/PayActivity;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/PayActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/a;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_ee

    :goto_7
    :sswitch_7
    return-void

    :sswitch_8
    new-instance v1, Lcom/a/a/a/a/a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/a/a/a/a/a;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    const-string v1, "9000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v0, p0, Lcom/yyjia/sdk/a;->a:Lcom/yyjia/sdk/PayActivity;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    :cond_27
    const-string v1, "8000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/yyjia/sdk/a;->a:Lcom/yyjia/sdk/PayActivity;

    const-string v1, "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    :cond_3b
    iget-object v0, p0, Lcom/yyjia/sdk/a;->a:Lcom/yyjia/sdk/PayActivity;

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    :sswitch_47
    iget-object v0, p0, Lcom/yyjia/sdk/a;->a:Lcom/yyjia/sdk/PayActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u68c0\u67e5\u7ed3\u679c\u4e3a\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    :sswitch_62
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_66
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_ea

    const-string v0, "statusCode"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_66 .. :try_end_72} :catch_cd

    move-result-object v3

    :try_start_73
    const-string v0, "info"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_78
    .catch Lorg/json/JSONException; {:try_start_73 .. :try_end_78} :catch_df

    move-result-object v2

    :try_start_79
    const-string v0, "result"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7e
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_7e} :catch_e4

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    :goto_81
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "statusCode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/yyjia/sdk/a;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u652f\u4ed8\u7ed3\u679c"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/yyjia/sdk/b;

    invoke-direct {v2, p0}, Lcom/yyjia/sdk/b;-><init>(Lcom/yyjia/sdk/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    :catch_cd
    move-exception v0

    move-object v3, v0

    move-object v2, v1

    move-object v0, v1

    :goto_d1
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_81

    :sswitch_d8
    iget-object v0, p0, Lcom/yyjia/sdk/a;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-virtual {v0}, Lcom/yyjia/sdk/PayActivity;->a()V

    goto/16 :goto_7

    :catch_df
    move-exception v0

    move-object v2, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_d1

    :catch_e4
    move-exception v0

    move-object v6, v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v6

    goto :goto_d1

    :cond_ea
    move-object v0, v1

    move-object v2, v1

    goto :goto_81

    nop

    :sswitch_data_ee
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_47
        0x3 -> :sswitch_d8
        0x5 -> :sswitch_7
        0x64 -> :sswitch_62
    .end sparse-switch
.end method
