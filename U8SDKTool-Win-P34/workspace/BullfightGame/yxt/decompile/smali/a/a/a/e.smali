.class public abstract La/a/a/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(Ljava/io/InputStream;[BII)I
    .registers 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_2
    if-lt v1, p4, :cond_6

    move v0, p4

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v0, :cond_10

    if-eqz v1, :cond_5

    move v0, v1

    goto :goto_5

    :cond_10
    add-int v3, v1, p3

    int-to-byte v2, v2

    aput-byte v2, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 8

    const/4 v1, 0x0

    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v2, p2}, La/a/a/e;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    move v0, v1

    :goto_a
    :try_start_a
    invoke-virtual {p0, v2, p2}, La/a/a/e;->c(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I

    move-result v3

    invoke-virtual {p0}, La/a/a/e;->a()I

    move-result v4

    add-int/2addr v4, v1

    if-ge v4, v3, :cond_27

    invoke-virtual {p0}, La/a/a/e;->a()I

    move-result v3

    invoke-virtual {p0, v2, p2, v3}, La/a/a/e;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {p0}, La/a/a/e;->a()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, La/a/a/e;->a()I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_a

    :cond_27
    invoke-virtual {p0}, La/a/a/e;->a()I

    move-result v4

    add-int/2addr v4, v1

    if-ne v4, v3, :cond_43

    invoke-virtual {p0}, La/a/a/e;->a()I

    move-result v3

    invoke-virtual {p0, v2, p2, v3}, La/a/a/e;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {p0}, La/a/a/e;->a()I

    move-result v3

    add-int/2addr v0, v3

    :goto_3a
    invoke-virtual {p0, v2, p2}, La/a/a/e;->d(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    :try_end_3d
    .catch La/a/a/d; {:try_start_a .. :try_end_3d} :catch_3e

    goto :goto_a

    :catch_3e
    move-exception v0

    invoke-virtual {p0, v2, p2}, La/a/a/e;->b(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    return-void

    :cond_43
    sub-int v4, v3, v1

    :try_start_45
    invoke-virtual {p0, v2, p2, v4}, La/a/a/e;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    :try_end_48
    .catch La/a/a/d; {:try_start_45 .. :try_end_48} :catch_3e

    sub-int/2addr v3, v1

    add-int/2addr v0, v3

    goto :goto_3a
.end method

.method protected a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .registers 3

    return-void
.end method

.method protected a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .registers 5

    new-instance v0, La/a/a/d;

    invoke-direct {v0}, La/a/a/d;-><init>()V

    throw v0
.end method

.method public a(Ljava/lang/String;)[B
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1, v0, v2}, Ljava/lang/String;->getBytes(II[BI)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v1, v0}, La/a/a/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected abstract b()I
.end method

.method protected b(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .registers 3

    return-void
.end method

.method protected c(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I
    .registers 4

    invoke-virtual {p0}, La/a/a/e;->b()I

    move-result v0

    return v0
.end method

.method protected d(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .registers 3

    return-void
.end method
