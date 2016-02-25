.class Lcom/yyjia/sdk/f/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/b;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/b;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/j;->a:Lcom/yyjia/sdk/f/b;

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

    const-string v4, "checkcode"

    invoke-direct {v2, v3, v4}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/yyjia/sdk/b/b;

    const-string v4, "type"

    const-string v5, "2"

    invoke-direct {v3, v4, v5}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/yyjia/sdk/b/b;

    const-string v5, "username"

    iget-object v6, p0, Lcom/yyjia/sdk/f/j;->a:Lcom/yyjia/sdk/f/b;

    invoke-static {v6}, Lcom/yyjia/sdk/f/b;->f(Lcom/yyjia/sdk/f/b;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yyjia/sdk/center/GMcenter;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/yyjia/sdk/b/b;

    const-string v6, "email"

    iget-object v7, p0, Lcom/yyjia/sdk/f/j;->a:Lcom/yyjia/sdk/f/b;

    invoke-static {v7}, Lcom/yyjia/sdk/f/b;->h(Lcom/yyjia/sdk/f/b;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/yyjia/sdk/b/b;

    const-string v7, "sessionid"

    iget-object v8, p0, Lcom/yyjia/sdk/f/j;->a:Lcom/yyjia/sdk/f/b;

    invoke-static {v8}, Lcom/yyjia/sdk/f/b;->f(Lcom/yyjia/sdk/f/b;)Lcom/yyjia/sdk/center/GMcenter;

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

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_81
    const-string v2, "http://api.yxtsy.com/sdkapi.php"

    invoke-virtual {v0, v2, v1}, Lcom/yyjia/sdk/b/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/e/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bf

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_bf

    iget-object v0, p0, Lcom/yyjia/sdk/f/j;->a:Lcom/yyjia/sdk/f/b;

    const/16 v1, 0x7d1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001\u5230"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yyjia/sdk/f/j;->a:Lcom/yyjia/sdk/f/b;

    invoke-static {v3}, Lcom/yyjia/sdk/f/b;->h(Lcom/yyjia/sdk/f/b;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/f/b;->a(ILjava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_bf} :catch_c0

    :cond_bf
    :goto_bf
    return-void

    :catch_c0
    move-exception v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/j;->a:Lcom/yyjia/sdk/f/b;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/yyjia/sdk/f/b;->a(Lcom/yyjia/sdk/f/b;J)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_bf
.end method
