.class Lcom/yyjia/sdk/f/bo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/bn;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/bn;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/bo;->a:Lcom/yyjia/sdk/f/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bo;->a:Lcom/yyjia/sdk/f/bn;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bn;->a(Lcom/yyjia/sdk/f/bn;)Lcom/yyjia/sdk/f/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yyjia/sdk/f/bj;->a()V

    return-void
.end method
