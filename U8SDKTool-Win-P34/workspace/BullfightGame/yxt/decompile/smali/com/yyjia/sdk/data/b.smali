.class public Lcom/yyjia/sdk/data/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/yyjia/sdk/a/a/e;

.field private b:Lcom/yyjia/sdk/a/a/c;

.field private c:Lcom/yyjia/sdk/a/a/a;

.field private d:Lcom/yyjia/sdk/a/a/b;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yyjia/sdk/data/b;->a:Lcom/yyjia/sdk/a/a/e;

    iput-object v0, p0, Lcom/yyjia/sdk/data/b;->b:Lcom/yyjia/sdk/a/a/c;

    iput-object v0, p0, Lcom/yyjia/sdk/data/b;->c:Lcom/yyjia/sdk/a/a/a;

    iput-object v0, p0, Lcom/yyjia/sdk/data/b;->d:Lcom/yyjia/sdk/a/a/b;

    iput-object p1, p0, Lcom/yyjia/sdk/data/b;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/data/b;->e:Landroid/content/Context;

    return-object v0
.end method

.method public a(Lcom/yyjia/sdk/a/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/data/b;->d:Lcom/yyjia/sdk/a/a/b;

    return-void
.end method

.method public b()Lcom/yyjia/sdk/a/a/e;
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/data/b;->a:Lcom/yyjia/sdk/a/a/e;

    if-nez v0, :cond_d

    new-instance v0, Lcom/yyjia/sdk/a/a/e;

    iget-object v1, p0, Lcom/yyjia/sdk/data/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yyjia/sdk/a/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/data/b;->a:Lcom/yyjia/sdk/a/a/e;

    :cond_d
    iget-object v0, p0, Lcom/yyjia/sdk/data/b;->a:Lcom/yyjia/sdk/a/a/e;

    return-object v0
.end method

.method public c()Lcom/yyjia/sdk/a/a/c;
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/data/b;->b:Lcom/yyjia/sdk/a/a/c;

    if-nez v0, :cond_d

    new-instance v0, Lcom/yyjia/sdk/a/a/c;

    iget-object v1, p0, Lcom/yyjia/sdk/data/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yyjia/sdk/a/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/data/b;->b:Lcom/yyjia/sdk/a/a/c;

    :cond_d
    iget-object v0, p0, Lcom/yyjia/sdk/data/b;->b:Lcom/yyjia/sdk/a/a/c;

    return-object v0
.end method

.method public d()Lcom/yyjia/sdk/a/a/a;
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/data/b;->c:Lcom/yyjia/sdk/a/a/a;

    if-nez v0, :cond_d

    new-instance v0, Lcom/yyjia/sdk/a/a/a;

    iget-object v1, p0, Lcom/yyjia/sdk/data/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yyjia/sdk/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/data/b;->c:Lcom/yyjia/sdk/a/a/a;

    :cond_d
    iget-object v0, p0, Lcom/yyjia/sdk/data/b;->c:Lcom/yyjia/sdk/a/a/a;

    return-object v0
.end method

.method public e()Lcom/yyjia/sdk/a/a/b;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/data/b;->d:Lcom/yyjia/sdk/a/a/b;

    return-object v0
.end method

.method public f()Lcom/yyjia/sdk/data/c;
    .registers 3

    new-instance v0, Lcom/yyjia/sdk/data/c;

    iget-object v1, p0, Lcom/yyjia/sdk/data/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yyjia/sdk/data/c;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/yyjia/sdk/data/b;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/yyjia/sdk/data/d;->a(Landroid/content/Context;Lcom/yyjia/sdk/data/c;)V

    return-object v0
.end method
