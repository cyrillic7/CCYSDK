.class Lcom/yyjia/sdk/e/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/e/g;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/e/g;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->i(Lcom/yyjia/sdk/e/g;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x43f00000

    iget-object v2, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v2}, Lcom/yyjia/sdk/e/g;->j(Lcom/yyjia/sdk/e/g;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42c80000

    iget-object v2, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v2}, Lcom/yyjia/sdk/e/g;->j(Lcom/yyjia/sdk/e/g;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->k(Lcom/yyjia/sdk/e/g;)I

    move-result v0

    packed-switch v0, :pswitch_data_d6

    :cond_35
    :goto_35
    return-void

    :pswitch_36
    iget-object v0, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->b(Lcom/yyjia/sdk/e/g;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v2}, Lcom/yyjia/sdk/e/g;->l(Lcom/yyjia/sdk/e/g;)Lcom/yyjia/sdk/center/a;

    move-result-object v2

    iget-object v3, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v3}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v4}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-static {v0, v1}, Lcom/yyjia/sdk/e/g;->a(Lcom/yyjia/sdk/e/g;Landroid/widget/PopupWindow;)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->b(Lcom/yyjia/sdk/e/g;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v1}, Lcom/yyjia/sdk/e/g;->c(Lcom/yyjia/sdk/e/g;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v2}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v3}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yyjia/sdk/e/g;->b(Lcom/yyjia/sdk/e/g;I)V

    goto :goto_35

    :pswitch_85
    iget-object v0, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->b(Lcom/yyjia/sdk/e/g;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v2}, Lcom/yyjia/sdk/e/g;->m(Lcom/yyjia/sdk/e/g;)Lcom/yyjia/sdk/center/o;

    move-result-object v2

    iget-object v3, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v3}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v4}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-static {v0, v1}, Lcom/yyjia/sdk/e/g;->a(Lcom/yyjia/sdk/e/g;Landroid/widget/PopupWindow;)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->b(Lcom/yyjia/sdk/e/g;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v1}, Lcom/yyjia/sdk/e/g;->c(Lcom/yyjia/sdk/e/g;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v2}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v3}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/j;->a:Lcom/yyjia/sdk/e/g;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/yyjia/sdk/e/g;->b(Lcom/yyjia/sdk/e/g;I)V

    goto/16 :goto_35

    nop

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_36
        :pswitch_85
    .end packed-switch
.end method
