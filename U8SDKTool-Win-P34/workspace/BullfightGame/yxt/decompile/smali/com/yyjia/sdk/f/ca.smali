.class Lcom/yyjia/sdk/f/ca;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/bv;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/bv;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/ca;->a:Lcom/yyjia/sdk/f/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/yyjia/sdk/f/ca;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bv;->a(Lcom/yyjia/sdk/f/bv;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4e91\u9704\u5802\u670d\u52a1\u6761\u6b3e"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
