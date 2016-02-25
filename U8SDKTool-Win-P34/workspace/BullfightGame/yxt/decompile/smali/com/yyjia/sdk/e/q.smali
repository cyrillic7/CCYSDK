.class public Lcom/yyjia/sdk/e/q;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yyjia/sdk/e/q;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/yyjia/sdk/e/q;->c()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/e/q;->a:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/yyjia/sdk/e/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public b()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/e/q;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()V
    .registers 9

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    const-string v2, "/system/etc/vold.fstab"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2a

    :try_start_e
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_6c
    .catchall {:try_start_e .. :try_end_13} :catchall_be

    if-eqz v7, :cond_ce

    :try_start_15
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_c7
    .catchall {:try_start_15 .. :try_end_1a} :catchall_c2

    :try_start_1a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_ca
    .catchall {:try_start_1a .. :try_end_1d} :catchall_c5

    move-result-object v0

    :goto_1e
    if-nez v0, :cond_2b

    :goto_20
    if-eqz v7, :cond_25

    :try_start_22
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_b2

    :cond_25
    :goto_25
    if-eqz v6, :cond_2a

    :try_start_27
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_b8

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    :try_start_2b
    const-string v1, "dev_mount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    const-string v1, "\\s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v1, v0, v1

    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    if-lez v2, :cond_67

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    mul-int/2addr v0, v4

    int-to-long v4, v0

    new-instance v0, Lcom/yyjia/sdk/e/r;

    invoke-direct/range {v0 .. v5}, Lcom/yyjia/sdk/e/r;-><init>(Ljava/lang/String;JJ)V

    iget-object v1, p0, Lcom/yyjia/sdk/e/q;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_67
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_6a} :catch_ca
    .catchall {:try_start_2b .. :try_end_6a} :catchall_c5

    move-result-object v0

    goto :goto_1e

    :catch_6c
    move-exception v0

    move-object v2, v1

    :goto_6e
    :try_start_6e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_90

    if-eqz v2, :cond_76

    :try_start_73
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_8b
    .catchall {:try_start_73 .. :try_end_76} :catchall_90

    :cond_76
    :goto_76
    if-eqz v1, :cond_7b

    :try_start_78
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_9e
    .catchall {:try_start_78 .. :try_end_7b} :catchall_90

    :cond_7b
    :goto_7b
    if-eqz v2, :cond_80

    :try_start_7d
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_a3

    :cond_80
    :goto_80
    if-eqz v1, :cond_2a

    :try_start_82
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_2a

    :catch_86
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a

    :catch_8b
    move-exception v0

    :try_start_8c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_76

    :catchall_90
    move-exception v0

    move-object v6, v1

    move-object v7, v2

    :goto_93
    if-eqz v7, :cond_98

    :try_start_95
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_a8

    :cond_98
    :goto_98
    if-eqz v6, :cond_9d

    :try_start_9a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_ad

    :cond_9d
    :goto_9d
    throw v0

    :catch_9e
    move-exception v0

    :try_start_9f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_90

    goto :goto_7b

    :catch_a3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_80

    :catch_a8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_98

    :catch_ad
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9d

    :catch_b2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_25

    :catch_b8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2a

    :catchall_be
    move-exception v0

    move-object v6, v1

    move-object v7, v1

    goto :goto_93

    :catchall_c2
    move-exception v0

    move-object v6, v1

    goto :goto_93

    :catchall_c5
    move-exception v0

    goto :goto_93

    :catch_c7
    move-exception v0

    move-object v2, v7

    goto :goto_6e

    :catch_ca
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    goto :goto_6e

    :cond_ce
    move-object v6, v1

    goto/16 :goto_20
.end method
