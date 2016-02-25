.class Lcom/snda/youni/sdk/YouniPay$1;
.super Ljava/lang/Object;
.source "YouniPay.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Lcom/snda/youni/sdk/YouniPay$1;->this$0:Lcom/snda/youni/sdk/YouniPay;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniPay$1;->this$0:Lcom/snda/youni/sdk/YouniPay;

    iget-object v1, v0, Lcom/snda/youni/sdk/YouniPay;->lock:Ljava/lang/Integer;

    monitor-enter v1

    .line 111
    :try_start_5
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniPay$1;->this$0:Lcom/snda/youni/sdk/YouniPay;

    invoke-static {p2}, Lcom/snda/youni/sdk/IYouniPayApi$Stub;->asInterface(Landroid/os/IBinder;)Lcom/snda/youni/sdk/IYouniPayApi;

    move-result-object v2

    iput-object v2, v0, Lcom/snda/youni/sdk/YouniPay;->iYouniPayApi:Lcom/snda/youni/sdk/IYouniPayApi;

    .line 112
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniPay$1;->this$0:Lcom/snda/youni/sdk/YouniPay;

    iget-object v0, v0, Lcom/snda/youni/sdk/YouniPay;->lock:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 110
    monitor-exit v1

    .line 114
    return-void

    .line 110
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$1;->this$0:Lcom/snda/youni/sdk/YouniPay;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/snda/youni/sdk/YouniPay;->iYouniPayApi:Lcom/snda/youni/sdk/IYouniPayApi;

    .line 118
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$1;->this$0:Lcom/snda/youni/sdk/YouniPay;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/snda/youni/sdk/YouniPay;->access$0(Lcom/snda/youni/sdk/YouniPay;Z)V

    .line 119
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$1;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->mPaying:Z
    invoke-static {v1}, Lcom/snda/youni/sdk/YouniPay;->access$1(Lcom/snda/youni/sdk/YouniPay;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 120
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 121
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$1;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->myWhat:I
    invoke-static {v1}, Lcom/snda/youni/sdk/YouniPay;->access$2(Lcom/snda/youni/sdk/YouniPay;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 122
    const-string v1, "{\"transStatus\":\"00\",\"msg\":\"\u6709\u4f60\u5ba2\u6237\u7aef\u5df2\u9000\u51fa\"}"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$1;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->callback:Landroid/os/Handler;
    invoke-static {v1}, Lcom/snda/youni/sdk/YouniPay;->access$3(Lcom/snda/youni/sdk/YouniPay;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 124
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$1;->this$0:Lcom/snda/youni/sdk/YouniPay;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/snda/youni/sdk/YouniPay;->access$4(Lcom/snda/youni/sdk/YouniPay;Z)V

    .line 126
    .end local v0    # "message":Landroid/os/Message;
    :cond_33
    return-void
.end method
