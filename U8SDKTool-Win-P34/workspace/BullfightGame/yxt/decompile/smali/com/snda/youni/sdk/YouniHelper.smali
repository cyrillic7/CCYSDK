.class public Lcom/snda/youni/sdk/YouniHelper;
.super Ljava/lang/Object;
.source "YouniHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_CANCEL:I = 0x1

.field private static final DOWNLOAD_FAILED:I = -0x1

.field private static final DOWNLOAD_SUCCESS:I = 0x0

.field public static PKG_NAME:Ljava/lang/String; = null

.field private static final TEMP_APK_NAME:Ljava/lang/String; = "jdw_tmp.apk"

.field public static final downloadUrl:Ljava/lang/String; = "http://y.sdo.com/download/android?net=web&from=sdp_sdk_jdw&ver=1.0.0"

.field private static downloader:Lcom/snda/youni/sdk/YouniHelper; = null

.field public static final expectedMD5Digest:Ljava/lang/String; = "51:22:6E:21:C8:75:02:DC:60:EB:73:3D:DD:97:82:27"

.field public static final expectedSHA1Digest:Ljava/lang/String; = "B7:D9:C6:68:BF:03:06:68:7D:75:E5:C0:55:87:EA:80:18:82:A1:71"

.field public static final expectedVersion:I = 0x1

.field private static lock:Ljava/lang/Integer;


# instance fields
.field public apkHelper:Lcom/snda/youni/sdk/ApkHelper;

.field private mContext:Landroid/content/Context;

.field private mProgress:Landroid/app/ProgressDialog;

.field private stopped:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snda/youni/sdk/YouniHelper;->lock:Ljava/lang/Integer;

    .line 29
    const-string v0, "com.snda.youni.wallet"

    sput-object v0, Lcom/snda/youni/sdk/YouniHelper;->PKG_NAME:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snda/youni/sdk/YouniHelper;->mProgress:Landroid/app/ProgressDialog;

    .line 36
    iput-object p1, p0, Lcom/snda/youni/sdk/YouniHelper;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/snda/youni/sdk/YouniHelper;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/snda/youni/sdk/YouniHelper;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/snda/youni/sdk/YouniHelper;->mProgress:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/snda/youni/sdk/YouniHelper;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniHelper;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/snda/youni/sdk/YouniHelper;Z)V
    .registers 2

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/snda/youni/sdk/YouniHelper;->stopped:Z

    return-void
.end method

