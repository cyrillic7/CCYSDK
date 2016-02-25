.class Lcom/yyjia/sdk/f/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/ab;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/aj;->a:Lcom/yyjia/sdk/f/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    new-instance v0, Lcom/yyjia/sdk/b/e;

    invoke-direct {v0}, Lcom/yyjia/sdk/b/e;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/yyjia/sdk/b/b;

    const-string v3, "ac"

    const-string v4, "findaccount"

    invoke-direct {v2, v3, v4}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/yyjia/sdk/b/b;

    const-string v4, "email"

    iget-object v5, p0, Lcom/yyjia/sdk/f/aj;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v5}, Lcom/yyjia/sdk/f/ab;->q(Lcom/yyjia/sdk/f/ab;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_32
    const-string v2, "http://api.yxtsy.com/sdkapi.php"

    invoke-virtual {v0, v2, v1}, Lcom/yyjia/sdk/b/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/e/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_74

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_75

    iget-object v0, p0, Lcom/yyjia/sdk/f/aj;->a:Lcom/yyjia/sdk/f/ab;

    const/16 v1, 0xfa1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7528\u6237\u540d\u5df2\u53d1\u9001\u5230\u60a8\u7684"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yyjia/sdk/f/aj;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v3}, Lcom/yyjia/sdk/f/ab;->q(Lcom/yyjia/sdk/f/ab;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/f/ab;->a(ILjava/lang/String;)V

    :cond_74
    :goto_74
    return-void

    :cond_75
    iget-object v0, p0, Lcom/yyjia/sdk/f/aj;->a:Lcom/yyjia/sdk/f/ab;

    const/16 v1, 0xfa2

    const-string v2, "\u627e\u56de\u8d26\u53f7\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/f/ab;->a(ILjava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_7e} :catch_7f

    goto :goto_74

    :catch_7f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_74
.end method
