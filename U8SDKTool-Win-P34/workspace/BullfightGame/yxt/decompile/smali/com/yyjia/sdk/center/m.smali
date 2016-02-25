.class Lcom/yyjia/sdk/center/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/center/GMcenter;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/center/GMcenter;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/center/m;->a:Lcom/yyjia/sdk/center/GMcenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/yyjia/sdk/b/b;

    const-string v2, "ac"

    const-string v3, "barurl"

    invoke-direct {v1, v2, v3}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/yyjia/sdk/b/b;

    const-string v3, "appid"

    new-instance v4, Ljava/lang/StringBuilder;

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;
    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->access$2()Lcom/yyjia/sdk/data/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yyjia/sdk/data/a;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/yyjia/sdk/b/e;

    invoke-direct {v1}, Lcom/yyjia/sdk/b/e;-><init>()V

    :try_start_35
    const-string v2, "http://api.yxtsy.com/sdkapi.php"

    invoke-virtual {v1, v2, v0}, Lcom/yyjia/sdk/b/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6a

    iget-object v0, p0, Lcom/yyjia/sdk/center/m;->a:Lcom/yyjia/sdk/center/GMcenter;

    const-string v2, "bbsUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yyjia/sdk/center/GMcenter;->setBbsUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/center/m;->a:Lcom/yyjia/sdk/center/GMcenter;

    const-string v2, "moreappUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yyjia/sdk/center/GMcenter;->setMoreappUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/center/m;->a:Lcom/yyjia/sdk/center/GMcenter;

    const-string v2, "paylogUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/center/GMcenter;->setPaylogUrl(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_6a} :catch_6b

    :cond_6a
    :goto_6a
    return-void

    :catch_6b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6a
.end method
