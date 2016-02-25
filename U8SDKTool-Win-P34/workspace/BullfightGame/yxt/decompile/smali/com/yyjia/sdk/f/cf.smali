.class public Lcom/yyjia/sdk/f/cf;
.super Ljava/lang/Object;


# instance fields
.field private A:Landroid/view/View;

.field protected a:Landroid/os/Handler;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/PopupWindow;

.field private d:Landroid/app/Dialog;

.field private e:Landroid/webkit/WebView;

.field private f:F

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:Landroid/widget/PopupWindow$OnDismissListener;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/ProgressBar;

.field private s:Landroid/widget/ProgressBar;

.field private t:Lcom/yyjia/sdk/center/GMcenter;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 14

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yyjia/sdk/f/cf;->c:Landroid/widget/PopupWindow;

    iput-object v2, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    const-string v0, ""

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->g:Ljava/lang/String;

    const-string v0, "Page not found !"

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->z:Ljava/lang/String;

    iput-object v2, p0, Lcom/yyjia/sdk/f/cf;->A:Landroid/view/View;

    new-instance v0, Lcom/yyjia/sdk/f/cg;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/f/cg;-><init>(Lcom/yyjia/sdk/f/cf;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/yyjia/sdk/center/GMcenter;->getInstance(Landroid/content/Context;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->t:Lcom/yyjia/sdk/center/GMcenter;

    const-string v0, "abc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sessionid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->u:Ljava/lang/String;

    iput-object p10, p0, Lcom/yyjia/sdk/f/cf;->l:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object p2, p0, Lcom/yyjia/sdk/f/cf;->m:Ljava/lang/String;

    iput-object p5, p0, Lcom/yyjia/sdk/f/cf;->n:Ljava/lang/String;

    iput p3, p0, Lcom/yyjia/sdk/f/cf;->j:I

    iput p4, p0, Lcom/yyjia/sdk/f/cf;->k:F

    iput-object p6, p0, Lcom/yyjia/sdk/f/cf;->v:Ljava/lang/String;

    iput-object p7, p0, Lcom/yyjia/sdk/f/cf;->w:Ljava/lang/String;

    iput-object p9, p0, Lcom/yyjia/sdk/f/cf;->x:Ljava/lang/String;

    iput-object p8, p0, Lcom/yyjia/sdk/f/cf;->y:Ljava/lang/String;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->o:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->p:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->q:Landroid/widget/Button;

    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    invoke-static {p1}, Lcom/yyjia/sdk/e/ad;->a(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/yyjia/sdk/f/cf;->f:F

    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    invoke-static {p1}, Lcom/yyjia/sdk/e/ad;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/yyjia/sdk/f/cf;->h:I

    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    invoke-static {p1}, Lcom/yyjia/sdk/e/ad;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/yyjia/sdk/f/cf;->i:I

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->e:Landroid/webkit/WebView;

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->r:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/ProgressBar;

    const v1, 0x1010078

    invoke-direct {v0, p1, v2, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->s:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/yyjia/sdk/f/cf;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->A:Landroid/view/View;

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_99
    invoke-direct {p0}, Lcom/yyjia/sdk/f/cf;->c()V

    invoke-direct {p0}, Lcom/yyjia/sdk/f/cf;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yyjia/sdk/f/cf;->c:Landroid/widget/PopupWindow;

    iput-object v2, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    const-string v0, ""

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->g:Ljava/lang/String;

    const-string v0, "Page not found !"

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->z:Ljava/lang/String;

    iput-object v2, p0, Lcom/yyjia/sdk/f/cf;->A:Landroid/view/View;

    new-instance v0, Lcom/yyjia/sdk/f/cg;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/f/cg;-><init>(Lcom/yyjia/sdk/f/cf;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/yyjia/sdk/center/GMcenter;->getInstance(Landroid/content/Context;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->t:Lcom/yyjia/sdk/center/GMcenter;

    const-string v0, "abc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sessionid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->u:Ljava/lang/String;

    iput-object p3, p0, Lcom/yyjia/sdk/f/cf;->l:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object p2, p0, Lcom/yyjia/sdk/f/cf;->m:Ljava/lang/String;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->o:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->p:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->q:Landroid/widget/Button;

    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    invoke-static {p1}, Lcom/yyjia/sdk/e/ad;->a(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/yyjia/sdk/f/cf;->f:F

    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    invoke-static {p1}, Lcom/yyjia/sdk/e/ad;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/yyjia/sdk/f/cf;->h:I

    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    invoke-static {p1}, Lcom/yyjia/sdk/e/ad;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/yyjia/sdk/f/cf;->i:I

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->e:Landroid/webkit/WebView;

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->r:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/ProgressBar;

    const v1, 0x1010078

    invoke-direct {v0, p1, v2, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->s:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/yyjia/sdk/f/cf;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->A:Landroid/view/View;

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_8b
    invoke-direct {p0}, Lcom/yyjia/sdk/f/cf;->c()V

    invoke-direct {p0}, Lcom/yyjia/sdk/f/cf;->a()V

    return-void
.end method

.method private a()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_9
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/yyjia/sdk/f/cf;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->e:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/yyjia/sdk/f/cf;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "show error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1c
.end method

.method private a(I)V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .registers 7

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    const-string v3, "style"

    const-string v4, "yyjia_sdk_processDialog"

    invoke-static {v2, v3, v4}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/cf;)V
    .registers 1

    invoke-direct {p0}, Lcom/yyjia/sdk/f/cf;->f()V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/cf;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/yyjia/sdk/f/cf;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/yyjia/sdk/f/cf;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/yyjia/sdk/f/cf;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/yyjia/sdk/f/cr;

    invoke-direct {v0, p0, p1}, Lcom/yyjia/sdk/f/cr;-><init>(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_16
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_60

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->t:Lcom/yyjia/sdk/center/GMcenter;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/center/GMcenter;->setLoginType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->t:Lcom/yyjia/sdk/center/GMcenter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "s_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/center/GMcenter;->setUsername(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    const-string v1, "abc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "p"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "sessionid"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "u"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sina_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "logintype"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_5b
    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->t:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->checkLogin()V

    :cond_60
    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 4

    const-string v0, "http://api.yxtsy.com/sdkapi.php"

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->m:Ljava/lang/String;

    const-string v2, "moreapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "?ac=moreapp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&sessionid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&appid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->getConfigInfo()Lcom/yyjia/sdk/data/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yyjia/sdk/data/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_57
    :goto_57
    return-object v0

    :cond_58
    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->m:Ljava/lang/String;

    const-string v2, "payorder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "?ac=paylog"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&sessionid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&appid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->getConfigInfo()Lcom/yyjia/sdk/data/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yyjia/sdk/data/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_57

    :cond_ae
    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->m:Ljava/lang/String;

    const-string v2, "bbs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_105

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "?ac=bbs"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&sessionid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&appid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->getConfigInfo()Lcom/yyjia/sdk/data/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yyjia/sdk/data/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_57

    :cond_105
    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->m:Ljava/lang/String;

    const-string v2, "sinalogin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_134

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://api.weibo.com/oauth2/authorize?client_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->getConfigInfo()Lcom/yyjia/sdk/data/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yyjia/sdk/data/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&response_type=code&redirect_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "http://api.yxtsy.com/sdkapi.php"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_57

    :cond_134
    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->m:Ljava/lang/String;

    const-string v2, "qqlogin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://graph.qq.com/oauth2.0/authorize?client_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->getConfigInfo()Lcom/yyjia/sdk/data/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yyjia/sdk/data/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&response_type=code&redirect_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "http://api.yxtsy.com/sdkapi.php?ac=qqlogin"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&state=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_57

    :cond_16d
    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->m:Ljava/lang/String;

    const-string v2, "pay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "?ac=pay"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&sessionid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&appid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->getConfigInfo()Lcom/yyjia/sdk/data/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yyjia/sdk/data/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&isuse="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yyjia/sdk/f/cf;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&money="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yyjia/sdk/f/cf;->k:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&productname="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&charId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&serverId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&callbackInfo="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&cporderid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_57
.end method

.method static synthetic b(Lcom/yyjia/sdk/f/cf;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/yyjia/sdk/f/cf;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/yyjia/sdk/f/cf;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/shengpay/smc/sdk/vo/OrderInfo;

    invoke-direct {v0}, Lcom/shengpay/smc/sdk/vo/OrderInfo;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->setSignFromClient(Z)V

    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/yyjia/sdk/f/cs;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/cs;-><init>(Lcom/yyjia/sdk/f/cf;)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    sget-object v3, Lcom/shengpay/smc/sdk/common/enums/Stage;->PROD:Lcom/shengpay/smc/sdk/common/enums/Stage;

    invoke-static {v2, v1, v0, v3}, Lcom/shengpay/smc/sdk/pay/SMCPaymentClient;->performPay(Landroid/content/Context;Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;Lorg/json/JSONObject;Lcom/shengpay/smc/sdk/common/enums/Stage;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_1a} :catch_24

    :goto_1a
    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_23
    return-void

    :catch_24
    move-exception v0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x1f42

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1a
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    if-eqz p1, :cond_66

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->t:Lcom/yyjia/sdk/center/GMcenter;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/center/GMcenter;->setLoginType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->t:Lcom/yyjia/sdk/center/GMcenter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "qq_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/center/GMcenter;->setUsername(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    const-string v1, "abc"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "p"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "sessionid"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "u"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "qq_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xc

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "logintype"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_61
    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->t:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->checkLogin()V

    :cond_66
    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->m:Ljava/lang/String;

    const-string v1, "moreapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->o:Landroid/widget/TextView;

    const-string v1, "\u66f4\u591a\u6e38\u620f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->m:Ljava/lang/String;

    const-string v1, "payorder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->o:Landroid/widget/TextView;

    const-string v1, "\u5145\u503c\u67e5\u8be2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    :cond_24
    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->m:Ljava/lang/String;

    const-string v1, "bbs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->o:Landroid/widget/TextView;

    const-string v1, "\u6e38\u620f\u793e\u533a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    :cond_36
    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->m:Ljava/lang/String;

    const-string v1, "sinalogin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->o:Landroid/widget/TextView;

    const-string v1, "\u5fae\u535a\u767b\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    :cond_48
    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->m:Ljava/lang/String;

    const-string v1, "qqlogin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->o:Landroid/widget/TextView;

    const-string v1, "QQ\u767b\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    :cond_5a
    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->m:Ljava/lang/String;

    const-string v1, "pay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->o:Landroid/widget/TextView;

    const-string v1, "\u5145\u503c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11
.end method

.method static synthetic c(Lcom/yyjia/sdk/f/cf;)V
    .registers 1

    invoke-direct {p0}, Lcom/yyjia/sdk/f/cf;->e()V

    return-void
.end method

.method static synthetic c(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/yyjia/sdk/f/cf;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/yyjia/sdk/f/cf;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 5

    const-string v0, "http://quickpay_shengpay:"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://api.yxtsy.com/sdkapi.php?ac=pay_order&"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/yyjia/sdk/f/ct;

    invoke-direct {v1, p0, v0}, Lcom/yyjia/sdk/f/ct;-><init>(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->t:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->getPayListener()Lcom/yyjia/sdk/listener/PayListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/yyjia/sdk/listener/PayListener;->paySuccessed(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_13
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_26
    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2e
    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_26
.end method

.method private d()Landroid/view/View;
    .registers 13

    const/high16 v11, 0x42c80000

    const/high16 v10, 0x41a00000

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v2, v11

    float-to-int v2, v2

    invoke-direct {v1, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v3, "#0086ff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41c00000

    iget v5, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x420c0000

    iget v6, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v4, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v4, v10

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v4, 0x42200000

    iget v5, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v4, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v4, v10

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget v4, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v4, v10

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/yyjia/sdk/f/cf;->p:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->p:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    const-string v5, "drawable"

    const-string v6, "yyjia_sdk_bt_back"

    invoke-static {v4, v5, v6}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance v1, Lcom/yyjia/sdk/f/ci;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/ci;-><init>(Lcom/yyjia/sdk/f/cf;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->p:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42960000

    iget v5, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x42000000

    iget v6, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v4, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v4, v10

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/yyjia/sdk/f/cf;->q:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->q:Landroid/widget/Button;

    const-string v4, "#0086ff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->q:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->q:Landroid/widget/Button;

    iget-object v4, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    const-string v5, "drawable"

    const-string v6, "yyjia_sdk_hdyx"

    invoke-static {v4, v5, v6}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->q:Landroid/widget/Button;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->q:Landroid/widget/Button;

    const/high16 v4, 0x41900000

    iget v5, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v4, v5

    invoke-virtual {v1, v9, v4}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->q:Landroid/widget/Button;

    const/high16 v4, 0x41200000

    iget v5, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setRight(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->q:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->q:Landroid/widget/Button;

    new-instance v4, Lcom/yyjia/sdk/f/cj;

    invoke-direct {v4, p0}, Lcom/yyjia/sdk/f/cj;-><init>(Lcom/yyjia/sdk/f/cf;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/yyjia/sdk/f/cf;->h:I

    int-to-float v4, v4

    const/high16 v5, 0x43480000

    iget v6, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/yyjia/sdk/f/cf;->o:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->o:Landroid/widget/TextView;

    const/high16 v4, 0x41700000

    iget v5, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v9, v4, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->o:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->o:Landroid/widget/TextView;

    const/high16 v4, 0x420c0000

    iget v5, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v4, v5

    invoke-virtual {v1, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->o:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->q:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v3, v11

    float-to-int v3, v3

    iget v4, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v4, v11

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/yyjia/sdk/f/cf;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, p0, Lcom/yyjia/sdk/f/cf;->h:I

    iget v4, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v4, v11

    float-to-int v4, v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/high16 v3, 0x42a00000

    iget v4, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/yyjia/sdk/f/cf;->i:I

    const/high16 v5, 0x43340000

    iget v6, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x41200000

    iget v4, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/yyjia/sdk/f/cf;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, 0x42820000

    iget v4, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v4, 0x42a00000

    iget v5, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/yyjia/sdk/f/cf;->i:I

    const/high16 v5, 0x42a00000

    iget v6, p0, Lcom/yyjia/sdk/f/cf;->f:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-direct {v1, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/yyjia/sdk/f/cf;->e:Landroid/webkit/WebView;

    invoke-virtual {v4, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->e:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->e:Landroid/webkit/WebView;

    new-instance v4, Lcom/yyjia/sdk/f/ck;

    invoke-direct {v4, p0}, Lcom/yyjia/sdk/f/ck;-><init>(Lcom/yyjia/sdk/f/cf;)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->e:Landroid/webkit/WebView;

    new-instance v4, Lcom/yyjia/sdk/f/cl;

    invoke-direct {v4, p0}, Lcom/yyjia/sdk/f/cl;-><init>(Lcom/yyjia/sdk/f/cf;)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->e:Landroid/webkit/WebView;

    new-instance v4, Lcom/yyjia/sdk/f/cq;

    invoke-direct {v4, p0}, Lcom/yyjia/sdk/f/cq;-><init>(Lcom/yyjia/sdk/f/cf;)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->e:Landroid/webkit/WebView;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic d(Lcom/yyjia/sdk/f/cf;)V
    .registers 1

    invoke-direct {p0}, Lcom/yyjia/sdk/f/cf;->g()V

    return-void
.end method

.method static synthetic d(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/yyjia/sdk/f/cf;->a(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 5

    const-string v0, "http://quickpay_alipay:"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://api.yxtsy.com/sdkapi.php?ac=pay_order&"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/yyjia/sdk/f/ch;

    invoke-direct {v1, p0, v0}, Lcom/yyjia/sdk/f/ch;-><init>(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic e(Lcom/yyjia/sdk/f/cf;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->b:Landroid/content/Context;

    return-object v0
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_d
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_9
    return-void
.end method

.method static synthetic f(Lcom/yyjia/sdk/f/cf;)V
    .registers 1

    invoke-direct {p0}, Lcom/yyjia/sdk/f/cf;->h()V

    return-void
.end method

.method private g()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->s:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private h()V
    .registers 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/yyjia/sdk/f/cf;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/yyjia/sdk/f/cf;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
