.class public Lcom/yyjia/sdk/data/d;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/yyjia/sdk/e/o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/yyjia/sdk/data/d;->a:Lcom/yyjia/sdk/e/o;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/yyjia/sdk/e/o;
    .registers 3

    sget-object v0, Lcom/yyjia/sdk/data/d;->a:Lcom/yyjia/sdk/e/o;

    if-nez v0, :cond_d

    new-instance v0, Lcom/yyjia/sdk/e/o;

    const-string v1, "propertiesInfo"

    invoke-direct {v0, p0, v1}, Lcom/yyjia/sdk/e/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/yyjia/sdk/data/d;->a:Lcom/yyjia/sdk/e/o;

    :cond_d
    sget-object v0, Lcom/yyjia/sdk/data/d;->a:Lcom/yyjia/sdk/e/o;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yyjia/sdk/data/c;)V
    .registers 5

    invoke-static {p0}, Lcom/yyjia/sdk/data/d;->a(Landroid/content/Context;)Lcom/yyjia/sdk/e/o;

    move-result-object v0

    sput-object v0, Lcom/yyjia/sdk/data/d;->a:Lcom/yyjia/sdk/e/o;

    sget-object v0, Lcom/yyjia/sdk/data/d;->a:Lcom/yyjia/sdk/e/o;

    const-string v1, "accountType"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/e/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yyjia/sdk/data/c;->a:Ljava/lang/String;

    sget-object v0, Lcom/yyjia/sdk/data/d;->a:Lcom/yyjia/sdk/e/o;

    const-string v1, "isChecked"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/e/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yyjia/sdk/data/c;->b:Ljava/lang/String;

    sget-object v0, Lcom/yyjia/sdk/data/d;->a:Lcom/yyjia/sdk/e/o;

    const-string v1, "sourceid"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/e/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yyjia/sdk/data/c;->c:Ljava/lang/String;

    sget-object v0, Lcom/yyjia/sdk/data/d;->a:Lcom/yyjia/sdk/e/o;

    const-string v1, "stauts"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/e/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yyjia/sdk/data/c;->d:Ljava/lang/String;

    sget-object v0, Lcom/yyjia/sdk/data/d;->a:Lcom/yyjia/sdk/e/o;

    const-string v1, "username"

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/e/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yyjia/sdk/data/c;->f:Ljava/lang/String;

    sget-object v0, Lcom/yyjia/sdk/data/d;->a:Lcom/yyjia/sdk/e/o;

    const-string v1, "uuid"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/e/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yyjia/sdk/data/c;->g:Ljava/lang/String;

    sget-object v0, Lcom/yyjia/sdk/data/d;->a:Lcom/yyjia/sdk/e/o;

    const-string v1, "accountBound"

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/e/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yyjia/sdk/data/c;->h:Ljava/lang/String;

    sget-object v0, Lcom/yyjia/sdk/data/d;->a:Lcom/yyjia/sdk/e/o;

    const-string v1, "sign"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/e/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yyjia/sdk/data/c;->i:Ljava/lang/String;

    sget-object v0, Lcom/yyjia/sdk/data/d;->a:Lcom/yyjia/sdk/e/o;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/e/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yyjia/sdk/data/c;->j:Ljava/lang/String;

    return-void
.end method
