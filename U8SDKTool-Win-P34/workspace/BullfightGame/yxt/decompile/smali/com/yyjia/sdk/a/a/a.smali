.class public Lcom/yyjia/sdk/a/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# instance fields
.field public c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "CH"

    const-string v1, "CH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    const-string v0, "1151"

    :goto_d
    sput-object v0, Lcom/yyjia/sdk/a/a/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/yyjia/sdk/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yyjia/sdk/a/a/a;->b:Ljava/lang/String;

    return-void

    :cond_16
    const-string v0, "1254"

    goto :goto_d
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/yyjia/sdk/a/a/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/yyjia/sdk/a/a/a;->c:Ljava/lang/String;

    const-string v0, "31"

    iput-object v0, p0, Lcom/yyjia/sdk/a/a/a;->d:Ljava/lang/String;

    sget-object v0, Lcom/yyjia/sdk/a/a/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/yyjia/sdk/a/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method private static e()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    sget-object v0, Lcom/yyjia/sdk/a/a/a;->a:Ljava/lang/String;

    const-string v1, "1151"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "3.8.2"

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "CH"

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "1.6.0"

    goto :goto_e

    :cond_1c
    const-string v0, "CH"

    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "1.2.0"

    goto :goto_e

    :cond_29
    const-string v0, "1.2.0"

    goto :goto_e
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/a/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Lcom/yyjia/sdk/a/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/a/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/a/a/a;->e:Ljava/lang/String;

    if-nez v0, :cond_8

    sget-object v0, Lcom/yyjia/sdk/a/a/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/yyjia/sdk/a/a/a;->e:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lcom/yyjia/sdk/a/a/a;->e:Ljava/lang/String;

    return-object v0
.end method
