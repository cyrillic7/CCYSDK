.class Lcom/yyjia/sdk/f/bq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/bj;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/bq;->a:Lcom/yyjia/sdk/f/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    new-instance v0, Lcom/yyjia/sdk/b/e;

    invoke-direct {v0}, Lcom/yyjia/sdk/b/e;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/yyjia/sdk/b/b;

    const-string v3, "ac"

    const-string v4, "changepassword"

    invoke-direct {v2, v3, v4}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/yyjia/sdk/b/b;

    const-string v4, "oldpassword"

    iget-object v5, p0, Lcom/yyjia/sdk/f/bq;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v5}, Lcom/yyjia/sdk/f/bj;->h(Lcom/yyjia/sdk/f/bj;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/yyjia/sdk/b/b;

    const-string v5, "password"

    iget-object v6, p0, Lcom/yyjia/sdk/f/bq;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v6}, Lcom/yyjia/sdk/f/bj;->i(Lcom/yyjia/sdk/f/bj;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/yyjia/sdk/b/b;

    const-string v6, "password2"

    iget-object v7, p0, Lcom/yyjia/sdk/f/bq;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v7}, Lcom/yyjia/sdk/f/bj;->j(Lcom/yyjia/sdk/f/bj;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/yyjia/sdk/b/b;

    const-string v7, "sessionid"

    iget-object v8, p0, Lcom/yyjia/sdk/f/bq;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v8}, Lcom/yyjia/sdk/f/bj;->c(Lcom/yyjia/sdk/f/bj;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yyjia/sdk/center/GMcenter;->getSid()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/yyjia/sdk/b/b;

    const-string v8, "appid"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->getConfigInfo()Lcom/yyjia/sdk/data/a;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yyjia/sdk/data/a;->a()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_9d
    const-string v2, "http://api.yxtsy.com/sdkapi.php"

    invoke-virtual {v0, v2, v1}, Lcom/yyjia/sdk/b/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/e/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c1

    iget-object v0, p0, Lcom/yyjia/sdk/f/bq;->a:Lcom/yyjia/sdk/f/bj;

    const/16 v1, 0x7d1

    const-string v2, "\u5bc6\u7801\u4fee\u6539\u6210\u529f,\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/f/bj;->a(ILjava/lang/String;)V

    :cond_c0
    :goto_c0
    return-void

    :cond_c1
    iget-object v0, p0, Lcom/yyjia/sdk/f/bq;->a:Lcom/yyjia/sdk/f/bj;

    const/16 v1, 0x7d2

    const-string v2, "\u5bc6\u7801\u4fee\u6539\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/f/bj;->a(ILjava/lang/String;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_ca} :catch_cb

    goto :goto_c0

    :catch_cb
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c0
.end method
