.class public Lcom/yyjia/sdk/f/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/os/Handler;

.field private b:Landroid/content/Context;

.field private c:Lcom/yyjia/sdk/a/a/b;

.field private d:Landroid/widget/PopupWindow;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/PopupWindow$OnDismissListener;

.field private j:Lcom/yyjia/sdk/f/z;

.field private k:J

.field private l:Lcom/yyjia/sdk/center/GMcenter;

.field private m:F

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yyjia/sdk/f/z;Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yyjia/sdk/f/b;->k:J

    const/16 v0, 0x262

    iput v0, p0, Lcom/yyjia/sdk/f/b;->n:I

    const/16 v0, 0x226

    iput v0, p0, Lcom/yyjia/sdk/f/b;->o:I

    new-instance v0, Lcom/yyjia/sdk/f/c;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/f/c;-><init>(Lcom/yyjia/sdk/f/b;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/b;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/yyjia/sdk/center/GMcenter;->getInstance(Landroid/content/Context;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/f/b;->l:Lcom/yyjia/sdk/center/GMcenter;

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->c:Lcom/yyjia/sdk/a/a/b;

    iput-object v0, p0, Lcom/yyjia/sdk/f/b;->c:Lcom/yyjia/sdk/a/a/b;

    iput-object p3, p0, Lcom/yyjia/sdk/f/b;->i:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->j:Lcom/yyjia/sdk/f/z;

    iput-object v0, p0, Lcom/yyjia/sdk/f/b;->j:Lcom/yyjia/sdk/f/z;

    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    invoke-static {p1}, Lcom/yyjia/sdk/e/ad;->a(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/yyjia/sdk/f/b;->m:F

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/b;->e:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/b;->f:Landroid/widget/EditText;

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/b;->g:Landroid/widget/EditText;

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/b;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->l:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v1}, Lcom/yyjia/sdk/center/GMcenter;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/yyjia/sdk/f/b;->a()V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/b;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .registers 3

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/yyjia/sdk/f/b;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->d:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1e

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/yyjia/sdk/f/b;->b()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/yyjia/sdk/f/b;->m:F

    iget v3, p0, Lcom/yyjia/sdk/f/b;->n:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/yyjia/sdk/f/b;->m:F

    iget v4, p0, Lcom/yyjia/sdk/f/b;->o:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/b;->d:Landroid/widget/PopupWindow;

    :cond_1e
    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->d:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->d:Landroid/widget/PopupWindow;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->d:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/yyjia/sdk/f/d;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/d;-><init>(Lcom/yyjia/sdk/f/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->d:Landroid/widget/PopupWindow;

    const/16 v1, 0x11

    invoke-virtual {v0, p1, v1, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/b;J)V
    .registers 4

    iput-wide p1, p0, Lcom/yyjia/sdk/f/b;->k:J

    return-void
.end method

.method private b()Landroid/view/View;
    .registers 14

    const/high16 v12, 0x42840000

    const/high16 v11, 0x41d00000

    const/4 v10, -0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/yyjia/sdk/f/o;

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    iget v2, p0, Lcom/yyjia/sdk/f/b;->m:F

    new-instance v6, Lcom/yyjia/sdk/f/e;

    invoke-direct {v6, p0}, Lcom/yyjia/sdk/f/e;-><init>(Lcom/yyjia/sdk/f/b;)V

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/yyjia/sdk/f/o;-><init>(Landroid/content/Context;FZZZLcom/yyjia/sdk/f/bu;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/f/o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x42480000

    iget v6, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "\u8d26\u53f7\u5b89\u5168\u8bbe\u7f6e"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/high16 v4, 0x420c0000

    iget v6, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v4, v6

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v6, 0x42f00000

    iget v7, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x43fd0000

    iget v7, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "#047fef"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v7, "\u5f53\u524d\u8d26\u53f7:"

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v7, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v7, v11

    invoke-virtual {v1, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, p0, Lcom/yyjia/sdk/f/b;->e:Landroid/widget/TextView;

    iget v8, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v8, v11

    invoke-virtual {v7, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, p0, Lcom/yyjia/sdk/f/b;->e:Landroid/widget/TextView;

    const-string v8, "#047fef"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->e:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x43fd0000

    iget v7, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v7, v12

    float-to-int v7, v7

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x41a00000

    iget v7, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x30

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x43a50000

    iget v8, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v8, v12

    float-to-int v8, v8

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/yyjia/sdk/f/b;->f:Landroid/widget/EditText;

    const-string v8, "\u8bf7\u8f93\u5165\u90ae\u7bb1\u6216\u624b\u673a\u53f7"

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/yyjia/sdk/f/b;->f:Landroid/widget/EditText;

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->f:Landroid/widget/EditText;

    const/16 v7, 0x10

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->f:Landroid/widget/EditText;

    const/high16 v7, 0x41200000

    iget v8, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v1, v7, v5, v5, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->f:Landroid/widget/EditText;

    iget v7, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v7, v11

    invoke-virtual {v1, v5, v7}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->f:Landroid/widget/EditText;

    const/high16 v7, -0x1000000

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->f:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    const-string v8, "drawable"

    const-string v9, "yyjia_sdk_inputbox"

    invoke-static {v7, v8, v9}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->f:Landroid/widget/EditText;

    new-instance v7, Lcom/yyjia/sdk/f/f;

    invoke-direct {v7, p0}, Lcom/yyjia/sdk/f/f;-><init>(Lcom/yyjia/sdk/f/b;)V

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->f:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x43200000

    iget v8, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v8, v12

    float-to-int v8, v8

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x41800000

    iget v8, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    new-instance v7, Landroid/widget/Button;

    iget-object v8, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setGravity(I)V

    invoke-virtual {v7, v5, v5, v5, v5}, Landroid/widget/Button;->setPadding(IIII)V

    iget v1, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v1, v11

    invoke-virtual {v7, v5, v1}, Landroid/widget/Button;->setTextSize(IF)V

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setTextColor(I)V

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    const-string v8, "drawable"

    const-string v9, "yyjia_sdk_button"

    invoke-static {v1, v8, v9}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v1, Lcom/yyjia/sdk/f/g;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/g;-><init>(Lcom/yyjia/sdk/f/b;)V

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x43fd0000

    iget v7, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v7, v12

    float-to-int v7, v7

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x41700000

    iget v7, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/yyjia/sdk/f/b;->g:Landroid/widget/EditText;

    const-string v7, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/yyjia/sdk/f/b;->g:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->g:Landroid/widget/EditText;

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->g:Landroid/widget/EditText;

    const/high16 v3, 0x41200000

    iget v6, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->g:Landroid/widget/EditText;

    iget v3, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v3, v11

    invoke-virtual {v1, v5, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->g:Landroid/widget/EditText;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->g:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    const-string v6, "drawable"

    const-string v7, "yyjia_sdk_inputbox"

    invoke-static {v3, v6, v7}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->g:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x44004000

    iget v6, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    const/high16 v6, 0x42820000

    iget v7, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v1, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41f00000

    iget v6, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/yyjia/sdk/f/b;->h:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->h:Landroid/widget/Button;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->h:Landroid/widget/Button;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->h:Landroid/widget/Button;

    const/high16 v3, 0x41f00000

    iget v6, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v3, v6

    invoke-virtual {v1, v5, v3}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->h:Landroid/widget/Button;

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->h:Landroid/widget/Button;

    const-string v3, "\u5b8c\u6210\u9a8c\u8bc1"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->h:Landroid/widget/Button;

    iget-object v3, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    const-string v6, "drawable"

    const-string v7, "yyjia_sdk_inputbox2"

    invoke-static {v3, v6, v7}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->h:Landroid/widget/Button;

    new-instance v3, Lcom/yyjia/sdk/f/h;

    invoke-direct {v3, p0}, Lcom/yyjia/sdk/f/h;-><init>(Lcom/yyjia/sdk/f/b;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->h:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43fd0000

    iget v6, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    const/4 v6, -0x2

    invoke-direct {v1, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41f00000

    iget v6, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "#047fef"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v6, "\u8f93\u5165\u7684\u90ae\u7bb1\u6216\u624b\u673a\u53f7\u7528\u4e8e\u627e\u56de\u5bc6\u7801\uff01"

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v6, p0, Lcom/yyjia/sdk/f/b;->m:F

    mul-float/2addr v6, v11

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic b(Lcom/yyjia/sdk/f/b;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->d:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic c(Lcom/yyjia/sdk/f/b;)Landroid/widget/PopupWindow$OnDismissListener;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->i:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    const-string v1, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_20
    return-void

    :cond_21
    new-instance v0, Lcom/yyjia/sdk/f/i;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/f/i;-><init>(Lcom/yyjia/sdk/f/b;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_20
.end method

.method private d()V
    .registers 11

    const-wide/16 v8, 0x3e8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/e/t;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    const-string v1, "\u624b\u673a/\u90ae\u7bb1\u6709\u8bef"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_22
    return-void

    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v8

    iget-wide v2, p0, Lcom/yyjia/sdk/f/b;->k:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_36

    iput-wide v0, p0, Lcom/yyjia/sdk/f/b;->k:J

    invoke-direct {p0}, Lcom/yyjia/sdk/f/b;->e()V

    goto :goto_22

    :cond_36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v8

    iget-wide v4, p0, Lcom/yyjia/sdk/f/b;->k:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    cmp-long v2, v2, v4

    if-gez v2, :cond_50

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->b:Landroid/content/Context;

    const-string v1, "\u8bf7\u572860\u79d2\u540e\u91cd\u65b0\u53d1\u9001"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_22

    :cond_50
    iput-wide v0, p0, Lcom/yyjia/sdk/f/b;->k:J

    invoke-direct {p0}, Lcom/yyjia/sdk/f/b;->e()V

    goto :goto_22
.end method

.method static synthetic d(Lcom/yyjia/sdk/f/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/yyjia/sdk/f/b;->d()V

    return-void
.end method

.method private e()V
    .registers 3

    new-instance v0, Lcom/yyjia/sdk/f/j;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/f/j;-><init>(Lcom/yyjia/sdk/f/b;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic e(Lcom/yyjia/sdk/f/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/yyjia/sdk/f/b;->c()V

    return-void
.end method

.method static synthetic f(Lcom/yyjia/sdk/f/b;)Lcom/yyjia/sdk/center/GMcenter;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->l:Lcom/yyjia/sdk/center/GMcenter;

    return-object v0
.end method

.method static synthetic g(Lcom/yyjia/sdk/f/b;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/yyjia/sdk/f/b;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->f:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected a(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/yyjia/sdk/f/b;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/yyjia/sdk/f/b;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
