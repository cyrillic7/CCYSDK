.class public final Lcom/alipay/sdk/exception/NetErrorException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final NET_CONNECTION_ERROR:I = 0x0

.field public static final SERVER_ERROR:I = 0x1

.field public static final SSL_ERROR:I = 0x2

.field private static final serialVersionUID:J = 0x743720ff0041e99bL


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0, v0}, Lcom/alipay/sdk/exception/NetErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/sdk/exception/NetErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/sdk/exception/NetErrorException;->errorCode:I

    .line 45
    invoke-static {p1, p2}, Lcom/alipay/sdk/exception/NetErrorException;->printException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alipay/sdk/exception/NetErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    return-void
.end method

.method public static printException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 58
    const-string v0, "NetError"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetError--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1e
    if-eqz p1, :cond_3c

    .line 62
    :try_start_20
    const-string v0, "NetError"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetError--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3c} :catch_3d

    .line 66
    :cond_3c
    :goto_3c
    return-void

    .line 64
    :catch_3d
    move-exception v0

    goto :goto_3c
.end method


# virtual methods
.method public final getErrorCode()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/alipay/sdk/exception/NetErrorException;->errorCode:I

    return v0
.end method

.method public final setErrorCode(I)V
    .registers 2

    .prologue
    .line 53
    iput p1, p0, Lcom/alipay/sdk/exception/NetErrorException;->errorCode:I

    .line 54
    return-void
.end method
