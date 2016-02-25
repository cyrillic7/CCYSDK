.class public final enum Lcom/shengpay/smc/sdk/common/enums/TransStatus;
.super Ljava/lang/Enum;
.source "TransStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/shengpay/smc/sdk/common/enums/TransStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANELSUCC:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/shengpay/smc/sdk/common/enums/TransStatus;

.field public static final enum FAIL:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

.field public static final enum PARTREFUNDSUCCESS:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

.field public static final enum PAYED_RISKBLOCKED:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

.field public static final enum PROCESSING:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

.field public static final enum REFUNDFAIL:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

.field public static final enum REFUNDPROCESSING:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

.field public static final enum REFUNDSUCC:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

.field public static final enum RISKAUDIT:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

.field public static final enum RISKAUDITFAILED:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

.field public static final enum SUCC:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

.field public static final enum TIMEOUT:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/shengpay/smc/sdk/common/enums/TransStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:Ljava/lang/String;

.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 14
    new-instance v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    const-string v3, "PROCESSING"

    const-string v4, "00"

    const-string v5, "\u7b49\u5f85\u4ed8\u6b3e\u4e2d"

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/shengpay/smc/sdk/common/enums/TransStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->PROCESSING:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    .line 15
    new-instance v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    const-string v3, "SUCC"

    const-string v4, "01"

    const-string v5, "\u4ed8\u6b3e\u6210\u529f"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/shengpay/smc/sdk/common/enums/TransStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->SUCC:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    .line 16
    new-instance v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    const-string v3, "FAIL"

    const-string v4, "02"

    const-string v5, "\u4ed8\u6b3e\u5931\u8d25"

    invoke-direct {v2, v3, v8, v4, v5}, Lcom/shengpay/smc/sdk/common/enums/TransStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->FAIL:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    .line 17
    new-instance v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    const-string v3, "TIMEOUT"

    const-string v4, "03"

    const-string v5, "\u8fc7\u671f"

    invoke-direct {v2, v3, v9, v4, v5}, Lcom/shengpay/smc/sdk/common/enums/TransStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->TIMEOUT:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    .line 18
    new-instance v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    const-string v3, "CANELSUCC"

    const-string v4, "04"

    const-string v5, "\u64a4\u9500\u6210\u529f"

    invoke-direct {v2, v3, v10, v4, v5}, Lcom/shengpay/smc/sdk/common/enums/TransStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->CANELSUCC:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    .line 19
    new-instance v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    const-string v3, "REFUNDPROCESSING"

    const/4 v4, 0x5

    const-string v5, "05"

    const-string v6, "\u9000\u6b3e\u4e2d"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/shengpay/smc/sdk/common/enums/TransStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->REFUNDPROCESSING:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    .line 20
    new-instance v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    const-string v3, "REFUNDSUCC"

    const/4 v4, 0x6

    const-string v5, "06"

    const-string v6, "\u9000\u6b3e\u6210\u529f"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/shengpay/smc/sdk/common/enums/TransStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->REFUNDSUCC:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    .line 21
    new-instance v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    const-string v3, "REFUNDFAIL"

    const/4 v4, 0x7

    const-string v5, "07"

    const-string v6, "\u9000\u6b3e\u5931\u8d25"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/shengpay/smc/sdk/common/enums/TransStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->REFUNDFAIL:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    .line 22
    new-instance v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    const-string v3, "PARTREFUNDSUCCESS"

    const/16 v4, 0x8

    const-string v5, "08"

    const-string v6, "\u90e8\u5206\u9000\u6b3e\u6210\u529f"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/shengpay/smc/sdk/common/enums/TransStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->PARTREFUNDSUCCESS:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    .line 23
    new-instance v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    const-string v3, "PAYED_RISKBLOCKED"

    const/16 v4, 0x9

    const-string v5, "09"

    const-string v6, "\u5df2\u652f\u4ed8\u98ce\u9669\u8ba2\u5355"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/shengpay/smc/sdk/common/enums/TransStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->PAYED_RISKBLOCKED:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    .line 24
    new-instance v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    const-string v3, "RISKAUDIT"

    const/16 v4, 0xa

    const-string v5, "10"

    const-string v6, "\u98ce\u63a7\u5ba1\u6838\u4e2d"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/shengpay/smc/sdk/common/enums/TransStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->RISKAUDIT:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    .line 25
    new-instance v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    const-string v3, "RISKAUDITFAILED"

    const/16 v4, 0xb

    const-string v5, "11"

    const-string v6, "\u98ce\u9669\u8ba2\u5355\u652f\u4ed8\u62d2\u7edd,\u9000\u6b3e\u4e2d"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/shengpay/smc/sdk/common/enums/TransStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->RISKAUDITFAILED:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    const/16 v2, 0xc

    new-array v2, v2, [Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    sget-object v3, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->PROCESSING:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    aput-object v3, v2, v1

    sget-object v3, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->SUCC:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    aput-object v3, v2, v7

    sget-object v3, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->FAIL:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    aput-object v3, v2, v8

    sget-object v3, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->TIMEOUT:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    aput-object v3, v2, v9

    sget-object v3, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->CANELSUCC:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    aput-object v3, v2, v10

    const/4 v3, 0x5

    sget-object v4, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->REFUNDPROCESSING:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->REFUNDSUCC:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->REFUNDFAIL:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->PARTREFUNDSUCCESS:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->PAYED_RISKBLOCKED:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->RISKAUDIT:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->RISKAUDITFAILED:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    aput-object v4, v2, v3

    sput-object v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->ENUM$VALUES:[Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    .line 31
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->map:Ljava/util/Map;

    .line 33
    invoke-static {}, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->values()[Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    move-result-object v2

    array-length v3, v2

    .local v0, "transStatus":Lcom/shengpay/smc/sdk/common/enums/TransStatus;
    :goto_f9
    if-lt v1, v3, :cond_fc

    .line 36
    return-void

    .line 33
    :cond_fc
    aget-object v0, v2, v1

    .line 34
    sget-object v4, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->map:Ljava/util/Map;

    iget-object v5, v0, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->code:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_f9
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->code:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->desc:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static getByCode(Ljava/lang/String;)Lcom/shengpay/smc/sdk/common/enums/TransStatus;
    .registers 2
    .param p0, "status"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v0, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shengpay/smc/sdk/common/enums/TransStatus;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    return-object v0
.end method

.method public static values()[Lcom/shengpay/smc/sdk/common/enums/TransStatus;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->ENUM$VALUES:[Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public isFailed()Z
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->FAIL:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    if-ne v0, p0, :cond_6

    .line 44
    const/4 v0, 0x1

    .line 46
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSuccess()Z
    .registers 2

    .prologue
    .line 51
    sget-object v0, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->SUCC:Lcom/shengpay/smc/sdk/common/enums/TransStatus;

    if-ne v0, p0, :cond_6

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->code:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .registers 2
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/shengpay/smc/sdk/common/enums/TransStatus;->desc:Ljava/lang/String;

    .line 72
    return-void
.end method
