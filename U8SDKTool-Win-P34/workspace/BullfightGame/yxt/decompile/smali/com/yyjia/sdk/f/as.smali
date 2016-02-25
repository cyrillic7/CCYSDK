.class Lcom/yyjia/sdk/f/as;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/ab;


# direct methods
.method public constructor <init>(Lcom/yyjia/sdk/f/ab;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/yyjia/sdk/f/as;->a:Lcom/yyjia/sdk/f/ab;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/f/as;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0}, Lcom/yyjia/sdk/f/ab;->f(Lcom/yyjia/sdk/f/ab;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u91cd\u65b0\u9a8c\u8bc1"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/as;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0}, Lcom/yyjia/sdk/f/ab;->f(Lcom/yyjia/sdk/f/ab;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method public onTick(J)V
    .registers 8

    iget-object v0, p0, Lcom/yyjia/sdk/f/as;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0}, Lcom/yyjia/sdk/f/ab;->f(Lcom/yyjia/sdk/f/ab;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/as;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0}, Lcom/yyjia/sdk/f/ab;->f(Lcom/yyjia/sdk/f/ab;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
