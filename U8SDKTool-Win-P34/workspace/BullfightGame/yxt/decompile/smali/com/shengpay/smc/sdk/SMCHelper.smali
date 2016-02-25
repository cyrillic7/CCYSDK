.class public Lcom/shengpay/smc/sdk/SMCHelper;
.super Ljava/lang/Object;
.source "SMCHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shengpay/smc/sdk/SMCHelper$CheckSmcTask;,
        Lcom/shengpay/smc/sdk/SMCHelper$DownloadSmcTask;
    }
.end annotation


# static fields
.field private static final HANDLER_CHECK_APK_INSTALLED:I = 0x1

.field private static final HANDLER_DOWNLOAD_SMC_TASK:I = 0x2

.field protected static final SMC_CHECK_FAIL:I = 0x0

.field protected static final SMC_DOWNLOAD_EXIT:I = -0x1

.field protected static final SMC_INSTALL_CHECK:I = 0x1

.field private static final SMC_PACKAGE_NAME:Ljava/lang/String; = "com.shengpay.smc"

.field private static final TAG:Ljava/lang/String; = "SMCHelper"

.field private static final TEMP_APK_NAME:Ljava/lang/String; = "temp.apk"

.field private static monitor:Ljava/lang/Object;

.field private static smcHelper:Lcom/shengpay/smc/sdk/SMCHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProgress:Landroid/app/ProgressDialog;

.field private smcHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private stopdownload:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shengpay/smc/sdk/SMCHelper;->monitor:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shengpay/smc/sdk/SMCHelper;->stopdownload:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shengpay/smc/sdk/SMCHelper;->mProgress:Landroid/app/ProgressDialog;

    .line 64
    new-instance v0, Lcom/shengpay/smc/sdk/SMCHelper$1;

    invoke-direct {v0, p0}, Lcom/shengpay/smc/sdk/SMCHelper$1;-><init>(Lcom/shengpay/smc/sdk/SMCHelper;)V

    iput-object v0, p0, Lcom/shengpay/smc/sdk/SMCHelper;->smcHandler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/shengpay/smc/sdk/SMCHelper;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/shengpay/smc/sdk/SMCHelper;)V
    .registers 1

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/shengpay/smc/sdk/SMCHelper;->closeProgress()V

    return-void
.end method

.method static synthetic access$1(Lcom/shengpay/smc/sdk/SMCHelper;)V
    .registers 1

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/shengpay/smc/sdk/SMCHelper;->showCheckFailedDialog()V

    return-void
.end method

