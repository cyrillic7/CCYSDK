.class Lcom/yyjia/sdk/c/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/c/a;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/c/b;->a:Lcom/yyjia/sdk/c/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/c/b;->a:Lcom/yyjia/sdk/c/a;

    invoke-static {v0}, Lcom/yyjia/sdk/c/a;->a(Lcom/yyjia/sdk/c/a;)V

    return-void
.end method
