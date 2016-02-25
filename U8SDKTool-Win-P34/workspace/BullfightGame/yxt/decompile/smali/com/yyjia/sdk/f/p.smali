.class public Lcom/yyjia/sdk/f/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lcom/yyjia/sdk/f/bu;


# instance fields
.field protected final a:Landroid/os/Handler;

.field private b:Landroid/content/Context;

.field private c:Lcom/yyjia/sdk/center/GMcenter;

.field private d:Landroid/widget/PopupWindow;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Lcom/yyjia/sdk/f/z;

.field private o:Lcom/yyjia/sdk/f/aa;

.field private p:Landroid/widget/PopupWindow$OnDismissListener;

.field private q:F

.field private r:I

.field private s:I

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yyjia/sdk/f/p;->p:Landroid/widget/PopupWindow$OnDismissListener;

    const/16 v0, 0x262

    iput v0, p0, Lcom/yyjia/sdk/f/p;->r:I

    const/16 v0, 0x226

    iput v0, p0, Lcom/yyjia/sdk/f/p;->s:I

    iput-boolean v1, p0, Lcom/yyjia/sdk/f/p;->t:Z

    new-instance v0, Lcom/yyjia/sdk/f/q;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/f/q;-><init>(Lcom/yyjia/sdk/f/p;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/p;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/yyjia/sdk/center/GMcenter;->getInstance(Landroid/content/Context;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/f/p;->c:Lcom/yyjia/sdk/center/GMcenter;

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->n:Lcom/yyjia/sdk/f/z;

    iput-object v0, p0, Lcom/yyjia/sdk/f/p;->n:Lcom/yyjia/sdk/f/z;

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->o:Lcom/yyjia/sdk/f/aa;

    iput-object v0, p0, Lcom/yyjia/sdk/f/p;->o:Lcom/yyjia/sdk/f/aa;

    iput-boolean v1, p0, Lcom/yyjia/sdk/f/p;->t:Z

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->p:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object v0, p0, Lcom/yyjia/sdk/f/p;->p:Landroid/widget/PopupWindow$OnDismissListener;

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/p;->e:Landroid/widget/EditText;

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/p;->f:Landroid/widget/EditText;

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/p;->g:Landroid/widget/EditText;

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/p;->l:Landroid/widget/Button;

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/p;->m:Landroid/widget/Button;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/p;->i:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/p;->h:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/p;->k:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/p;->j:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    invoke-static {p1}, Lcom/yyjia/sdk/e/ad;->a(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/yyjia/sdk/f/p;->q:F

    invoke-direct {p0}, Lcom/yyjia/sdk/f/p;->e()V

    invoke-direct {p0}, Lcom/yyjia/sdk/f/p;->d()V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/p;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/yyjia/sdk/f/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/yyjia/sdk/f/y;

    invoke-direct {v0, p0, p1, p2}, Lcom/yyjia/sdk/f/y;-><init>(Lcom/yyjia/sdk/f/p;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/yyjia/sdk/e/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/yyjia/sdk/d/a;->a(Landroid/content/Context;)Lcom/yyjia/sdk/d/a;

    move-result-object v0

    const-string v1, "\u8d26\u53f7\u4e3a6-20\u4f4d\u4e2d/\u82f1\u6587\uff0c\u6570\u5b57"

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/d/a;->a(Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    invoke-static {p2}, Lcom/yyjia/sdk/e/t;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/yyjia/sdk/d/a;->a(Landroid/content/Context;)Lcom/yyjia/sdk/d/a;

    move-result-object v0

    const-string v1, "\u5bc6\u7801\u957f\u5ea6\u4e0d\u80fd\u4f4e\u4e8e6\u4f4d"

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/d/a;->a(Ljava/lang/String;)V

    goto :goto_11

    :cond_24
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/yyjia/sdk/d/a;->a(Landroid/content/Context;)Lcom/yyjia/sdk/d/a;

    move-result-object v0

    const-string v1, "\u8f93\u5165\u7684\u4e24\u6b21\u5bc6\u7801\u4e0d\u4e00\u81f4"

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/d/a;->a(Ljava/lang/String;)V

    goto :goto_11

    :cond_36
    invoke-direct {p0, p1, p2}, Lcom/yyjia/sdk/f/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method static synthetic b(Lcom/yyjia/sdk/f/p;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->d:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic c(Lcom/yyjia/sdk/f/p;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->l:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/yyjia/sdk/f/p;)Lcom/yyjia/sdk/center/GMcenter;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->c:Lcom/yyjia/sdk/center/GMcenter;

    return-object v0
.end method

.method private d()V
    .registers 1

    return-void
.end method

.method static synthetic e(Lcom/yyjia/sdk/f/p;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method private e()V
    .registers 3

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/f/p;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic f(Lcom/yyjia/sdk/f/p;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->i:Landroid/widget/TextView;

    const-string v1, "\u7ed1\u5b9a\u8d26\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic g(Lcom/yyjia/sdk/f/p;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/yyjia/sdk/f/p;)V
    .registers 1

    invoke-direct {p0}, Lcom/yyjia/sdk/f/p;->f()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->d:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1e

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/yyjia/sdk/f/p;->c()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/yyjia/sdk/f/p;->q:F

    iget v3, p0, Lcom/yyjia/sdk/f/p;->r:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/yyjia/sdk/f/p;->q:F

    iget v4, p0, Lcom/yyjia/sdk/f/p;->s:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/p;->d:Landroid/widget/PopupWindow;

    :cond_1e
    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->d:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->d:Landroid/widget/PopupWindow;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->d:Landroid/widget/PopupWindow;

    const/16 v1, 0x11

    invoke-virtual {v0, p1, v1, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public c()Landroid/view/View;
    .registers 15

    const/4 v13, -0x2

    const/high16 v12, 0x43fd0000

    const/4 v11, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/yyjia/sdk/f/o;

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    iget v2, p0, Lcom/yyjia/sdk/f/p;->q:F

    move v5, v3

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/yyjia/sdk/f/o;-><init>(Landroid/content/Context;FZZZLcom/yyjia/sdk/f/bu;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/f/o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x42340000

    iget v6, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->i:Landroid/widget/TextView;

    const-string v5, "\u7ed1\u5b9a\u8d26\u53f7"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->i:Landroid/widget/TextView;

    const/high16 v5, 0x420c0000

    iget v6, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x42e60000

    iget v6, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v5, v12

    float-to-int v5, v5

    const/high16 v6, 0x42840000

    iget v7, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v6, v12

    float-to-int v6, v6

    const/high16 v7, 0x42840000

    iget v8, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/yyjia/sdk/f/p;->e:Landroid/widget/EditText;

    const-string v7, "\u8bf7\u8f93\u5165\u7528\u6237\u540d"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/yyjia/sdk/f/p;->e:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->e:Landroid/widget/EditText;

    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->e:Landroid/widget/EditText;

    const/high16 v6, 0x41200000

    iget v7, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v1, v6, v4, v4, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->e:Landroid/widget/EditText;

    const/high16 v6, 0x41d00000

    iget v7, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v6, v7

    invoke-virtual {v1, v4, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->e:Landroid/widget/EditText;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->e:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    const-string v7, "drawable"

    const-string v8, "yyjia_sdk_inputbox"

    invoke-static {v6, v7, v8}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->e:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v5, v12

    float-to-int v5, v5

    const/high16 v6, 0x42840000

    iget v7, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41700000

    iget v6, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->f:Landroid/widget/EditText;

    const-string v6, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->f:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->f:Landroid/widget/EditText;

    const/16 v6, 0x81

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->f:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->f:Landroid/widget/EditText;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->f:Landroid/widget/EditText;

    const/high16 v6, 0x41200000

    iget v7, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6, v4, v4, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->f:Landroid/widget/EditText;

    const/high16 v6, 0x41d00000

    iget v7, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v6, v7

    invoke-virtual {v5, v4, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->f:Landroid/widget/EditText;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->f:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    const-string v7, "drawable"

    const-string v8, "yyjia_sdk_inputbox"

    invoke-static {v6, v7, v8}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->k:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/yyjia/sdk/f/p;->f:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->g:Landroid/widget/EditText;

    const-string v6, "\u8bf7\u786e\u8ba4\u5bc6\u7801"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->g:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->g:Landroid/widget/EditText;

    const/16 v5, 0x81

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->g:Landroid/widget/EditText;

    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->g:Landroid/widget/EditText;

    const/high16 v5, 0x41200000

    iget v6, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v5, v4, v4, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->g:Landroid/widget/EditText;

    const/high16 v5, 0x41d00000

    iget v6, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->g:Landroid/widget/EditText;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->g:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    const-string v6, "drawable"

    const-string v7, "yyjia_sdk_inputbox"

    invoke-static {v5, v6, v7}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->k:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "CH"

    const-string v5, "KR"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v5, v12

    float-to-int v5, v5

    invoke-direct {v1, v5, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41200000

    iget v6, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x15

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42480000

    iget v7, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v7, 0x42480000

    iget v8, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/widget/CheckBox;->setPadding(IIII)V

    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    const-string v7, "drawable"

    const-string v8, "yyjia_sdk_checked"

    invoke-static {v1, v7, v8}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    new-instance v1, Lcom/yyjia/sdk/f/r;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/r;-><init>(Lcom/yyjia/sdk/f/p;)V

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41c80000

    iget v8, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v7, v8

    invoke-virtual {v1, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMinLines(I)V

    const-string v7, "\u6211\u5df2\u9605\u8bfb\u5e76\u540c\u610f"

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x41c80000

    iget v9, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v8, v9

    invoke-virtual {v7, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setMinLines(I)V

    const-string v8, "\u300a\u4e91\u9704\u5802\u6e38\u620f-\u670d\u52a1\u6761\u6b3e\u300b"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v8, 0x15

    const/16 v9, 0x7d

    const/16 v10, 0xfa

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v8, Lcom/yyjia/sdk/f/s;

    invoke-direct {v8, p0}, Lcom/yyjia/sdk/f/s;-><init>(Lcom/yyjia/sdk/f/p;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v5, v12

    float-to-int v5, v5

    invoke-direct {v1, v5, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x40a00000

    iget v6, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x15

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x41c80000

    iget v7, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v6, v7

    invoke-virtual {v1, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMinLines(I)V

    const-string v6, "\u767b\u5f55\u5df2\u6709\u4e91\u9704\u5802\u5e10\u53f7"

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x15

    const/16 v7, 0x7d

    const/16 v8, 0xfa

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v6, 0x5

    invoke-virtual {v1, v4, v4, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v6, Lcom/yyjia/sdk/f/t;

    invoke-direct {v6, p0}, Lcom/yyjia/sdk/f/t;-><init>(Lcom/yyjia/sdk/f/p;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2d0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x44004000

    iget v6, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x42820000

    iget v7, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41700000

    iget v6, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->l:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->l:Landroid/widget/Button;

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->l:Landroid/widget/Button;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->l:Landroid/widget/Button;

    const/high16 v5, 0x41f00000

    iget v6, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->l:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->l:Landroid/widget/Button;

    const-string v5, "\u7ed1\u5b9a"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->l:Landroid/widget/Button;

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    const-string v6, "drawable"

    const-string v7, "yyjia_sdk_inputbox2"

    invoke-static {v5, v6, v7}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->l:Landroid/widget/Button;

    new-instance v5, Lcom/yyjia/sdk/f/u;

    invoke-direct {v5, p0}, Lcom/yyjia/sdk/f/u;-><init>(Lcom/yyjia/sdk/f/p;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->l:Landroid/widget/Button;

    new-instance v5, Lcom/yyjia/sdk/f/v;

    invoke-direct {v5, p0}, Lcom/yyjia/sdk/f/v;-><init>(Lcom/yyjia/sdk/f/p;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->k:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->l:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x43610000

    iget v6, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42600000

    iget v5, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-direct {v1, v11, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x31

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5f53\u524d\u8d26\u53f7:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/yyjia/sdk/f/p;->c:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v6}, Lcom/yyjia/sdk/center/GMcenter;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41d00000

    iget v6, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x44004000

    iget v5, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const/high16 v5, 0x42820000

    iget v6, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/yyjia/sdk/f/p;->m:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->m:Landroid/widget/Button;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->m:Landroid/widget/Button;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->m:Landroid/widget/Button;

    const/high16 v3, 0x41f00000

    iget v5, p0, Lcom/yyjia/sdk/f/p;->q:F

    mul-float/2addr v3, v5

    invoke-virtual {v1, v4, v3}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->m:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->m:Landroid/widget/Button;

    const-string v3, "\u7ed1\u5b9a\u901a\u884c\u8bc1\u5e10\u53f7"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->m:Landroid/widget/Button;

    iget-object v3, p0, Lcom/yyjia/sdk/f/p;->b:Landroid/content/Context;

    const-string v5, "drawable"

    const-string v6, "yyjia_sdk_inputbox2"

    invoke-static {v3, v5, v6}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->m:Landroid/widget/Button;

    new-instance v3, Lcom/yyjia/sdk/f/w;

    invoke-direct {v3, p0}, Lcom/yyjia/sdk/f/w;-><init>(Lcom/yyjia/sdk/f/p;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->m:Landroid/widget/Button;

    new-instance v3, Lcom/yyjia/sdk/f/x;

    invoke-direct {v3, p0}, Lcom/yyjia/sdk/f/x;-><init>(Lcom/yyjia/sdk/f/p;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->j:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/yyjia/sdk/f/p;->m:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/yyjia/sdk/f/p;->t:Z

    if-eqz v1, :cond_42b

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->i:Landroid/widget/TextView;

    const-string v2, "\u5e10\u53f7\u7ba1\u7406"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_420
    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    return-object v0

    :cond_42b
    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/p;->k:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_420
.end method

.method public onDismiss()V
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->p:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/yyjia/sdk/f/p;->p:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_9
    return-void
.end method
