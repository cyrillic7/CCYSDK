.class public Lcom/yyjia/sdk/d/a;
.super Landroid/widget/Toast;


# static fields
.field private static a:Lcom/yyjia/sdk/d/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/yyjia/sdk/d/a;->a:Lcom/yyjia/sdk/d/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yyjia/sdk/d/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/yyjia/sdk/e/u;->b(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/yyjia/sdk/d/a;->e:F

    invoke-direct {p0}, Lcom/yyjia/sdk/d/a;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yyjia/sdk/d/a;
    .registers 2

    sget-object v0, Lcom/yyjia/sdk/d/a;->a:Lcom/yyjia/sdk/d/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/yyjia/sdk/d/a;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/d/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yyjia/sdk/d/a;->a:Lcom/yyjia/sdk/d/a;

    :cond_b
    sget-object v0, Lcom/yyjia/sdk/d/a;->a:Lcom/yyjia/sdk/d/a;

    return-object v0
.end method

.method private a()V
    .registers 12

    const/16 v10, 0x10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x41000000

    const/high16 v6, 0x41f00000

    iget v0, p0, Lcom/yyjia/sdk/d/a;->e:F

    mul-float/2addr v0, v6

    float-to-int v0, v0

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yyjia/sdk/d/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yyjia/sdk/d/a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yyjia/sdk/d/a;->c:Landroid/widget/TextView;

    const-string v2, "#047fef"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/d/a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/d/a;->c:Landroid/widget/TextView;

    int-to-float v2, v0

    invoke-virtual {v1, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/d/a;->c:Landroid/widget/TextView;

    const/high16 v2, 0x42a00000

    iget v3, p0, Lcom/yyjia/sdk/d/a;->e:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/yyjia/sdk/d/a;->e:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, p0, Lcom/yyjia/sdk/d/a;->e:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iget v5, p0, Lcom/yyjia/sdk/d/a;->e:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/d/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/yyjia/sdk/d/a;->b:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "yyjia_sdk_toastbackground"

    invoke-static {v2, v3, v4}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/yyjia/sdk/d/a;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yyjia/sdk/d/a;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/yyjia/sdk/d/a;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yyjia/sdk/d/a;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/yyjia/sdk/d/a;->b:Landroid/content/Context;

    const-string v4, "drawable"

    const-string v5, "yyjia_sdk_showicon"

    invoke-static {v3, v4, v5}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/yyjia/sdk/d/a;->e:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, p0, Lcom/yyjia/sdk/d/a;->e:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v2, v8, v8, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/yyjia/sdk/d/a;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/yyjia/sdk/d/a;->d:Landroid/widget/TextView;

    const-string v3, "#047fef"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/yyjia/sdk/d/a;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/yyjia/sdk/d/a;->d:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v2, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/yyjia/sdk/d/a;->d:Landroid/widget/TextView;

    const/high16 v2, 0x42480000

    iget v3, p0, Lcom/yyjia/sdk/d/a;->e:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/yyjia/sdk/d/a;->e:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, p0, Lcom/yyjia/sdk/d/a;->e:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iget v5, p0, Lcom/yyjia/sdk/d/a;->e:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/yyjia/sdk/d/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/yyjia/sdk/e/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, ".*java.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const-string p1, "SERVER ERROR"

    :cond_10
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/yyjia/sdk/d/a;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/d/a;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yyjia/sdk/d/a;->c:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/yyjia/sdk/d/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/yyjia/sdk/d/a;->setGravity(III)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/d/a;->setDuration(I)V

    invoke-virtual {p0}, Lcom/yyjia/sdk/d/a;->show()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/yyjia/sdk/d/a;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/d/a;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yyjia/sdk/d/a;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yyjia/sdk/d/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x31

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/yyjia/sdk/d/a;->setGravity(III)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/d/a;->setDuration(I)V

    invoke-virtual {p0}, Lcom/yyjia/sdk/d/a;->show()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    :goto_2c
    return-void

    :catch_2d
    move-exception v0

    goto :goto_2c
.end method
