.class public Lcom/yyjia/sdk/e/t;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^((13[0-9])|(17[0-9])|(15[^4,\\D])|(18[0-9]))\\d{8}$"

    sput-object v0, Lcom/yyjia/sdk/e/t;->a:Ljava/lang/String;

    const-string v0, "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$"

    sput-object v0, Lcom/yyjia/sdk/e/t;->b:Ljava/lang/String;

    const-string v0, "\\b((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\b"

    sput-object v0, Lcom/yyjia/sdk/e/t;->c:Ljava/lang/String;

    const-string v0, "^((\\d{2}(([02468][048])|([13579][26]))[\\-\\/\\s]?((((0?[13578])|(1[02]))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])))))|(\\d{2}(([02468][1235679])|([13579][01345789]))[\\-\\/\\s]?((((0?[13578])|(1[02]))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\\-\\/\\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\\s(((0?[0-9])|([1-2][0-3]))\\:([0-5]?[0-9])((\\s)|(\\:([0-5]?[0-9])))))?$"

    sput-object v0, Lcom/yyjia/sdk/e/t;->d:Ljava/lang/String;

    const-string v0, "^[\\w-]{2,20}$"

    sput-object v0, Lcom/yyjia/sdk/e/t;->e:Ljava/lang/String;

    const-string v0, "^\\d{4,20}$"

    sput-object v0, Lcom/yyjia/sdk/e/t;->f:Ljava/lang/String;

    const-string v0, "^(\\w{6,20})$"

    sput-object v0, Lcom/yyjia/sdk/e/t;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_8} :catch_1a

    const/4 v2, 0x6

    if-lt v1, v2, :cond_f

    const/16 v2, 0x14

    if-le v1, v2, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    sget-object v1, Lcom/yyjia/sdk/e/t;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    goto :goto_f

    :catch_1a
    move-exception v1

    goto :goto_f
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/yyjia/sdk/e/t;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v3, -0x1

    const-string v1, "CH"

    const-string v2, "CH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1e

    sget-object v1, Lcom/yyjia/sdk/e/t;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    sget-object v1, Lcom/yyjia/sdk/e/t;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    const/4 v0, 0x0

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1d

    sget-object v0, Lcom/yyjia/sdk/e/t;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1d
.end method
