.class Lcom/yyjia/sdk/f/cp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/cl;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/cl;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/yyjia/sdk/f/cp;->a:Lcom/yyjia/sdk/f/cl;

    iput-object p2, p0, Lcom/yyjia/sdk/f/cp;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v7, -0x1

    new-instance v1, Lcom/yyjia/sdk/b/e;

    invoke-direct {v1}, Lcom/yyjia/sdk/b/e;-><init>()V

    const/4 v0, 0x0

    :try_start_7
    const-string v2, "https://graph.qq.com/oauth2.0/token"

    iget-object v3, p0, Lcom/yyjia/sdk/f/cp;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/yyjia/sdk/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b4

    const-string v3, "access_token="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "&expires_in="

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "&refresh_token="

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v3, v7, :cond_b4

    add-int/lit8 v3, v3, 0xd

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0xc

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "https://graph.qq.com/oauth2.0/me"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "access_token="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/yyjia/sdk/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_80

    const-string v4, "callback"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_80

    const-string v0, "callback("

    const-string v4, ""

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ");"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "openid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_80

    iget-object v1, p0, Lcom/yyjia/sdk/f/cp;->a:Lcom/yyjia/sdk/f/cl;

    invoke-static {v1}, Lcom/yyjia/sdk/f/cl;->a(Lcom/yyjia/sdk/f/cl;)Lcom/yyjia/sdk/f/cf;

    move-result-object v1

    const/16 v4, 0x7d2

    invoke-virtual {v1, v4, v0, v3}, Lcom/yyjia/sdk/f/cf;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_80
    iget-object v1, p0, Lcom/yyjia/sdk/f/cp;->a:Lcom/yyjia/sdk/f/cl;

    invoke-static {v1}, Lcom/yyjia/sdk/f/cl;->a(Lcom/yyjia/sdk/f/cl;)Lcom/yyjia/sdk/f/cf;

    move-result-object v1

    invoke-static {v1}, Lcom/yyjia/sdk/f/cf;->e(Lcom/yyjia/sdk/f/cf;)Landroid/content/Context;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "qq_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "access_token"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "expires_in"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "openid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b4} :catch_b5

    :cond_b4
    :goto_b4
    return-void

    :catch_b5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b4
.end method
