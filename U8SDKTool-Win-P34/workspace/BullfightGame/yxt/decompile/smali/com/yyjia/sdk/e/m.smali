.class public Lcom/yyjia/sdk/e/m;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    :try_start_b
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_f

    :cond_e
    :goto_e
    return-object v0

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    const-wide/16 v0, 0x400

    invoke-static {v0, v1}, Lcom/yyjia/sdk/e/m;->a(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/yyjia/sdk/e/p;->a()J

    move-result-wide v2

    cmp-long v1, v2, p0

    if-lez v1, :cond_29

    invoke-static {}, Lcom/yyjia/sdk/e/p;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1b
    :goto_1b
    return-object v0

    :cond_1c
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1b

    :cond_29
    invoke-static {}, Lcom/yyjia/sdk/e/p;->b()J

    move-result-wide v2

    cmp-long v1, v2, p0

    if-lez v1, :cond_51

    invoke-static {}, Lcom/yyjia/sdk/e/p;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_44

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1b

    :cond_44
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1b

    :cond_51
    invoke-static {}, Lcom/yyjia/sdk/e/p;->f()J

    move-result-wide v2

    cmp-long v1, v2, p0

    if-lez v1, :cond_6f

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yyjia/sdk/e/p;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_6f
    invoke-static {}, Lcom/yyjia/sdk/e/p;->c()J

    move-result-wide v2

    cmp-long v1, v2, p0

    if-lez v1, :cond_97

    invoke-static {}, Lcom/yyjia/sdk/e/p;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8a

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1b

    :cond_8a
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1b

    :cond_97
    invoke-static {}, Lcom/yyjia/sdk/e/p;->d()J

    move-result-wide v2

    cmp-long v1, v2, p0

    if-lez v1, :cond_1b

    invoke-static {}, Lcom/yyjia/sdk/e/p;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_1b

    :cond_b3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_1b
.end method

.method public static a(Ljava/lang/String;[B)V
    .registers 6

    invoke-static {p0}, Lcom/yyjia/sdk/e/m;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_b} :catch_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_24
    .catchall {:try_start_5 .. :try_end_b} :catchall_33

    :try_start_b
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_e} :catch_4a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_47
    .catchall {:try_start_b .. :try_end_e} :catchall_44

    if-eqz v1, :cond_13

    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_3f

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    move-object v1, v2

    :goto_16
    :try_start_16
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_44

    if-eqz v1, :cond_13

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_13

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    :catch_24
    move-exception v0

    :goto_25
    :try_start_25
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_33

    if-eqz v2, :cond_13

    :try_start_2a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_13

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    :catchall_33
    move-exception v0

    :goto_34
    if-eqz v2, :cond_39

    :try_start_36
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    :cond_39
    :goto_39
    throw v0

    :catch_3a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_39

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    :catchall_44
    move-exception v0

    move-object v2, v1

    goto :goto_34

    :catch_47
    move-exception v0

    move-object v2, v1

    goto :goto_25

    :catch_4a
    move-exception v0

    goto :goto_16
.end method
