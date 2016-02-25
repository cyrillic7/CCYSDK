.class public Lcom/yyjia/sdk/f/o;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:F

.field private g:Lcom/yyjia/sdk/f/bu;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;FZZZLcom/yyjia/sdk/f/bu;)V
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/yyjia/sdk/f/o;->b:Z

    iput-boolean v0, p0, Lcom/yyjia/sdk/f/o;->c:Z

    iput-boolean v1, p0, Lcom/yyjia/sdk/f/o;->d:Z

    iput-boolean v1, p0, Lcom/yyjia/sdk/f/o;->e:Z

    const/16 v0, 0x262

    iput v0, p0, Lcom/yyjia/sdk/f/o;->h:I

    const/16 v0, 0x1ab

    iput v0, p0, Lcom/yyjia/sdk/f/o;->i:I

    invoke-direct/range {p0 .. p6}, Lcom/yyjia/sdk/f/o;->a(Landroid/content/Context;FZZZLcom/yyjia/sdk/f/bu;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, p2

    int-to-float v2, v3

    div-float/2addr v0, v2

    int-to-float v2, p3

    int-to-float v5, v4

    div-float/2addr v2, v5

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_21
    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 12

    const/high16 v9, 0x41a00000

    const/4 v7, 0x0

    const/high16 v8, 0x41700000

    iget v0, p0, Lcom/yyjia/sdk/f/o;->h:I

    iget v1, p0, Lcom/yyjia/sdk/f/o;->i:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iget-object v3, p0, Lcom/yyjia/sdk/f/o;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/yyjia/sdk/f/o;->a:Landroid/content/Context;

    const-string v5, "drawable"

    const-string v6, "yyjia_sdk_background"

    invoke-static {v4, v5, v6}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iget-object v3, p0, Lcom/yyjia/sdk/f/o;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget v5, p0, Lcom/yyjia/sdk/f/o;->h:I

    iget v6, p0, Lcom/yyjia/sdk/f/o;->i:I

    invoke-static {v3, v4, v5, v6}, Lcom/yyjia/sdk/f/o;->a(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_45

    invoke-virtual {v0, v3, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_45
    iget-boolean v3, p0, Lcom/yyjia/sdk/f/o;->d:Z

    if-eqz v3, :cond_6f

    iget-boolean v3, p0, Lcom/yyjia/sdk/f/o;->b:Z

    if-nez v3, :cond_ac

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/yyjia/sdk/f/o;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/yyjia/sdk/f/o;->a:Landroid/content/Context;

    const-string v6, "drawable"

    const-string v7, "yyjia_sdk_back"

    invoke-static {v5, v6, v7}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_6f

    invoke-virtual {v0, v3, v9, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_6f
    :goto_6f
    iget-boolean v3, p0, Lcom/yyjia/sdk/f/o;->e:Z

    if-eqz v3, :cond_a3

    iget-boolean v3, p0, Lcom/yyjia/sdk/f/o;->c:Z

    if-nez v3, :cond_cf

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/yyjia/sdk/f/o;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/yyjia/sdk/f/o;->a:Landroid/content/Context;

    const-string v6, "drawable"

    const-string v7, "yyjia_sdk_close"

    invoke-static {v5, v6, v7}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_a3

    iget v4, p0, Lcom/yyjia/sdk/f/o;->h:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0xf

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_a3
    :goto_a3
    const/4 v0, 0x0

    if-eqz v1, :cond_ab

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_ab
    return-object v0

    :cond_ac
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/yyjia/sdk/f/o;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/yyjia/sdk/f/o;->a:Landroid/content/Context;

    const-string v6, "drawable"

    const-string v7, "yyjia_sdk_back_click"

    invoke-static {v5, v6, v7}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_6f

    invoke-virtual {v0, v3, v9, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_6f

    :cond_cf
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/yyjia/sdk/f/o;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/yyjia/sdk/f/o;->a:Landroid/content/Context;

    const-string v6, "drawable"

    const-string v7, "yyjia_sdk_close_click"

    invoke-static {v5, v6, v7}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_a3

    iget v4, p0, Lcom/yyjia/sdk/f/o;->h:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0xf

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_a3
.end method

.method private a(FFZ)V
    .registers 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000

    if-eqz p3, :cond_43

    iget-boolean v0, p0, Lcom/yyjia/sdk/f/o;->d:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/yyjia/sdk/f/o;->f:F

    mul-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_23

    iget v0, p0, Lcom/yyjia/sdk/f/o;->f:F

    mul-float/2addr v0, v2

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_23

    iput-boolean v3, p0, Lcom/yyjia/sdk/f/o;->b:Z

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/yyjia/sdk/f/o;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/f/o;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_23
    iget-boolean v0, p0, Lcom/yyjia/sdk/f/o;->e:Z

    if-eqz v0, :cond_42

    const/high16 v0, 0x43ff0000

    iget v1, p0, Lcom/yyjia/sdk/f/o;->f:F

    mul-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_42

    iget v0, p0, Lcom/yyjia/sdk/f/o;->f:F

    mul-float/2addr v0, v2

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_42

    iput-boolean v3, p0, Lcom/yyjia/sdk/f/o;->c:Z

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/yyjia/sdk/f/o;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/f/o;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_42
    :goto_42
    return-void

    :cond_43
    iget-boolean v0, p0, Lcom/yyjia/sdk/f/o;->d:Z

    if-eqz v0, :cond_5b

    iget-boolean v0, p0, Lcom/yyjia/sdk/f/o;->b:Z

    if-eqz v0, :cond_5b

    iput-boolean v1, p0, Lcom/yyjia/sdk/f/o;->b:Z

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/yyjia/sdk/f/o;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/f/o;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/o;->g:Lcom/yyjia/sdk/f/bu;

    invoke-interface {v0}, Lcom/yyjia/sdk/f/bu;->b()V

    :cond_5b
    iget-boolean v0, p0, Lcom/yyjia/sdk/f/o;->e:Z

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/yyjia/sdk/f/o;->c:Z

    if-eqz v0, :cond_42

    iput-boolean v1, p0, Lcom/yyjia/sdk/f/o;->c:Z

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/yyjia/sdk/f/o;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/f/o;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/o;->g:Lcom/yyjia/sdk/f/bu;

    invoke-interface {v0}, Lcom/yyjia/sdk/f/bu;->a()V

    goto :goto_42
.end method

.method private a(Landroid/content/Context;FZZZLcom/yyjia/sdk/f/bu;)V
    .registers 8

    iput-object p1, p0, Lcom/yyjia/sdk/f/o;->a:Landroid/content/Context;

    iput-object p6, p0, Lcom/yyjia/sdk/f/o;->g:Lcom/yyjia/sdk/f/bu;

    iput p2, p0, Lcom/yyjia/sdk/f/o;->f:F

    iput-boolean p4, p0, Lcom/yyjia/sdk/f/o;->d:Z

    iput-boolean p5, p0, Lcom/yyjia/sdk/f/o;->e:Z

    invoke-virtual {p0, p0}, Lcom/yyjia/sdk/f/o;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    if-eqz p3, :cond_13

    const/16 v0, 0x226

    iput v0, p0, Lcom/yyjia/sdk/f/o;->i:I

    :cond_13
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/yyjia/sdk/f/o;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/f/o;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v2, v0, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v3, v0, 0x8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    move v0, v1

    :goto_17
    if-lt v0, v4, :cond_1a

    return v7

    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_23

    if-ne v0, v3, :cond_33

    :cond_23
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    packed-switch v2, :pswitch_data_42

    :cond_33
    :goto_33
    :pswitch_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :pswitch_36
    int-to-float v5, v5

    int-to-float v6, v6

    invoke-direct {p0, v5, v6, v7}, Lcom/yyjia/sdk/f/o;->a(FFZ)V

    goto :goto_33

    :pswitch_3c
    int-to-float v5, v5

    int-to-float v6, v6

    invoke-direct {p0, v5, v6, v1}, Lcom/yyjia/sdk/f/o;->a(FFZ)V

    goto :goto_33

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_36
        :pswitch_3c
        :pswitch_33
        :pswitch_3c
        :pswitch_3c
        :pswitch_36
        :pswitch_3c
    .end packed-switch
.end method
