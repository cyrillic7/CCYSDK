.class Lcom/yyjia/sdk/f/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/at;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/at;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/ay;->a:Lcom/yyjia/sdk/f/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yyjia/sdk/f/ay;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v1}, Lcom/yyjia/sdk/f/at;->a(Lcom/yyjia/sdk/f/at;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/ay;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v1, v0}, Lcom/yyjia/sdk/f/at;->a(Lcom/yyjia/sdk/f/at;Landroid/widget/TextView;)V

    return-void
.end method
