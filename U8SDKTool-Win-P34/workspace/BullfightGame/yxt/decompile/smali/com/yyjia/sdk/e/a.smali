.class public Lcom/yyjia/sdk/e/a;
.super Ljava/lang/Object;


# static fields
.field static a:Landroid/telephony/TelephonyManager;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# direct methods
.method public static a()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/yyjia/sdk/e/a;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/yyjia/sdk/e/a;->b()Ljava/lang/String;

    move-result-object v0

    :cond_a
    if-eqz v0, :cond_1b

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    const/4 v2, 0x2

    array-length v3, v1

    if-lt v2, v3, :cond_1b

    const/4 v0, 0x1

    aget-object v0, v1, v0

    :cond_1b
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/yyjia/sdk/e/a;->a:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_e

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/yyjia/sdk/e/a;->a:Landroid/telephony/TelephonyManager;

    :cond_e
    sget-object v0, Lcom/yyjia/sdk/e/a;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yyjia/sdk/e/a;->b:Ljava/lang/String;

    sget-object v0, Lcom/yyjia/sdk/e/a;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yyjia/sdk/e/a;->c:Ljava/lang/String;

    sget-object v0, Lcom/yyjia/sdk/e/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    :try_start_5
    const-string v2, "/system/bin/cat /proc/cpuinfo"

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_24

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_1c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_20
    if-nez v0, :cond_27

    :goto_22
    move-object v0, v1

    :cond_23
    :goto_23
    return-object v0

    :catch_24
    move-exception v0

    move-object v0, v1

    goto :goto_23

    :cond_27
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hardware"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_23

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_36} :catch_38

    move-result-object v0

    goto :goto_20

    :catch_38
    move-exception v0

    goto :goto_22
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/yyjia/sdk/e/a;->a:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_e

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/yyjia/sdk/e/a;->a:Landroid/telephony/TelephonyManager;

    :cond_e
    sget-object v0, Lcom/yyjia/sdk/e/a;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yyjia/sdk/e/a;->b:Ljava/lang/String;

    sget-object v0, Lcom/yyjia/sdk/e/a;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yyjia/sdk/e/a;->c:Ljava/lang/String;

    sget-object v0, Lcom/yyjia/sdk/e/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .registers 4

    const-string v0, "/proc/cpuinfo"

    :try_start_2
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {v2, v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :cond_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :goto_17
    const/4 v0, 0x0

    :goto_18
    return-object v0

    :cond_19
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "hardware"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_e

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_28} :catch_29

    goto :goto_18

    :catch_29
    move-exception v0

    goto :goto_17
.end method
