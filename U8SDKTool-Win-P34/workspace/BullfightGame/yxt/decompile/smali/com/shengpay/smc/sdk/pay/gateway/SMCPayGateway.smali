.class public Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;
.super Lcom/shengpay/smc/sdk/pay/gateway/AbstractPayGateway;
.source "SMCPayGateway.java"

# interfaces
.implements Lcom/shengpay/smc/sdk/pay/gateway/IPayGateway;


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field private callbackId:Ljava/lang/Long;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private isPaying:Z

.field lock:Ljava/lang/Integer;

.field private mCallback:Lcom/shengpay/smc/ICheckoutCallback;

.field private mContext:Landroid/content/Context;

.field private mSDPayConnection:Landroid/content/ServiceConnection;

.field private final myWhat:I

.field sftCheckout:Lcom/shengpay/smc/ISFTCheckout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-string v0, "SMCPayGateway"

    sput-object v0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gatewayCallback"    # Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Lcom/shengpay/smc/sdk/pay/gateway/AbstractPayGateway;-><init>()V

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->lock:Ljava/lang/Integer;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->sftCheckout:Lcom/shengpay/smc/ISFTCheckout;

    .line 38
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->callbackId:Ljava/lang/Long;

    .line 40
    iput-boolean v2, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->isPaying:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->myWhat:I

    .line 136
    new-instance v0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$1;

    invoke-direct {v0, p0}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$1;-><init>(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)V

    iput-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mSDPayConnection:Landroid/content/ServiceConnection;

    .line 150
    new-instance v0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$2;

    invoke-direct {v0, p0}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$2;-><init>(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)V

    iput-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->handler:Landroid/os/Handler;

    .line 165
    new-instance v0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$3;

    invoke-direct {v0, p0}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$3;-><init>(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)V

    iput-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mCallback:Lcom/shengpay/smc/ICheckoutCallback;

    .line 54
    invoke-static {p2}, Lcom/shengpay/smc/sdk/callback/ActivityCallbackManager;->addCallback(Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->callbackId:Ljava/lang/Long;

    .line 55
    iput-object p1, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)Ljava/lang/Long;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->callbackId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$1(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)Landroid/content/ServiceConnection;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mSDPayConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$3(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;Z)V
    .registers 2

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->isPaying:Z

    return-void
.end method

.method static synthetic access$4(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)Lcom/shengpay/smc/ICheckoutCallback;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mCallback:Lcom/shengpay/smc/ICheckoutCallback;

    return-object v0
.end method

.method static synthetic access$5(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "implicitIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 119
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p1, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 121
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_12

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_14

    .line 122
    :cond_12
    const/4 v2, 0x0

    .line 133
    :goto_13
    return-object v2

    .line 125
    :cond_14
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 126
    .local v6, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 127
    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 128
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 132
    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_13
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;)Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gatewayCallback"    # Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;

    .prologue
    .line 49
    const-class v1, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;

    invoke-direct {v0, p0, p1}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;-><init>(Landroid/content/Context;Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public performPay(Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "orderJson"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x1

    .line 60
    iget-object v2, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/shengpay/smc/sdk/SMCHelper;->getInstance(Landroid/content/Context;)Lcom/shengpay/smc/sdk/SMCHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shengpay/smc/sdk/SMCHelper;->detectSmcExist()Z

    move-result v0

    .line 61
    .local v0, "isMobile_spExist":Z
    if-nez v0, :cond_e

    .line 113
    :cond_d
    :goto_d
    return-void

    .line 64
    :cond_e
    iget-boolean v2, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->isPaying:Z

    if-nez v2, :cond_d

    .line 66
    iput-boolean v6, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->isPaying:Z

    .line 69
    iget-object v2, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/shengpay/smc/sdk/SMCHelper;->getInstance(Landroid/content/Context;)Lcom/shengpay/smc/sdk/SMCHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shengpay/smc/sdk/SMCHelper;->verifyAPKCert()Z

    move-result v2

    if-nez v2, :cond_35

    .line 70
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 71
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, -0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 72
    const-string v2, "\u652f\u4ed8\u5931\u8d25:SMC\u5b89\u88c5\u5305\u8bc1\u4e66\u4e0d\u5339\u914d"

    invoke-virtual {p0, v2}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->errorCallBackMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    iget-object v2, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    .end local v1    # "msg":Landroid/os/Message;
    :cond_35
    iget-object v2, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->sftCheckout:Lcom/shengpay/smc/ISFTCheckout;

    if-nez v2, :cond_51

    .line 78
    iget-object v2, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/shengpay/smc/ISFTCheckout;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;->mSDPayConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 81
    :cond_51
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;

    invoke-direct {v3, p0, p1}, Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway$4;-><init>(Lcom/shengpay/smc/sdk/pay/gateway/SMCPayGateway;Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_d
.end method
