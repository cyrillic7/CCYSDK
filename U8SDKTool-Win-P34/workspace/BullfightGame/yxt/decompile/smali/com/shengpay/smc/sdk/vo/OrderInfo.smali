.class public Lcom/shengpay/smc/sdk/vo/OrderInfo;
.super Ljava/lang/Object;
.source "OrderInfo.java"


# instance fields
.field private buyerContact:Ljava/lang/String;

.field private buyerId:Ljava/lang/String;

.field private buyerIp:Ljava/lang/String;

.field private buyerName:Ljava/lang/String;

.field private charset:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private depositId:Ljava/lang/String;

.field private depositIdType:Ljava/lang/String;

.field private ext1:Ljava/lang/String;

.field private ext2:Ljava/lang/String;

.field private instCode:Ljava/lang/String;

.field private merchantMemberId:Ljava/lang/String;

.field private notifyUrl:Ljava/lang/String;

.field private orderAmount:Ljava/lang/String;

.field private orderNo:Ljava/lang/String;

.field private orderTime:Ljava/lang/String;

.field private pageUrl:Ljava/lang/String;

.field private payChannel:Ljava/lang/String;

.field private payType:Ljava/lang/String;

.field private payerAuthTicket:Ljava/lang/String;

.field private payerMobileNo:Ljava/lang/String;

.field private productDesc:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private productNum:Ljava/lang/String;

.field private productUrl:Ljava/lang/String;

.field private result:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sellerId:Ljava/lang/String;

.field private sendTime:Ljava/lang/String;

.field private senderId:Ljava/lang/String;

.field private senderKey:Ljava/lang/String;

.field private separator:Ljava/lang/String;

.field private serviceCode:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private signFromClient:Z

.field private signMsg:Ljava/lang/String;

.field private signType:Ljava/lang/String;

.field private tokenId:Ljava/lang/String;

.field private traceNo:Ljava/lang/String;

.field private unitPrice:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "B2CPayment"

    iput-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->serviceCode:Ljava/lang/String;

    .line 15
    const-string v0, "V4.1.1.1.1"

    iput-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->version:Ljava/lang/String;

    .line 16
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->charset:Ljava/lang/String;

    .line 45
    const-string v0, "MD5"

    iput-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->signType:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->signFromClient:Z

    .line 59
    const-string v0, "|"

    iput-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    .line 13
    return-void
.end method

.method private encryptMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "strInput"    # Ljava/lang/String;

    .prologue
    .line 602
    const/4 v1, 0x0

    .line 604
    .local v1, "buf":Ljava/lang/StringBuffer;
    :try_start_1
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 605
    .local v5, "md":Ljava/security/MessageDigest;
    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 606
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 607
    .local v0, "b":[B
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v6, v0

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_42

    .line 608
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .local v2, "buf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    :try_start_1d
    array-length v6, v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1e} :catch_47

    if-lt v4, v6, :cond_26

    move-object v1, v2

    .line 618
    .end local v0    # "b":[B
    .end local v2    # "buf":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v5    # "md":Ljava/security/MessageDigest;
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    :goto_21
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 609
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .restart local v0    # "b":[B
    .restart local v2    # "buf":Ljava/lang/StringBuffer;
    .restart local v4    # "i":I
    .restart local v5    # "md":Ljava/security/MessageDigest;
    :cond_26
    :try_start_26
    aget-byte v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    if-ge v6, v7, :cond_33

    .line 610
    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    :cond_33
    aget-byte v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3f} :catch_47

    .line 608
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 615
    .end local v0    # "b":[B
    .end local v2    # "buf":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v5    # "md":Ljava/security/MessageDigest;
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    :catch_42
    move-exception v3

    .line 616
    .local v3, "ex":Ljava/lang/Exception;
    :goto_43
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21

    .line 615
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v0    # "b":[B
    .restart local v2    # "buf":Ljava/lang/StringBuffer;
    .restart local v4    # "i":I
    .restart local v5    # "md":Ljava/security/MessageDigest;
    :catch_47
    move-exception v3

    move-object v1, v2

    .end local v2    # "buf":Ljava/lang/StringBuffer;
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    goto :goto_43
.end method

