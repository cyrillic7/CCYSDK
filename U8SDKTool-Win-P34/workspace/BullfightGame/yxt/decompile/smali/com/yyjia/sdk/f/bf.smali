.class Lcom/yyjia/sdk/f/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/at;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/at;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/bf;->a:Lcom/yyjia/sdk/f/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/bf;)Lcom/yyjia/sdk/f/at;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bf;->a:Lcom/yyjia/sdk/f/at;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    sget-object v0, Lcom/yyjia/sdk/a/a/a;->a:Ljava/lang/String;

    const-string v1, "1151"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/yyjia/sdk/f/bf;->a:Lcom/yyjia/sdk/f/at;

    invoke-virtual {v0}, Lcom/yyjia/sdk/f/at;->a()V

    new-instance v0, Lcom/yyjia/sdk/f/cf;

    iget-object v1, p0, Lcom/yyjia/sdk/f/bf;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v1}, Lcom/yyjia/sdk/f/at;->a(Lcom/yyjia/sdk/f/at;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "sinalogin"

    new-instance v3, Lcom/yyjia/sdk/f/bg;

    invoke-direct {v3, p0}, Lcom/yyjia/sdk/f/bg;-><init>(Lcom/yyjia/sdk/f/bf;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/yyjia/sdk/f/cf;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/PopupWindow$OnDismissListener;)V

    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/yyjia/sdk/f/bf;->a:Lcom/yyjia/sdk/f/at;

    invoke-static {v0}, Lcom/yyjia/sdk/f/at;->a(Lcom/yyjia/sdk/f/at;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8c37\u6b4cLogin"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_21
.end method
