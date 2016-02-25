.class public Lcom/yyjia/sdk/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/yyjia/sdk/a/a/c;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yyjia/sdk/a/a/c;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yyjia/sdk/a/a/c;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yyjia/sdk/a/a/c;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yyjia/sdk/a/a/c;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/yyjia/sdk/a/a/c;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/yyjia/sdk/a/a/c;->j:Ljava/lang/String;

    iput v1, p0, Lcom/yyjia/sdk/a/a/c;->n:I

    iput v1, p0, Lcom/yyjia/sdk/a/a/c;->o:I

    const-string v0, ""

    iput-object v0, p0, Lcom/yyjia/sdk/a/a/c;->p:Ljava/lang/String;

    iput-object p1, p0, Lcom/yyjia/sdk/a/a/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/yyjia/sdk/a/a/c;->l()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    :goto_c
    return-object v0

    :cond_d
    const-string v0, ""

    goto :goto_c
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.serialno"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_26

    :goto_23
    if-eqz v0, :cond_29

    :goto_25
    return-object v0

    :catch_26
    move-exception v0

    move-object v0, v1

    goto :goto_23

    :cond_29
    const-string v0, ""

    goto :goto_25
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_11

    const-string v0, ""

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v0

    goto :goto_10

    :catch_16
    move-exception v0

    const-string v0, ""

    goto :goto_10
.end method

.method private l()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yyjia/sdk/e/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/a/a/c;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yyjia/sdk/e/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yyjia/sdk/a/a/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/a/a/c;->i(Ljava/lang/String;)V

    :goto_1a
    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yyjia/sdk/e/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/a/a/c;->j(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/a/a/c;->f(Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/a/a/c;->k(Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/a/a/c;->l(Ljava/lang/String;)V

    const-string v0, "86"

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/a/a/c;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyjia/sdk/a/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/a/a/c;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/a/a/c;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yyjia/sdk/a/a/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/a/a/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yyjia/sdk/a/a/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/a/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yyjia/sdk/a/a/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/a/a/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yyjia/sdk/a/a/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/a/a/c;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyjia/sdk/e/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/a/a/c;->e(Ljava/lang/String;)V

    :goto_6e
    return-void

    :cond_6f
    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/a/a/c;->i(Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_73

    goto :goto_1a

    :catch_73
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6e
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/a/a/c;->n:I

    return v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/yyjia/sdk/a/a/c;->n:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/yyjia/sdk/a/a/c;->o:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    goto :goto_19
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/a/a/c;->b:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/a/a/c;->o:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/a/a/c;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/a/a/c;->d:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/a/a/c;->e:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/a/a/c;->p:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/a/a/c;->f:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->i:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "000000000000000"

    iput-object v0, p0, Lcom/yyjia/sdk/a/a/c;->i:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/a/a/c;->g:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->j:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "000000000000000"

    iput-object v0, p0, Lcom/yyjia/sdk/a/a/c;->j:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/a/a/c;->h:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/a/a/c;->i:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/a/a/c;->j:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/a/a/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/a/a/c;->k:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/a/a/c;->l:Ljava/lang/String;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/a/a/c;->m:Ljava/lang/String;

    return-void
.end method
