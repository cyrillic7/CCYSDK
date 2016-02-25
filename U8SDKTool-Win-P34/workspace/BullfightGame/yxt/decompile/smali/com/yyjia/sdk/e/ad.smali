.class public final Lcom/yyjia/sdk/e/ad;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/yyjia/sdk/e/ad;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)F
    .registers 4

    const/high16 v2, 0x44200000

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v0, :cond_1c

    int-to-float v0, v1

    div-float/2addr v0, v2

    :goto_1b
    return v0

    :cond_1c
    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_1b
.end method

.method public static a()Lcom/yyjia/sdk/e/ad;
    .registers 1

    sget-object v0, Lcom/yyjia/sdk/e/ad;->a:Lcom/yyjia/sdk/e/ad;

    if-nez v0, :cond_b

    new-instance v0, Lcom/yyjia/sdk/e/ad;

    invoke-direct {v0}, Lcom/yyjia/sdk/e/ad;-><init>()V

    sput-object v0, Lcom/yyjia/sdk/e/ad;->a:Lcom/yyjia/sdk/e/ad;

    :cond_b
    sget-object v0, Lcom/yyjia/sdk/e/ad;->a:Lcom/yyjia/sdk/e/ad;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)I
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

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
