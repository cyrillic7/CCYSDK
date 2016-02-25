.class Lcom/yyjia/sdk/f/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/p;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/p;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/r;->a:Lcom/yyjia/sdk/f/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7

    if-eqz p2, :cond_35

    iget-object v0, p0, Lcom/yyjia/sdk/f/r;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v0}, Lcom/yyjia/sdk/f/p;->a(Lcom/yyjia/sdk/f/p;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "yyjia_sdk_checked"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/r;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v0}, Lcom/yyjia/sdk/f/p;->c(Lcom/yyjia/sdk/f/p;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/r;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v1}, Lcom/yyjia/sdk/f/p;->a(Lcom/yyjia/sdk/f/p;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "yyjia_sdk_longbluebutton"

    invoke-static {v1, v2, v3}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/r;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v0}, Lcom/yyjia/sdk/f/p;->c(Lcom/yyjia/sdk/f/p;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_34
    return-void

    :cond_35
    iget-object v0, p0, Lcom/yyjia/sdk/f/r;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v0}, Lcom/yyjia/sdk/f/p;->a(Lcom/yyjia/sdk/f/p;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "yyjia_sdk_unchecked"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/r;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v0}, Lcom/yyjia/sdk/f/p;->c(Lcom/yyjia/sdk/f/p;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/r;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v1}, Lcom/yyjia/sdk/f/p;->a(Lcom/yyjia/sdk/f/p;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "yyjia_sdk_longbluebutton_disable"

    invoke-static {v1, v2, v3}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/r;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v0}, Lcom/yyjia/sdk/f/p;->c(Lcom/yyjia/sdk/f/p;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_34
.end method
