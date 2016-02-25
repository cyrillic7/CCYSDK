.class public Lcom/yyjia/sdk/f/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/yyjia/sdk/f/n;

.field private c:F

.field private d:Landroid/widget/PopupWindow;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yyjia/sdk/f/k;->a:Landroid/content/Context;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/k;->e:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/k;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    invoke-static {p1}, Lcom/yyjia/sdk/e/ad;->a(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/yyjia/sdk/f/k;->c:F

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/k;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/k;->d:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private a(Landroid/widget/TextView;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/yyjia/sdk/f/k;->d:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1d

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/yyjia/sdk/f/k;->b()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/yyjia/sdk/f/k;->c:F

    const/high16 v3, 0x43cb0000

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/yyjia/sdk/f/k;->c:F

    const v4, 0x438d8000

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/k;->d:Landroid/widget/PopupWindow;

    :cond_1d
    iget-object v0, p0, Lcom/yyjia/sdk/f/k;->d:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/k;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/k;->d:Landroid/widget/PopupWindow;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/k;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/k;->d:Landroid/widget/PopupWindow;

    const/16 v1, 0x11

    invoke-virtual {v0, p1, v1, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private b()Landroid/view/View;
    .registers 15

    const/16 v13, 0x11

    const/4 v12, 0x1

    const/4 v7, -0x2

    const/4 v11, -0x1

    const/4 v10, 0x0

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/yyjia/sdk/f/k;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/k;->a:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "yyjia_sdk_dlgbackup"

    invoke-static {v1, v2, v3}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v11, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/yyjia/sdk/f/k;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v3, 0x41f00000

    iget v4, p0, Lcom/yyjia/sdk/f/k;->c:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/k;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/k;->e:Landroid/widget/TextView;

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/k;->e:Landroid/widget/TextView;

    const/high16 v3, 0x41f00000

    iget v4, p0, Lcom/yyjia/sdk/f/k;->c:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/k;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v11, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/yyjia/sdk/f/k;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x42c80000

    iget v5, p0, Lcom/yyjia/sdk/f/k;->c:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/k;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/k;->f:Landroid/widget/TextView;

    const/high16 v4, 0x41200000

    iget v5, p0, Lcom/yyjia/sdk/f/k;->c:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x41200000

    iget v6, p0, Lcom/yyjia/sdk/f/k;->c:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v4, v10, v5, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/k;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/k;->f:Landroid/widget/TextView;

    const/high16 v4, 0x41d00000

    iget v5, p0, Lcom/yyjia/sdk/f/k;->c:F

    mul-float/2addr v4, v5

    invoke-virtual {v1, v10, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/k;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v11, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/yyjia/sdk/f/k;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x43480000

    iget v6, p0, Lcom/yyjia/sdk/f/k;->c:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/yyjia/sdk/f/k;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x43340000

    iget v8, p0, Lcom/yyjia/sdk/f/k;->c:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/high16 v8, 0x428c0000

    iget v9, p0, Lcom/yyjia/sdk/f/k;->c:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v7, Landroid/widget/Button;

    iget-object v8, p0, Lcom/yyjia/sdk/f/k;->a:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v7, v10, v10, v10, v10}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-virtual {v7, v13}, Landroid/widget/Button;->setGravity(I)V

    const/high16 v8, 0x41c00000

    iget v9, p0, Lcom/yyjia/sdk/f/k;->c:F

    mul-float/2addr v8, v9

    invoke-virtual {v7, v10, v8}, Landroid/widget/Button;->setTextSize(IF)V

    const-string v8, "\u786e\u5b9a"

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Lcom/yyjia/sdk/f/l;

    invoke-direct {v8, p0}, Lcom/yyjia/sdk/f/l;-><init>(Lcom/yyjia/sdk/f/k;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/yyjia/sdk/f/k;->a:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/Button;

    iget-object v8, p0, Lcom/yyjia/sdk/f/k;->a:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-virtual {v1, v13}, Landroid/widget/Button;->setGravity(I)V

    const/high16 v6, 0x41c00000

    iget v8, p0, Lcom/yyjia/sdk/f/k;->c:F

    mul-float/2addr v6, v8

    invoke-virtual {v1, v10, v6}, Landroid/widget/Button;->setTextSize(IF)V

    const-string v6, "\u53d6\u6d88"

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Lcom/yyjia/sdk/f/m;

    invoke-direct {v6, p0}, Lcom/yyjia/sdk/f/m;-><init>(Lcom/yyjia/sdk/f/k;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic b(Lcom/yyjia/sdk/f/k;)Lcom/yyjia/sdk/f/n;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/k;->b:Lcom/yyjia/sdk/f/n;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yyjia/sdk/f/k;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/yyjia/sdk/f/k;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method public a(Lcom/yyjia/sdk/f/n;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/k;->b:Lcom/yyjia/sdk/f/n;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/f/k;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/f/k;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
