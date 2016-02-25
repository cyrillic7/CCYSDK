.class Lcom/yyjia/sdk/e/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/e/v;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/e/v;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/e/x;->a:Lcom/yyjia/sdk/e/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/yyjia/sdk/b/b;

    const-string v2, "ac"

    const-string v3, "version"

    invoke-direct {v1, v2, v3}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/yyjia/sdk/b/b;

    const-string v3, "appid"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yyjia/sdk/e/x;->a:Lcom/yyjia/sdk/e/v;

    invoke-static {v5}, Lcom/yyjia/sdk/e/v;->i(Lcom/yyjia/sdk/e/v;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/yyjia/sdk/b/b;

    const-string v4, "coopid"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/yyjia/sdk/e/x;->a:Lcom/yyjia/sdk/e/v;

    invoke-static {v6}, Lcom/yyjia/sdk/e/v;->j(Lcom/yyjia/sdk/e/v;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/yyjia/sdk/b/b;

    const-string v5, "version"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/yyjia/sdk/e/x;->a:Lcom/yyjia/sdk/e/v;

    invoke-static {v7}, Lcom/yyjia/sdk/e/v;->k(Lcom/yyjia/sdk/e/v;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/yyjia/sdk/b/e;

    invoke-direct {v1}, Lcom/yyjia/sdk/b/e;-><init>()V

    :try_start_6d
    const-string v2, "http://api.yxtsy.com/sdkapi.php"

    invoke-virtual {v1, v2, v0}, Lcom/yyjia/sdk/b/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    if-ne v0, v1, :cond_89

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, -0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/yyjia/sdk/e/x;->a:Lcom/yyjia/sdk/e/v;

    invoke-static {v1}, Lcom/yyjia/sdk/e/v;->g(Lcom/yyjia/sdk/e/v;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_88} :catch_c8

    :cond_88
    :goto_88
    return-void

    :cond_89
    :try_start_89
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/x;->a:Lcom/yyjia/sdk/e/v;

    const-string v2, "isupdate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/yyjia/sdk/e/v;->b(Lcom/yyjia/sdk/e/v;I)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/x;->a:Lcom/yyjia/sdk/e/v;

    const-string v2, "downurl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yyjia/sdk/e/v;->a(Lcom/yyjia/sdk/e/v;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/x;->a:Lcom/yyjia/sdk/e/v;

    const-string v2, "packagename"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yyjia/sdk/e/v;->b(Lcom/yyjia/sdk/e/v;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/x;->a:Lcom/yyjia/sdk/e/v;

    invoke-static {v0}, Lcom/yyjia/sdk/e/v;->l(Lcom/yyjia/sdk/e/v;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_88

    iget-object v0, p0, Lcom/yyjia/sdk/e/x;->a:Lcom/yyjia/sdk/e/v;

    invoke-static {v0}, Lcom/yyjia/sdk/e/v;->g(Lcom/yyjia/sdk/e/v;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_c2
    .catch Lorg/json/JSONException; {:try_start_89 .. :try_end_c2} :catch_c3
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_c2} :catch_c8

    goto :goto_88

    :catch_c3
    move-exception v0

    :try_start_c4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c7} :catch_c8

    goto :goto_88

    :catch_c8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_88
.end method
