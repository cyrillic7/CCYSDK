.class Lcom/tencent/android/tpush/m;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/tencent/android/tpush/XGPushActivity;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/XGPushActivity;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 283
    iput-object p1, p0, Lcom/tencent/android/tpush/m;->b:Lcom/tencent/android/tpush/XGPushActivity;

    iput-object p2, p0, Lcom/tencent/android/tpush/m;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 286
    iget-object v0, p0, Lcom/tencent/android/tpush/m;->b:Lcom/tencent/android/tpush/XGPushActivity;

    iget-object v1, p0, Lcom/tencent/android/tpush/m;->a:Landroid/content/Intent;

    # invokes: Lcom/tencent/android/tpush/XGPushActivity;->broadcastToTPushService(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/tencent/android/tpush/XGPushActivity;->access$000(Lcom/tencent/android/tpush/XGPushActivity;Landroid/content/Intent;)V

    .line 287
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 288
    iget-object v0, p0, Lcom/tencent/android/tpush/m;->b:Lcom/tencent/android/tpush/XGPushActivity;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/XGPushActivity;->finish()V

    .line 289
    return-void
.end method