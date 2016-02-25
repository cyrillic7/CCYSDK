.class Lcom/yyjia/sdk/f/by;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yyjia/sdk/f/bu;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/bv;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/bv;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/by;->a:Lcom/yyjia/sdk/f/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/by;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bv;->b(Lcom/yyjia/sdk/f/bv;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/by;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bv;->b(Lcom/yyjia/sdk/f/bv;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/by;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bv;->g(Lcom/yyjia/sdk/f/bv;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->checkLogin()V

    return-void
.end method