.method static synthetic access$10(Lcom/shengpay/smc/sdk/SMCHelper;Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/shengpay/smc/sdk/SMCHelper;->downloadApkFromURL(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/shengpay/smc/sdk/SMCHelper;)V
    .registers 1

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/shengpay/smc/sdk/SMCHelper;->showInstallConfirmDialog()V

    return-void
.end method

.method static synthetic access$3(Lcom/shengpay/smc/sdk/SMCHelper;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/shengpay/smc/sdk/SMCHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/shengpay/smc/sdk/SMCHelper;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
    .registers 3

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/shengpay/smc/sdk/SMCHelper;->showProgress(Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/shengpay/smc/sdk/SMCHelper;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/shengpay/smc/sdk/SMCHelper;->mProgress:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$6(Lcom/shengpay/smc/sdk/SMCHelper;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/shengpay/smc/sdk/SMCHelper;->getLatestApkInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/shengpay/smc/sdk/SMCHelper;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/shengpay/smc/sdk/SMCHelper;->smcHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/shengpay/smc/sdk/SMCHelper;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/shengpay/smc/sdk/SMCHelper;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$9(Lcom/shengpay/smc/sdk/SMCHelper;Z)V
    .registers 2

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/shengpay/smc/sdk/SMCHelper;->stopdownload:Z

    return-void
.end method

.method private closeProgress()V
    .registers 3

    .prologue
    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/shengpay/smc/sdk/SMCHelper;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_c

    .line 295
    iget-object v1, p0, Lcom/shengpay/smc/sdk/SMCHelper;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 296
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shengpay/smc/sdk/SMCHelper;->mProgress:Landroid/app/ProgressDialog;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 301
    :cond_c
    :goto_c
    return-void

    .line 298
    :catch_d
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method private downloadApkFromURL(Ljava/lang/String;)I
    .registers 15
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 244
    iput-boolean v9, p0, Lcom/shengpay/smc/sdk/SMCHelper;->stopdownload:Z

    .line 245
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 246
    .local v1, "connection":Ljava/net/URLConnection;
    if-nez v1, :cond_14

    .line 247
    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v9

    .line 250
    :cond_14
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    .line 251
    .local v2, "contentLength":I
    iget-object v10, p0, Lcom/shengpay/smc/sdk/SMCHelper;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v10, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 252
    const/4 v7, 0x0

    .line 253
    .local v7, "length":I
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 254
    .local v0, "buf":[B
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 255
    .local v5, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/File;

    iget-object v10, p0, Lcom/shengpay/smc/sdk/SMCHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    const-string v11, "temp.apk"

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3c

    .line 257
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 259
    :cond_3c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "chmod 777 "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 260
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 262
    .local v8, "os":Ljava/io/OutputStream;
    :goto_5b
    const/4 v10, 0x0

    :try_start_5c
    array-length v11, v0

    invoke-virtual {v5, v0, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .local v6, "len":I
    if-gtz v6, :cond_6e

    .line 271
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_66} :catch_85
    .catchall {:try_start_5c .. :try_end_66} :catchall_8d

    .line 275
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 276
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 279
    const/4 v9, 0x1

    .end local v6    # "len":I
    :goto_6d
    return v9

    .line 263
    .restart local v6    # "len":I
    :cond_6e
    :try_start_6e
    iget-boolean v10, p0, Lcom/shengpay/smc/sdk/SMCHelper;->stopdownload:Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_70} :catch_85
    .catchall {:try_start_6e .. :try_end_70} :catchall_8d

    if-eqz v10, :cond_7a

    .line 275
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 276
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 265
    const/4 v9, -0x1

    goto :goto_6d

    .line 267
    :cond_7a
    const/4 v10, 0x0

    :try_start_7b
    invoke-virtual {v8, v0, v10, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 268
    add-int/2addr v7, v6

    .line 269
    iget-object v10, p0, Lcom/shengpay/smc/sdk/SMCHelper;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v10, v7}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_84} :catch_85
    .catchall {:try_start_7b .. :try_end_84} :catchall_8d

    goto :goto_5b

    .line 272
    .end local v6    # "len":I
    :catch_85
    move-exception v3

    .line 275
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 276
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    goto :goto_6d

    .line 274
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_8d
    move-exception v9

    .line 275
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 276
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 278
    throw v9
.end method

.method public static encryptMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "input"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 467
    if-eqz p0, :cond_a

    const-string v6, ""

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 468
    :cond_a
    const-string v6, ""

    .line 485
    :goto_c
    return-object v6

    .line 470
    :cond_d
    const/4 v1, 0x0

    .line 472
    .local v1, "buf":Ljava/lang/StringBuffer;
    :try_start_e
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 473
    .local v5, "md":Ljava/security/MessageDigest;
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 474
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 475
    .local v0, "b":[B
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v6, v0

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_29} :catch_53

    .line 476
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .local v2, "buf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2a
    :try_start_2a
    array-length v6, v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2b} :catch_58

    if-lt v4, v6, :cond_37

    move-object v1, v2

    .line 485
    .end local v0    # "b":[B
    .end local v2    # "buf":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v5    # "md":Ljava/security/MessageDigest;
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    :goto_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_c

    .line 477
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .restart local v0    # "b":[B
    .restart local v2    # "buf":Ljava/lang/StringBuffer;
    .restart local v4    # "i":I
    .restart local v5    # "md":Ljava/security/MessageDigest;
    :cond_37
    :try_start_37
    aget-byte v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    if-ge v6, v7, :cond_44

    .line 478
    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    :cond_44
    aget-byte v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_50} :catch_58

    .line 476
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 482
    .end local v0    # "b":[B
    .end local v2    # "buf":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v5    # "md":Ljava/security/MessageDigest;
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    :catch_53
    move-exception v3

    .line 483
    .local v3, "ex":Ljava/lang/Exception;
    :goto_54
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e

    .line 482
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v0    # "b":[B
    .restart local v2    # "buf":Ljava/lang/StringBuffer;
    .restart local v4    # "i":I
    .restart local v5    # "md":Ljava/security/MessageDigest;
    :catch_58
    move-exception v3

    move-object v1, v2

    .end local v2    # "buf":Ljava/lang/StringBuffer;
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    goto :goto_54
.end method

.method private getAPKCertThumbprint()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 375
    :try_start_1
    iget-object v3, p0, Lcom/shengpay/smc/sdk/SMCHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.shengpay.smc"

    .line 376
    const/16 v5, 0x40

    .line 375
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 376
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 378
    .local v1, "s":[Landroid/content/pm/Signature;
    if-eqz v1, :cond_21

    array-length v3, v1

    if-lez v3, :cond_21

    .line 379
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/shengpay/smc/sdk/SMCHelper;->getCertThumbprint([B)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_22

    move-result-object v2

    .line 385
    .end local v1    # "s":[Landroid/content/pm/Signature;
    :cond_21
    :goto_21
    return-object v2

    .line 383
    :catch_22
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SMCHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method private getCertThumbprint([B)Ljava/lang/String;
    .registers 7
    .param p1, "signature"    # [B

    .prologue
    .line 392
    :try_start_0
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 394
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 393
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 395
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const-string v3, "md5"

    const-string v4, ":"

    invoke-static {v0, v3, v4}, Lcom/shengpay/smc/sdk/SMCHelper;->getThumbprint(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v3

    .line 399
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :goto_19
    return-object v3

    .line 396
    :catch_1a
    move-exception v2

    .line 397
    .local v2, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 399
    const/4 v3, 0x0

    goto :goto_19
.end method

.method private static getHex([BLjava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "buf"    # [B
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    .line 429
    const-string v4, ""

    .line 431
    .local v4, "result":Ljava/lang/String;
    if-nez p0, :cond_8

    .line 432
    const-string v6, ""

    .line 461
    :goto_7
    return-object v6

    .line 435
    :cond_8
    const-string v1, ""

    .line 436
    .local v1, "defaultDelimiter":Ljava/lang/String;
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_13

    .line 437
    move-object v1, p1

    .line 440
    :cond_13
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    array-length v6, p0

    if-lt v2, v6, :cond_19

    move-object v6, v4

    .line 461
    goto :goto_7

    .line 441
    :cond_19
    if-lez v2, :cond_2c

    .line 442
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 445
    :cond_2c
    aget-byte v5, p0, v2

    .line 446
    .local v5, "sValue":S
    const/4 v3, 0x0

    .line 447
    .local v3, "iValue":I
    add-int/2addr v3, v5

    .line 448
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "converted":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_5c

    .line 451
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    :cond_44
    :goto_44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 454
    :cond_5c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v8, :cond_44

    .line 455
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_44
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/shengpay/smc/sdk/SMCHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    sget-object v0, Lcom/shengpay/smc/sdk/SMCHelper;->smcHelper:Lcom/shengpay/smc/sdk/SMCHelper;

    if-nez v0, :cond_19

    .line 102
    sget-object v1, Lcom/shengpay/smc/sdk/SMCHelper;->monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_7
    sget-object v0, Lcom/shengpay/smc/sdk/SMCHelper;->smcHelper:Lcom/shengpay/smc/sdk/SMCHelper;

    if-nez v0, :cond_12

    .line 104
    new-instance v0, Lcom/shengpay/smc/sdk/SMCHelper;

    invoke-direct {v0, p0}, Lcom/shengpay/smc/sdk/SMCHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/shengpay/smc/sdk/SMCHelper;->smcHelper:Lcom/shengpay/smc/sdk/SMCHelper;

    .line 102
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 113
    :goto_13
    sget-object v0, Lcom/shengpay/smc/sdk/SMCHelper;->smcHelper:Lcom/shengpay/smc/sdk/SMCHelper;

    return-object v0

    .line 102
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0

    .line 108
    :cond_19
    sget-object v1, Lcom/shengpay/smc/sdk/SMCHelper;->monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_1c
    sget-object v0, Lcom/shengpay/smc/sdk/SMCHelper;->smcHelper:Lcom/shengpay/smc/sdk/SMCHelper;

    iput-object p0, v0, Lcom/shengpay/smc/sdk/SMCHelper;->mContext:Landroid/content/Context;

    .line 108
    monitor-exit v1

    goto :goto_13

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_22

    throw v0
.end method

.method private getLatestApkInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "apkInfoUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 221
    .local v2, "connection":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 222
    .local v4, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 223
    .local v1, "bis":Ljava/io/BufferedInputStream;
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v7, 0x32

    invoke-direct {v0, v7}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 224
    .local v0, "baf":Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v3, 0x0

    .line 225
    .local v3, "current":I
    :goto_1a
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_2b

    .line 228
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v6

    .line 229
    .local v6, "receivedData":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 231
    .local v5, "jsonStr":Ljava/lang/String;
    return-object v5

    .line 226
    .end local v5    # "jsonStr":Ljava/lang/String;
    .end local v6    # "receivedData":[B
    :cond_2b
    int-to-byte v7, v3

    invoke-virtual {v0, v7}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V

    goto :goto_1a
.end method

.method public static getThumbprint(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "thumAlg"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 403
    if-nez p0, :cond_4

    .line 424
    :cond_3
    :goto_3
    return-object v3

    .line 407
    :cond_4
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 411
    const-string v3, ""

    .line 413
    .local v3, "thumbPrint":Ljava/lang/String;
    :try_start_e
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 414
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 415
    .local v2, "rawDigest":[B
    invoke-static {v2, p2}, Lcom/shengpay/smc/sdk/SMCHelper;->getHex([BLjava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_1d} :catch_1f
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_e .. :try_end_1d} :catch_3d

    move-result-object v3

    goto :goto_3

    .line 416
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "rawDigest":[B
    :catch_1f
    move-exception v0

    .line 417
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, ""

    .line 418
    const-string v4, "SMCHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u4e0d\u652f\u6301["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]\u7b97\u6cd5\uff01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 419
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_3d
    move-exception v0

    .line 420
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    const-string v3, ""

    .line 421
    const-string v4, "SMCHelper"

    const-string v5, "\u8bc1\u4e66\u7f16\u7801\u5f02\u5e38\uff01"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private isInstalled(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v2, p0, Lcom/shengpay/smc/sdk/SMCHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 211
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_17

    .line 216
    const/4 v2, -0x1

    :goto_16
    return v2

    .line 211
    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 212
    .local v0, "ai":Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 213
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_16
.end method

.method private showCheckFailedDialog()V
    .registers 4

    .prologue
    .line 336
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/shengpay/smc/sdk/SMCHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 337
    .local v0, "tDialog":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 338
    const-string v1, "\u5b89\u88c5\u76db\u4ed8\u901a\u5b89\u5168\u652f\u4ed8\u670d\u52a1\u5931\u8d25,\u8bf7\u68c0\u67e5\u624b\u673a\u8054\u7f51\u72b6\u6001\u662f\u5426\u826f\u597d"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 339
    const-string v1, "\u5173\u95ed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 340
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 341
    return-void
.end method

.method private showInstallConfirmDialog()V
    .registers 4

    .prologue
    .line 310
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/shengpay/smc/sdk/SMCHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 311
    .local v0, "tDialog":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u5b89\u88c5\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 312
    const-string v1, "\u4e3a\u4fdd\u8bc1\u60a8\u7684\u4ea4\u6613\u5b89\u5168\uff0c\u9700\u8981\u60a8\u5b89\u88c5\u76db\u4ed8\u901a\u5b89\u5168\u652f\u4ed8\u670d\u52a1\uff0c\u624d\u80fd\u8fdb\u884c\u4ed8\u6b3e\u3002\n\n\u70b9\u51fb\u786e\u5b9a\uff0c\u7acb\u5373\u5b89\u88c5\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 314
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/shengpay/smc/sdk/SMCHelper$2;

    invoke-direct {v2, p0}, Lcom/shengpay/smc/sdk/SMCHelper$2;-><init>(Lcom/shengpay/smc/sdk/SMCHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 327
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/shengpay/smc/sdk/SMCHelper$3;

    invoke-direct {v2, p0}, Lcom/shengpay/smc/sdk/SMCHelper$3;-><init>(Lcom/shengpay/smc/sdk/SMCHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 332
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 333
    return-void
.end method

.method private showProgress(Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
    .registers 4
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 284
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/shengpay/smc/sdk/SMCHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 285
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 286
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 288
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 289
    return-object v0
.end method


# virtual methods
.method public detectSmcExist()Z
    .registers 4

    .prologue
    .line 117
    const-string v1, "com.shengpay.smc"

    invoke-direct {p0, v1}, Lcom/shengpay/smc/sdk/SMCHelper;->isInstalled(Ljava/lang/String;)I

    move-result v0

    .line 119
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 120
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/shengpay/smc/sdk/SMCHelper$CheckSmcTask;

    invoke-direct {v2, p0}, Lcom/shengpay/smc/sdk/SMCHelper$CheckSmcTask;-><init>(Lcom/shengpay/smc/sdk/SMCHelper;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 122
    :cond_16
    if-lez v0, :cond_1a

    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public verifyAPKCert()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 347
    :try_start_1
    invoke-static {}, Lcom/shengpay/smc/sdk/common/Constant;->getTargetStage()Lcom/shengpay/smc/sdk/common/enums/Stage;

    move-result-object v3

    sget-object v4, Lcom/shengpay/smc/sdk/common/enums/Stage;->PROD:Lcom/shengpay/smc/sdk/common/enums/Stage;

    if-eq v3, v4, :cond_a

    .line 366
    :cond_9
    :goto_9
    return v2

    .line 350
    :cond_a
    invoke-direct {p0}, Lcom/shengpay/smc/sdk/SMCHelper;->getAPKCertThumbprint()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "apkCertThumbprint":Ljava/lang/String;
    if-eqz v0, :cond_9

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 356
    const-string v3, "A9:2A:34:FF:78:3E:5B:0E:A8:D6:31:0F:36:4A:F1:13"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 359
    const-string v3, "SMCHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u8bc1\u4e66\u6307\u7eb9\u4e0d\u5339\u914d:expect:A9:2A:34:FF:78:3E:5B:0E:A8:D6:31:0F:36:4A:F1:13,actual:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shengpay/smc/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_36

    .line 360
    const/4 v2, 0x0

    goto :goto_9

    .line 363
    .end local v0    # "apkCertThumbprint":Ljava/lang/String;
    :catch_36
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    const-string v3, "SMCHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u8bc1\u4e66\u5339\u914d\u5f02\u5e38:expect:A9:2A:34:FF:78:3E:5B:0E:A8:D6:31:0F:36:4A:F1:13,actual:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shengpay/smc/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method
