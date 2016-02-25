.class public Lcom/shengpay/smc/sdk/jni/NativeJni;
.super Ljava/lang/Object;
.source "NativeJni.java"


# static fields
.field private static sLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/shengpay/smc/sdk/jni/NativeJni;->sLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyLib(Landroid/content/Context;)V
    .registers 14
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    .line 39
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 40
    .local v6, "files":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9
    array-length v10, v6

    if-lt v7, v10, :cond_54

    .line 45
    const/4 v9, 0x0

    .line 46
    .local v9, "out":Ljava/io/OutputStream;
    const/4 v8, 0x0

    .line 48
    .local v8, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 49
    .local v2, "bytesum":I
    const/4 v1, 0x0

    .line 50
    .local v1, "byteread":I
    :try_start_10
    const-string v10, "libsmc.so"

    const/4 v11, 0x2

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "so/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/shengpay/smc/sdk/jni/NativeJni;->getCPU()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "libsmc.so"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 52
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 54
    .local v0, "buffer":[B
    :goto_42
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_45} :catch_67
    .catchall {:try_start_10 .. :try_end_45} :catchall_8a

    move-result v1

    const/4 v10, -0x1

    if-ne v1, v10, :cond_61

    .line 70
    if-eqz v8, :cond_4e

    .line 71
    :try_start_4b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 72
    :cond_4e
    if-eqz v9, :cond_53

    .line 73
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_53} :catch_9b

    .line 78
    .end local v0    # "buffer":[B
    .end local v1    # "byteread":I
    .end local v2    # "bytesum":I
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "out":Ljava/io/OutputStream;
    :cond_53
    :goto_53
    return-void

    .line 41
    :cond_54
    aget-object v10, v6, v7

    const-string v11, "libsmc.so"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_53

    .line 40
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 55
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteread":I
    .restart local v2    # "bytesum":I
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    :cond_61
    add-int/2addr v2, v1

    .line 56
    const/4 v10, 0x0

    :try_start_63
    invoke-virtual {v9, v0, v10, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67
    .catchall {:try_start_63 .. :try_end_66} :catchall_8a

    goto :goto_42

    .line 58
    .end local v0    # "buffer":[B
    :catch_67
    move-exception v3

    .line 59
    .local v3, "e":Ljava/io/IOException;
    :try_start_68
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_8a

    .line 61
    if-eqz v8, :cond_70

    .line 62
    :try_start_6d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 63
    :cond_70
    if-eqz v9, :cond_75

    .line 64
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_75} :catch_85
    .catchall {:try_start_6d .. :try_end_75} :catchall_8a

    .line 70
    :cond_75
    :goto_75
    if-eqz v8, :cond_7a

    .line 71
    :try_start_77
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 72
    :cond_7a
    if-eqz v9, :cond_53

    .line 73
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7f} :catch_80

    goto :goto_53

    .line 74
    :catch_80
    move-exception v3

    .line 75
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_53

    .line 65
    :catch_85
    move-exception v4

    .line 66
    .local v4, "e1":Ljava/io/IOException;
    :try_start_86
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_75

    .line 68
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e1":Ljava/io/IOException;
    :catchall_8a
    move-exception v10

    .line 70
    if-eqz v8, :cond_90

    .line 71
    :try_start_8d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 72
    :cond_90
    if-eqz v9, :cond_95

    .line 73
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_95} :catch_96

    .line 77
    :cond_95
    :goto_95
    throw v10

    .line 74
    :catch_96
    move-exception v3

    .line 75
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_95

    .line 74
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    :catch_9b
    move-exception v3

    .line 75
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_53
.end method

.method public static native encrypt(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static getCPU()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 27
    .local v0, "cpu":Ljava/lang/String;
    const-string v1, "mips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 28
    const-string v1, "mips"

    .line 34
    :goto_c
    return-object v1

    .line 29
    :cond_d
    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 30
    const-string v1, "x86"

    goto :goto_c

    .line 31
    :cond_18
    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 32
    const-string v1, "armeabi-v7a"

    goto :goto_c

    .line 34
    :cond_23
    const-string v1, "armeabi"

    goto :goto_c
.end method

.method public static native getRandomKey()[I
.end method

.method public static load(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    sget-boolean v0, Lcom/shengpay/smc/sdk/jni/NativeJni;->sLoaded:Z

    if-nez v0, :cond_26

    .line 17
    invoke-static {p0}, Lcom/shengpay/smc/sdk/jni/NativeJni;->copyLib(Landroid/content/Context;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/libsmc.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/shengpay/smc/sdk/jni/NativeJni;->sLoaded:Z

    .line 21
    :cond_26
    return-void
.end method

.method public static native verifyApkCert(Ljava/lang/String;)Z
.end method
