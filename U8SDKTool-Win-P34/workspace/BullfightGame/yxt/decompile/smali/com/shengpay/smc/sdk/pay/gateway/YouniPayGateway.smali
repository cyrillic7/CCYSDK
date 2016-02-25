.class public Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;
.super Lcom/shengpay/smc/sdk/pay/gateway/AbstractPayGateway;
.source "YouniPayGateway.java"

# interfaces
.implements Lcom/shengpay/smc/sdk/pay/gateway/IPayGateway;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway$AcquireOrderTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "YouniPayGateway"


# instance fields
.field private callbackId:Ljava/lang/Long;

.field private mContext:Landroid/content/Context;

.field private final myWhat:I

.field private youniCallBack:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gatewayCallback"    # Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/shengpay/smc/sdk/pay/gateway/AbstractPayGateway;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->myWhat:I

    .line 36
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->callbackId:Ljava/lang/Long;

    .line 149
    new-instance v0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway$1;

    invoke-direct {v0, p0}, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway$1;-><init>(Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;)V

    iput-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->youniCallBack:Landroid/os/Handler;

    .line 47
    invoke-static {p2}, Lcom/shengpay/smc/sdk/callback/ActivityCallbackManager;->addCallback(Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->callbackId:Ljava/lang/Long;

    .line 48
    iput-object p1, p0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;)Ljava/lang/Long;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->callbackId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$1(Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->convertGatewayCallbackMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->performYouniPay(Ljava/lang/String;)V

    return-void
.end method

.method private convertGatewayCallbackMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "youniMsg"    # Ljava/lang/String;

    .prologue
    .line 174
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 175
    .local v2, "youniJson":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 176
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "orderNo"

    const-string v4, "transNo"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v3, "transStatus"

    const-string v4, "transStatus"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v3, "msg"

    const-string v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2e} :catch_30

    move-result-object v3

    .line 181
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "youniJson":Lorg/json/JSONObject;
    :goto_2f
    return-object v3

    .line 180
    :catch_30
    move-exception v0

    .line 181
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->errorCallBackMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2f
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;)Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gatewayCallback"    # Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;

    .prologue
    .line 42
    const-class v1, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;

    invoke-direct {v0, p0, p1}, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;-><init>(Landroid/content/Context;Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleOnError(Ljava/lang/String;)V
    .registers 6
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->errorCallBackMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "errorJson":Ljava/lang/String;
    iget-object v2, p0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->callbackId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/shengpay/smc/sdk/callback/ActivityCallbackManager;->removeCallback(J)Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;

    move-result-object v0

    .local v0, "callback":Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;
    if-eqz v0, :cond_13

    .line 167
    invoke-virtual {v0, v1}, Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;->onFinished(Ljava/lang/String;)V

    .line 169
    :cond_13
    return-void
.end method

.method private performYouniPay(Ljava/lang/String;)V
    .registers 6
    .param p1, "payJsonString"    # Ljava/lang/String;

    .prologue
    .line 77
    :try_start_0
    new-instance v1, Lcom/snda/youni/sdk/YouniPay;

    iget-object v2, p0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/snda/youni/sdk/YouniPay;-><init>(Landroid/content/Context;)V

    .line 78
    .local v1, "youniPay":Lcom/snda/youni/sdk/YouniPay;
    invoke-static {}, Lcom/shengpay/smc/sdk/common/Constant;->getTargetStage()Lcom/shengpay/smc/sdk/common/enums/Stage;

    move-result-object v2

    sget-object v3, Lcom/shengpay/smc/sdk/common/enums/Stage;->PROD:Lcom/shengpay/smc/sdk/common/enums/Stage;

    if-ne v2, v3, :cond_1a

    .line 79
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/snda/youni/sdk/YouniPay;->setTEST(Z)V

    .line 83
    :goto_13
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->youniCallBack:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v3}, Lcom/snda/youni/sdk/YouniPay;->pay(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 88
    .end local v1    # "youniPay":Lcom/snda/youni/sdk/YouniPay;
    :goto_19
    return-void

    .line 81
    .restart local v1    # "youniPay":Lcom/snda/youni/sdk/YouniPay;
    :cond_1a
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/snda/youni/sdk/YouniPay;->setTEST(Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_13

    .line 84
    .end local v1    # "youniPay":Lcom/snda/youni/sdk/YouniPay;
    :catch_1f
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "YouniPayGateway"

    invoke-static {v2, v0}, Lcom/shengpay/smc/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u652f\u4ed8\u5931\u8d25:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->handleOnError(Ljava/lang/String;)V

    goto :goto_19
.end method


# virtual methods
.method public performPay(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "orderInfo"    # Lorg/json/JSONObject;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 59
    :try_start_0
    new-instance v1, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway$AcquireOrderTask;

    invoke-direct {v1, p0}, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway$AcquireOrderTask;-><init>(Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;)V

    .line 60
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Lorg/json/JSONObject;Ljava/lang/Void;Lorg/json/JSONObject;>;"
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_17

    .line 61
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/json/JSONObject;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 69
    .end local v1    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Lorg/json/JSONObject;Ljava/lang/Void;Lorg/json/JSONObject;>;"
    :goto_16
    return-void

    .line 63
    .restart local v1    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Lorg/json/JSONObject;Ljava/lang/Void;Lorg/json/JSONObject;>;"
    :cond_17
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_16

    .line 65
    .end local v1    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Lorg/json/JSONObject;Ljava/lang/Void;Lorg/json/JSONObject;>;"
    :catch_21
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "YouniPayGateway"

    invoke-static {v2, v0}, Lcom/shengpay/smc/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u751f\u6210\u8ba2\u5355\u5931\u8d25:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->handleOnError(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public setCallbackId(Ljava/lang/Long;)V
    .registers 2
    .param p1, "callbackId"    # Ljava/lang/Long;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/shengpay/smc/sdk/pay/gateway/YouniPayGateway;->callbackId:Ljava/lang/Long;

    .line 53
    return-void
.end method
