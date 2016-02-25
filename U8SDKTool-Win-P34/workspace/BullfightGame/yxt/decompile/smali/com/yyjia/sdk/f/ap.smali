.class Lcom/yyjia/sdk/f/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/ab;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/ap;->a:Lcom/yyjia/sdk/f/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const-wide/16 v8, -0x1

    new-instance v0, Lcom/yyjia/sdk/b/e;

    invoke-direct {v0}, Lcom/yyjia/sdk/b/e;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/yyjia/sdk/b/b;

    const-string v3, "ac"

    const-string v4, "checkcode"

    invoke-direct {v2, v3, v4}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/yyjia/sdk/b/b;

    const-string v4, "username"

    iget-object v5, p0, Lcom/yyjia/sdk/f/ap;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v5}, Lcom/yyjia/sdk/f/ab;->j(Lcom/yyjia/sdk/f/ab;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/yyjia/sdk/b/b;

    const-string v5, "email"

    iget-object v6, p0, Lcom/yyjia/sdk/f/ap;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v6}, Lcom/yyjia/sdk/f/ab;->k(Lcom/yyjia/sdk/f/ab;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_48
    const-string v2, "http://api.yxtsy.com/sdkapi.php"

    invoke-virtual {v0, v2, v1}, Lcom/yyjia/sdk/b/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/e/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_87

    iget-object v0, p0, Lcom/yyjia/sdk/f/ap;->a:Lcom/yyjia/sdk/f/ab;

    const/16 v1, 0x7d1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001\u5230"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yyjia/sdk/f/ap;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v3}, Lcom/yyjia/sdk/f/ab;->k(Lcom/yyjia/sdk/f/ab;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/f/ab;->a(ILjava/lang/String;)V

    :goto_86
    return-void

    :cond_87
    iget-object v0, p0, Lcom/yyjia/sdk/f/ap;->a:Lcom/yyjia/sdk/f/ab;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/yyjia/sdk/f/ab;->a(Lcom/yyjia/sdk/f/ab;J)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/ap;->a:Lcom/yyjia/sdk/f/ab;

    const/16 v1, 0x7d2

    const-string v2, "\u9a8c\u8bc1\u7801\u53d1\u9001\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/f/ab;->a(ILjava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_97} :catch_98

    goto :goto_86

    :catch_98
    move-exception v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/ap;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v1, v8, v9}, Lcom/yyjia/sdk/f/ab;->a(Lcom/yyjia/sdk/f/ab;J)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_86

    :cond_a2
    :try_start_a2
    iget-object v0, p0, Lcom/yyjia/sdk/f/ap;->a:Lcom/yyjia/sdk/f/ab;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/yyjia/sdk/f/ab;->a(Lcom/yyjia/sdk/f/ab;J)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/ap;->a:Lcom/yyjia/sdk/f/ab;

    const/16 v1, 0x7d2

    const-string v2, "\u9a8c\u8bc1\u7801\u53d1\u9001\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/f/ab;->a(ILjava/lang/String;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_b2} :catch_98

    goto :goto_86
.end method
