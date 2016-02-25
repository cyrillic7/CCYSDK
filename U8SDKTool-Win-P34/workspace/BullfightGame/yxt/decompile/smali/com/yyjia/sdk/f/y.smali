.class Lcom/yyjia/sdk/f/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/p;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/p;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/yyjia/sdk/f/y;->a:Lcom/yyjia/sdk/f/p;

    iput-object p2, p0, Lcom/yyjia/sdk/f/y;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yyjia/sdk/f/y;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v7, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/yyjia/sdk/b/b;

    const-string v0, "ac"

    const-string v3, "binduser"

    invoke-direct {v2, v0, v3}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/yyjia/sdk/b/b;

    const-string v0, "appid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->getConfigInfo()Lcom/yyjia/sdk/data/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yyjia/sdk/data/a;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/yyjia/sdk/b/b;

    const-string v0, "sessionid"

    iget-object v5, p0, Lcom/yyjia/sdk/f/y;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v5}, Lcom/yyjia/sdk/f/p;->d(Lcom/yyjia/sdk/f/p;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yyjia/sdk/center/GMcenter;->getSid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_41
    const-string v0, "username"

    iget-object v6, p0, Lcom/yyjia/sdk/f/y;->b:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "password"

    iget-object v6, p0, Lcom/yyjia/sdk/f/y;->c:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_4f} :catch_e7

    :goto_4f
    new-instance v0, Lcom/yyjia/sdk/b/b;

    const-string v6, "userinfo"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yyjia/sdk/e/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v6, v5}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/yyjia/sdk/b/e;

    invoke-direct {v0}, Lcom/yyjia/sdk/b/e;-><init>()V

    :try_start_6f
    const-string v2, "http://api.yxtsy.com/sdkapi.php"

    invoke-virtual {v0, v2, v1}, Lcom/yyjia/sdk/b/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/e/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_ed

    iget-object v0, p0, Lcom/yyjia/sdk/f/y;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v0}, Lcom/yyjia/sdk/f/p;->a(Lcom/yyjia/sdk/f/p;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "abc"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "u"

    iget-object v3, p0, Lcom/yyjia/sdk/f/y;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "p"

    iget-object v3, p0, Lcom/yyjia/sdk/f/y;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "logintype"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/yyjia/sdk/f/y;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v0}, Lcom/yyjia/sdk/f/p;->d(Lcom/yyjia/sdk/f/p;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/yyjia/sdk/center/GMcenter;->setIsLogin(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/y;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v0}, Lcom/yyjia/sdk/f/p;->d(Lcom/yyjia/sdk/f/p;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    iget-object v2, p0, Lcom/yyjia/sdk/f/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/yyjia/sdk/center/GMcenter;->setUsername(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/y;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v0}, Lcom/yyjia/sdk/f/p;->d(Lcom/yyjia/sdk/f/p;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/yyjia/sdk/center/GMcenter;->setLoginType(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/yyjia/sdk/f/y;->a:Lcom/yyjia/sdk/f/p;

    iget-object v1, v1, Lcom/yyjia/sdk/f/p;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_e6} :catch_105

    :goto_e6
    return-void

    :catch_e7
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4f

    :cond_ed
    :try_start_ed
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, -0x1

    iput v2, v0, Landroid/os/Message;->what:I

    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/yyjia/sdk/f/y;->a:Lcom/yyjia/sdk/f/p;

    iget-object v1, v1, Lcom/yyjia/sdk/f/p;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_104} :catch_105

    goto :goto_e6

    :catch_105
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e6
.end method
