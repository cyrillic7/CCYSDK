.class public Lcom/yyjia/sdk/c/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/net/HttpURLConnection;

.field protected final e:I

.field protected final f:I

.field private g:Lcom/yyjia/sdk/c/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/yyjia/sdk/c/c;)V
    .registers 6

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/yyjia/sdk/c/a;->e:I

    iput v0, p0, Lcom/yyjia/sdk/c/a;->f:I

    iput-object p1, p0, Lcom/yyjia/sdk/c/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yyjia/sdk/c/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yyjia/sdk/c/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/yyjia/sdk/c/a;->g:Lcom/yyjia/sdk/c/c;

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/c/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/yyjia/sdk/c/a;->b()V

    return-void
.end method

.method private b()V
    .registers 9

    const/4 v3, 0x0

    const/16 v2, 0x400

    const/4 v1, 0x0

    new-array v0, v2, [B

    new-instance v4, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v0, 0xfa0

    invoke-direct {v4, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    new-array v5, v2, [B

    :try_start_f
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/yyjia/sdk/c/a;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/yyjia/sdk/c/a;->d:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/yyjia/sdk/c/a;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_23
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_23} :catch_7e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_23} :catch_5e

    move-result-object v2

    :goto_24
    :try_start_24
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_4e

    iget-object v0, p0, Lcom/yyjia/sdk/c/a;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_30
    .catch Ljava/net/MalformedURLException; {:try_start_24 .. :try_end_30} :catch_53
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_30} :catch_79

    move-result v0

    :goto_31
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v4

    invoke-direct {v5, v6, v1, v4}, Ljava/lang/String;-><init>([BII)V

    iget-object v1, p0, Lcom/yyjia/sdk/c/a;->g:Lcom/yyjia/sdk/c/c;

    invoke-interface {v1, v0, v5}, Lcom/yyjia/sdk/c/c;->a(ILjava/lang/String;)V

    :try_start_43
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_67

    :goto_46
    if-eqz v3, :cond_6c

    iget-object v0, p0, Lcom/yyjia/sdk/c/a;->g:Lcom/yyjia/sdk/c/c;

    invoke-interface {v0, v3}, Lcom/yyjia/sdk/c/c;->a(Ljava/lang/Exception;)V

    :goto_4d
    return-void

    :cond_4e
    const/4 v6, 0x0

    :try_start_4f
    invoke-virtual {v4, v5, v6, v0}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_52
    .catch Ljava/net/MalformedURLException; {:try_start_4f .. :try_end_52} :catch_53
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_79

    goto :goto_24

    :catch_53
    move-exception v0

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    :goto_57
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v3, v2

    move-object v2, v0

    move v0, v1

    goto :goto_31

    :catch_5e
    move-exception v2

    move-object v0, v3

    :goto_60
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v2

    move-object v2, v0

    move v0, v1

    goto :goto_31

    :catch_67
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_46

    :cond_6c
    iget-object v0, p0, Lcom/yyjia/sdk/c/a;->g:Lcom/yyjia/sdk/c/c;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "unknown"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/yyjia/sdk/c/c;->a(Ljava/lang/Exception;)V

    goto :goto_4d

    :catch_79
    move-exception v0

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    goto :goto_60

    :catch_7e
    move-exception v2

    move-object v0, v3

    goto :goto_57
.end method


# virtual methods
.method public a()V
    .registers 2

    new-instance v0, Lcom/yyjia/sdk/c/b;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/c/b;-><init>(Lcom/yyjia/sdk/c/a;)V

    invoke-virtual {v0}, Lcom/yyjia/sdk/c/b;->start()V

    return-void
.end method
