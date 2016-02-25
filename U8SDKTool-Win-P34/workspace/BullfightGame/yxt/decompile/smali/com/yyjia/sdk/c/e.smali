.class public Lcom/yyjia/sdk/c/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# instance fields
.field private b:Lcom/yyjia/sdk/b/d;

.field private c:Lcom/yyjia/sdk/c/d;

.field private d:Landroid/content/Context;

.field private e:Lcom/yyjia/sdk/c/c;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/yyjia/sdk/c/e;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/yyjia/sdk/c/d;Landroid/content/Context;Lcom/yyjia/sdk/c/c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yyjia/sdk/c/e;->f:Z

    iput-object p1, p0, Lcom/yyjia/sdk/c/e;->c:Lcom/yyjia/sdk/c/d;

    iput-object p2, p0, Lcom/yyjia/sdk/c/e;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/yyjia/sdk/c/e;->e:Lcom/yyjia/sdk/c/c;

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/c/e;)Lcom/yyjia/sdk/c/c;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/c/e;->e:Lcom/yyjia/sdk/c/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/yyjia/sdk/c/e;->b:Lcom/yyjia/sdk/b/d;

    invoke-virtual {v0}, Lcom/yyjia/sdk/b/d;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/c/e;->b:Lcom/yyjia/sdk/b/d;

    invoke-virtual {v1}, Lcom/yyjia/sdk/b/d;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yyjia/sdk/c/a;

    iget-object v3, p0, Lcom/yyjia/sdk/c/e;->d:Landroid/content/Context;

    new-instance v4, Lcom/yyjia/sdk/c/f;

    invoke-direct {v4, p0}, Lcom/yyjia/sdk/c/f;-><init>(Lcom/yyjia/sdk/c/e;)V

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/yyjia/sdk/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/yyjia/sdk/c/c;)V

    invoke-virtual {v2}, Lcom/yyjia/sdk/c/a;->a()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method

.method public a(Lcom/yyjia/sdk/b/d;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/c/e;->b:Lcom/yyjia/sdk/b/d;

    return-void
.end method
