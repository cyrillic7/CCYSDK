.class public Lcom/yyjia/sdk/f/ab;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/os/Handler;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/PopupWindow;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:F

.field private m:I

.field private n:I

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/EditText;

.field private s:Landroid/widget/Button;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/EditText;

.field private v:Z

.field private w:J

.field private x:Lcom/yyjia/sdk/f/as;

.field private y:Lcom/yyjia/sdk/center/GMcenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x262

    iput v0, p0, Lcom/yyjia/sdk/f/ab;->m:I

    const/16 v0, 0x226

    iput v0, p0, Lcom/yyjia/sdk/f/ab;->n:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yyjia/sdk/f/ab;->v:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yyjia/sdk/f/ab;->w:J

    new-instance v0, Lcom/yyjia/sdk/f/ac;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/f/ac;-><init>(Lcom/yyjia/sdk/f/ab;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    invoke-static {p1}, Lcom/yyjia/sdk/e/ad;->a(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/yyjia/sdk/f/ab;->l:F

    invoke-static {p1}, Lcom/yyjia/sdk/center/GMcenter;->getInstance(Landroid/content/Context;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->y:Lcom/yyjia/sdk/center/GMcenter;

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->f:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->h:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->h:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->i:Landroid/widget/Button;

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->g:Landroid/widget/EditText;

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->j:Landroid/widget/Button;

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->k:Landroid/widget/Button;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->o:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->p:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->p:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->q:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->q:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->r:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->r:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->s:Landroid/widget/Button;

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->u:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/yyjia/sdk/f/ab;->h()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->t:Landroid/view/View;

    invoke-direct {p0}, Lcom/yyjia/sdk/f/ab;->g()V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/ab;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/widget/TextView;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->c:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1c

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->t:Landroid/view/View;

    iget v2, p0, Lcom/yyjia/sdk/f/ab;->l:F

    iget v3, p0, Lcom/yyjia/sdk/f/ab;->m:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/yyjia/sdk/f/ab;->l:F

    iget v4, p0, Lcom/yyjia/sdk/f/ab;->n:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->c:Landroid/widget/PopupWindow;

    :cond_1c
    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->c:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->c:Landroid/widget/PopupWindow;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    const-string v2, "style"

    const-string v3, "yyjia_sdk_MyAnim"

    invoke-static {v1, v2, v3}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->c:Landroid/widget/PopupWindow;

    const/16 v1, 0x11

    invoke-virtual {v0, p1, v1, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/ab;J)V
    .registers 4

    iput-wide p1, p0, Lcom/yyjia/sdk/f/ab;->w:J

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/ab;Landroid/widget/PopupWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/ab;->c:Landroid/widget/PopupWindow;

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/ab;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/yyjia/sdk/f/ab;->v:Z

    return-void
.end method

.method private b()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yyjia/sdk/f/ab;->w:J

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->c:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->c:Landroid/widget/PopupWindow;

    :cond_18
    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/yyjia/sdk/f/ab;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->t:Landroid/view/View;

    invoke-direct {p0}, Lcom/yyjia/sdk/f/ab;->g()V

    return-void
.end method

.method static synthetic b(Lcom/yyjia/sdk/f/ab;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/yyjia/sdk/f/ab;->v:Z

    return v0
.end method

.method private c()V
    .registers 11

    const-wide/16 v8, 0x3e8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/e/t;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

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

    iget-wide v2, p0, Lcom/yyjia/sdk/f/ab;->w:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_36

    iput-wide v0, p0, Lcom/yyjia/sdk/f/ab;->w:J

    invoke-direct {p0}, Lcom/yyjia/sdk/f/ab;->d()V

    goto :goto_22

    :cond_36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v8

    iget-wide v4, p0, Lcom/yyjia/sdk/f/ab;->w:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    cmp-long v2, v2, v4

    if-gez v2, :cond_50

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    const-string v1, "\u8bf7\u572860\u79d2\u540e\u91cd\u65b0\u53d1\u9001"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_22

    :cond_50
    iput-wide v0, p0, Lcom/yyjia/sdk/f/ab;->w:J

    invoke-direct {p0}, Lcom/yyjia/sdk/f/ab;->d()V

    goto :goto_22
.end method

.method static synthetic c(Lcom/yyjia/sdk/f/ab;)V
    .registers 1

    invoke-direct {p0}, Lcom/yyjia/sdk/f/ab;->b()V

    return-void
.end method

.method static synthetic d(Lcom/yyjia/sdk/f/ab;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->c:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private d()V
    .registers 3

    new-instance v0, Lcom/yyjia/sdk/f/ap;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/f/ap;-><init>(Lcom/yyjia/sdk/f/ab;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic e(Lcom/yyjia/sdk/f/ab;)Lcom/yyjia/sdk/center/GMcenter;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->y:Lcom/yyjia/sdk/center/GMcenter;

    return-object v0
.end method

.method private e()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->r:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->p:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    const-string v1, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_3c
    return-void

    :cond_3d
    invoke-static {v0}, Lcom/yyjia/sdk/e/t;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4f

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    const-string v1, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3c

    :cond_4f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    const-string v1, "\u8f93\u5165\u7684\u4e24\u6b21\u5bc6\u7801\u4e0d\u4e00\u81f4"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3c

    :cond_61
    invoke-direct {p0}, Lcom/yyjia/sdk/f/ab;->f()V

    goto :goto_3c
.end method

.method static synthetic f(Lcom/yyjia/sdk/f/ab;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->j:Landroid/widget/Button;

    return-object v0
.end method

.method private f()V
    .registers 3

    new-instance v0, Lcom/yyjia/sdk/f/aq;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/f/aq;-><init>(Lcom/yyjia/sdk/f/ab;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private g()V
    .registers 3

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/yyjia/sdk/f/ab;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic g(Lcom/yyjia/sdk/f/ab;)V
    .registers 1

    invoke-direct {p0}, Lcom/yyjia/sdk/f/ab;->e()V

    return-void
.end method

.method private h()Landroid/view/View;
    .registers 13

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/yyjia/sdk/f/o;

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    iget v2, p0, Lcom/yyjia/sdk/f/ab;->l:F

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-instance v6, Lcom/yyjia/sdk/f/ar;

    invoke-direct {v6, p0}, Lcom/yyjia/sdk/f/ar;-><init>(Lcom/yyjia/sdk/f/ab;)V

    invoke-direct/range {v0 .. v6}, Lcom/yyjia/sdk/f/o;-><init>(Landroid/content/Context;FZZZLcom/yyjia/sdk/f/bu;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const v3, 0x43d58000

    iget v4, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/f/o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x42780000

    iget v3, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v3, 0x42480000

    iget v4, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "\u627e\u56de\u5bc6\u7801"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/4 v3, 0x0

    const/high16 v4, 0x420c0000

    iget v5, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x43160000

    iget v5, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v1, 0x11

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x43ba0000

    iget v5, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x42840000

    iget v6, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    const-string v5, "drawable"

    const-string v6, "yyjia_sdk_inputbox"

    invoke-static {v1, v5, v6}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/16 v1, 0x10

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42040000

    iget v6, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x41f00000

    iget v9, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41000000

    iget v6, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v5, 0x10

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43ba0000

    iget v6, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x429c0000

    iget v9, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x0

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/4 v5, 0x0

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v5, 0x10

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v5, p0, Lcom/yyjia/sdk/f/ab;->d:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/ab;->d:Landroid/widget/EditText;

    const-string v6, "\u8bf7\u8f93\u5165\u7528\u6237\u540d"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/ab;->d:Landroid/widget/EditText;

    const/4 v6, 0x0

    const/high16 v9, 0x41d00000

    iget v10, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v9, v10

    invoke-virtual {v5, v6, v9}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/ab;->d:Landroid/widget/EditText;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/ab;->d:Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/ab;->d:Landroid/widget/EditText;

    const/high16 v6, 0x41200000

    iget v9, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v6, v9, v10, v11}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/ab;->d:Landroid/widget/EditText;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/ab;->d:Landroid/widget/EditText;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/ab;->d:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x43ba0000

    iget v10, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x42840000

    iget v11, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-direct {v6, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x41700000

    iget v10, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v6, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    const-string v9, "drawable"

    const-string v10, "yyjia_sdk_inputbox"

    invoke-static {v6, v9, v10}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v6, p0, Lcom/yyjia/sdk/f/ab;->g:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->g:Landroid/widget/EditText;

    const-string v6, "\u8bf7\u8f93\u5165\u90ae\u7bb1\u6216\u624b\u673a\u53f7"

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->g:Landroid/widget/EditText;

    const/4 v6, 0x0

    const/high16 v9, 0x41d00000

    iget v10, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v9, v10

    invoke-virtual {v1, v6, v9}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->g:Landroid/widget/EditText;

    const/high16 v6, -0x1000000

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->g:Landroid/widget/EditText;

    const/high16 v6, 0x41200000

    iget v9, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v6, v9, v10, v11}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->g:Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->g:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    const-string v9, "drawable"

    const-string v10, "yyjia_sdk_inputbox"

    invoke-static {v6, v9, v10}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->g:Landroid/widget/EditText;

    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->g:Landroid/widget/EditText;

    new-instance v6, Lcom/yyjia/sdk/f/ad;

    invoke-direct {v6, p0}, Lcom/yyjia/sdk/f/ad;-><init>(Lcom/yyjia/sdk/f/ab;)V

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->g:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v9, -0x2

    invoke-direct {v1, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v6, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x43140000

    iget v5, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x43140000

    iget v9, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v5, v9

    float-to-int v5, v5

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41700000

    iget v5, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43140000

    iget v9, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v5, v9

    float-to-int v5, v5

    const/high16 v9, 0x43140000

    iget v10, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-direct {v1, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/yyjia/sdk/f/ab;->j:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->j:Landroid/widget/Button;

    const-string v5, "\u83b7\u53d6\n\u9a8c\u8bc1\u7801"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->j:Landroid/widget/Button;

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->j:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->j:Landroid/widget/Button;

    const/4 v5, 0x0

    const/high16 v9, 0x41f00000

    iget v10, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v9, v10

    invoke-virtual {v1, v5, v9}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->j:Landroid/widget/Button;

    iget-object v5, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    const-string v9, "drawable"

    const-string v10, "yyjia_sdk_button"

    invoke-static {v5, v9, v10}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->j:Landroid/widget/Button;

    new-instance v5, Lcom/yyjia/sdk/f/ae;

    invoke-direct {v5, p0}, Lcom/yyjia/sdk/f/ae;-><init>(Lcom/yyjia/sdk/f/ab;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->j:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v9, -0x2

    invoke-direct {v1, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v6, 0x42c80000

    iget v9, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-direct {v1, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40a00000

    iget v6, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x43200000

    iget v9, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    const/high16 v9, 0x42a00000

    iget v10, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-direct {v1, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v6, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "\u5fd8\u8bb0\u5e10\u53f7"

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/4 v1, 0x0

    const/high16 v9, 0x41d00000

    iget v10, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v9, v10

    invoke-virtual {v6, v1, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, 0x5

    const/16 v9, 0x75

    const/16 v10, 0xfb

    invoke-static {v1, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    const/high16 v9, 0x41200000

    iget v10, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v1, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v1, Lcom/yyjia/sdk/f/af;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/af;-><init>(Lcom/yyjia/sdk/f/ab;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v9, -0x2

    invoke-direct {v1, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v6, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v8
.end method

.method static synthetic h(Lcom/yyjia/sdk/f/ab;)V
    .registers 1

    invoke-direct {p0}, Lcom/yyjia/sdk/f/ab;->c()V

    return-void
.end method

.method static synthetic i(Lcom/yyjia/sdk/f/ab;)Lcom/yyjia/sdk/f/as;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->x:Lcom/yyjia/sdk/f/as;

    return-object v0
.end method

.method private i()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yyjia/sdk/f/ab;->w:J

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->c:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->c:Landroid/widget/PopupWindow;

    :cond_18
    invoke-direct {p0}, Lcom/yyjia/sdk/f/ab;->j()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/f/ab;->t:Landroid/view/View;

    invoke-direct {p0}, Lcom/yyjia/sdk/f/ab;->g()V

    return-void
.end method

.method private j()Landroid/view/View;
    .registers 13

    const/4 v8, -0x2

    const v11, 0x44004000

    const/4 v4, 0x1

    const/4 v10, -0x1

    const/4 v3, 0x0

    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/yyjia/sdk/f/o;

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    iget v2, p0, Lcom/yyjia/sdk/f/ab;->l:F

    new-instance v6, Lcom/yyjia/sdk/f/ag;

    invoke-direct {v6, p0}, Lcom/yyjia/sdk/f/ag;-><init>(Lcom/yyjia/sdk/f/ab;)V

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/yyjia/sdk/f/o;-><init>(Landroid/content/Context;FZZZLcom/yyjia/sdk/f/bu;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x43d58000

    iget v5, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-direct {v1, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/f/o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x42780000

    iget v5, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x42480000

    iget v6, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v5, "\u627e\u56de\u8d26\u53f7"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/high16 v5, 0x420c0000

    iget v6, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v5, v6

    invoke-virtual {v1, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v6, 0x430a0000

    iget v8, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v6, v11

    float-to-int v6, v6

    const/high16 v8, 0x42700000

    iget v9, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/yyjia/sdk/f/ab;->u:Landroid/widget/EditText;

    const/high16 v8, -0x1000000

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v6, p0, Lcom/yyjia/sdk/f/ab;->u:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->u:Landroid/widget/EditText;

    const/high16 v6, 0x41d00000

    iget v8, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v6, v8

    invoke-virtual {v1, v3, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->u:Landroid/widget/EditText;

    const/high16 v6, 0x41400000

    iget v8, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {v1, v6, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->u:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    const-string v8, "drawable"

    const-string v9, "yyjia_sdk_inputbox"

    invoke-static {v6, v8, v9}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->u:Landroid/widget/EditText;

    const-string v6, "\u8bf7\u8f93\u5165\u90ae\u7bb1\u6216\u624b\u673a\u53f7"

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->u:Landroid/widget/EditText;

    new-instance v6, Lcom/yyjia/sdk/f/ah;

    invoke-direct {v6, p0}, Lcom/yyjia/sdk/f/ah;-><init>(Lcom/yyjia/sdk/f/ab;)V

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->u:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v6, v11

    float-to-int v6, v6

    const/high16 v8, 0x42820000

    iget v9, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x42280000

    iget v8, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v6, Landroid/widget/Button;

    iget-object v8, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v3, v3, v3, v3}, Landroid/widget/Button;->setPadding(IIII)V

    const/16 v1, 0x11

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setGravity(I)V

    const/high16 v1, 0x41f00000

    iget v8, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v1, v8

    invoke-virtual {v6, v3, v1}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v8, "yyjia_sdk_inputbox2"

    invoke-static {v1, v3, v8}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v6}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const-string v1, "\u627e\u56de\u8d26\u53f7"

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/yyjia/sdk/f/ai;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/ai;-><init>(Lcom/yyjia/sdk/f/ab;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v7
.end method

.method static synthetic j(Lcom/yyjia/sdk/f/ab;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcom/yyjia/sdk/f/ab;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method private k()V
    .registers 4

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->u:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/e/t;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    const-string v1, "\u624b\u673a/\u90ae\u7bb1\u6709\u8bef"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_20
    return-void

    :cond_21
    new-instance v0, Lcom/yyjia/sdk/f/aj;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/f/aj;-><init>(Lcom/yyjia/sdk/f/ab;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_20
.end method

.method static synthetic l(Lcom/yyjia/sdk/f/ab;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->p:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic m(Lcom/yyjia/sdk/f/ab;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->q:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic n(Lcom/yyjia/sdk/f/ab;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->r:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic o(Lcom/yyjia/sdk/f/ab;)V
    .registers 1

    invoke-direct {p0}, Lcom/yyjia/sdk/f/ab;->i()V

    return-void
.end method

.method static synthetic p(Lcom/yyjia/sdk/f/ab;)V
    .registers 1

    invoke-direct {p0}, Lcom/yyjia/sdk/f/ab;->k()V

    return-void
.end method

.method static synthetic q(Lcom/yyjia/sdk/f/ab;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->u:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 14

    const/high16 v12, 0x41200000

    const/high16 v11, 0x41d00000

    const/4 v10, -0x1

    const/4 v3, 0x1

    const/4 v7, 0x0

    new-instance v0, Lcom/yyjia/sdk/f/o;

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    iget v2, p0, Lcom/yyjia/sdk/f/ab;->l:F

    new-instance v6, Lcom/yyjia/sdk/f/ak;

    invoke-direct {v6, p0}, Lcom/yyjia/sdk/f/ak;-><init>(Lcom/yyjia/sdk/f/ab;)V

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/yyjia/sdk/f/o;-><init>(Landroid/content/Context;FZZZLcom/yyjia/sdk/f/bu;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/f/o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v8, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x42480000

    iget v4, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "\u91cd\u7f6e\u5bc6\u7801"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/high16 v2, 0x420c0000

    iget v4, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v2, v4

    invoke-virtual {v1, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v9, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x42f00000

    iget v4, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43fd0000

    iget v4, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "#047fef"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "\u5f53\u524d\u8d26\u53f7:"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v4, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v4, v11

    invoke-virtual {v1, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/yyjia/sdk/f/ab;->o:Landroid/widget/TextView;

    iget v5, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v5, v11

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/yyjia/sdk/f/ab;->o:Landroid/widget/TextView;

    const-string v5, "#047fef"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->o:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43fd0000

    iget v4, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    const/high16 v4, 0x42840000

    iget v5, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v2, v12

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->p:Landroid/widget/EditText;

    const-string v4, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->p:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->p:Landroid/widget/EditText;

    const/16 v4, 0x51

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->p:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->p:Landroid/widget/EditText;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->p:Landroid/widget/EditText;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->p:Landroid/widget/EditText;

    iget v4, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v4, v12

    float-to-int v4, v4

    invoke-virtual {v2, v4, v7, v7, v7}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->p:Landroid/widget/EditText;

    iget v4, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v4, v11

    invoke-virtual {v2, v7, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->p:Landroid/widget/EditText;

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->p:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    const-string v5, "drawable"

    const-string v6, "yyjia_sdk_inputbox"

    invoke-static {v4, v5, v6}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->p:Landroid/widget/EditText;

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->q:Landroid/widget/EditText;

    const-string v4, "\u8bf7\u8f93\u5165\u65b0\u5bc6\u7801"

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->q:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->q:Landroid/widget/EditText;

    const/16 v4, 0x81

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->q:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->q:Landroid/widget/EditText;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->q:Landroid/widget/EditText;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->q:Landroid/widget/EditText;

    iget v4, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v4, v12

    float-to-int v4, v4

    invoke-virtual {v2, v4, v7, v7, v7}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->q:Landroid/widget/EditText;

    iget v4, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v4, v11

    invoke-virtual {v2, v7, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->q:Landroid/widget/EditText;

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->q:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    const-string v5, "drawable"

    const-string v6, "yyjia_sdk_inputbox"

    invoke-static {v4, v5, v6}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->q:Landroid/widget/EditText;

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->r:Landroid/widget/EditText;

    const-string v4, "\u786e\u8ba4\u65b0\u5bc6\u7801"

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->r:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->r:Landroid/widget/EditText;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->r:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->r:Landroid/widget/EditText;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->r:Landroid/widget/EditText;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->r:Landroid/widget/EditText;

    iget v2, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v1, v2, v7, v7, v7}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->r:Landroid/widget/EditText;

    iget v2, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v2, v11

    invoke-virtual {v1, v7, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->r:Landroid/widget/EditText;

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->r:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "yyjia_sdk_inputbox"

    invoke-static {v2, v3, v4}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->r:Landroid/widget/EditText;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x44004000

    iget v3, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x42820000

    iget v4, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41700000

    iget v3, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->s:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->s:Landroid/widget/Button;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->s:Landroid/widget/Button;

    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->s:Landroid/widget/Button;

    const/high16 v3, 0x41f00000

    iget v4, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v7, v3}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->s:Landroid/widget/Button;

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->s:Landroid/widget/Button;

    const-string v3, "\u4fdd\u5b58"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->s:Landroid/widget/Button;

    iget-object v3, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    const-string v4, "drawable"

    const-string v5, "yyjia_sdk_inputbox2"

    invoke-static {v3, v4, v5}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->s:Landroid/widget/Button;

    new-instance v3, Lcom/yyjia/sdk/f/al;

    invoke-direct {v3, p0}, Lcom/yyjia/sdk/f/al;-><init>(Lcom/yyjia/sdk/f/ab;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->s:Landroid/widget/Button;

    new-instance v3, Lcom/yyjia/sdk/f/am;

    invoke-direct {v3, p0}, Lcom/yyjia/sdk/f/am;-><init>(Lcom/yyjia/sdk/f/ab;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->k:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->k:Landroid/widget/Button;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->k:Landroid/widget/Button;

    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->k:Landroid/widget/Button;

    const/high16 v2, 0x41f00000

    iget v3, p0, Lcom/yyjia/sdk/f/ab;->l:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v7, v2}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->k:Landroid/widget/Button;

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->k:Landroid/widget/Button;

    const-string v2, "\u91cd\u65b0\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->k:Landroid/widget/Button;

    iget-object v2, p0, Lcom/yyjia/sdk/f/ab;->b:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "yyjia_sdk_inputbox2"

    invoke-static {v2, v3, v4}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->k:Landroid/widget/Button;

    new-instance v2, Lcom/yyjia/sdk/f/an;

    invoke-direct {v2, p0}, Lcom/yyjia/sdk/f/an;-><init>(Lcom/yyjia/sdk/f/ab;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/yyjia/sdk/f/as;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/yyjia/sdk/f/as;-><init>(Lcom/yyjia/sdk/f/ab;JJ)V

    iput-object v2, p0, Lcom/yyjia/sdk/f/ab;->x:Lcom/yyjia/sdk/f/as;

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->k:Landroid/widget/Button;

    new-instance v2, Lcom/yyjia/sdk/f/ao;

    invoke-direct {v2, p0}, Lcom/yyjia/sdk/f/ao;-><init>(Lcom/yyjia/sdk/f/ab;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->s:Landroid/widget/Button;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->k:Landroid/widget/Button;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v8}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v9}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method protected a(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/yyjia/sdk/f/ab;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/yyjia/sdk/f/ab;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
