.class public Lcom/yyjia/sdk/b/c;
.super Lcom/yyjia/sdk/b/a;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yyjia/sdk/data/b;Lcom/yyjia/sdk/a/a/b;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/yyjia/sdk/b/a;-><init>(Lcom/yyjia/sdk/data/b;Lcom/yyjia/sdk/a/a/b;)V

    const-string v0, "member/regist"

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/b/c;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "username"

    iget-object v2, p0, Lcom/yyjia/sdk/b/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "password"

    iget-object v2, p0, Lcom/yyjia/sdk/b/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "checkcode"

    iget-object v2, p0, Lcom/yyjia/sdk/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "registType"

    iget-object v2, p0, Lcom/yyjia/sdk/b/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "accountType"

    iget-object v2, p0, Lcom/yyjia/sdk/b/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ac"

    iget-object v2, p0, Lcom/yyjia/sdk/b/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2f} :catch_30

    :goto_2f
    return-object v0

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/yyjia/sdk/b/c;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/yyjia/sdk/b/c;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/yyjia/sdk/b/c;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/yyjia/sdk/b/c;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/yyjia/sdk/b/c;->h:Ljava/lang/String;

    iput-object p6, p0, Lcom/yyjia/sdk/b/c;->i:Ljava/lang/String;

    return-void
.end method
