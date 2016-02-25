.class public final Lcom/shengpay/smc/sdk/utils/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 10
    if-eqz p0, :cond_a

    const-string v6, ""

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 11
    :cond_a
    const-string v6, ""

    .line 28
    :goto_c
    return-object v6

    .line 13
    :cond_d
    const/4 v1, 0x0

    .line 15
    .local v1, "buf":Ljava/lang/StringBuffer;
    :try_start_e
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 16
    .local v5, "md":Ljava/security/MessageDigest;
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 17
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 18
    .local v0, "b":[B
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v6, v0

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_29} :catch_53

    .line 19
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

    .line 28
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

    .line 20
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

    .line 21
    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    :cond_44
    aget-byte v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_50} :catch_58

    .line 19
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 25
    .end local v0    # "b":[B
    .end local v2    # "buf":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v5    # "md":Ljava/security/MessageDigest;
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    :catch_53
    move-exception v3

    .line 26
    .local v3, "ex":Ljava/lang/Exception;
    :goto_54
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e

    .line 25
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
