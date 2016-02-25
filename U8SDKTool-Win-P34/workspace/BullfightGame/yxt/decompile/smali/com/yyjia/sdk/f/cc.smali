.class Lcom/yyjia/sdk/f/cc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/bv;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/bv;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/cc;->a:Lcom/yyjia/sdk/f/bv;

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

    const-string v3, "reg"

    iget-object v4, p0, Lcom/yyjia/sdk/f/cc;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v4}, Lcom/yyjia/sdk/f/bv;->a(Lcom/yyjia/sdk/f/bv;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/yyjia/sdk/f/cc;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v5}, Lcom/yyjia/sdk/f/bv;->c(Lcom/yyjia/sdk/f/bv;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yyjia/sdk/f/cc;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v6}, Lcom/yyjia/sdk/f/bv;->d(Lcom/yyjia/sdk/f/bv;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/yyjia/sdk/f/cc;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v7}, Lcom/yyjia/sdk/f/bv;->f(Lcom/yyjia/sdk/f/bv;)Lcom/yyjia/sdk/data/a;

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

    :try_start_4a
    const-string v2, "http://api.yxtsy.com/sdkapi.php"

    invoke-virtual {v1, v2, v0}, Lcom/yyjia/sdk/b/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/e/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegisterPopWindow.result"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/yyjia/sdk/f/cc;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v1, v0}, Lcom/yyjia/sdk/f/bv;->a(Lcom/yyjia/sdk/f/bv;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5e} :catch_5f

    :goto_5e
    return-void

    :catch_5f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5e
.end method
