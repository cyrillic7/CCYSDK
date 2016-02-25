.class Lcom/yyjia/sdk/f/co;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/cl;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/cl;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/yyjia/sdk/f/co;->a:Lcom/yyjia/sdk/f/cl;

    iput-object p2, p0, Lcom/yyjia/sdk/f/co;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    new-instance v0, Lcom/yyjia/sdk/b/e;

    invoke-direct {v0}, Lcom/yyjia/sdk/b/e;-><init>()V

    :try_start_5
    const-string v1, "https://api.weibo.com/oauth2/access_token"

    iget-object v2, p0, Lcom/yyjia/sdk/f/co;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/b/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7e

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7e

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "access_token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "expires_in"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "uid"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/yyjia/sdk/f/co;->a:Lcom/yyjia/sdk/f/cl;

    invoke-static {v3}, Lcom/yyjia/sdk/f/cl;->a(Lcom/yyjia/sdk/f/cl;)Lcom/yyjia/sdk/f/cf;

    move-result-object v3

    invoke-static {v3}, Lcom/yyjia/sdk/f/cf;->e(Lcom/yyjia/sdk/f/cf;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_sina"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "access_token"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "expires_in"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "uid"

    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v0, :cond_7e

    iget-object v2, p0, Lcom/yyjia/sdk/f/co;->a:Lcom/yyjia/sdk/f/cl;

    invoke-static {v2}, Lcom/yyjia/sdk/f/cl;->a(Lcom/yyjia/sdk/f/cl;)Lcom/yyjia/sdk/f/cf;

    move-result-object v2

    const/16 v3, 0x7d1

    invoke-virtual {v2, v3, v0, v1}, Lcom/yyjia/sdk/f/cf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7e} :catch_7f

    :cond_7e
    :goto_7e
    return-void

    :catch_7f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7e
.end method
