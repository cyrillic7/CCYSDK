.class public abstract Lcom/yyjia/sdk/b/a;
.super Lcom/yyjia/sdk/b/d;


# instance fields
.field public a:Lcom/yyjia/sdk/data/b;

.field private d:Lcom/yyjia/sdk/a/a/b;


# direct methods
.method public constructor <init>(Lcom/yyjia/sdk/data/b;Lcom/yyjia/sdk/a/a/b;)V
    .registers 4

    invoke-direct {p0}, Lcom/yyjia/sdk/b/d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yyjia/sdk/b/a;->a:Lcom/yyjia/sdk/data/b;

    iput-object p2, p0, Lcom/yyjia/sdk/b/a;->d:Lcom/yyjia/sdk/a/a/b;

    iput-object p1, p0, Lcom/yyjia/sdk/b/a;->a:Lcom/yyjia/sdk/data/b;

    return-void
.end method


# virtual methods
.method protected abstract a()Lorg/json/JSONObject;
.end method

.method protected a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    const-string v0, "protocolType"

    const-string v1, "request"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "protocol"

    const-string v1, "1.2.0"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "command"

    invoke-virtual {p0}, Lcom/yyjia/sdk/b/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/b/a;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "clientInfo"

    invoke-virtual {p0}, Lcom/yyjia/sdk/b/a;->h()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mobileInfo"

    invoke-virtual {p0}, Lcom/yyjia/sdk/b/a;->g()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serviceInfo"

    invoke-virtual {p0}, Lcom/yyjia/sdk/b/a;->f()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "properties"

    invoke-virtual {p0}, Lcom/yyjia/sdk/b/a;->e()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gameInfo"

    invoke-virtual {p0}, Lcom/yyjia/sdk/b/a;->d()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/yyjia/sdk/b/a;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_41

    const-string v2, "commandInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_41
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xfa0

    if-lt v1, v2, :cond_71

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yyjia/sdk/e/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yyjia/sdk/e/m;->a(Ljava/lang/String;[B)V

    :cond_71
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_74
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_74} :catch_76
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_74} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_74} :catch_81

    move-result-object v0

    :goto_75
    return-object v0

    :catch_76
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_7a
    const/4 v0, 0x0

    goto :goto_75

    :catch_7c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_7a

    :catch_81
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7a
.end method

.method protected final d()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/yyjia/sdk/b/a;->a:Lcom/yyjia/sdk/data/b;

    invoke-virtual {v1}, Lcom/yyjia/sdk/data/b;->e()Lcom/yyjia/sdk/a/a/b;

    move-result-object v1

    const-string v2, "appkey"

    invoke-virtual {v1}, Lcom/yyjia/sdk/a/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appid"

    invoke-virtual {v1}, Lcom/yyjia/sdk/a/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "gameversion"

    invoke-virtual {v1}, Lcom/yyjia/sdk/a/a/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "coopid"

    invoke-virtual {v1}, Lcom/yyjia/sdk/a/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected final e()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/yyjia/sdk/b/a;->a:Lcom/yyjia/sdk/data/b;

    invoke-virtual {v1}, Lcom/yyjia/sdk/data/b;->f()Lcom/yyjia/sdk/data/c;

    move-result-object v1

    const-string v2, "accountBound"

    iget-object v3, v1, Lcom/yyjia/sdk/data/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "accountType"

    iget-object v3, v1, Lcom/yyjia/sdk/data/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "isChecked"

    iget-object v3, v1, Lcom/yyjia/sdk/data/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sourceid"

    iget-object v3, v1, Lcom/yyjia/sdk/data/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "stauts"

    iget-object v3, v1, Lcom/yyjia/sdk/data/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "username"

    iget-object v3, v1, Lcom/yyjia/sdk/data/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uuid"

    iget-object v1, v1, Lcom/yyjia/sdk/data/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected final f()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/yyjia/sdk/b/a;->a:Lcom/yyjia/sdk/data/b;

    invoke-virtual {v1}, Lcom/yyjia/sdk/data/b;->b()Lcom/yyjia/sdk/a/a/e;

    move-result-object v1

    iget-object v2, p0, Lcom/yyjia/sdk/b/a;->a:Lcom/yyjia/sdk/data/b;

    invoke-virtual {v2}, Lcom/yyjia/sdk/data/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yyjia/sdk/a/a/e;->a(Landroid/content/Context;)V

    const-string v2, "resourceUpdateTime"

    iget-object v3, v1, Lcom/yyjia/sdk/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "activeTime"

    iget-object v3, v1, Lcom/yyjia/sdk/a/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uid"

    iget-object v1, v1, Lcom/yyjia/sdk/a/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected final g()Lorg/json/JSONObject;
    .registers 5

    iget-object v0, p0, Lcom/yyjia/sdk/b/a;->a:Lcom/yyjia/sdk/data/b;

    invoke-virtual {v0}, Lcom/yyjia/sdk/data/b;->c()Lcom/yyjia/sdk/a/a/c;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "model"

    invoke-virtual {v0}, Lcom/yyjia/sdk/a/a/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "apn"

    invoke-virtual {v0}, Lcom/yyjia/sdk/a/a/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "imei"

    invoke-virtual {v0}, Lcom/yyjia/sdk/a/a/c;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "smsCenter"

    invoke-virtual {v0}, Lcom/yyjia/sdk/a/a/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cellId"

    invoke-virtual {v0}, Lcom/yyjia/sdk/a/a/c;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "imsi"

    invoke-virtual {v0}, Lcom/yyjia/sdk/a/a/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {v0}, Lcom/yyjia/sdk/a/a/c;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "language"

    invoke-virtual {v0}, Lcom/yyjia/sdk/a/a/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "width"

    invoke-virtual {v0}, Lcom/yyjia/sdk/a/a/c;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "country"

    invoke-virtual {v0}, Lcom/yyjia/sdk/a/a/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cpu"

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cpuHardware"

    invoke-virtual {v0}, Lcom/yyjia/sdk/a/a/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method protected final h()Lorg/json/JSONObject;
    .registers 5

    iget-object v0, p0, Lcom/yyjia/sdk/b/a;->a:Lcom/yyjia/sdk/data/b;

    invoke-virtual {v0}, Lcom/yyjia/sdk/data/b;->d()Lcom/yyjia/sdk/a/a/a;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "editionId"

    invoke-virtual {v0}, Lcom/yyjia/sdk/a/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "subCoopId"

    iget-object v3, p0, Lcom/yyjia/sdk/b/a;->d:Lcom/yyjia/sdk/a/a/b;

    invoke-virtual {v3}, Lcom/yyjia/sdk/a/a/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "softLanguage"

    invoke-virtual {v0}, Lcom/yyjia/sdk/a/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "platformId"

    invoke-virtual {v0}, Lcom/yyjia/sdk/a/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "productId"

    invoke-virtual {v0}, Lcom/yyjia/sdk/a/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method
