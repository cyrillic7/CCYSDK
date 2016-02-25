.class Lcom/yyjia/sdk/f/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/p;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/p;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/t;->a:Lcom/yyjia/sdk/f/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/f/t;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v0}, Lcom/yyjia/sdk/f/p;->d(Lcom/yyjia/sdk/f/p;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->checkLogin()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/t;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v0}, Lcom/yyjia/sdk/f/p;->b(Lcom/yyjia/sdk/f/p;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
