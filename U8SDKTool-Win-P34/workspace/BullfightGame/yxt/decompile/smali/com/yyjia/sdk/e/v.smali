.class public Lcom/yyjia/sdk/e/v;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Landroid/content/Context;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/app/Dialog;

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yyjia/sdk/e/v;->i:Z

    new-instance v0, Lcom/yyjia/sdk/e/w;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/e/w;-><init>(Lcom/yyjia/sdk/e/v;)V

    iput-object v0, p0, Lcom/yyjia/sdk/e/v;->n:Landroid/os/Handler;

    iput-object p1, p0, Lcom/yyjia/sdk/e/v;->j:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_11

    :goto_10
    return v0

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_10
.end method

.method static synthetic a(Lcom/yyjia/sdk/e/v;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/e/v;->k:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/yyjia/sdk/e/v;I)V
    .registers 2

    iput p1, p0, Lcom/yyjia/sdk/e/v;->c:I

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/e/v;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/e/v;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/e/v;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/yyjia/sdk/e/v;->i:Z

    return-void
.end method

.method static synthetic b(Lcom/yyjia/sdk/e/v;)I
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/e/v;->c:I

    return v0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/e/v;->j:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/yyjia/sdk/e/v;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/yyjia/sdk/e/v;->f:I

    new-instance v0, Lcom/yyjia/sdk/e/x;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/e/x;-><init>(Lcom/yyjia/sdk/e/v;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Lcom/yyjia/sdk/e/v;I)V
    .registers 2

    iput p1, p0, Lcom/yyjia/sdk/e/v;->g:I

    return-void
.end method

.method static synthetic b(Lcom/yyjia/sdk/e/v;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/e/v;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/yyjia/sdk/e/v;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/e/v;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/yyjia/sdk/e/v;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6e38\u620f\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u68c0\u67e5\u5230\u65b0\u7248\u672c,\u7acb\u5373\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u66f4\u65b0"

    new-instance v2, Lcom/yyjia/sdk/e/y;

    invoke-direct {v2, p0}, Lcom/yyjia/sdk/e/y;-><init>(Lcom/yyjia/sdk/e/v;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u7a0d\u540e\u66f4\u65b0"

    new-instance v2, Lcom/yyjia/sdk/e/z;

    invoke-direct {v2, p0}, Lcom/yyjia/sdk/e/z;-><init>(Lcom/yyjia/sdk/e/v;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic d(Lcom/yyjia/sdk/e/v;)Landroid/app/Dialog;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/e/v;->m:Landroid/app/Dialog;

    return-object v0
.end method

.method private d()V
    .registers 6

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/yyjia/sdk/e/v;->j:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u66f4\u65b0\u4e2d"

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/yyjia/sdk/e/v;->j:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/yyjia/sdk/e/v;->j:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "yyjia_sdk_softupdate_progress"

    invoke-static {v2, v3, v4}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/yyjia/sdk/e/v;->j:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "yyjia_sdk_update_progress"

    invoke-static {v0, v3, v4}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yyjia/sdk/e/v;->k:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/yyjia/sdk/e/v;->j:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "yyjia_sdk_progress_info"

    invoke-static {v0, v3, v4}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yyjia/sdk/e/v;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v0, "\u53d6\u6d88"

    new-instance v2, Lcom/yyjia/sdk/e/aa;

    invoke-direct {v2, p0}, Lcom/yyjia/sdk/e/aa;-><init>(Lcom/yyjia/sdk/e/v;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/e/v;->m:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/yyjia/sdk/e/v;->m:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/v;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-direct {p0}, Lcom/yyjia/sdk/e/v;->e()V

    return-void
.end method

.method private e()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "download"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/e/v;->a:Ljava/lang/String;

    new-instance v0, Lcom/yyjia/sdk/e/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yyjia/sdk/e/v;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yyjia/sdk/e/v;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/yyjia/sdk/e/v;->h:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/yyjia/sdk/e/ab;-><init>(Lcom/yyjia/sdk/e/v;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/yyjia/sdk/e/ab;->a()V

    return-void
.end method

.method static synthetic e(Lcom/yyjia/sdk/e/v;)V
    .registers 1

    invoke-direct {p0}, Lcom/yyjia/sdk/e/v;->f()V

    return-void
.end method

.method static synthetic f(Lcom/yyjia/sdk/e/v;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/e/v;->j:Landroid/content/Context;

    return-object v0
.end method

.method private f()V
    .registers 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yyjia/sdk/e/v;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yyjia/sdk/e/v;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return-void

    :cond_10
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/yyjia/sdk/e/v;->j:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_f
.end method

.method static synthetic g(Lcom/yyjia/sdk/e/v;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/e/v;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/yyjia/sdk/e/v;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/yyjia/sdk/e/v;->i:Z

    return v0
.end method

.method static synthetic i(Lcom/yyjia/sdk/e/v;)I
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/e/v;->d:I

    return v0
.end method

.method static synthetic j(Lcom/yyjia/sdk/e/v;)I
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/e/v;->e:I

    return v0
.end method

.method static synthetic k(Lcom/yyjia/sdk/e/v;)I
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/e/v;->f:I

    return v0
.end method

.method static synthetic l(Lcom/yyjia/sdk/e/v;)I
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/e/v;->g:I

    return v0
.end method

.method static synthetic m(Lcom/yyjia/sdk/e/v;)V
    .registers 1

    invoke-direct {p0}, Lcom/yyjia/sdk/e/v;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lcom/yyjia/sdk/e/v;->c()V

    return-void
.end method

.method public a(II)V
    .registers 3

    iput p1, p0, Lcom/yyjia/sdk/e/v;->d:I

    iput p2, p0, Lcom/yyjia/sdk/e/v;->e:I

    invoke-direct {p0}, Lcom/yyjia/sdk/e/v;->b()V

    return-void
.end method
