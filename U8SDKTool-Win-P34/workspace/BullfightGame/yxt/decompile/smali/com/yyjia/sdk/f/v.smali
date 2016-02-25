.class Lcom/yyjia/sdk/f/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/p;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/p;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/v;->a:Lcom/yyjia/sdk/f/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/yyjia/sdk/f/v;->a:Lcom/yyjia/sdk/f/p;

    iget-object v1, p0, Lcom/yyjia/sdk/f/v;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v1}, Lcom/yyjia/sdk/f/p;->e(Lcom/yyjia/sdk/f/p;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yyjia/sdk/f/v;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v2}, Lcom/yyjia/sdk/f/p;->f(Lcom/yyjia/sdk/f/p;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yyjia/sdk/f/v;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v3}, Lcom/yyjia/sdk/f/p;->g(Lcom/yyjia/sdk/f/p;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/yyjia/sdk/f/p;->a(Lcom/yyjia/sdk/f/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
