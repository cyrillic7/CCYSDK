.class public Lcom/shengpay/smc/sdk/vo/PayResult;
.super Ljava/lang/Object;
.source "PayResult.java"


# instance fields
.field public msg:Ljava/lang/String;

.field public orderNo:Ljava/lang/String;

.field public transStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/PayResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/PayResult;->orderNo:Ljava/lang/String;

    return-object v0
.end method

.method public getTransStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/PayResult;->transStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/PayResult;->msg:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setOrderNo(Ljava/lang/String;)V
    .registers 2
    .param p1, "orderNo"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/PayResult;->orderNo:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setTransStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "transStatus"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/PayResult;->transStatus:Ljava/lang/String;

    .line 35
    return-void
.end method