.method private getOrderMapInfo()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_15

    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "signMsg"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 401
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    .line 557
    :goto_14
    return-object v1

    .line 403
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .local v0, "param":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->serviceCode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 406
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "serviceCode"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->serviceCode:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->serviceCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_36
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->version:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 410
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "version"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->version:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :cond_52
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->charset:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 414
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "charset"

    const-string v3, "UTF-8"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->charset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_6e
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->traceNo:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8a

    .line 418
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "traceNo"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->traceNo:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->traceNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_8a
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->senderId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 422
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "senderId"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->senderId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->senderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_a6
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->sendTime:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c2

    .line 426
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "sendTime"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->sendTime:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->sendTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_c2
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->orderNo:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_de

    .line 430
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "orderNo"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->orderNo:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->orderNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_de
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->orderAmount:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fa

    .line 434
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "orderAmount"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->orderAmount:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->orderAmount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_fa
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->orderTime:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_116

    .line 438
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "orderTime"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->orderTime:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->orderTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_116
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->currency:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_132

    .line 443
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "currency"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->currency:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_132
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14e

    .line 448
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "payType"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payType:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_14e
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payChannel:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16a

    .line 453
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "payChannel"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payChannel:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_16a
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->instCode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_186

    .line 458
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "instCode"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->instCode:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->instCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :cond_186
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->pageUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a2

    .line 463
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "pageUrl"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->pageUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->pageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_1a2
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->notifyUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1be

    .line 467
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "notifyUrl"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->notifyUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->notifyUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_1be
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1da

    .line 471
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "productId"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_1da
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f6

    .line 475
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "productName"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    :cond_1f6
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productNum:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_212

    .line 479
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "productNum"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productNum:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :cond_212
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->unitPrice:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22e

    .line 483
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "unitPrice"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->unitPrice:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->unitPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_22e
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productDesc:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24a

    .line 487
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "productDesc"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productDesc:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_24a
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_266

    .line 491
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "productUrl"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :cond_266
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->sellerId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_282

    .line 495
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "sellerId"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->sellerId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->sellerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_282
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29e

    .line 499
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "buyerName"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :cond_29e
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2ba

    .line 503
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "buyerId"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_2ba
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerContact:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d6

    .line 507
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "buyerContact"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerContact:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_2d6
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerIp:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f2

    .line 511
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "buyerIp"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerIp:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_2f2
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->depositId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30e

    .line 515
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "depositId"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->depositId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->depositId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :cond_30e
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->depositIdType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32a

    .line 519
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "depositIdType"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->depositIdType:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->depositIdType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_32a
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payerMobileNo:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_346

    .line 523
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "payerMobileNo"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payerMobileNo:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payerMobileNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    :cond_346
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payerAuthTicket:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_362

    .line 527
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "payerAuthTicket"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payerAuthTicket:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payerAuthTicket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    :cond_362
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->merchantMemberId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37e

    .line 531
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "merchantMemberId"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->merchantMemberId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->merchantMemberId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_37e
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->ext1:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39a

    .line 535
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "ext1"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->ext1:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->ext1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    :cond_39a
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->ext2:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b6

    .line 539
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "ext2"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->ext2:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->ext2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_3b6
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->signType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d2

    .line 543
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "signType"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->signType:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->signType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_3d2
    const-string v1, "---MyTest---"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "param = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "signParam"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->sessionId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_406

    .line 550
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "sessionId"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->sessionId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :cond_406
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->tokenId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_417

    .line 553
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "tokenId"

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->tokenId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_417
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    const-string v2, "signMsg"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->result:Ljava/util/Map;

    goto/16 :goto_14
.end method

