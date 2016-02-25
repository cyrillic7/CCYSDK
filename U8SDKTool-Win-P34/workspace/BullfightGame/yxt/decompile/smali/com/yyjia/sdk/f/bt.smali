.class Lcom/yyjia/sdk/f/bt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yyjia/sdk/f/n;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/bj;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/bt;->a:Lcom/yyjia/sdk/f/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/f/bt;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bj;->c(Lcom/yyjia/sdk/f/bj;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/center/GMcenter;->setIsLogin(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bt;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bj;->b(Lcom/yyjia/sdk/f/bj;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/bt;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bj;->c(Lcom/yyjia/sdk/f/bj;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->logout()V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
