.class Lcom/yyjia/sdk/f/cm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yyjia/sdk/e/f;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/cl;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/cl;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/cm;->a:Lcom/yyjia/sdk/f/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/cm;->a:Lcom/yyjia/sdk/f/cl;

    invoke-static {v0}, Lcom/yyjia/sdk/f/cl;->a(Lcom/yyjia/sdk/f/cl;)Lcom/yyjia/sdk/f/cf;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/f/cf;->f(Lcom/yyjia/sdk/f/cf;)V

    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/f/cm;->a:Lcom/yyjia/sdk/f/cl;

    invoke-static {v0}, Lcom/yyjia/sdk/f/cl;->a(Lcom/yyjia/sdk/f/cl;)Lcom/yyjia/sdk/f/cf;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yyjia/sdk/f/cf;->a(Lcom/yyjia/sdk/f/cf;I)V

    return-void
.end method
