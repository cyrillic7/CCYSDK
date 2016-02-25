.class Lcom/yyjia/sdk/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/PayActivity;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/PayActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f;)Lcom/yyjia/sdk/PayActivity;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f;->a:Lcom/yyjia/sdk/PayActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13

    iget-object v0, p0, Lcom/yyjia/sdk/f;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-static {v0}, Lcom/yyjia/sdk/PayActivity;->b(Lcom/yyjia/sdk/PayActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v3, 0x1

    :goto_d
    new-instance v0, Lcom/yyjia/sdk/f/cf;

    iget-object v1, p0, Lcom/yyjia/sdk/f;->a:Lcom/yyjia/sdk/PayActivity;

    const-string v2, "pay"

    iget-object v4, p0, Lcom/yyjia/sdk/f;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-static {v4}, Lcom/yyjia/sdk/PayActivity;->c(Lcom/yyjia/sdk/PayActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/yyjia/sdk/f;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-static {v5}, Lcom/yyjia/sdk/PayActivity;->f(Lcom/yyjia/sdk/PayActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yyjia/sdk/f;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-static {v6}, Lcom/yyjia/sdk/PayActivity;->g(Lcom/yyjia/sdk/PayActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/yyjia/sdk/f;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-static {v7}, Lcom/yyjia/sdk/PayActivity;->h(Lcom/yyjia/sdk/PayActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/yyjia/sdk/f;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-static {v8}, Lcom/yyjia/sdk/PayActivity;->i(Lcom/yyjia/sdk/PayActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/yyjia/sdk/f;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-static {v9}, Lcom/yyjia/sdk/PayActivity;->j(Lcom/yyjia/sdk/PayActivity;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/yyjia/sdk/g;

    invoke-direct {v10, p0}, Lcom/yyjia/sdk/g;-><init>(Lcom/yyjia/sdk/f;)V

    invoke-direct/range {v0 .. v10}, Lcom/yyjia/sdk/f/cf;-><init>(Landroid/content/Context;Ljava/lang/String;IFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void

    :cond_40
    const/4 v3, 0x0

    goto :goto_d
.end method