.method static synthetic access$4(Lcom/snda/youni/sdk/YouniHelper;Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/snda/youni/sdk/YouniHelper;->downloadApkFromURL(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/snda/youni/sdk/YouniHelper;)V
    .registers 1

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/snda/youni/sdk/YouniHelper;->closeProgress()V

    return-void
.end method

.method static synthetic access$6(Lcom/snda/youni/sdk/YouniHelper;)V
    .registers 1

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/snda/youni/sdk/YouniHelper;->showInstallConfirmDialog()V

    return-void
.end method

.method static synthetic access$7(Lcom/snda/youni/sdk/YouniHelper;)V
    .registers 1

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/snda/youni/sdk/YouniHelper;->showDownloadFailedDialog()V

    return-void
.end method

.method private closeProgress()V
    .registers 3

    .prologue
    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniHelper;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_c

    .line 211
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniHelper;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 212
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/snda/youni/sdk/YouniHelper;->mProgress:Landroid/app/ProgressDialog;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 217
    :cond_c
    :goto_c
    return-void

    .line 214
    :catch_d
    move-exception v0

    .line 215
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

    .line 167
    iput-boolean v9, p0, Lcom/snda/youni/sdk/YouniHelper;->stopped:Z

    .line 168
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 169
    .local v1, "connection":Ljava/net/URLConnection;
    if-nez v1, :cond_14

    .line 170
    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v9

    .line 173
    :cond_14
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    .line 174
    .local v2, "contentLength":I
    iget-object v10, p0, Lcom/snda/youni/sdk/YouniHelper;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v10, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 175
    const/4 v7, 0x0

    .line 176
    .local v7, "length":I
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 177
    .local v0, "buf":[B
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 178
    .local v5, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/File;

    iget-object v10, p0, Lcom/snda/youni/sdk/YouniHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    const-string v11, "jdw_tmp.apk"

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3c

    .line 180
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 182
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

    .line 183
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 185
    .local v8, "os":Ljava/io/OutputStream;
    :goto_5b
    const/4 v10, 0x0

    :try_start_5c
    array-length v11, v0

    invoke-virtual {v5, v0, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .local v6, "len":I
    if-gtz v6, :cond_6d

    .line 194
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_66} :catch_84
    .catchall {:try_start_5c .. :try_end_66} :catchall_8d

    .line 198
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 199
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 202
    .end local v6    # "len":I
    :goto_6c
    return v9

    .line 186
    .restart local v6    # "len":I
    :cond_6d
    :try_start_6d
    iget-boolean v10, p0, Lcom/snda/youni/sdk/YouniHelper;->stopped:Z
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6f} :catch_84
    .catchall {:try_start_6d .. :try_end_6f} :catchall_8d

    if-eqz v10, :cond_79

    .line 198
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 199
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 188
    const/4 v9, 0x1

    goto :goto_6c

    .line 190
    :cond_79
    const/4 v10, 0x0

    :try_start_7a
    invoke-virtual {v8, v0, v10, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 191
    add-int/2addr v7, v6

    .line 192
    iget-object v10, p0, Lcom/snda/youni/sdk/YouniHelper;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v10, v7}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_83} :catch_84
    .catchall {:try_start_7a .. :try_end_83} :catchall_8d

    goto :goto_5b

    .line 195
    .end local v6    # "len":I
    :catch_84
    move-exception v3

    .line 198
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 199
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 196
    const/4 v9, -0x1

    goto :goto_6c

    .line 197
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_8d
    move-exception v9

    .line 198
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 199
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 201
    throw v9
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/snda/youni/sdk/YouniHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Lcom/snda/youni/sdk/YouniHelper;->downloader:Lcom/snda/youni/sdk/YouniHelper;

    if-nez v0, :cond_19

    .line 41
    sget-object v1, Lcom/snda/youni/sdk/YouniHelper;->lock:Ljava/lang/Integer;

    monitor-enter v1

    .line 42
    :try_start_7
    sget-object v0, Lcom/snda/youni/sdk/YouniHelper;->downloader:Lcom/snda/youni/sdk/YouniHelper;

    if-nez v0, :cond_12

    .line 43
    new-instance v0, Lcom/snda/youni/sdk/YouniHelper;

    invoke-direct {v0, p0}, Lcom/snda/youni/sdk/YouniHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/snda/youni/sdk/YouniHelper;->downloader:Lcom/snda/youni/sdk/YouniHelper;

    .line 41
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 52
    :goto_13
    sget-object v0, Lcom/snda/youni/sdk/YouniHelper;->downloader:Lcom/snda/youni/sdk/YouniHelper;

    return-object v0

    .line 41
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0

    .line 47
    :cond_19
    sget-object v1, Lcom/snda/youni/sdk/YouniHelper;->lock:Ljava/lang/Integer;

    monitor-enter v1

    .line 48
    :try_start_1c
    sget-object v0, Lcom/snda/youni/sdk/YouniHelper;->downloader:Lcom/snda/youni/sdk/YouniHelper;

    iput-object p0, v0, Lcom/snda/youni/sdk/YouniHelper;->mContext:Landroid/content/Context;

    .line 47
    monitor-exit v1

    goto :goto_13

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_22

    throw v0
.end method

.method private showDownloadFailedDialog()V
    .registers 4

    .prologue
    .line 246
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/snda/youni/sdk/YouniHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 247
    .local v0, "tDialog":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 248
    const-string v1, "\u4e0b\u8f7dYouni\u5931\u8d25,\u8bf7\u68c0\u67e5\u624b\u673a\u8054\u7f51\u72b6\u6001\u662f\u5426\u826f\u597d"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 249
    const-string v1, "\u5173\u95ed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 251
    return-void
.end method

