.class public Lcom/yyjia/sdk/e/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:I

.field final synthetic b:Lcom/yyjia/sdk/e/v;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/yyjia/sdk/e/v;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/yyjia/sdk/e/ab;->b:Lcom/yyjia/sdk/e/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/yyjia/sdk/e/ab;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yyjia/sdk/e/ab;->g:Ljava/util/List;

    iput-object p2, p0, Lcom/yyjia/sdk/e/ab;->c:Ljava/lang/String;

    iput p3, p0, Lcom/yyjia/sdk/e/ab;->d:I

    iput-object p4, p0, Lcom/yyjia/sdk/e/ab;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b()V
    .registers 11

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/yyjia/sdk/e/ab;->d()[[I

    move-result-object v9

    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcom/yyjia/sdk/e/ab;->c:Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v7, v8

    :goto_d
    array-length v0, v9

    if-lt v7, v0, :cond_11

    return-void

    :cond_11
    aget-object v0, v9, v7

    aget v4, v0, v8

    aget-object v0, v9, v7

    const/4 v1, 0x1

    aget v3, v0, v1

    new-instance v0, Lcom/yyjia/sdk/e/ac;

    iget-object v1, p0, Lcom/yyjia/sdk/e/ab;->b:Lcom/yyjia/sdk/e/v;

    add-int/lit8 v2, v7, 0x1

    iget-object v6, p0, Lcom/yyjia/sdk/e/ab;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/yyjia/sdk/e/ac;-><init>(Lcom/yyjia/sdk/e/v;IIILjava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/yyjia/sdk/e/ab;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_d
.end method

.method public c()J
    .registers 7

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_3
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcom/yyjia/sdk/e/ab;->e:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_10
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_10} :catch_21
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_10} :catch_2c
    .catchall {:try_start_3 .. :try_end_10} :catchall_37

    :try_start_10
    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_19
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_19} :catch_48
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_19} :catch_43
    .catchall {:try_start_10 .. :try_end_19} :catchall_3e

    move-result-wide v2

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1f
    move-wide v0, v2

    :goto_20
    return-wide v0

    :catch_21
    move-exception v0

    :goto_22
    :try_start_22
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_37

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-wide v0, v2

    goto :goto_20

    :catch_2c
    move-exception v0

    :goto_2d
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_37

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-wide v0, v2

    goto :goto_20

    :catchall_37
    move-exception v0

    :goto_38
    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3d
    throw v0

    :catchall_3e
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_38

    :catch_43
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2d

    :catch_48
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_22
.end method

.method public d()[[I
    .registers 8

    const/4 v3, 0x0

    iget v0, p0, Lcom/yyjia/sdk/e/ab;->d:I

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    invoke-virtual {p0}, Lcom/yyjia/sdk/e/ab;->c()J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, p0, Lcom/yyjia/sdk/e/ab;->a:I

    iget v1, p0, Lcom/yyjia/sdk/e/ab;->a:I

    iget v2, p0, Lcom/yyjia/sdk/e/ab;->d:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_28

    iget v1, p0, Lcom/yyjia/sdk/e/ab;->a:I

    iget v2, p0, Lcom/yyjia/sdk/e/ab;->d:I

    div-int/2addr v1, v2

    :goto_23
    move v2, v3

    :goto_24
    array-length v4, v0

    if-lt v2, v4, :cond_2e

    return-object v0

    :cond_28
    iget v1, p0, Lcom/yyjia/sdk/e/ab;->a:I

    iget v2, p0, Lcom/yyjia/sdk/e/ab;->d:I

    div-int/2addr v1, v2

    goto :goto_23

    :cond_2e
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_42

    move v4, v1

    :goto_34
    aget-object v5, v0, v2

    mul-int v6, v2, v1

    aput v6, v5, v3

    aget-object v5, v0, v2

    const/4 v6, 0x1

    aput v4, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_42
    iget v4, p0, Lcom/yyjia/sdk/e/ab;->a:I

    mul-int/lit8 v5, v1, 0x4

    sub-int/2addr v4, v5

    goto :goto_34
.end method

.method public run()V
    .registers 9

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-boolean v0, p0, Lcom/yyjia/sdk/e/ab;->f:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/yyjia/sdk/e/ab;->b()V

    iput-boolean v5, p0, Lcom/yyjia/sdk/e/ab;->f:Z

    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/yyjia/sdk/e/ab;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    move v4, v5

    :cond_17
    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/yyjia/sdk/e/ab;->b:Lcom/yyjia/sdk/e/v;

    int-to-float v1, v3

    iget v3, p0, Lcom/yyjia/sdk/e/ab;->a:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x42c80000

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/yyjia/sdk/e/v;->a(Lcom/yyjia/sdk/e/v;I)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/ab;->b:Lcom/yyjia/sdk/e/v;

    invoke-static {v0}, Lcom/yyjia/sdk/e/v;->g(Lcom/yyjia/sdk/e/v;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eqz v4, :cond_59

    iget-object v0, p0, Lcom/yyjia/sdk/e/ab;->b:Lcom/yyjia/sdk/e/v;

    invoke-static {v0}, Lcom/yyjia/sdk/e/v;->g(Lcom/yyjia/sdk/e/v;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    :cond_44
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yyjia/sdk/e/ac;

    invoke-virtual {v0}, Lcom/yyjia/sdk/e/ac;->a()I

    move-result v7

    add-int/2addr v3, v7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/yyjia/sdk/e/ac;->b()Z

    move-result v0

    if-nez v0, :cond_17

    move v4, v2

    goto :goto_17

    :cond_59
    const-wide/16 v0, 0x3e8

    :try_start_5b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_e

    :catch_5f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_e
.end method
