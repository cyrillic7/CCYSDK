.class public Lcom/yyjia/sdk/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/yyjia/sdk/a/a/e;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yyjia/sdk/a/a/e;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yyjia/sdk/a/a/e;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, p0}, Lcom/yyjia/sdk/a/a/e;->a(Landroid/content/Context;Lcom/yyjia/sdk/a/a/e;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    const-string v0, "serviceInfo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0, p1, p0}, Lcom/yyjia/sdk/a/a/e;->a(Landroid/content/Context;Lcom/yyjia/sdk/a/a/e;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/yyjia/sdk/a/a/e;)V
    .registers 6

    invoke-static {p1}, Lcom/yyjia/sdk/a/a/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "activeTime"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/yyjia/sdk/a/a/e;->b:Ljava/lang/String;

    const-string v1, "resourceUpdateTime"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/yyjia/sdk/a/a/e;->a:Ljava/lang/String;

    const-string v1, "uid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/yyjia/sdk/a/a/e;->c:Ljava/lang/String;

    return-void
.end method
