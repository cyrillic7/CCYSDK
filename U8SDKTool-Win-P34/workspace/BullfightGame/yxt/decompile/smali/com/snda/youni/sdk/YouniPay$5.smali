.class Lcom/snda/youni/sdk/YouniPay$5;
.super Ljava/lang/Thread;
.source "YouniPay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snda/youni/sdk/YouniPay;->performPay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snda/youni/sdk/YouniPay;

.field private final synthetic val$orderInfoJson:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/snda/youni/sdk/YouniPay;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snda/youni/sdk/YouniPay$5;->this$0:Lcom/snda/youni/sdk/YouniPay;

    iput-object p2, p0, Lcom/snda/youni/sdk/YouniPay$5;->val$orderInfoJson:Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 157
    :try_start_0
    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$5;->this$0:Lcom/snda/youni/sdk/YouniPay;

    iget-object v3, v2, Lcom/snda/youni/sdk/YouniPay;->lock:Ljava/lang/Integer;

    monitor-enter v3
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_52
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_86

    .line 158
    :try_start_5
    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$5;->this$0:Lcom/snda/youni/sdk/YouniPay;

    iget-object v2, v2, Lcom/snda/youni/sdk/YouniPay;->iYouniPayApi:Lcom/snda/youni/sdk/IYouniPayApi;

    if-nez v2, :cond_14

    .line 159
    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$5;->this$0:Lcom/snda/youni/sdk/YouniPay;

    iget-object v2, v2, Lcom/snda/youni/sdk/YouniPay;->lock:Ljava/lang/Integer;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 157
    :cond_14
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_4f

    .line 162
    :try_start_15
    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$5;->this$0:Lcom/snda/youni/sdk/YouniPay;

    iget-object v2, v2, Lcom/snda/youni/sdk/YouniPay;->iYouniPayApi:Lcom/snda/youni/sdk/IYouniPayApi;

    if-nez v2, :cond_57

    .line 163
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 164
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$5;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->myWhat:I
    invoke-static {v2}, Lcom/snda/youni/sdk/YouniPay;->access$2(Lcom/snda/youni/sdk/YouniPay;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 165
    const-string v2, "{\"transStatus\":\"00\",\"msg\":\"\u8d85\u65f6:\u65e0\u6cd5\u547c\u51fa\u6709\u4f60\u652f\u4ed8\u670d\u52a1\"}"

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 166
    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$5;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->callback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/snda/youni/sdk/YouniPay;->access$3(Lcom/snda/youni/sdk/YouniPay;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$5;->this$0:Lcom/snda/youni/sdk/YouniPay;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/snda/youni/sdk/YouniPay;->access$4(Lcom/snda/youni/sdk/YouniPay;Z)V

    .line 168
    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$5;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/snda/youni/sdk/YouniPay;->access$5(Lcom/snda/youni/sdk/YouniPay;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/snda/youni/sdk/YouniPay$5;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->serviceConnection:Landroid/content/ServiceConnection;
    invoke-static {v3}, Lcom/snda/youni/sdk/YouniPay;->access$6(Lcom/snda/youni/sdk/YouniPay;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_4e} :catch_52
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_4e} :catch_86

    .line 180
    .end local v1    # "message":Landroid/os/Message;
    :cond_4e
    :goto_4e
    return-void

    .line 157
    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    throw v2
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_52} :catch_52
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_52} :catch_86

    .line 175
    :catch_52
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4e

    .line 170
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_57
    :try_start_57
    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$5;->this$0:Lcom/snda/youni/sdk/YouniPay;

    iget-object v3, p0, Lcom/snda/youni/sdk/YouniPay$5;->this$0:Lcom/snda/youni/sdk/YouniPay;

    iget-object v3, v3, Lcom/snda/youni/sdk/YouniPay;->iYouniPayApi:Lcom/snda/youni/sdk/IYouniPayApi;

    iget-object v4, p0, Lcom/snda/youni/sdk/YouniPay$5;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->mCallback:Lcom/snda/youni/sdk/IBizCallback;
    invoke-static {v4}, Lcom/snda/youni/sdk/YouniPay;->access$17(Lcom/snda/youni/sdk/YouniPay;)Lcom/snda/youni/sdk/IBizCallback;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/snda/youni/sdk/IYouniPayApi;->registerCallback(Lcom/snda/youni/sdk/IBizCallback;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/snda/youni/sdk/YouniPay;->access$18(Lcom/snda/youni/sdk/YouniPay;J)V

    .line 171
    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$5;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->serviceDisconnected:Z
    invoke-static {v2}, Lcom/snda/youni/sdk/YouniPay;->access$19(Lcom/snda/youni/sdk/YouniPay;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 172
    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$5;->this$0:Lcom/snda/youni/sdk/YouniPay;

    iget-object v2, v2, Lcom/snda/youni/sdk/YouniPay;->iYouniPayApi:Lcom/snda/youni/sdk/IYouniPayApi;

    iget-object v3, p0, Lcom/snda/youni/sdk/YouniPay$5;->val$orderInfoJson:Ljava/lang/String;

    iget-object v4, p0, Lcom/snda/youni/sdk/YouniPay$5;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/snda/youni/sdk/YouniPay;->access$5(Lcom/snda/youni/sdk/YouniPay;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/snda/youni/sdk/IYouniPayApi;->pay(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/InterruptedException; {:try_start_57 .. :try_end_85} :catch_52
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_85} :catch_86

    goto :goto_4e

    .line 177
    :catch_86
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4e
.end method
