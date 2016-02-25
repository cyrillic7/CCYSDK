.class Lcom/yyjia/sdk/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/g;->a:Lcom/yyjia/sdk/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/g;->a:Lcom/yyjia/sdk/f;

    invoke-static {v0}, Lcom/yyjia/sdk/f;->a(Lcom/yyjia/sdk/f;)Lcom/yyjia/sdk/PayActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/PayActivity;->k(Lcom/yyjia/sdk/PayActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/yyjia/sdk/g;->a:Lcom/yyjia/sdk/f;

    invoke-static {v0}, Lcom/yyjia/sdk/f;->a(Lcom/yyjia/sdk/f;)Lcom/yyjia/sdk/PayActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/PayActivity;->k(Lcom/yyjia/sdk/PayActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/yyjia/sdk/g;->a:Lcom/yyjia/sdk/f;

    invoke-static {v1}, Lcom/yyjia/sdk/f;->a(Lcom/yyjia/sdk/f;)Lcom/yyjia/sdk/PayActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yyjia/sdk/PayActivity;->a(Lcom/yyjia/sdk/PayActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2e
    return-void
.end method
