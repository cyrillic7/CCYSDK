.class Lcom/yyjia/sdk/f/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/at;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/at;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/ba;->a:Lcom/yyjia/sdk/f/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/yyjia/sdk/f/ba;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v0}, Lcom/yyjia/sdk/f/at;->f(Lcom/yyjia/sdk/f/at;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    new-instance v0, Lcom/yyjia/sdk/f/ab;

    iget-object v1, p0, Lcom/yyjia/sdk/f/ba;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v1}, Lcom/yyjia/sdk/f/at;->a(Lcom/yyjia/sdk/f/at;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yyjia/sdk/f/ab;-><init>(Landroid/content/Context;)V

    return-void
.end method
