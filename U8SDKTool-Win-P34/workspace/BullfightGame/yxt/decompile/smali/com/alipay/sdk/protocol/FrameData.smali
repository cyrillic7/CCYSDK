.class public Lcom/alipay/sdk/protocol/FrameData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/alipay/sdk/data/Request;

.field private b:Lcom/alipay/sdk/data/Response;

.field private c:I

.field private d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/alipay/sdk/data/Request;Lcom/alipay/sdk/data/Response;)V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alipay/sdk/protocol/FrameData;->a:Lcom/alipay/sdk/data/Request;

    .line 30
    iput-object p2, p0, Lcom/alipay/sdk/protocol/FrameData;->b:Lcom/alipay/sdk/data/Response;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Lcom/alipay/sdk/data/Request;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/sdk/protocol/FrameData;->a:Lcom/alipay/sdk/data/Request;

    return-object v0
.end method

.method public a(Lcom/alipay/sdk/data/Request;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/sdk/protocol/FrameData;->a:Lcom/alipay/sdk/data/Request;

    .line 35
    return-void
.end method

.method public a(Lcom/alipay/sdk/data/Response;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/sdk/protocol/FrameData;->b:Lcom/alipay/sdk/data/Response;

    .line 39
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 55
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/sdk/protocol/FrameData;->c:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 59
    :goto_a
    return-void

    .line 56
    :catch_b
    move-exception v0

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/sdk/protocol/FrameData;->c:I

    goto :goto_a
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/sdk/protocol/FrameData;->d:Lorg/json/JSONObject;

    .line 70
    return-void
.end method

.method public b()Lcom/alipay/sdk/data/Response;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/protocol/FrameData;->b:Lcom/alipay/sdk/data/Response;

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/alipay/sdk/protocol/FrameData;->c:I

    return v0
.end method

.method public d()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/sdk/protocol/FrameData;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method public e()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/alipay/sdk/protocol/FrameData;->a:Lcom/alipay/sdk/data/Request;

    .line 74
    iput-object v0, p0, Lcom/alipay/sdk/protocol/FrameData;->b:Lcom/alipay/sdk/data/Response;

    .line 75
    iput-object v0, p0, Lcom/alipay/sdk/protocol/FrameData;->d:Lorg/json/JSONObject;

    .line 77
    return-void
.end method
