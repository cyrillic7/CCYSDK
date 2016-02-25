.class Lcom/yyjia/sdk/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yyjia/sdk/c/c;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/c/e;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/c/e;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/c/f;->a:Lcom/yyjia/sdk/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/yyjia/sdk/c/f;->a:Lcom/yyjia/sdk/c/e;

    invoke-static {v0}, Lcom/yyjia/sdk/c/e;->a(Lcom/yyjia/sdk/c/e;)Lcom/yyjia/sdk/c/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/yyjia/sdk/c/c;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method
