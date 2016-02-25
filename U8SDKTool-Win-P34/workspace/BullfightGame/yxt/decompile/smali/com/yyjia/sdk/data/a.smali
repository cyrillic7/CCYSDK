.class public Lcom/yyjia/sdk/data/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/yyjia/sdk/data/a;->a:Ljava/lang/String;

    iput v1, p0, Lcom/yyjia/sdk/data/a;->b:I

    iput v1, p0, Lcom/yyjia/sdk/data/a;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/yyjia/sdk/data/a;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yyjia/sdk/data/a;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yyjia/sdk/data/a;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yyjia/sdk/data/a;->g:Ljava/lang/String;

    iput v1, p0, Lcom/yyjia/sdk/data/a;->h:I

    iput-object p1, p0, Lcom/yyjia/sdk/data/a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/yyjia/sdk/data/a;->b:I

    iput p3, p0, Lcom/yyjia/sdk/data/a;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/data/a;->b:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/yyjia/sdk/data/a;->h:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/data/a;->d:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/data/a;->c:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/data/a;->e:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/data/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/data/a;->f:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/data/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/data/a;->g:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/data/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/data/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/data/a;->h:I

    return v0
.end method
