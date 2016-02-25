.class public abstract Lcom/yyjia/sdk/b/d;
.super Ljava/lang/Object;


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/b/d;->c:Ljava/lang/String;

    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/b/d;->c:Ljava/lang/String;

    return-object v0
.end method
