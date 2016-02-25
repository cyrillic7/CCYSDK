.class Lcom/snda/youni/sdk/YouniPay$2;
.super Lcom/snda/youni/sdk/IBizCallback$Stub;
.source "YouniPay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snda/youni/sdk/YouniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snda/youni/sdk/YouniPay;


# direct methods
.method constructor <init>(Lcom/snda/youni/sdk/YouniPay;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snda/youni/sdk/YouniPay$2;->this$0:Lcom/snda/youni/sdk/YouniPay;

    .line 129
    invoke-direct {p0}, Lcom/snda/youni/sdk/IBizCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    const-string v1, "pay"

    const-string v2, "onComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 135
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$2;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->myWhat:I
    invoke-static {v1}, Lcom/snda/youni/sdk/YouniPay;->access$2(Lcom/snda/youni/sdk/YouniPay;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 136
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$2;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->callback:Landroid/os/Handler;
    invoke-static {v1}, Lcom/snda/youni/sdk/YouniPay;->access$3(Lcom/snda/youni/sdk/YouniPay;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$2;->this$0:Lcom/snda/youni/sdk/YouniPay;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/snda/youni/sdk/YouniPay;->access$4(Lcom/snda/youni/sdk/YouniPay;Z)V

    .line 139
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$2;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/snda/youni/sdk/YouniPay;->access$5(Lcom/snda/youni/sdk/YouniPay;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$2;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->serviceConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/snda/youni/sdk/YouniPay;->access$6(Lcom/snda/youni/sdk/YouniPay;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 140
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$2;->this$0:Lcom/snda/youni/sdk/YouniPay;

    iget-object v1, v1, Lcom/snda/youni/sdk/YouniPay;->iYouniPayApi:Lcom/snda/youni/sdk/IYouniPayApi;

    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$2;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->registeredCallbackId:J
    invoke-static {v2}, Lcom/snda/youni/sdk/YouniPay;->access$7(Lcom/snda/youni/sdk/YouniPay;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/snda/youni/sdk/IYouniPayApi;->unregisterCallback(J)V

    .line 141
    return-void
.end method
