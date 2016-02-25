.class Lcom/yyjia/sdk/center/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/yyjia/sdk/b/b;

    const-string v2, "ac"

    const-string v3, "getloginkey"

    invoke-direct {v1, v2, v3}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/yyjia/sdk/b/e;

    invoke-direct {v1}, Lcom/yyjia/sdk/b/e;-><init>()V

    :try_start_16
    const-string v2, "http://api.yxtsy.com/sdkapi.php"

    invoke-virtual {v1, v2, v0}, Lcom/yyjia/sdk/b/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_59

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;
    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->access$2()Lcom/yyjia/sdk/data/a;

    move-result-object v0

    const-string v2, "qq_appid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yyjia/sdk/data/a;->c(Ljava/lang/String;)V

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;
    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->access$2()Lcom/yyjia/sdk/data/a;

    move-result-object v0

    const-string v2, "qq_appsecret"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yyjia/sdk/data/a;->d(Ljava/lang/String;)V

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;
    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->access$2()Lcom/yyjia/sdk/data/a;

    move-result-object v0

    const-string v2, "sina_appid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yyjia/sdk/data/a;->a(Ljava/lang/String;)V

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;
    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->access$2()Lcom/yyjia/sdk/data/a;

    move-result-object v0

    const-string v2, "sina_appsecret"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/data/a;->b(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_59} :catch_5a

    :cond_59
    :goto_59
    return-void

    :catch_5a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_59
.end method
