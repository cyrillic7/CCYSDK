.class public Lcom/yyjia/sdk/e/u;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)I
    .registers 3

    const/16 v0, 0x13

    :try_start_2
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_9

    move-result v0

    :goto_8
    return v0

    :catch_9
    move-exception v1

    goto :goto_8
.end method

.method public static b(Landroid/content/Context;)F
    .registers 4

    const/high16 v2, 0x44200000

    invoke-static {p0}, Lcom/yyjia/sdk/e/u;->c(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/yyjia/sdk/e/u;->d(Landroid/content/Context;)I

    move-result v1

    if-ge v0, v1, :cond_f

    int-to-float v0, v0

    div-float/2addr v0, v2

    :goto_e
    return v0

    :cond_f
    int-to-float v0, v1

    div-float/2addr v0, v2

    goto :goto_e
.end method

.method public static c(Landroid/content/Context;)I
    .registers 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static d(Landroid/content/Context;)I
    .registers 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method
