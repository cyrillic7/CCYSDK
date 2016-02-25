.class Lcom/yyjia/sdk/f/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/at;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/at;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/bb;->a:Lcom/yyjia/sdk/f/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/yyjia/sdk/f/bb;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v0}, Lcom/yyjia/sdk/f/at;->f(Lcom/yyjia/sdk/f/at;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    new-instance v0, Lcom/yyjia/sdk/f/bv;

    iget-object v1, p0, Lcom/yyjia/sdk/f/bb;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v1}, Lcom/yyjia/sdk/f/at;->a(Lcom/yyjia/sdk/f/at;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yyjia/sdk/f/bb;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v2}, Lcom/yyjia/sdk/f/at;->c(Lcom/yyjia/sdk/f/at;)Lcom/yyjia/sdk/listener/LoginListener;

    move-result-object v2

    iget-object v3, p0, Lcom/yyjia/sdk/f/bb;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v3}, Lcom/yyjia/sdk/f/at;->j(Lcom/yyjia/sdk/f/at;)Lcom/yyjia/sdk/data/a;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yyjia/sdk/f/bv;-><init>(Landroid/content/Context;Lcom/yyjia/sdk/listener/LoginListener;Lcom/yyjia/sdk/data/a;)V

    return-void
.end method
