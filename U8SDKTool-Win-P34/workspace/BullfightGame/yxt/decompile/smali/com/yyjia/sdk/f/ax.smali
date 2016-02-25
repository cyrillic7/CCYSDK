.class Lcom/yyjia/sdk/f/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/at;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/at;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/ax;->a:Lcom/yyjia/sdk/f/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/yyjia/sdk/f/ax;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v0}, Lcom/yyjia/sdk/f/at;->b(Lcom/yyjia/sdk/f/at;)Landroid/widget/EditText;

    move-result-object v0

    if-eq p1, v0, :cond_13

    iget-object v0, p0, Lcom/yyjia/sdk/f/ax;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v0}, Lcom/yyjia/sdk/f/at;->h(Lcom/yyjia/sdk/f/at;)V

    :cond_13
    const/4 v0, 0x0

    return v0
.end method
