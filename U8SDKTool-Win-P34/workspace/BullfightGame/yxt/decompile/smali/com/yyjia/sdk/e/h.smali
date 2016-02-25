.class Lcom/yyjia/sdk/e/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/e/g;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/e/g;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/e/h;->a:Lcom/yyjia/sdk/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/yyjia/sdk/e/h;->a:Lcom/yyjia/sdk/e/g;

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yyjia/sdk/e/h;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v2}, Lcom/yyjia/sdk/e/g;->a(Lcom/yyjia/sdk/e/g;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/yyjia/sdk/e/g;->a(Lcom/yyjia/sdk/e/g;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/h;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->b(Lcom/yyjia/sdk/e/g;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/e/h;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v1}, Lcom/yyjia/sdk/e/g;->c(Lcom/yyjia/sdk/e/g;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method
