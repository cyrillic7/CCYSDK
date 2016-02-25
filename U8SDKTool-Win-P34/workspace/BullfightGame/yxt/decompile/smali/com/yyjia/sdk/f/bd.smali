.class Lcom/yyjia/sdk/f/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/bc;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/bc;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/bd;->a:Lcom/yyjia/sdk/f/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/yyjia/sdk/b/b;

    const-string v2, "params"

    const-string v3, "login"

    iget-object v4, p0, Lcom/yyjia/sdk/f/bd;->a:Lcom/yyjia/sdk/f/bc;

    invoke-static {v4}, Lcom/yyjia/sdk/f/bc;->a(Lcom/yyjia/sdk/f/bc;)Lcom/yyjia/sdk/f/at;

    move-result-object v4

    invoke-static {v4}, Lcom/yyjia/sdk/f/at;->a(Lcom/yyjia/sdk/f/at;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/yyjia/sdk/f/bd;->a:Lcom/yyjia/sdk/f/bc;

    invoke-static {v5}, Lcom/yyjia/sdk/f/bc;->a(Lcom/yyjia/sdk/f/bc;)Lcom/yyjia/sdk/f/at;

    move-result-object v5

    invoke-static {v5}, Lcom/yyjia/sdk/f/at;->b(Lcom/yyjia/sdk/f/at;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yyjia/sdk/f/bd;->a:Lcom/yyjia/sdk/f/bc;

    invoke-static {v6}, Lcom/yyjia/sdk/f/bc;->a(Lcom/yyjia/sdk/f/bc;)Lcom/yyjia/sdk/f/at;

    move-result-object v6

    invoke-static {v6}, Lcom/yyjia/sdk/f/at;->d(Lcom/yyjia/sdk/f/at;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/yyjia/sdk/f/bd;->a:Lcom/yyjia/sdk/f/bc;

    invoke-static {v7}, Lcom/yyjia/sdk/f/bc;->a(Lcom/yyjia/sdk/f/bc;)Lcom/yyjia/sdk/f/at;

    move-result-object v7

    invoke-static {v7}, Lcom/yyjia/sdk/f/at;->j(Lcom/yyjia/sdk/f/at;)Lcom/yyjia/sdk/data/a;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/yyjia/sdk/e/ae;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/yyjia/sdk/data/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yyjia/sdk/e/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/yyjia/sdk/b/e;

    invoke-direct {v1}, Lcom/yyjia/sdk/b/e;-><init>()V

    :try_start_5a
    const-string v2, "http://api.yxtsy.com/sdkapi.php"

    invoke-virtual {v1, v2, v0}, Lcom/yyjia/sdk/b/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/e/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7c

    iget-object v1, p0, Lcom/yyjia/sdk/f/bd;->a:Lcom/yyjia/sdk/f/bc;

    invoke-static {v1}, Lcom/yyjia/sdk/f/bc;->a(Lcom/yyjia/sdk/f/bc;)Lcom/yyjia/sdk/f/at;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yyjia/sdk/f/at;->b(Lcom/yyjia/sdk/f/at;Ljava/lang/String;)V

    :goto_7b
    return-void

    :cond_7c
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/yyjia/sdk/f/bd;->a:Lcom/yyjia/sdk/f/bc;

    invoke-static {v1}, Lcom/yyjia/sdk/f/bc;->a(Lcom/yyjia/sdk/f/bc;)Lcom/yyjia/sdk/f/at;

    move-result-object v1

    invoke-static {v1}, Lcom/yyjia/sdk/f/at;->k(Lcom/yyjia/sdk/f/at;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_91} :catch_92

    goto :goto_7b

    :catch_92
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7b
.end method
