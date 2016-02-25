.class Lcom/yyjia/sdk/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/PayActivity;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/PayActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/e;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    iget-object v0, p0, Lcom/yyjia/sdk/e;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-static {v0}, Lcom/yyjia/sdk/PayActivity;->b(Lcom/yyjia/sdk/PayActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/yyjia/sdk/e;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-static {v0}, Lcom/yyjia/sdk/PayActivity;->c(Lcom/yyjia/sdk/PayActivity;)F

    move-result v0

    iget-object v1, p0, Lcom/yyjia/sdk/e;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-static {v1}, Lcom/yyjia/sdk/PayActivity;->d(Lcom/yyjia/sdk/PayActivity;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_56

    iget-object v0, p0, Lcom/yyjia/sdk/e;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-static {v0}, Lcom/yyjia/sdk/PayActivity;->e(Lcom/yyjia/sdk/PayActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/yyjia/sdk/e;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-static {v5}, Lcom/yyjia/sdk/PayActivity;->c(Lcom/yyjia/sdk/PayActivity;)F

    move-result v5

    iget-object v6, p0, Lcom/yyjia/sdk/e;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-static {v6}, Lcom/yyjia/sdk/PayActivity;->d(Lcom/yyjia/sdk/PayActivity;)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_55
    return-void

    :cond_56
    iget-object v0, p0, Lcom/yyjia/sdk/e;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-static {v0}, Lcom/yyjia/sdk/PayActivity;->e(Lcom/yyjia/sdk/PayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0\u5143"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_55

    :cond_62
    iget-object v0, p0, Lcom/yyjia/sdk/e;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-static {v0}, Lcom/yyjia/sdk/PayActivity;->e(Lcom/yyjia/sdk/PayActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yyjia/sdk/e;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-static {v2}, Lcom/yyjia/sdk/PayActivity;->c(Lcom/yyjia/sdk/PayActivity;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_55
.end method
