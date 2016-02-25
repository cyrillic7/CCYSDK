.class Lcom/yyjia/sdk/f/br;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yyjia/sdk/f/bu;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/bj;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/br;->a:Lcom/yyjia/sdk/f/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/f/br;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bj;->b(Lcom/yyjia/sdk/f/bj;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/yyjia/sdk/f/br;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bj;->b(Lcom/yyjia/sdk/f/bj;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/yyjia/sdk/f/br;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bj;->b(Lcom/yyjia/sdk/f/bj;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1d
    iget-object v0, p0, Lcom/yyjia/sdk/f/br;->a:Lcom/yyjia/sdk/f/bj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yyjia/sdk/f/bj;->a(Lcom/yyjia/sdk/f/bj;Landroid/widget/PopupWindow;)V

    :cond_23
    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/f/br;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bj;->k(Lcom/yyjia/sdk/f/bj;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/yyjia/sdk/f/br;->a:Lcom/yyjia/sdk/f/bj;

    iget-object v1, p0, Lcom/yyjia/sdk/f/br;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v1}, Lcom/yyjia/sdk/f/bj;->l(Lcom/yyjia/sdk/f/bj;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yyjia/sdk/f/bj;->c(Lcom/yyjia/sdk/f/bj;Landroid/view/View;)V

    :cond_13
    iget-object v0, p0, Lcom/yyjia/sdk/f/br;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bj;->b(Lcom/yyjia/sdk/f/bj;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/yyjia/sdk/f/br;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bj;->b(Lcom/yyjia/sdk/f/bj;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/yyjia/sdk/f/br;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bj;->b(Lcom/yyjia/sdk/f/bj;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_30
    iget-object v0, p0, Lcom/yyjia/sdk/f/br;->a:Lcom/yyjia/sdk/f/bj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yyjia/sdk/f/bj;->a(Lcom/yyjia/sdk/f/bj;Landroid/widget/PopupWindow;)V

    :cond_36
    iget-object v0, p0, Lcom/yyjia/sdk/f/br;->a:Lcom/yyjia/sdk/f/bj;

    iget-object v1, p0, Lcom/yyjia/sdk/f/br;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v1}, Lcom/yyjia/sdk/f/bj;->k(Lcom/yyjia/sdk/f/bj;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yyjia/sdk/f/bj;->b(Lcom/yyjia/sdk/f/bj;Landroid/view/View;)V

    return-void
.end method
