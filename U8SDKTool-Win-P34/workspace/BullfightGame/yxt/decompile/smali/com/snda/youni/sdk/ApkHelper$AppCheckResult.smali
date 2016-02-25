.class public final enum Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;
.super Ljava/lang/Enum;
.source "ApkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snda/youni/sdk/ApkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppCheckResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_NOT_EXIST:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

.field public static final enum APP_VERSION_TOO_LOW:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

.field private static final synthetic ENUM$VALUES:[Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

.field public static final enum INVALID_CHANNEL:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

.field public static final enum INVALID_SIGNATURE:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;


# instance fields
.field private msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 193
    new-instance v0, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    const-string v1, "INVALID_CHANNEL"

    const-string v2, "\u6e20\u9053\u53f7\u4e0d\u6b63\u786e"

    invoke-direct {v0, v1, v3, v2}, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;->INVALID_CHANNEL:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    new-instance v0, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    const-string v1, "INVALID_SIGNATURE"

    const-string v2, "\u7b7e\u540d\u4e0d\u6b63\u786e"

    invoke-direct {v0, v1, v4, v2}, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;->INVALID_SIGNATURE:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    new-instance v0, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    const-string v1, "APP_NOT_EXIST"

    const-string v2, "\u8f6f\u4ef6\u5c1a\u672a\u5b89\u88c5"

    invoke-direct {v0, v1, v5, v2}, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;->APP_NOT_EXIST:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    new-instance v0, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    const-string v1, "APP_VERSION_TOO_LOW"

    const-string v2, "\u7248\u672c\u8fc7\u4f4e"

    invoke-direct {v0, v1, v6, v2}, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;->APP_VERSION_TOO_LOW:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    .line 192
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    sget-object v1, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;->INVALID_CHANNEL:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;->INVALID_SIGNATURE:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;->APP_NOT_EXIST:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;->APP_VERSION_TOO_LOW:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;->ENUM$VALUES:[Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 197
    iput-object p3, p0, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;->msg:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    return-object v0
.end method

.method public static values()[Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;->ENUM$VALUES:[Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    array-length v1, v0

    new-array v2, v1, [Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;->msg:Ljava/lang/String;

    return-object v0
.end method
