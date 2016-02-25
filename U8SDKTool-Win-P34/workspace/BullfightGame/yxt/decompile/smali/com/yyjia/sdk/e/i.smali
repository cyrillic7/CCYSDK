.class Lcom/yyjia/sdk/e/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/e/g;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/e/g;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    const/high16 v2, 0x40a00000

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/yyjia/sdk/e/g;->a(Lcom/yyjia/sdk/e/g;F)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/yyjia/sdk/e/g;->b(Lcom/yyjia/sdk/e/g;F)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/yyjia/sdk/e/g;->c(Lcom/yyjia/sdk/e/g;F)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0, v5}, Lcom/yyjia/sdk/e/g;->a(Lcom/yyjia/sdk/e/g;Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0, v6}, Lcom/yyjia/sdk/e/g;->a(Lcom/yyjia/sdk/e/g;I)V

    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    return v0

    :cond_31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_47

    iget-object v0, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    iget-object v1, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v1}, Lcom/yyjia/sdk/e/g;->d(Lcom/yyjia/sdk/e/g;)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/e/g;->a(Lcom/yyjia/sdk/e/g;FF)V

    goto :goto_2f

    :cond_47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_2f

    iget-object v0, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->e(Lcom/yyjia/sdk/e/g;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_77

    iget-object v0, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->f(Lcom/yyjia/sdk/e/g;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2f

    :cond_77
    iget-object v0, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0, v5}, Lcom/yyjia/sdk/e/g;->a(Lcom/yyjia/sdk/e/g;Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v2}, Lcom/yyjia/sdk/e/g;->h(Lcom/yyjia/sdk/e/g;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v2}, Lcom/yyjia/sdk/e/g;->h(Lcom/yyjia/sdk/e/g;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->h(Lcom/yyjia/sdk/e/g;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v1}, Lcom/yyjia/sdk/e/g;->a(Lcom/yyjia/sdk/e/g;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "yyjia_sdk_toolbaricon"

    invoke-static {v1, v2, v3}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0}, Lcom/yyjia/sdk/e/g;->b(Lcom/yyjia/sdk/e/g;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v1}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v2}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v3}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v4}, Lcom/yyjia/sdk/e/g;->g(Lcom/yyjia/sdk/e/g;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0, v6}, Lcom/yyjia/sdk/e/g;->a(Lcom/yyjia/sdk/e/g;I)V

    iget-object v0, p0, Lcom/yyjia/sdk/e/i;->a:Lcom/yyjia/sdk/e/g;

    invoke-static {v0, v5}, Lcom/yyjia/sdk/e/g;->a(Lcom/yyjia/sdk/e/g;Z)V

    goto/16 :goto_2f
.end method
