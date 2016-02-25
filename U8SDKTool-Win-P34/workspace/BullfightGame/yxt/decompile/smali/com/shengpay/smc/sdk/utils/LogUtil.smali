.class public Lcom/shengpay/smc/sdk/utils/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static isOpenLog:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/shengpay/smc/sdk/utils/LogUtil;->isOpenLog:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-boolean v0, Lcom/shengpay/smc/sdk/utils/LogUtil;->isOpenLog:Z

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_9
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 18
    sget-boolean v0, Lcom/shengpay/smc/sdk/utils/LogUtil;->isOpenLog:Z

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_9
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    sget-boolean v0, Lcom/shengpay/smc/sdk/utils/LogUtil;->isOpenLog:Z

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    :cond_d
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-boolean v0, Lcom/shengpay/smc/sdk/utils/LogUtil;->isOpenLog:Z

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 63
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_9
    return-void
.end method

.method public static initLog(Z)V
    .registers 1
    .param p0, "isOpen"    # Z

    .prologue
    .line 9
    sput-boolean p0, Lcom/shengpay/smc/sdk/utils/LogUtil;->isOpenLog:Z

    .line 10
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-boolean v0, Lcom/shengpay/smc/sdk/utils/LogUtil;->isOpenLog:Z

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_9
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    sget-boolean v0, Lcom/shengpay/smc/sdk/utils/LogUtil;->isOpenLog:Z

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :cond_d
    return-void
.end method
