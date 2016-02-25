.class public Lcom/yyjia/sdk/e/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:I

.field final synthetic b:Lcom/yyjia/sdk/e/v;

.field private c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:Ljava/io/File;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yyjia/sdk/e/v;IIILjava/io/File;Ljava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/yyjia/sdk/e/ac;->b:Lcom/yyjia/sdk/e/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/yyjia/sdk/e/ac;->a:I

    iput p2, p0, Lcom/yyjia/sdk/e/ac;->c:I

    iput p3, p0, Lcom/yyjia/sdk/e/ac;->e:I

    iput p4, p0, Lcom/yyjia/sdk/e/ac;->f:I

    iput-object p5, p0, Lcom/yyjia/sdk/e/ac;->g:Ljava/io/File;

    iput-object p6, p0, Lcom/yyjia/sdk/e/ac;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/e/ac;->a:I

    return v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/yyjia/sdk/e/ac;->d:Z

    return v0
.end method

.method public run()V
    .registers 10

    const/4 v3, 0x0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/yyjia/sdk/e/ac;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_11e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10d

    :try_start_e
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "bytes="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/yyjia/sdk/e/ac;->f:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/yyjia/sdk/e/ac;->f:I

    iget v5, p0, Lcom/yyjia/sdk/e/ac;->e:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/yyjia/sdk/e/ac;->g:Ljava/io/File;

    const-string v2, "rwd"

    invoke-direct {v4, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_44} :catch_122
    .catchall {:try_start_e .. :try_end_44} :catchall_111

    :try_start_44
    iget v1, p0, Lcom/yyjia/sdk/e/ac;->f:I

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_53} :catch_127
    .catchall {:try_start_44 .. :try_end_53} :catchall_116

    const/16 v1, 0x1000

    :try_start_55
    new-array v3, v1, [B

    :cond_57
    :goto_57
    iget v1, p0, Lcom/yyjia/sdk/e/ac;->f:I

    iget v5, p0, Lcom/yyjia/sdk/e/ac;->a:I

    add-int/2addr v1, v5

    iget v5, p0, Lcom/yyjia/sdk/e/ac;->f:I

    iget v6, p0, Lcom/yyjia/sdk/e/ac;->e:I

    add-int/2addr v5, v6

    if-lt v1, v5, :cond_76

    :cond_63
    :goto_63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yyjia/sdk/e/ac;->d:Z
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_66} :catch_b6
    .catchall {:try_start_55 .. :try_end_66} :catchall_d4

    if-eqz v2, :cond_6b

    :try_start_68
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_101

    :cond_6b
    :goto_6b
    if-eqz v4, :cond_70

    :try_start_6d
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_107

    :cond_70
    :goto_70
    if-eqz v0, :cond_75

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_75
    :goto_75
    return-void

    :cond_76
    :try_start_76
    iget-object v1, p0, Lcom/yyjia/sdk/e/ac;->b:Lcom/yyjia/sdk/e/v;

    invoke-static {v1}, Lcom/yyjia/sdk/e/v;->h(Lcom/yyjia/sdk/e/v;)Z

    move-result v1

    if-nez v1, :cond_a6

    const/4 v1, 0x0

    const/16 v5, 0x1000

    invoke-virtual {v2, v3, v1, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_63

    iget v5, p0, Lcom/yyjia/sdk/e/ac;->a:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/yyjia/sdk/e/ac;->e:I

    if-le v5, v6, :cond_94

    iget v1, p0, Lcom/yyjia/sdk/e/ac;->e:I

    iget v5, p0, Lcom/yyjia/sdk/e/ac;->a:I

    sub-int/2addr v1, v5

    :cond_94
    if-ltz v1, :cond_63

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    iget v5, p0, Lcom/yyjia/sdk/e/ac;->a:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/yyjia/sdk/e/ac;->a:I

    iget v1, p0, Lcom/yyjia/sdk/e/ac;->a:I

    iget v5, p0, Lcom/yyjia/sdk/e/ac;->e:I
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_a3} :catch_b6
    .catchall {:try_start_76 .. :try_end_a3} :catchall_d4

    if-ne v1, v5, :cond_57

    goto :goto_63

    :cond_a6
    if-eqz v2, :cond_ab

    :try_start_a8
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_b6
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_d4

    :cond_ab
    :goto_ab
    if-eqz v4, :cond_b0

    :try_start_ad
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_e8
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b6
    .catchall {:try_start_ad .. :try_end_b0} :catchall_d4

    :cond_b0
    :goto_b0
    if-eqz v0, :cond_57

    :try_start_b2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_b6
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_d4

    goto :goto_57

    :catch_b6
    move-exception v1

    move-object v3, v4

    move-object v8, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v8

    :goto_bc
    :try_start_bc
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_11a

    if-eqz v1, :cond_c4

    :try_start_c1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_ed

    :cond_c4
    :goto_c4
    if-eqz v3, :cond_c9

    :try_start_c6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_f2

    :cond_c9
    :goto_c9
    if-eqz v2, :cond_75

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_75

    :catch_cf
    move-exception v1

    :try_start_d0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d3} :catch_b6
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_d4

    goto :goto_ab

    :catchall_d4
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    :goto_d8
    if-eqz v3, :cond_dd

    :try_start_da
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_f7

    :cond_dd
    :goto_dd
    if-eqz v4, :cond_e2

    :try_start_df
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_fc

    :cond_e2
    :goto_e2
    if-eqz v2, :cond_e7

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e7
    throw v0

    :catch_e8
    move-exception v1

    :try_start_e9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ec} :catch_b6
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_d4

    goto :goto_b0

    :catch_ed
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c4

    :catch_f2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c9

    :catch_f7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_dd

    :catch_fc
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e2

    :catch_101
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6b

    :catch_107
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_70

    :catchall_10d
    move-exception v0

    move-object v4, v3

    move-object v2, v3

    goto :goto_d8

    :catchall_111
    move-exception v1

    move-object v4, v3

    move-object v2, v0

    move-object v0, v1

    goto :goto_d8

    :catchall_116
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_d8

    :catchall_11a
    move-exception v0

    move-object v4, v3

    move-object v3, v1

    goto :goto_d8

    :catch_11e
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    goto :goto_bc

    :catch_122
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_bc

    :catch_127
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    goto :goto_bc
.end method
