.class public Lcom/snda/youni/sdk/ApkHelper;
.super Ljava/lang/Object;
.source "ApkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;
    }
.end annotation


# instance fields
.field appCheckResult:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snda/youni/sdk/ApkHelper;->mContext:Landroid/content/Context;

    .line 27
    iput-object p1, p0, Lcom/snda/youni/sdk/ApkHelper;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private doFingerprint([BLjava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "certificateBytes"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 176
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 177
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 179
    .local v1, "digest":[B
    const-string v5, ""

    .line 180
    .local v5, "toRet":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    array-length v6, v1

    if-lt v3, v6, :cond_12

    .line 189
    return-object v5

    .line 181
    :cond_12
    if-eqz v3, :cond_27

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 183
    :cond_27
    aget-byte v6, v1, v3

    and-int/lit16 v0, v6, 0xff

    .line 184
    .local v0, "b":I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "hex":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_49

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 187
    :cond_49
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_e
.end method

.method private getSingInfo(Ljava/lang/String;)[B
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v2, 0x0

    .line 146
    .local v2, "sign":Landroid/content/pm/Signature;
    :try_start_1
    iget-object v4, p0, Lcom/snda/youni/sdk/ApkHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 147
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 148
    .local v3, "signs":[Landroid/content/pm/Signature;
    const/4 v4, 0x0

    aget-object v2, v3, v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_17

    .line 152
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "signs":[Landroid/content/pm/Signature;
    :goto_12
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 149
    :catch_17
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method private isChannelIdLegal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "channelKey"    # Ljava/lang/String;
    .param p3, "expectedChannelId"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v2, 0x0

    .line 120
    .local v2, "channelId":Ljava/lang/String;
    :try_start_1
    iget-object v6, p0, Lcom/snda/youni/sdk/ApkHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 122
    const/16 v7, 0x80

    .line 121
    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 123
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "actualChannelId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 125
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 126
    .local v5, "intChannelValue":I
    if-ltz v5, :cond_2e

    .line 127
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2d} :catch_3f

    move-result-object v2

    .line 134
    .end local v0    # "actualChannelId":Ljava/lang/String;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "intChannelValue":I
    :cond_2e
    :goto_2e
    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 135
    .local v3, "checkedResult":Z
    if-nez v3, :cond_3c

    .line 136
    iget-object v6, p0, Lcom/snda/youni/sdk/ApkHelper;->appCheckResult:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    if-nez v6, :cond_3c

    .line 137
    sget-object v6, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;->INVALID_CHANNEL:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    iput-object v6, p0, Lcom/snda/youni/sdk/ApkHelper;->appCheckResult:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    .line 139
    :cond_3c
    return v3

    .line 128
    .end local v3    # "checkedResult":Z
    .restart local v0    # "actualChannelId":Ljava/lang/String;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3d
    move-object v2, v0

    goto :goto_2e

    .line 130
    .end local v0    # "actualChannelId":Ljava/lang/String;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_3f
    move-exception v4

    .line 131
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2e
.end method

.method private isSignatureLegal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "SHA1Fingerprints"    # Ljava/lang/String;
    .param p3, "MD5Fingerprints"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "actualMD5":Ljava/lang/String;
    const/4 v1, 0x0

    .line 159
    .local v1, "actualSha1":Ljava/lang/String;
    :try_start_2
    invoke-direct {p0, p1}, Lcom/snda/youni/sdk/ApkHelper;->getSingInfo(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "MD5"

    invoke-direct {p0, v4, v5}, Lcom/snda/youni/sdk/ApkHelper;->doFingerprint([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-direct {p0, p1}, Lcom/snda/youni/sdk/ApkHelper;->getSingInfo(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "SHA1"

    invoke-direct {p0, v4, v5}, Lcom/snda/youni/sdk/ApkHelper;->doFingerprint([BLjava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_2e

    move-result-object v1

    .line 164
    :goto_16
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 165
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 164
    const/4 v2, 0x1

    .line 166
    .local v2, "checkedResult":Z
    :goto_23
    if-nez v2, :cond_2d

    .line 167
    iget-object v4, p0, Lcom/snda/youni/sdk/ApkHelper;->appCheckResult:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    if-nez v4, :cond_2d

    .line 168
    sget-object v4, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;->INVALID_SIGNATURE:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    iput-object v4, p0, Lcom/snda/youni/sdk/ApkHelper;->appCheckResult:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    .line 170
    :cond_2d
    return v2

    .line 161
    .end local v2    # "checkedResult":Z
    :catch_2e
    move-exception v3

    .line 162
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    .line 164
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_33
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private isVersionGreatThan(ILjava/lang/String;)Z
    .registers 8
    .param p1, "versionCode"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 68
    :try_start_1
    iget-object v3, p0, Lcom/snda/youni/sdk/ApkHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 69
    const/4 v4, 0x0

    .line 68
    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 69
    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_e} :catch_1c

    .line 70
    .local v0, "actualVersionCode":I
    if-lt v0, p1, :cond_11

    const/4 v1, 0x1

    .line 74
    .end local v0    # "actualVersionCode":I
    .local v1, "checkedResult":Z
    :cond_11
    :goto_11
    if-nez v1, :cond_1b

    .line 75
    iget-object v3, p0, Lcom/snda/youni/sdk/ApkHelper;->appCheckResult:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    if-nez v3, :cond_1b

    .line 76
    sget-object v3, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;->APP_VERSION_TOO_LOW:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    iput-object v3, p0, Lcom/snda/youni/sdk/ApkHelper;->appCheckResult:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    .line 78
    :cond_1b
    return v1

    .line 71
    .end local v1    # "checkedResult":Z
    :catch_1c
    move-exception v2

    .line 72
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "checkedResult":Z
    goto :goto_11
.end method


# virtual methods
.method public checkApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "expectedMD5digest"    # Ljava/lang/String;
    .param p3, "expectedSHA1Digest"    # Ljava/lang/String;
    .param p4, "versionCode"    # I

    .prologue
    .line 42
    const/4 v0, 0x1

    .line 43
    .local v0, "checkedResult":Z
    if-eqz v0, :cond_17

    .line 44
    invoke-virtual {p0, p1}, Lcom/snda/youni/sdk/ApkHelper;->isAppExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 45
    invoke-direct {p0, p4, p1}, Lcom/snda/youni/sdk/ApkHelper;->isVersionGreatThan(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 46
    invoke-direct {p0, p1, p3, p2}, Lcom/snda/youni/sdk/ApkHelper;->isSignatureLegal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 43
    const/4 v0, 0x1

    .line 47
    :goto_16
    return v0

    .line 43
    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public checkAppWithoutChannelId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "expectedMD5digest"    # Ljava/lang/String;
    .param p3, "expectedSHA1Digest"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v0, 0x1

    .line 92
    .local v0, "checkedResult":Z
    if-eqz v0, :cond_11

    .line 93
    invoke-virtual {p0, p1}, Lcom/snda/youni/sdk/ApkHelper;->isAppExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 94
    invoke-direct {p0, p1, p3, p2}, Lcom/snda/youni/sdk/ApkHelper;->isSignatureLegal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 92
    const/4 v0, 0x1

    .line 95
    :goto_10
    return v0

    .line 92
    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public checkAppWithoutDigest(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I

    .prologue
    .line 58
    const/4 v0, 0x1

    .line 59
    .local v0, "checkedResult":Z
    if-eqz v0, :cond_11

    .line 60
    invoke-virtual {p0, p1}, Lcom/snda/youni/sdk/ApkHelper;->isAppExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 61
    invoke-direct {p0, p2, p1}, Lcom/snda/youni/sdk/ApkHelper;->isVersionGreatThan(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 59
    const/4 v0, 0x1

    .line 62
    :goto_10
    return v0

    .line 59
    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isAppExist(Ljava/lang/String;)Z
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, 0x1

    .line 100
    .local v0, "checkedResult":Z
    iget-object v3, p0, Lcom/snda/youni/sdk/ApkHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 101
    .local v2, "manager":Landroid/content/pm/PackageManager;
    const-string v3, "time1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v3, 0x0

    :try_start_1e
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_21} :catch_2c

    .line 110
    :goto_21
    if-nez v0, :cond_2b

    .line 111
    iget-object v3, p0, Lcom/snda/youni/sdk/ApkHelper;->appCheckResult:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    if-nez v3, :cond_2b

    .line 112
    sget-object v3, Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;->APP_NOT_EXIST:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    iput-object v3, p0, Lcom/snda/youni/sdk/ApkHelper;->appCheckResult:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    .line 114
    :cond_2b
    return v0

    .line 104
    :catch_2c
    move-exception v1

    .line 105
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 106
    const/4 v0, 0x0

    .line 107
    const-string v3, "time2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method
