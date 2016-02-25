.class public Lcom/shengpay/smc/sdk/callback/ActivityCallbackManager;
.super Ljava/lang/Object;
.source "ActivityCallbackManager.java"


# static fields
.field private static callbackId:Ljava/util/concurrent/atomic/AtomicLong;

.field private static callbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/shengpay/smc/sdk/callback/ActivityCallbackManager;->callbackId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/shengpay/smc/sdk/callback/ActivityCallbackManager;->callbackMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCallback(Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;)J
    .registers 5
    .param p0, "callback"    # Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;

    .prologue
    .line 15
    if-nez p0, :cond_5

    .line 16
    const-wide/16 v0, 0x0

    .line 20
    :goto_4
    return-wide v0

    .line 18
    :cond_5
    sget-object v2, Lcom/shengpay/smc/sdk/callback/ActivityCallbackManager;->callbackId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 19
    .local v0, "key":J
    sget-object v2, Lcom/shengpay/smc/sdk/callback/ActivityCallbackManager;->callbackMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public static isCallbackExist(J)Z
    .registers 4
    .param p0, "callbackId"    # J

    .prologue
    .line 28
    sget-object v0, Lcom/shengpay/smc/sdk/callback/ActivityCallbackManager;->callbackMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeCallback(J)Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;
    .registers 4
    .param p0, "callbackId"    # J

    .prologue
    .line 24
    sget-object v0, Lcom/shengpay/smc/sdk/callback/ActivityCallbackManager;->callbackMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shengpay/smc/sdk/callback/IDispatcherCallback;

    return-object v0
.end method
