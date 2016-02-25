.class Lcom/yyjia/sdk/f/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yyjia/sdk/f/bu;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/b;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/b;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/e;->a:Lcom/yyjia/sdk/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/e;->a:Lcom/yyjia/sdk/f/b;

    invoke-static {v0}, Lcom/yyjia/sdk/f/b;->b(Lcom/yyjia/sdk/f/b;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/e;->a:Lcom/yyjia/sdk/f/b;

    invoke-static {v0}, Lcom/yyjia/sdk/f/b;->c(Lcom/yyjia/sdk/f/b;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    return-void
.end method
