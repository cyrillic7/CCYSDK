.class public Lcom/baidu/bdgame/sdk/obf/x;
.super Lcom/baidu/bdgame/sdk/obf/y;
.source "SourceFile"


# static fields
.field private static final a:S = 0x2s


# instance fields
.field private b:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/y;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 30
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/x;
    .registers 7

    .prologue
    const/4 v3, 0x2

    .line 33
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/x;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/x;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 34
    invoke-virtual {v0, v3}, Lcom/baidu/bdgame/sdk/obf/x;->b(I)V

    .line 35
    invoke-virtual {v0, v3}, Lcom/baidu/bdgame/sdk/obf/x;->a(S)V

    .line 36
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/x;->g:Ljava/lang/String;

    .line 37
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/x;->b:Ljava/lang/String;

    .line 38
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/ai;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ka;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/ai;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/y;->a(Lcom/baidu/bdgame/sdk/obf/ai;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ka;

    .line 53
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ka;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    const-string v1, "AccountID"

    invoke-static {p2, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 57
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 58
    const-string v1, "AccountID"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    .line 83
    :goto_29
    return-object v0

    .line 62
    :cond_2a
    const-string v2, "AutoLoginSign"

    invoke-static {p2, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 64
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 65
    const-string v1, "AutoLoginSign"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    goto :goto_29

    .line 69
    :cond_45
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/s;

    invoke-direct {v3}, Lcom/baidu/bdgame/sdk/obf/s;-><init>()V

    .line 70
    invoke-virtual {v3, v4}, Lcom/baidu/bdgame/sdk/obf/s;->a(I)V

    .line 71
    invoke-virtual {v3, v1}, Lcom/baidu/bdgame/sdk/obf/s;->a(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3, v2}, Lcom/baidu/bdgame/sdk/obf/s;->b(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/x;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/ai;->h(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1, v3}, Lcom/baidu/bdgame/sdk/obf/ai;->a(Lcom/baidu/bdgame/sdk/obf/s;)V

    .line 78
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/x;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/ai;->a(Ljava/lang/String;)V

    goto :goto_29
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/kd;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 45
    const-string v1, "BDUSS"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/x;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    return-object v0
.end method

.method public bridge synthetic a(Z)V
    .registers 2

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/y;->a(Z)V

    return-void
.end method
