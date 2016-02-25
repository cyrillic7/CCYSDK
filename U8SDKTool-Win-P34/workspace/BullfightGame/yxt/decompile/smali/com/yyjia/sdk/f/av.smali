.class Lcom/yyjia/sdk/f/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/at;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/at;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/av;->a:Lcom/yyjia/sdk/f/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/yyjia/sdk/f/av;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v0}, Lcom/yyjia/sdk/f/at;->l(Lcom/yyjia/sdk/f/at;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42780000

    iget-object v2, p0, Lcom/yyjia/sdk/f/av;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v2}, Lcom/yyjia/sdk/f/at;->o(Lcom/yyjia/sdk/f/at;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/yyjia/sdk/f/av;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v0}, Lcom/yyjia/sdk/f/at;->m(Lcom/yyjia/sdk/f/at;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/av;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v0}, Lcom/yyjia/sdk/f/at;->n(Lcom/yyjia/sdk/f/at;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/yyjia/sdk/f/av;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v1}, Lcom/yyjia/sdk/f/at;->b(Lcom/yyjia/sdk/f/at;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->getLocationInWindow([I)V

    aget v1, v0, v4

    iget-object v2, p0, Lcom/yyjia/sdk/f/av;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v2}, Lcom/yyjia/sdk/f/at;->b(Lcom/yyjia/sdk/f/at;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, 0x41000000

    iget-object v3, p0, Lcom/yyjia/sdk/f/av;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v3}, Lcom/yyjia/sdk/f/at;->o(Lcom/yyjia/sdk/f/at;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    aput v1, v0, v4

    iget-object v1, p0, Lcom/yyjia/sdk/f/av;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v1}, Lcom/yyjia/sdk/f/at;->p(Lcom/yyjia/sdk/f/at;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    aget v2, v0, v5

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/yyjia/sdk/f/av;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v1}, Lcom/yyjia/sdk/f/at;->p(Lcom/yyjia/sdk/f/at;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    aget v0, v0, v4

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-void
.end method
