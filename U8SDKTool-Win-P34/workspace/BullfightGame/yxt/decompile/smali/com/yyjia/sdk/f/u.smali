.class Lcom/yyjia/sdk/f/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/p;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/p;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/u;->a:Lcom/yyjia/sdk/f/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1b

    check-cast p1, Landroid/widget/Button;

    iget-object v0, p0, Lcom/yyjia/sdk/f/u;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v0}, Lcom/yyjia/sdk/f/p;->a(Lcom/yyjia/sdk/f/p;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "yyjia_sdk_inputbox2_click"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_19
    :goto_19
    const/4 v0, 0x0

    return v0

    :cond_1b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    check-cast p1, Landroid/widget/Button;

    iget-object v0, p0, Lcom/yyjia/sdk/f/u;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v0}, Lcom/yyjia/sdk/f/p;->a(Lcom/yyjia/sdk/f/p;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "yyjia_sdk_inputbox2"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_19
.end method
