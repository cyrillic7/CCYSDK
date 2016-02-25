.class Lcom/yyjia/sdk/f/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yyjia/sdk/f/bu;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/ab;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/ak;->a:Lcom/yyjia/sdk/f/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/ak;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0}, Lcom/yyjia/sdk/f/ab;->d(Lcom/yyjia/sdk/f/ab;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/ak;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0}, Lcom/yyjia/sdk/f/ab;->d(Lcom/yyjia/sdk/f/ab;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/ak;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0}, Lcom/yyjia/sdk/f/ab;->e(Lcom/yyjia/sdk/f/ab;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->checkLogin()V

    return-void
.end method
