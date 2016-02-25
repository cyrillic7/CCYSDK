.class public Lcom/yyjia/sdk/e/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yyjia/sdk/e/o;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/yyjia/sdk/e/o;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yyjia/sdk/e/o;->b:Ljava/lang/String;

    return-void
.end method

.method private a()Landroid/content/SharedPreferences;
    .registers 4

    iget-object v0, p0, Lcom/yyjia/sdk/e/o;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/yyjia/sdk/e/o;->b:Ljava/lang/String;

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/yyjia/sdk/e/o;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/yyjia/sdk/e/o;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
