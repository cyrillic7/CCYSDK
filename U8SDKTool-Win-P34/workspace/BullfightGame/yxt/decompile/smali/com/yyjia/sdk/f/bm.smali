.class Lcom/yyjia/sdk/f/bm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/bj;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/bm;->a:Lcom/yyjia/sdk/f/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/yyjia/sdk/f/bm;->a:Lcom/yyjia/sdk/f/bj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yyjia/sdk/f/bj;->a(Lcom/yyjia/sdk/f/bj;I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bm;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bj;->e(Lcom/yyjia/sdk/f/bj;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/yyjia/sdk/f/bm;->a:Lcom/yyjia/sdk/f/bj;

    iget-object v1, p0, Lcom/yyjia/sdk/f/bm;->a:Lcom/yyjia/sdk/f/bj;

    invoke-virtual {v1}, Lcom/yyjia/sdk/f/bj;->c()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yyjia/sdk/f/bj;->a(Lcom/yyjia/sdk/f/bj;Landroid/view/View;)V

    :cond_19
    iget-object v0, p0, Lcom/yyjia/sdk/f/bm;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bj;->b(Lcom/yyjia/sdk/f/bj;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bm;->a:Lcom/yyjia/sdk/f/bj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yyjia/sdk/f/bj;->a(Lcom/yyjia/sdk/f/bj;Landroid/widget/PopupWindow;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bm;->a:Lcom/yyjia/sdk/f/bj;

    iget-object v1, p0, Lcom/yyjia/sdk/f/bm;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v1}, Lcom/yyjia/sdk/f/bj;->e(Lcom/yyjia/sdk/f/bj;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yyjia/sdk/f/bj;->b(Lcom/yyjia/sdk/f/bj;Landroid/view/View;)V

    return-void
.end method
