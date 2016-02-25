.class public Lcom/yyjia/sdk/e/s;
.super Ljava/lang/Object;


# static fields
.field static a:I

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x5a

    sput v0, Lcom/yyjia/sdk/e/s;->a:I

    const/4 v0, 0x0

    sput v0, Lcom/yyjia/sdk/e/s;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
