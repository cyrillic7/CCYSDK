.class public Lcom/shengpay/smc/sdk/common/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final ORDER_PROPERTIES_PAY_CHANNEL:Ljava/lang/String; = "payChannel"

.field public static final ORDER_PROPERTIES_PAY_TYPE:Ljava/lang/String; = "payType"

.field public static final PAY_CHANNEL_YOUNI:Ljava/lang/String; = "88"

.field public static final PAY_TYPE_YOUNI:Ljava/lang/String; = "PT052"

.field private static REMOTE_URL_RECEIVE_ORDER_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/shengpay/smc/sdk/common/enums/Stage;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETURN_KEY_MSG:Ljava/lang/String; = "msg"

.field public static final RETURN_KEY_ORDER_NO:Ljava/lang/String; = "orderNo"

.field public static final RETURN_KEY_TRANS_STATUS:Ljava/lang/String; = "transStatus"

.field private static SMC_APK_VERSION_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/shengpay/smc/sdk/common/enums/Stage;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMC_PACKAGE_NAME:Ljava/lang/String; = "com.shengpay.smc"

.field public static final SMC_THUMB_PRINT:Ljava/lang/String; = "A9:2A:34:FF:78:3E:5B:0E:A8:D6:31:0F:36:4A:F1:13"

.field private static targetStage:Lcom/shengpay/smc/sdk/common/enums/Stage;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 18
    sget-object v0, Lcom/shengpay/smc/sdk/common/enums/Stage;->PROD:Lcom/shengpay/smc/sdk/common/enums/Stage;

    sput-object v0, Lcom/shengpay/smc/sdk/common/Constant;->targetStage:Lcom/shengpay/smc/sdk/common/enums/Stage;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shengpay/smc/sdk/common/Constant;->REMOTE_URL_RECEIVE_ORDER_MAP:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shengpay/smc/sdk/common/Constant;->SMC_APK_VERSION_MAP:Ljava/util/Map;

    .line 23
    sget-object v0, Lcom/shengpay/smc/sdk/common/Constant;->REMOTE_URL_RECEIVE_ORDER_MAP:Ljava/util/Map;

    sget-object v1, Lcom/shengpay/smc/sdk/common/enums/Stage;->DEV:Lcom/shengpay/smc/sdk/common/enums/Stage;

    const-string v2, "http://10.241.80.17:8080/hybridpay.htm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/shengpay/smc/sdk/common/Constant;->REMOTE_URL_RECEIVE_ORDER_MAP:Ljava/util/Map;

    sget-object v1, Lcom/shengpay/smc/sdk/common/enums/Stage;->TEST:Lcom/shengpay/smc/sdk/common/enums/Stage;

    const-string v2, "http://smctest.shengpay.com/html5-gateway-general/hybridpay.htm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/shengpay/smc/sdk/common/Constant;->REMOTE_URL_RECEIVE_ORDER_MAP:Ljava/util/Map;

    sget-object v1, Lcom/shengpay/smc/sdk/common/enums/Stage;->PROD:Lcom/shengpay/smc/sdk/common/enums/Stage;

    const-string v2, "https://api.shengpay.com/html5-gateway/hybridpay.htm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/shengpay/smc/sdk/common/Constant;->SMC_APK_VERSION_MAP:Ljava/util/Map;

    sget-object v1, Lcom/shengpay/smc/sdk/common/enums/Stage;->DEV:Lcom/shengpay/smc/sdk/common/enums/Stage;

    const-string v2, "http://61.152.90.44:8081/smc/smc_version.json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/shengpay/smc/sdk/common/Constant;->SMC_APK_VERSION_MAP:Ljava/util/Map;

    sget-object v1, Lcom/shengpay/smc/sdk/common/enums/Stage;->TEST:Lcom/shengpay/smc/sdk/common/enums/Stage;

    const-string v2, "http://61.152.90.44:8081/smc/smc_version.json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/shengpay/smc/sdk/common/Constant;->SMC_APK_VERSION_MAP:Ljava/util/Map;

    sget-object v1, Lcom/shengpay/smc/sdk/common/enums/Stage;->PROD:Lcom/shengpay/smc/sdk/common/enums/Stage;

    const-string v2, "http://smk.shengpay.com/smc/smc_version.json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAPKVersionURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    sget-object v0, Lcom/shengpay/smc/sdk/common/Constant;->SMC_APK_VERSION_MAP:Ljava/util/Map;

    sget-object v1, Lcom/shengpay/smc/sdk/common/Constant;->targetStage:Lcom/shengpay/smc/sdk/common/enums/Stage;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getOrderURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    sget-object v0, Lcom/shengpay/smc/sdk/common/Constant;->REMOTE_URL_RECEIVE_ORDER_MAP:Ljava/util/Map;

    sget-object v1, Lcom/shengpay/smc/sdk/common/Constant;->targetStage:Lcom/shengpay/smc/sdk/common/enums/Stage;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getTargetStage()Lcom/shengpay/smc/sdk/common/enums/Stage;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/shengpay/smc/sdk/common/Constant;->targetStage:Lcom/shengpay/smc/sdk/common/enums/Stage;

    return-object v0
.end method

.method public static setTargetStage(Lcom/shengpay/smc/sdk/common/enums/Stage;)V
    .registers 1
    .param p0, "stage"    # Lcom/shengpay/smc/sdk/common/enums/Stage;

    .prologue
    .line 61
    sput-object p0, Lcom/shengpay/smc/sdk/common/Constant;->targetStage:Lcom/shengpay/smc/sdk/common/enums/Stage;

    .line 62
    return-void
.end method
