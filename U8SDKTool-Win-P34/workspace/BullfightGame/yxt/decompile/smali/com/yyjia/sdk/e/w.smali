.class Lcom/yyjia/sdk/e/w;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/e/v;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/e/v;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/e/w;->a:Lcom/yyjia/sdk/e/v;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_62

    :goto_5
    :pswitch_5
    return-void

    :pswitch_6
    :try_start_6
    iget-object v0, p0, Lcom/yyjia/sdk/e/w;->a:Lcom/yyjia/sdk/e/v;

    invoke-virtual {v0}, Lcom/yyjia/sdk/e/v;->a()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_5

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :pswitch_11
    iget-object v0, p0, Lcom/yyjia/sdk/e/w;->a:Lcom/yyjia/sdk/e/v;

    invoke-static {v0}, Lcom/yyjia/sdk/e/v;->a(Lcom/yyjia/sdk/e/v;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/e/w;->a:Lcom/yyjia/sdk/e/v;

    invoke-static {v1}, Lcom/yyjia/sdk/e/v;->b(Lcom/yyjia/sdk/e/v;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/w;->a:Lcom/yyjia/sdk/e/v;

    invoke-static {v0}, Lcom/yyjia/sdk/e/v;->c(Lcom/yyjia/sdk/e/v;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yyjia/sdk/e/w;->a:Lcom/yyjia/sdk/e/v;

    invoke-static {v2}, Lcom/yyjia/sdk/e/v;->b(Lcom/yyjia/sdk/e/v;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :pswitch_43
    iget-object v0, p0, Lcom/yyjia/sdk/e/w;->a:Lcom/yyjia/sdk/e/v;

    invoke-static {v0}, Lcom/yyjia/sdk/e/v;->d(Lcom/yyjia/sdk/e/v;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/yyjia/sdk/e/w;->a:Lcom/yyjia/sdk/e/v;

    invoke-static {v0}, Lcom/yyjia/sdk/e/v;->e(Lcom/yyjia/sdk/e/v;)V

    goto :goto_5

    :pswitch_52
    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/e/w;->a:Lcom/yyjia/sdk/e/v;

    invoke-static {v1}, Lcom/yyjia/sdk/e/v;->f(Lcom/yyjia/sdk/e/v;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/e/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_data_62
    .packed-switch -0x2
        :pswitch_52
        :pswitch_5
        :pswitch_5
        :pswitch_11
        :pswitch_43
        :pswitch_6
    .end packed-switch
.end method
