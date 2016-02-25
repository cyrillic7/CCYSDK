.class public Lcom/yyjia/sdk/e/g;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/util/DisplayMetrics;

.field private b:Landroid/widget/PopupWindow;

.field private c:Landroid/view/WindowManager;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/WindowManager$LayoutParams;

.field private f:F

.field private g:Landroid/content/Context;

.field private h:F

.field private i:F

.field private j:F

.field private k:Z

.field private l:I

.field private m:Lcom/yyjia/sdk/center/a;

.field private n:Lcom/yyjia/sdk/center/o;

.field private o:I

.field private p:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/high16 v4, 0x42a00000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yyjia/sdk/e/g;->k:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/yyjia/sdk/e/g;->l:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/yyjia/sdk/e/g;->a:Landroid/util/DisplayMetrics;

    const/4 v0, 0x0

    iput v0, p0, Lcom/yyjia/sdk/e/g;->o:I

    iput-object p1, p0, Lcom/yyjia/sdk/e/g;->g:Landroid/content/Context;

    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    invoke-static {p1}, Lcom/yyjia/sdk/e/ad;->a(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/yyjia/sdk/e/g;->f:F

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/e/g;->a:Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Lcom/yyjia/sdk/e/g;->d()V

    invoke-direct {p0}, Lcom/yyjia/sdk/e/g;->c()V

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->b:Landroid/widget/PopupWindow;

    if-nez v0, :cond_4d

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/yyjia/sdk/e/g;->d:Landroid/widget/ImageView;

    iget v2, p0, Lcom/yyjia/sdk/e/g;->f:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/yyjia/sdk/e/g;->f:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/yyjia/sdk/e/g;->b:Landroid/widget/PopupWindow;

    :cond_4d
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/yyjia/sdk/e/h;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/e/h;-><init>(Lcom/yyjia/sdk/e/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/e/g;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->g:Landroid/content/Context;

    return-object v0
.end method

.method private a(FF)V
    .registers 10

    const/4 v6, 0x1

    const/high16 v5, 0x42a00000

    const/4 v0, 0x0

    cmpl-float v1, p1, p2

    if-nez v1, :cond_28

    iput-boolean v0, p0, Lcom/yyjia/sdk/e/g;->k:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/yyjia/sdk/e/g;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/yyjia/sdk/e/g;->a:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    aget v1, v1, v0

    sub-int v1, v2, v1

    iget v2, p0, Lcom/yyjia/sdk/e/g;->f:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_25

    iput v6, p0, Lcom/yyjia/sdk/e/g;->l:I

    :goto_24
    return-void

    :cond_25
    iput v0, p0, Lcom/yyjia/sdk/e/g;->l:I

    goto :goto_24

    :cond_28
    iget-object v1, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/yyjia/sdk/e/g;->d:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/yyjia/sdk/e/g;->a:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v3, v2

    if-ge v2, v3, :cond_95

    iput v0, p0, Lcom/yyjia/sdk/e/g;->l:I

    :goto_42
    iget-object v4, p0, Lcom/yyjia/sdk/e/g;->d:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_54

    iget-object v1, p0, Lcom/yyjia/sdk/e/g;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    :cond_54
    iget-object v4, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    if-ge v2, v3, :cond_a3

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yyjia/sdk/e/g;->g:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "yyjia_sdk_toolbaricon_iconleft"

    invoke-static {v1, v2, v3}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_72
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/yyjia/sdk/e/g;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/yyjia/sdk/e/g;->b:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/yyjia/sdk/e/g;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_24

    :cond_95
    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p0, Lcom/yyjia/sdk/e/g;->f:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    iput v6, p0, Lcom/yyjia/sdk/e/g;->l:I

    goto :goto_42

    :cond_a3
    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yyjia/sdk/e/g;->g:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "yyjia_sdk_toolbaricon_iconright"

    invoke-static {v1, v2, v3}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_72
.end method

.method static synthetic a(Lcom/yyjia/sdk/e/g;F)V
    .registers 2

    iput p1, p0, Lcom/yyjia/sdk/e/g;->j:F

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/e/g;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/yyjia/sdk/e/g;->a(FF)V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/e/g;I)V
    .registers 2

    iput p1, p0, Lcom/yyjia/sdk/e/g;->l:I

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/e/g;Landroid/widget/PopupWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/e/g;->b:Landroid/widget/PopupWindow;

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/e/g;Landroid/widget/TextView;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/e/g;->p:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/e/g;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/yyjia/sdk/e/g;->k:Z

    return-void
.end method

.method static synthetic b(Lcom/yyjia/sdk/e/g;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->b:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic b(Lcom/yyjia/sdk/e/g;F)V
    .registers 2

    iput p1, p0, Lcom/yyjia/sdk/e/g;->h:F

    return-void
.end method

.method static synthetic b(Lcom/yyjia/sdk/e/g;I)V
    .registers 2

    iput p1, p0, Lcom/yyjia/sdk/e/g;->o:I

    return-void
.end method

.method static synthetic c(Lcom/yyjia/sdk/e/g;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .registers 5

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yyjia/sdk/e/g;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/e/g;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yyjia/sdk/e/g;->g:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "yyjia_sdk_toolbaricon_iconleft"

    invoke-static {v1, v2, v3}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/yyjia/sdk/e/i;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/e/i;-><init>(Lcom/yyjia/sdk/e/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/yyjia/sdk/e/j;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/e/j;-><init>(Lcom/yyjia/sdk/e/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/yyjia/sdk/center/a;

    iget-object v1, p0, Lcom/yyjia/sdk/e/g;->g:Landroid/content/Context;

    new-instance v2, Lcom/yyjia/sdk/e/k;

    invoke-direct {v2, p0}, Lcom/yyjia/sdk/e/k;-><init>(Lcom/yyjia/sdk/e/g;)V

    invoke-direct {v0, v1, v2}, Lcom/yyjia/sdk/center/a;-><init>(Landroid/content/Context;Lcom/yyjia/sdk/listener/ActionBarlistener;)V

    iput-object v0, p0, Lcom/yyjia/sdk/e/g;->m:Lcom/yyjia/sdk/center/a;

    new-instance v0, Lcom/yyjia/sdk/center/o;

    iget-object v1, p0, Lcom/yyjia/sdk/e/g;->g:Landroid/content/Context;

    new-instance v2, Lcom/yyjia/sdk/e/l;

    invoke-direct {v2, p0}, Lcom/yyjia/sdk/e/l;-><init>(Lcom/yyjia/sdk/e/g;)V

    invoke-direct {v0, v1, v2}, Lcom/yyjia/sdk/center/o;-><init>(Landroid/content/Context;Lcom/yyjia/sdk/listener/ActionBarlistener;)V

    iput-object v0, p0, Lcom/yyjia/sdk/e/g;->n:Lcom/yyjia/sdk/center/o;

    return-void
.end method

.method static synthetic c(Lcom/yyjia/sdk/e/g;F)V
    .registers 2

    iput p1, p0, Lcom/yyjia/sdk/e/g;->i:F

    return-void
.end method

.method static synthetic d(Lcom/yyjia/sdk/e/g;)F
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/e/g;->j:F

    return v0
.end method

.method private d()V
    .registers 4

    const/4 v1, -0x2

    const/high16 v2, 0x42a00000

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/yyjia/sdk/e/g;->f:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/yyjia/sdk/e/g;->f:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/yyjia/sdk/e/g;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method static synthetic e(Lcom/yyjia/sdk/e/g;)F
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/e/g;->h:F

    return v0
.end method

.method static synthetic f(Lcom/yyjia/sdk/e/g;)F
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/e/g;->i:F

    return v0
.end method

.method static synthetic g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic h(Lcom/yyjia/sdk/e/g;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/yyjia/sdk/e/g;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/yyjia/sdk/e/g;->k:Z

    return v0
.end method

.method static synthetic j(Lcom/yyjia/sdk/e/g;)F
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/e/g;->f:F

    return v0
.end method

.method static synthetic k(Lcom/yyjia/sdk/e/g;)I
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/e/g;->l:I

    return v0
.end method

.method static synthetic l(Lcom/yyjia/sdk/e/g;)Lcom/yyjia/sdk/center/a;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->m:Lcom/yyjia/sdk/center/a;

    return-object v0
.end method

.method static synthetic m(Lcom/yyjia/sdk/e/g;)Lcom/yyjia/sdk/center/o;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->n:Lcom/yyjia/sdk/center/o;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/yyjia/sdk/e/g;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/yyjia/sdk/e/g;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public b()V
    .registers 3

    :try_start_0
    iget v0, p0, Lcom/yyjia/sdk/e/g;->o:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_9
    iget v0, p0, Lcom/yyjia/sdk/e/g;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_13
    iget v0, p0, Lcom/yyjia/sdk/e/g;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/yyjia/sdk/e/g;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    :cond_1d
    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    const-string v1, "remove"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method
