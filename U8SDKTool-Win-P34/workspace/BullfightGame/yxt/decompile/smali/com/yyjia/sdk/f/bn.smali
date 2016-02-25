.class Lcom/yyjia/sdk/f/bn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/bj;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/bn;->a:Lcom/yyjia/sdk/f/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/bn;)Lcom/yyjia/sdk/f/bj;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bn;->a:Lcom/yyjia/sdk/f/bj;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/yyjia/sdk/f/bn;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bj;->b(Lcom/yyjia/sdk/f/bj;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    new-instance v0, Lcom/yyjia/sdk/f/b;

    iget-object v1, p0, Lcom/yyjia/sdk/f/bn;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v1}, Lcom/yyjia/sdk/f/bj;->a(Lcom/yyjia/sdk/f/bj;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yyjia/sdk/f/bn;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v2}, Lcom/yyjia/sdk/f/bj;->f(Lcom/yyjia/sdk/f/bj;)Lcom/yyjia/sdk/f/z;

    move-result-object v2

    new-instance v3, Lcom/yyjia/sdk/f/bo;

    invoke-direct {v3, p0}, Lcom/yyjia/sdk/f/bo;-><init>(Lcom/yyjia/sdk/f/bn;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/yyjia/sdk/f/b;-><init>(Landroid/content/Context;Lcom/yyjia/sdk/f/z;Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method
