.class Lcom/yyjia/sdk/f/bl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yyjia/sdk/f/bu;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/bj;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/bl;->a:Lcom/yyjia/sdk/f/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/f/bl;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bj;->d(Lcom/yyjia/sdk/f/bj;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/yyjia/sdk/f/bl;->a:Lcom/yyjia/sdk/f/bj;

    invoke-virtual {v0}, Lcom/yyjia/sdk/f/bj;->a()V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/yyjia/sdk/f/bl;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bj;->b(Lcom/yyjia/sdk/f/bj;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_e
.end method

.method public b()V
    .registers 1

    return-void
.end method
