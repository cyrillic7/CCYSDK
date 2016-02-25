.class Lcom/yyjia/sdk/f/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/k;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/k;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/l;->a:Lcom/yyjia/sdk/f/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/f/l;->a:Lcom/yyjia/sdk/f/k;

    invoke-static {v0}, Lcom/yyjia/sdk/f/k;->a(Lcom/yyjia/sdk/f/k;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/l;->a:Lcom/yyjia/sdk/f/k;

    invoke-static {v0}, Lcom/yyjia/sdk/f/k;->b(Lcom/yyjia/sdk/f/k;)Lcom/yyjia/sdk/f/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/yyjia/sdk/f/n;->a()V

    return-void
.end method