.method private showInstallConfirmDialog()V
    .registers 4

    .prologue
    .line 220
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/snda/youni/sdk/YouniHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    .local v0, "tDialog":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u5b89\u88c5\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 222
    const-string v1, "\u70b9\u51fb\u786e\u5b9a\uff0c\u7acb\u5373\u5b89\u88c5\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 224
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/snda/youni/sdk/YouniHelper$1;

    invoke-direct {v2, p0}, Lcom/snda/youni/sdk/YouniHelper$1;-><init>(Lcom/snda/youni/sdk/YouniHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/snda/youni/sdk/YouniHelper$2;

    invoke-direct {v2, p0}, Lcom/snda/youni/sdk/YouniHelper$2;-><init>(Lcom/snda/youni/sdk/YouniHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 243
    return-void
.end method


# virtual methods
.method public checkIsYouniInstalled(Lcom/snda/youni/sdk/Version;Z)Z
    .registers 10
    .param p1, "version"    # Lcom/snda/youni/sdk/Version;
    .param p2, "isTest"    # Z

    .prologue
    const/4 v2, 0x1

    .line 56
    new-instance v1, Lcom/snda/youni/sdk/ApkHelper;

    iget-object v3, p0, Lcom/snda/youni/sdk/YouniHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/snda/youni/sdk/ApkHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/snda/youni/sdk/YouniHelper;->apkHelper:Lcom/snda/youni/sdk/ApkHelper;

    .line 57
    if-eqz p2, :cond_26

    .line 58
    iget-object v3, p0, Lcom/snda/youni/sdk/YouniHelper;->apkHelper:Lcom/snda/youni/sdk/ApkHelper;

    .line 59
    iget-object v1, p1, Lcom/snda/youni/sdk/Version;->pkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Lcom/snda/youni/sdk/YouniHelper;->PKG_NAME:Ljava/lang/String;

    .line 60
    :goto_18
    iget v4, p1, Lcom/snda/youni/sdk/Version;->expectedVersion:I

    if-lez v4, :cond_1e

    iget v2, p1, Lcom/snda/youni/sdk/Version;->expectedVersion:I

    .line 58
    :cond_1e
    invoke-virtual {v3, v1, v2}, Lcom/snda/youni/sdk/ApkHelper;->checkAppWithoutDigest(Ljava/lang/String;I)Z

    move-result v0

    .line 67
    .local v0, "checkedResult":Z
    :goto_22
    return v0

    .line 59
    .end local v0    # "checkedResult":Z
    :cond_23
    iget-object v1, p1, Lcom/snda/youni/sdk/Version;->pkg:Ljava/lang/String;

    goto :goto_18

    .line 62
    :cond_26
    iget-object v5, p0, Lcom/snda/youni/sdk/YouniHelper;->apkHelper:Lcom/snda/youni/sdk/ApkHelper;

    iget-object v1, p1, Lcom/snda/youni/sdk/Version;->pkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_51

    sget-object v1, Lcom/snda/youni/sdk/YouniHelper;->PKG_NAME:Ljava/lang/String;

    .line 63
    :goto_32
    iget-object v3, p1, Lcom/snda/youni/sdk/Version;->md5:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_54

    const-string v3, "51:22:6E:21:C8:75:02:DC:60:EB:73:3D:DD:97:82:27"

    .line 64
    :goto_3c
    iget-object v4, p1, Lcom/snda/youni/sdk/Version;->sha1:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_57

    const-string v4, "B7:D9:C6:68:BF:03:06:68:7D:75:E5:C0:55:87:EA:80:18:82:A1:71"

    .line 65
    :goto_46
    iget v6, p1, Lcom/snda/youni/sdk/Version;->expectedVersion:I

    if-lez v6, :cond_4c

    iget v2, p1, Lcom/snda/youni/sdk/Version;->expectedVersion:I

    .line 62
    :cond_4c
    invoke-virtual {v5, v1, v3, v4, v2}, Lcom/snda/youni/sdk/ApkHelper;->checkApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .restart local v0    # "checkedResult":Z
    goto :goto_22

    .end local v0    # "checkedResult":Z
    :cond_51
    iget-object v1, p1, Lcom/snda/youni/sdk/Version;->pkg:Ljava/lang/String;

    goto :goto_32

    .line 63
    :cond_54
    iget-object v3, p1, Lcom/snda/youni/sdk/Version;->md5:Ljava/lang/String;

    goto :goto_3c

    .line 64
    :cond_57
    iget-object v4, p1, Lcom/snda/youni/sdk/Version;->sha1:Ljava/lang/String;

    goto :goto_46
.end method

.method public downloadYouni(Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;

    invoke-direct {v0, p0}, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;-><init>(Lcom/snda/youni/sdk/YouniHelper;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string p1, "http://y.sdo.com/download/android?net=web&from=sdp_sdk_jdw&ver=1.0.0"

    .end local p1    # "url":Ljava/lang/String;
    :cond_11
    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/snda/youni/sdk/YouniHelper$DownloadYouniTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    return-void
.end method
