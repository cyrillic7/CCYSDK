.class final Lcom/alipay/sdk/util/FileFetch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/util/FileFetch$FileAccess;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/alipay/sdk/util/FileDownloader;

.field private d:Z

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/util/FileDownloader;)V
    .registers 5

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z

    .line 35
    iput-object p1, p0, Lcom/alipay/sdk/util/FileFetch;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/alipay/sdk/util/FileFetch;->b:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/alipay/sdk/util/FileFetch;->c:Lcom/alipay/sdk/util/FileDownloader;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/util/FileFetch;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/sdk/util/FileFetch;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .registers 3

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/alipay/sdk/util/FileFetch;->e:J

    return-wide v0
.end method

.method public final a(J)V
    .registers 4

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/alipay/sdk/util/FileFetch;->e:J

    .line 129
    return-void
.end method

.method public final b()J
    .registers 3

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/alipay/sdk/util/FileFetch;->f:J

    return-wide v0
.end method

.method public final b(J)V
    .registers 4

    .prologue
    .line 136
    iput-wide p1, p0, Lcom/alipay/sdk/util/FileFetch;->f:J

    .line 137
    return-void
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z

    return v0
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z

    .line 145
    return-void
.end method

.method public run()V
    .registers 14

    .prologue
    const/4 v12, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 41
    iget-object v0, p0, Lcom/alipay/sdk/util/FileFetch;->c:Lcom/alipay/sdk/util/FileDownloader;

    invoke-virtual {v0}, Lcom/alipay/sdk/util/FileDownloader;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 42
    iget-wide v0, p0, Lcom/alipay/sdk/util/FileFetch;->f:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_1b

    iget-wide v0, p0, Lcom/alipay/sdk/util/FileFetch;->e:J

    iget-wide v6, p0, Lcom/alipay/sdk/util/FileFetch;->f:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_1e

    .line 43
    :cond_1b
    iput-boolean v4, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z

    .line 121
    :goto_1d
    return-void

    .line 48
    :cond_1e
    new-instance v5, Lcom/alipay/sdk/util/FileFetch$FileAccess;

    invoke-direct {v5, p0}, Lcom/alipay/sdk/util/FileFetch$FileAccess;-><init>(Lcom/alipay/sdk/util/FileFetch;)V

    .line 49
    :cond_23
    :goto_23
    iget-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z

    if-nez v0, :cond_7d

    .line 50
    const/4 v3, 0x0

    .line 54
    :try_start_28
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/alipay/sdk/util/FileFetch;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 57
    iget-object v6, p0, Lcom/alipay/sdk/util/FileFetch;->c:Lcom/alipay/sdk/util/FileDownloader;

    invoke-virtual {v6}, Lcom/alipay/sdk/util/FileDownloader;->a()Z

    move-result v6

    if-eqz v6, :cond_62

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/alipay/sdk/util/FileFetch;->e:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/alipay/sdk/util/FileFetch;->f:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 60
    const-string v7, "Range"

    invoke-virtual {v0, v7, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_62
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_6d} :catch_8a
    .catch Ljava/net/SocketTimeoutException; {:try_start_28 .. :try_end_6d} :catch_e7
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_6d} :catch_106
    .catchall {:try_start_28 .. :try_end_6d} :catchall_114

    move-result v1

    .line 66
    packed-switch v1, :pswitch_data_126

    .line 78
    const/4 v0, 0x1

    :try_start_72
    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z

    .line 81
    :goto_74
    iget-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_76} :catch_122
    .catch Ljava/net/SocketTimeoutException; {:try_start_72 .. :try_end_76} :catch_120
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_76} :catch_106
    .catchall {:try_start_72 .. :try_end_76} :catchall_114

    if-eqz v0, :cond_92

    .line 113
    if-eqz v3, :cond_7d

    .line 115
    :try_start_7a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_11b

    .line 120
    :cond_7d
    :goto_7d
    invoke-virtual {v5}, Lcom/alipay/sdk/util/FileFetch$FileAccess;->a()V

    goto :goto_1d

    .line 75
    :pswitch_81
    :try_start_81
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_88} :catch_122
    .catch Ljava/net/SocketTimeoutException; {:try_start_81 .. :try_end_88} :catch_120
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_88} :catch_106
    .catchall {:try_start_81 .. :try_end_88} :catchall_114

    move-result-object v3

    goto :goto_74

    .line 84
    :catch_8a
    move-exception v0

    move v1, v2

    .line 85
    :goto_8c
    :try_start_8c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z
    :try_end_92
    .catch Ljava/net/SocketTimeoutException; {:try_start_8c .. :try_end_92} :catch_120
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_92} :catch_f8
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_92} :catch_106
    .catchall {:try_start_8c .. :try_end_92} :catchall_114

    .line 88
    :cond_92
    if-nez v3, :cond_9c

    .line 113
    if-eqz v3, :cond_23

    .line 115
    :try_start_96
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_23

    .line 116
    :catch_9a
    move-exception v0

    goto :goto_23

    .line 92
    :cond_9c
    const/16 v0, 0x400

    :try_start_9e
    new-array v6, v0, [B

    .line 94
    :cond_a0
    const/4 v0, 0x0

    array-length v7, v6

    invoke-virtual {v3, v6, v0, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 95
    if-eq v7, v12, :cond_b8

    .line 96
    iget-wide v8, p0, Lcom/alipay/sdk/util/FileFetch;->e:J

    const/4 v0, 0x0

    invoke-virtual {v5, v6, v0, v7}, Lcom/alipay/sdk/util/FileFetch$FileAccess;->a([BII)I

    move-result v0

    int-to-long v10, v0

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/alipay/sdk/util/FileFetch;->e:J

    .line 97
    iget-object v0, p0, Lcom/alipay/sdk/util/FileFetch;->c:Lcom/alipay/sdk/util/FileDownloader;

    invoke-virtual {v0}, Lcom/alipay/sdk/util/FileDownloader;->d()V

    .line 99
    :cond_b8
    iget-object v0, p0, Lcom/alipay/sdk/util/FileFetch;->c:Lcom/alipay/sdk/util/FileDownloader;

    invoke-virtual {v0}, Lcom/alipay/sdk/util/FileDownloader;->a()Z

    move-result v0

    if-eqz v0, :cond_e3

    iget-wide v8, p0, Lcom/alipay/sdk/util/FileFetch;->e:J

    iget-wide v10, p0, Lcom/alipay/sdk/util/FileFetch;->f:J

    cmp-long v0, v8, v10

    if-gez v0, :cond_e1

    move v0, v4

    .line 101
    :goto_c9
    iget-boolean v8, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z

    if-nez v8, :cond_e5

    if-eqz v0, :cond_e5

    move v0, v4

    .line 102
    :goto_d0
    if-le v7, v12, :cond_d4

    if-nez v0, :cond_a0

    .line 103
    :cond_d4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z
    :try_end_d7
    .catch Ljava/net/SocketTimeoutException; {:try_start_9e .. :try_end_d7} :catch_120
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_d7} :catch_f8
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_d7} :catch_106
    .catchall {:try_start_9e .. :try_end_d7} :catchall_114

    .line 113
    if-eqz v3, :cond_23

    .line 115
    :try_start_d9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_dc} :catch_de

    goto/16 :goto_23

    .line 116
    :catch_de
    move-exception v0

    goto/16 :goto_23

    :cond_e1
    move v0, v2

    .line 99
    goto :goto_c9

    :cond_e3
    move v0, v4

    goto :goto_c9

    :cond_e5
    move v0, v2

    .line 101
    goto :goto_d0

    .line 104
    :catch_e7
    move-exception v0

    move v1, v2

    .line 105
    :goto_e9
    if-nez v1, :cond_ee

    .line 106
    const/4 v0, 0x1

    :try_start_ec
    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z
    :try_end_ee
    .catchall {:try_start_ec .. :try_end_ee} :catchall_114

    .line 113
    :cond_ee
    if-eqz v3, :cond_23

    .line 115
    :try_start_f0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f3} :catch_f5

    goto/16 :goto_23

    .line 116
    :catch_f5
    move-exception v0

    goto/16 :goto_23

    .line 108
    :catch_f8
    move-exception v0

    .line 109
    const/4 v0, 0x1

    :try_start_fa
    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z
    :try_end_fc
    .catchall {:try_start_fa .. :try_end_fc} :catchall_114

    .line 113
    if-eqz v3, :cond_23

    .line 115
    :try_start_fe
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_101} :catch_103

    goto/16 :goto_23

    .line 116
    :catch_103
    move-exception v0

    goto/16 :goto_23

    .line 110
    :catch_106
    move-exception v0

    .line 111
    const/4 v0, 0x1

    :try_start_108
    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z
    :try_end_10a
    .catchall {:try_start_108 .. :try_end_10a} :catchall_114

    .line 113
    if-eqz v3, :cond_23

    .line 115
    :try_start_10c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_10f} :catch_111

    goto/16 :goto_23

    .line 116
    :catch_111
    move-exception v0

    goto/16 :goto_23

    .line 113
    :catchall_114
    move-exception v0

    if-eqz v3, :cond_11a

    .line 115
    :try_start_117
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_11a} :catch_11e

    .line 117
    :cond_11a
    :goto_11a
    throw v0

    .line 116
    :catch_11b
    move-exception v0

    goto/16 :goto_7d

    :catch_11e
    move-exception v1

    goto :goto_11a

    .line 104
    :catch_120
    move-exception v0

    goto :goto_e9

    .line 84
    :catch_122
    move-exception v0

    goto/16 :goto_8c

    .line 66
    nop

    :pswitch_data_126
    .packed-switch 0xc8
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
    .end packed-switch
.end method
