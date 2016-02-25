.class Lcom/yyjia/sdk/e/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yyjia/sdk/listener/ActionBarlistener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/e/g;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/e/g;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/e/k;->a:Lcom/yyjia/sdk/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeBar()V
    .registers 6

    const/high16 v2, 0x42a00000

    iget-object v0, p0, Lcom/yyjia/sdk/e/k;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/e/k;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v1}, Lcom/yyjia/sdk/e/g;->j(Lcom/yyjia/sdk/e/g;)F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/yyjia/sdk/e/k;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/e/k;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v1}, Lcom/yyjia/sdk/e/g;->j(Lcom/yyjia/sdk/e/g;)F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/yyjia/sdk/e/k;->a:Lcom/yyjia/sdk/e/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yyjia/sdk/e/g;->b(Lcom/yyjia/sdk/e/g;I)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/k;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->h(Lcom/yyjia/sdk/e/g;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/e/k;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v1}, Lcom/yyjia/sdk/e/g;->a(Lcom/yyjia/sdk/e/g;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "yyjia_sdk_toolbaricon_iconleft"

    invoke-static {v1, v2, v3}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/k;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->b(Lcom/yyjia/sdk/e/g;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/yyjia/sdk/e/k;->a:Lcom/yyjia/sdk/e/g;

    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/yyjia/sdk/e/k;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v2}, Lcom/yyjia/sdk/e/g;->h(Lcom/yyjia/sdk/e/g;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/yyjia/sdk/e/k;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v3}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/yyjia/sdk/e/k;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v4}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-static {v0, v1}, Lcom/yyjia/sdk/e/g;->a(Lcom/yyjia/sdk/e/g;Landroid/widget/PopupWindow;)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/k;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->b(Lcom/yyjia/sdk/e/g;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/e/k;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v1}, Lcom/yyjia/sdk/e/g;->c(Lcom/yyjia/sdk/e/g;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/yyjia/sdk/e/k;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v2}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/yyjia/sdk/e/k;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v3}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/k;->a:Lcom/yyjia/sdk/e/g;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/yyjia/sdk/e/g;->a(Lcom/yyjia/sdk/e/g;I)V

    return-void
.end method