.method private getSignOriginal(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 562
    .local p1, "signMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "signParam"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 563
    .local v1, "signMsgNoSenderKey":Ljava/lang/String;
    move-object v0, v1

    .line 565
    .local v0, "signMsgContainSenderKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->senderKey:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-boolean v2, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->signFromClient:Z

    if-eqz v2, :cond_28

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->senderKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    :cond_28
    return-object v0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/String;

    .prologue
    .line 594
    if-eqz p1, :cond_e

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 595
    :cond_e
    const/4 v0, 0x1

    .line 597
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public getBuyerContact()Ljava/lang/String;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerContact:Ljava/lang/String;

    return-object v0
.end method

.method public getBuyerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerId:Ljava/lang/String;

    return-object v0
.end method

.method public getBuyerIp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerIp:Ljava/lang/String;

    return-object v0
.end method

.method public getBuyerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerName:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDepositId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->depositId:Ljava/lang/String;

    return-object v0
.end method

.method public getDepositIdType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->depositIdType:Ljava/lang/String;

    return-object v0
.end method

.method public getExt1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->ext1:Ljava/lang/String;

    return-object v0
.end method

.method public getExt2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->ext2:Ljava/lang/String;

    return-object v0
.end method

.method public getInstCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->instCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantMemberId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->merchantMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->notifyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderAmount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->orderAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->getOrderInfoJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrderInfoJson()Lorg/json/JSONObject;
    .registers 7

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->getOrderMapInfo()Ljava/util/Map;

    move-result-object v2

    .line 581
    .local v2, "signMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v2}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->getSignOriginal(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "param":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->signFromClient:Z

    if-eqz v4, :cond_1f

    if-eqz v0, :cond_1f

    .line 583
    invoke-direct {p0, v0}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->encryptMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 584
    .local v3, "signMsg":Ljava/lang/String;
    const-string v4, "signMsg"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    .end local v3    # "signMsg":Ljava/lang/String;
    :cond_1f
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 587
    .local v1, "result":Lorg/json/JSONObject;
    const-string v4, "signParam"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 588
    return-object v1
.end method

.method public getOrderNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->orderNo:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->orderTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPayChannel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getPayType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payType:Ljava/lang/String;

    return-object v0
.end method

.method public getPayerAuthTicket()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payerAuthTicket:Ljava/lang/String;

    return-object v0
.end method

.method public getPayerMobileNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payerMobileNo:Ljava/lang/String;

    return-object v0
.end method

.method public getProductDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductNum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productNum:Ljava/lang/String;

    return-object v0
.end method

.method public getProductUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSellerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->sellerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSendTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->sendTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->senderKey:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->serviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignMsg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->signMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getSignOriginal()Ljava/lang/String;
    .registers 3

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->getOrderMapInfo()Ljava/util/Map;

    move-result-object v0

    .line 395
    .local v0, "signMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/shengpay/smc/sdk/vo/OrderInfo;->getSignOriginal(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSignType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->signType:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->tokenId:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->traceNo:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitPrice()Ljava/lang/String;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->unitPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isSignFromClient()Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->signFromClient:Z

    return v0
.end method

.method public setBuyerContact(Ljava/lang/String;)V
    .registers 2
    .param p1, "buyerContact"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerContact:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setBuyerId(Ljava/lang/String;)V
    .registers 2
    .param p1, "buyerId"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerId:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setBuyerIp(Ljava/lang/String;)V
    .registers 2
    .param p1, "buyerIp"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerIp:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setBuyerName(Ljava/lang/String;)V
    .registers 2
    .param p1, "buyerName"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->buyerName:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .registers 2
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->charset:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->currency:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setDepositId(Ljava/lang/String;)V
    .registers 2
    .param p1, "depositId"    # Ljava/lang/String;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->depositId:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setDepositIdType(Ljava/lang/String;)V
    .registers 2
    .param p1, "depositIdType"    # Ljava/lang/String;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->depositIdType:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setExt1(Ljava/lang/String;)V
    .registers 2
    .param p1, "ext1"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->ext1:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setExt2(Ljava/lang/String;)V
    .registers 2
    .param p1, "ext2"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->ext2:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setInstCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "instCode"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->instCode:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setMerchantMemberId(Ljava/lang/String;)V
    .registers 2
    .param p1, "merchantMemberId"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->merchantMemberId:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setNotifyUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "notifyUrl"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->notifyUrl:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setOrderAmount(Ljava/lang/String;)V
    .registers 2
    .param p1, "orderAmount"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->orderAmount:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setOrderNo(Ljava/lang/String;)V
    .registers 2
    .param p1, "orderNo"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->orderNo:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setOrderTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "orderTime"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->orderTime:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setPageUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "pageUrl"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->pageUrl:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setPayChannel(Ljava/lang/String;)V
    .registers 2
    .param p1, "payChannel"    # Ljava/lang/String;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payChannel:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setPayType(Ljava/lang/String;)V
    .registers 2
    .param p1, "payType"    # Ljava/lang/String;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payType:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setPayerAuthTicket(Ljava/lang/String;)V
    .registers 2
    .param p1, "payerAuthTicket"    # Ljava/lang/String;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payerAuthTicket:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setPayerMobileNo(Ljava/lang/String;)V
    .registers 2
    .param p1, "payerMobileNo"    # Ljava/lang/String;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->payerMobileNo:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setProductDesc(Ljava/lang/String;)V
    .registers 2
    .param p1, "productDesc"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productDesc:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .registers 2
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productId:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .registers 2
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productName:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setProductNum(Ljava/lang/String;)V
    .registers 2
    .param p1, "productNum"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productNum:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setProductUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "productUrl"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->productUrl:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setSellerId(Ljava/lang/String;)V
    .registers 2
    .param p1, "sellerId"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->sellerId:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setSendTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "sendTime"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->sendTime:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setSenderId(Ljava/lang/String;)V
    .registers 2
    .param p1, "senderId"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->senderId:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setSenderKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "senderKey"    # Ljava/lang/String;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->senderKey:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setServiceCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceCode"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->serviceCode:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .registers 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->sessionId:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setSignFromClient(Z)V
    .registers 2
    .param p1, "signFromClient"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->signFromClient:Z

    .line 67
    return-void
.end method

.method public setSignMsg(Ljava/lang/String;)V
    .registers 2
    .param p1, "signMsg"    # Ljava/lang/String;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->signMsg:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setSignType(Ljava/lang/String;)V
    .registers 2
    .param p1, "signType"    # Ljava/lang/String;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->signType:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setTokenId(Ljava/lang/String;)V
    .registers 2
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->tokenId:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setTraceNo(Ljava/lang/String;)V
    .registers 2
    .param p1, "traceNo"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->traceNo:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setUnitPrice(Ljava/lang/String;)V
    .registers 2
    .param p1, "unitPrice"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->unitPrice:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/shengpay/smc/sdk/vo/OrderInfo;->version:Ljava/lang/String;

    .line 83
    return-void
.end method
