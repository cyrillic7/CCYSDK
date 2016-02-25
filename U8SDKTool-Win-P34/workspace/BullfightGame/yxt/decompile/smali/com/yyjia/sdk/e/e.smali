.class Lcom/yyjia/sdk/e/e;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/e/b;


# direct methods
.method public constructor <init>(Lcom/yyjia/sdk/e/b;)V
    .registers 3

    iput-object p1, p0, Lcom/yyjia/sdk/e/e;->a:Lcom/yyjia/sdk/e/b;

    iget-object v0, p1, Lcom/yyjia/sdk/e/b;->a:Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/e/e;->a:Lcom/yyjia/sdk/e/b;

    invoke-virtual {v0}, Lcom/yyjia/sdk/e/b;->a()V

    return-void
.end method
