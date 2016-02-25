.class public Lcom/yyjia/sdk/f/bj;
.super Ljava/lang/Object;


# instance fields
.field a:F

.field b:I

.field c:I

.field protected d:Landroid/os/Handler;

.field private e:Landroid/content/Context;

.field private f:I

.field private g:Landroid/widget/PopupWindow;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/Button;

.field private p:Lcom/yyjia/sdk/f/z;

.field private q:Landroid/widget/PopupWindow$OnDismissListener;

.field private r:Lcom/yyjia/sdk/data/c;

.field private s:Lcom/yyjia/sdk/center/GMcenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yyjia/sdk/f/z;Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/yyjia/sdk/f/bj;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yyjia/sdk/f/bj;->q:Landroid/widget/PopupWindow$OnDismissListener;

    const/16 v0, 0x262

    iput v0, p0, Lcom/yyjia/sdk/f/bj;->b:I

    const/16 v0, 0x226

    iput v0, p0, Lcom/yyjia/sdk/f/bj;->c:I

    new-instance v0, Lcom/yyjia/sdk/f/bk;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/f/bk;-><init>(Lcom/yyjia/sdk/f/bj;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/bj;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/yyjia/sdk/center/GMcenter;->getInstance(Landroid/content/Context;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/f/bj;->s:Lcom/yyjia/sdk/center/GMcenter;

    iput-object p2, p0, Lcom/yyjia/sdk/f/bj;->p:Lcom/yyjia/sdk/f/z;

    iput-object p3, p0, Lcom/yyjia/sdk/f/bj;->q:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    invoke-static {p1}, Lcom/yyjia/sdk/e/ad;->a(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/yyjia/sdk/f/bj;->a:F

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/bj;->j:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/bj;->k:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/bj;->l:Landroid/widget/EditText;

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/bj;->m:Landroid/widget/EditText;

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/bj;->n:Landroid/widget/EditText;

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/bj;->o:Landroid/widget/Button;

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->r:Lcom/yyjia/sdk/data/c;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->r:Lcom/yyjia/sdk/data/c;

    iget-object v0, v0, Lcom/yyjia/sdk/data/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_69
    invoke-direct {p0}, Lcom/yyjia/sdk/f/bj;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/f/bj;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yyjia/sdk/f/bj;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/bj;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 4

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p1}, Lcom/yyjia/sdk/f/bj;->a(Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/view/View;)V
    .registers 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->g:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1a

    new-instance v0, Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/yyjia/sdk/f/bj;->a:F

    iget v2, p0, Lcom/yyjia/sdk/f/bj;->b:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/yyjia/sdk/f/bj;->a:F

    iget v3, p0, Lcom/yyjia/sdk/f/bj;->c:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, p2, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/bj;->g:Landroid/widget/PopupWindow;

    :cond_1a
    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->g:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->g:Landroid/widget/PopupWindow;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->g:Landroid/widget/PopupWindow;

    const/16 v1, 0x11

    invoke-virtual {v0, p1, v1, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/bj;I)V
    .registers 2

    iput p1, p0, Lcom/yyjia/sdk/f/bj;->f:I

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/bj;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/bj;->i:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/bj;Landroid/widget/PopupWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/bj;->g:Landroid/widget/PopupWindow;

    return-void
.end method

.method static synthetic b(Lcom/yyjia/sdk/f/bj;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->g:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic b(Lcom/yyjia/sdk/f/bj;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/yyjia/sdk/f/bj;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/yyjia/sdk/f/bj;)Lcom/yyjia/sdk/center/GMcenter;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->s:Lcom/yyjia/sdk/center/GMcenter;

    return-object v0
.end method

.method static synthetic c(Lcom/yyjia/sdk/f/bj;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/bj;->h:Landroid/view/View;

    return-void
.end method

.method static synthetic d(Lcom/yyjia/sdk/f/bj;)I
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/f/bj;->f:I

    return v0
.end method

.method private d()Landroid/view/View;
    .registers 12

    new-instance v0, Lcom/yyjia/sdk/f/o;

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    iget v2, p0, Lcom/yyjia/sdk/f/bj;->a:F

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v6, Lcom/yyjia/sdk/f/bl;

    invoke-direct {v6, p0}, Lcom/yyjia/sdk/f/bl;-><init>(Lcom/yyjia/sdk/f/bj;)V

    invoke-direct/range {v0 .. v6}, Lcom/yyjia/sdk/f/o;-><init>(Landroid/content/Context;FZZZLcom/yyjia/sdk/f/bu;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/f/o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v3, 0x42480000

    iget v4, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "\u8d26\u53f7\u7ba1\u7406"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/4 v3, 0x0

    const/high16 v4, 0x420c0000

    iget v5, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x430a0000

    iget v5, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x44004000

    iget v5, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "#047fef"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5f53\u524d\u8d26\u53f7:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/yyjia/sdk/f/bj;->s:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v6}, Lcom/yyjia/sdk/center/GMcenter;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    const/high16 v6, 0x41d00000

    iget v7, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x44004000

    iget v5, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x42820000

    iget v6, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41a00000

    iget v5, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    const-string v5, "drawable"

    const-string v6, "yyjia_sdk_inputbox2"

    invoke-static {v1, v5, v6}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43e60000

    iget v6, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    const/high16 v7, 0x41d00000

    iget v8, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v6, 0x41400000

    iget v7, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v6, "\u4fee\u6539\u5bc6\u7801"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x41c00000

    iget v8, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/high16 v8, 0x42240000

    iget v9, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v7, Landroid/widget/Button;

    iget-object v8, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    const-string v9, "drawable"

    const-string v10, "yyjia_sdk_rightarrow"

    invoke-static {v8, v9, v10}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Lcom/yyjia/sdk/f/bm;

    invoke-direct {v5, p0}, Lcom/yyjia/sdk/f/bm;-><init>(Lcom/yyjia/sdk/f/bj;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x44004000

    iget v7, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    const/high16 v7, 0x42820000

    iget v8, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41700000

    iget v7, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v4, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    const-string v7, "drawable"

    const-string v8, "yyjia_sdk_inputbox2"

    invoke-static {v4, v7, v8}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    const/high16 v7, 0x41d00000

    iget v8, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v7, v8

    invoke-virtual {v4, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v1, 0x41400000

    iget v7, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v1, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v1, "\u8d26\u53f7\u5b89\u5168\u8bbe\u7f6e"

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/Button;

    iget-object v7, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    const-string v7, "drawable"

    const-string v8, "yyjia_sdk_rightarrow"

    invoke-static {v6, v7, v8}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/yyjia/sdk/f/bn;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/bn;-><init>(Lcom/yyjia/sdk/f/bj;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->getConfigInfo()Lcom/yyjia/sdk/data/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yyjia/sdk/data/a;->g()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_219

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_219
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x44004000

    iget v5, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x42820000

    iget v6, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41d80000

    iget v5, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x44004000

    iget v6, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x42820000

    iget v7, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/Button;

    iget-object v6, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/widget/Button;->setPadding(IIII)V

    const/16 v1, 0x11

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setGravity(I)V

    const/4 v1, 0x0

    const/high16 v6, 0x41f00000

    iget v7, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v6, v7

    invoke-virtual {v5, v1, v6}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    const-string v6, "drawable"

    const-string v7, "yyjia_sdk_inputbox2"

    invoke-static {v1, v6, v7}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v1, -0x1

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setTextColor(I)V

    new-instance v1, Lcom/yyjia/sdk/f/bp;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/bp;-><init>(Lcom/yyjia/sdk/f/bj;)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const-string v1, "\u6ce8\u9500/\u5207\u6362\u5e10\u53f7"

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic e(Lcom/yyjia/sdk/f/bj;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->i:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .registers 3

    new-instance v0, Lcom/yyjia/sdk/f/k;

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yyjia/sdk/f/k;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6ce8\u9500\u8d26\u53f7"

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/f/k;->a(Ljava/lang/String;)V

    const-string v1, "\u6ce8\u9500\u5f53\u524d\u767b\u9646\u53ef\u4ee5\u5207\u6362\u8d26\u53f7\uff0c\u786e\u8ba4\u8981\u6ce8\u9500\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/f/k;->b(Ljava/lang/String;)V

    new-instance v1, Lcom/yyjia/sdk/f/bt;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/bt;-><init>(Lcom/yyjia/sdk/f/bj;)V

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/f/k;->a(Lcom/yyjia/sdk/f/n;)V

    invoke-virtual {v0}, Lcom/yyjia/sdk/f/k;->a()V

    return-void
.end method

.method static synthetic f(Lcom/yyjia/sdk/f/bj;)Lcom/yyjia/sdk/f/z;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->p:Lcom/yyjia/sdk/f/z;

    return-object v0
.end method

.method static synthetic g(Lcom/yyjia/sdk/f/bj;)V
    .registers 1

    invoke-direct {p0}, Lcom/yyjia/sdk/f/bj;->e()V

    return-void
.end method

.method static synthetic h(Lcom/yyjia/sdk/f/bj;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/yyjia/sdk/f/bj;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic j(Lcom/yyjia/sdk/f/bj;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->n:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcom/yyjia/sdk/f/bj;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/yyjia/sdk/f/bj;)Landroid/view/View;
    .registers 2

    invoke-direct {p0}, Lcom/yyjia/sdk/f/bj;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/yyjia/sdk/f/bj;->f:I

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->h:Landroid/view/View;

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/yyjia/sdk/f/bj;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/f/bj;->h:Landroid/view/View;

    :cond_d
    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->g:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yyjia/sdk/f/bj;->g:Landroid/widget/PopupWindow;

    :cond_21
    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yyjia/sdk/f/bj;->a(Landroid/view/View;)V

    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected b()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    const-string v1, "\u539f\u59cb\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/e/t;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    const-string v1, "\u65b0\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_20

    :cond_41
    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    const-string v1, "\u4e24\u6b21\u5bc6\u7801\u4e0d\u4e00\u6837"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_20

    :cond_6f
    new-instance v0, Lcom/yyjia/sdk/f/bq;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/f/bq;-><init>(Lcom/yyjia/sdk/f/bj;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_20
.end method

.method protected c()Landroid/view/View;
    .registers 14

    const/16 v12, 0x10

    const/high16 v11, 0x41d00000

    const/4 v10, -0x1

    const/4 v3, 0x1

    const/4 v9, 0x0

    new-instance v0, Lcom/yyjia/sdk/f/o;

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    iget v2, p0, Lcom/yyjia/sdk/f/bj;->a:F

    new-instance v6, Lcom/yyjia/sdk/f/br;

    invoke-direct {v6, p0}, Lcom/yyjia/sdk/f/br;-><init>(Lcom/yyjia/sdk/f/bj;)V

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/yyjia/sdk/f/o;-><init>(Landroid/content/Context;FZZZLcom/yyjia/sdk/f/bu;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/f/o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x42480000

    iget v5, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "\u4fee\u6539\u5bc6\u7801"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/high16 v4, 0x420c0000

    iget v5, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v4, v5

    invoke-virtual {v1, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x42f00000

    iget v6, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x44004000

    iget v6, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "#047fef"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5f53\u524d\u8d26\u53f7:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/yyjia/sdk/f/bj;->s:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v7}, Lcom/yyjia/sdk/center/GMcenter;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v6, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v6, v11

    invoke-virtual {v1, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, p0, Lcom/yyjia/sdk/f/bj;->k:Landroid/widget/TextView;

    const-string v7, "#047fef"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/yyjia/sdk/f/bj;->k:Landroid/widget/TextView;

    iget v7, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v7, v11

    invoke-virtual {v6, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->k:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43fd0000

    iget v6, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x42840000

    iget v7, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41a00000

    iget v6, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->l:Landroid/widget/EditText;

    const-string v6, "\u8bf7\u8f93\u5165\u539f\u5bc6\u7801"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->l:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->l:Landroid/widget/EditText;

    const/16 v5, 0x81

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->l:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->l:Landroid/widget/EditText;

    const/high16 v5, -0x1000000

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->l:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    const-string v6, "drawable"

    const-string v7, "yyjia_sdk_inputbox"

    invoke-static {v5, v6, v7}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->l:Landroid/widget/EditText;

    invoke-virtual {v1, v12}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->l:Landroid/widget/EditText;

    const/high16 v5, 0x41200000

    iget v6, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v5, v9, v9, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->l:Landroid/widget/EditText;

    iget v5, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v5, v11

    invoke-virtual {v1, v9, v5}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->l:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43fd0000

    iget v6, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x42840000

    iget v7, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41700000

    iget v6, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->m:Landroid/widget/EditText;

    const-string v6, "\u8bf7\u8f93\u5165\u65b0\u5bc6\u7801"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->m:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->m:Landroid/widget/EditText;

    const/16 v6, 0x81

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->m:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->m:Landroid/widget/EditText;

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->m:Landroid/widget/EditText;

    const/high16 v6, 0x41200000

    iget v7, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6, v9, v9, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->m:Landroid/widget/EditText;

    iget v6, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v6, v11

    invoke-virtual {v5, v9, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->m:Landroid/widget/EditText;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->m:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    const-string v7, "drawable"

    const-string v8, "yyjia_sdk_inputbox"

    invoke-static {v6, v7, v8}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->m:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->n:Landroid/widget/EditText;

    const-string v6, "\u8bf7\u786e\u8ba4\u65b0\u5bc6\u7801"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/bj;->n:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->n:Landroid/widget/EditText;

    const/16 v5, 0x81

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->n:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->n:Landroid/widget/EditText;

    invoke-virtual {v1, v12}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->n:Landroid/widget/EditText;

    const/high16 v3, 0x41200000

    iget v5, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v1, v3, v9, v9, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->n:Landroid/widget/EditText;

    iget v3, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v3, v11

    invoke-virtual {v1, v9, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->n:Landroid/widget/EditText;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->n:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    const-string v5, "drawable"

    const-string v6, "yyjia_sdk_inputbox"

    invoke-static {v3, v5, v6}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->n:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x44004000

    iget v5, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const/high16 v5, 0x42820000

    iget v6, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x420c0000

    iget v5, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/yyjia/sdk/f/bj;->o:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->o:Landroid/widget/Button;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->o:Landroid/widget/Button;

    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->o:Landroid/widget/Button;

    const/high16 v3, 0x41f00000

    iget v5, p0, Lcom/yyjia/sdk/f/bj;->a:F

    mul-float/2addr v3, v5

    invoke-virtual {v1, v9, v3}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->o:Landroid/widget/Button;

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->o:Landroid/widget/Button;

    const-string v3, "\u4fdd\u5b58"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->o:Landroid/widget/Button;

    iget-object v3, p0, Lcom/yyjia/sdk/f/bj;->e:Landroid/content/Context;

    const-string v5, "drawable"

    const-string v6, "yyjia_sdk_inputbox2"

    invoke-static {v3, v5, v6}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->o:Landroid/widget/Button;

    new-instance v3, Lcom/yyjia/sdk/f/bs;

    invoke-direct {v3, p0}, Lcom/yyjia/sdk/f/bs;-><init>(Lcom/yyjia/sdk/f/bj;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/bj;->o:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    return-object v0
.end method
