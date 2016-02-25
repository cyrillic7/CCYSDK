.class public Lcom/yyjia/sdk/e/p;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/yyjia/sdk/e/q;

.field public static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/yyjia/sdk/e/p;->a:Lcom/yyjia/sdk/e/q;

    sput-object v0, Lcom/yyjia/sdk/e/p;->c:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/yyjia/sdk/e/p;->d:I

    const/4 v0, 0x0

    sput v0, Lcom/yyjia/sdk/e/p;->e:I

    const/4 v0, 0x1

    sput v0, Lcom/yyjia/sdk/e/p;->f:I

    sget v0, Lcom/yyjia/sdk/e/p;->d:I

    sput v0, Lcom/yyjia/sdk/e/p;->g:I

    return-void
.end method

.method public static a()J
    .registers 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-wide/16 v0, 0x0

    :goto_e
    return-wide v0

    :cond_f
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    goto :goto_e
.end method

.method public static b()J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    :goto_e
    return-wide v0

    :cond_f
    invoke-static {}, Lcom/yyjia/sdk/e/p;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    goto :goto_e
.end method

.method public static c()J
    .registers 4

    invoke-static {}, Lcom/yyjia/sdk/e/p;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    const-wide/16 v0, 0x0

    :goto_11
    return-wide v0

    :cond_12
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    goto :goto_11
.end method

.method public static d()J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    :goto_e
    return-wide v0

    :cond_f
    sget v2, Lcom/yyjia/sdk/e/p;->g:I

    sget v3, Lcom/yyjia/sdk/e/p;->e:I

    if-eq v2, v3, :cond_e

    sget-object v2, Lcom/yyjia/sdk/e/p;->c:Ljava/lang/String;

    if-nez v2, :cond_1c

    invoke-static {}, Lcom/yyjia/sdk/e/p;->e()Ljava/lang/String;

    :cond_1c
    sget-object v2, Lcom/yyjia/sdk/e/p;->c:Ljava/lang/String;

    if-eqz v2, :cond_e

    new-instance v0, Landroid/os/StatFs;

    sget-object v1, Lcom/yyjia/sdk/e/p;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    goto :goto_e
.end method

.method public static e()Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    sget v0, Lcom/yyjia/sdk/e/p;->g:I

    sget v2, Lcom/yyjia/sdk/e/p;->e:I

    if-ne v0, v2, :cond_8

    :goto_7
    return-object v1

    :cond_8
    sget v0, Lcom/yyjia/sdk/e/p;->g:I

    sget v2, Lcom/yyjia/sdk/e/p;->d:I

    if-ne v0, v2, :cond_37

    new-instance v0, Lcom/yyjia/sdk/e/q;

    invoke-direct {v0}, Lcom/yyjia/sdk/e/q;-><init>()V

    invoke-virtual {v0}, Lcom/yyjia/sdk/e/q;->a()I

    move-result v2

    if-gtz v2, :cond_1e

    sget v0, Lcom/yyjia/sdk/e/p;->e:I

    sput v0, Lcom/yyjia/sdk/e/p;->g:I

    goto :goto_7

    :cond_1e
    invoke-virtual {v0}, Lcom/yyjia/sdk/e/q;->b()Ljava/util/List;

    move-result-object v5

    const-wide/32 v2, 0x6400000

    const/4 v0, 0x0

    move v4, v0

    :goto_27
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v4, v0, :cond_3a

    sput-object v1, Lcom/yyjia/sdk/e/p;->c:Ljava/lang/String;

    sget-object v0, Lcom/yyjia/sdk/e/p;->c:Ljava/lang/String;

    if-eqz v0, :cond_55

    sget v0, Lcom/yyjia/sdk/e/p;->f:I

    sput v0, Lcom/yyjia/sdk/e/p;->g:I

    :cond_37
    :goto_37
    sget-object v1, Lcom/yyjia/sdk/e/p;->c:Ljava/lang/String;

    goto :goto_7

    :cond_3a
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yyjia/sdk/e/r;

    invoke-virtual {v0}, Lcom/yyjia/sdk/e/r;->a()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_5a

    invoke-virtual {v0}, Lcom/yyjia/sdk/e/r;->a()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/yyjia/sdk/e/r;->b()Ljava/lang/String;

    move-result-object v0

    :goto_50
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v1, v0

    goto :goto_27

    :cond_55
    sget v0, Lcom/yyjia/sdk/e/p;->e:I

    sput v0, Lcom/yyjia/sdk/e/p;->g:I

    goto :goto_37

    :cond_5a
    move-object v0, v1

    goto :goto_50
.end method

.method public static f()J
    .registers 4

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static final g()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final h()Ljava/lang/String;
    .registers 1

    const-string v0, "/mnt/sdcard2"

    return-object v0
.end method

.method public static final i()Ljava/lang/String;
    .registers 1

    const-string v0, "/mnt/emmc"

    return-object v0
.end method
