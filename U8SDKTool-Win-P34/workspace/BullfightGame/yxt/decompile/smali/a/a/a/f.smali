.class public abstract La/a/a/f;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(Ljava/io/InputStream;[B)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-lt v0, v1, :cond_6

    array-length v0, p2

    :cond_5
    return v0

    :cond_6
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([B)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_a
    invoke-virtual {p0, v1, v0}, La/a/a/f;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const-string v1, "8859_1"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_14

    move-result-object v0

    return-object v0

    :catch_14
    move-exception v0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "CharacterEncoder.encode internal error"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7

    invoke-virtual {p0}, La/a/a/f;->b()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p0, p2}, La/a/a/f;->a(Ljava/io/OutputStream;)V

    :goto_9
    invoke-virtual {p0, p1, v1}, La/a/a/f;->a(Ljava/io/InputStream;[B)I

    move-result v2

    if-nez v2, :cond_13

    :cond_f
    invoke-virtual {p0, p2}, La/a/a/f;->b(Ljava/io/OutputStream;)V

    return-void

    :cond_13
    invoke-virtual {p0, p2, v2}, La/a/a/f;->a(Ljava/io/OutputStream;I)V

    const/4 v0, 0x0

    :goto_17
    if-lt v0, v2, :cond_23

    invoke-virtual {p0}, La/a/a/f;->b()I

    move-result v0

    if-lt v2, v0, :cond_f

    invoke-virtual {p0, p2}, La/a/a/f;->c(Ljava/io/OutputStream;)V

    goto :goto_9

    :cond_23
    invoke-virtual {p0}, La/a/a/f;->a()I

    move-result v3

    add-int/2addr v3, v0

    if-gt v3, v2, :cond_37

    invoke-virtual {p0}, La/a/a/f;->a()I

    move-result v3

    invoke-virtual {p0, p2, v1, v0, v3}, La/a/a/f;->a(Ljava/io/OutputStream;[BII)V

    :goto_31
    invoke-virtual {p0}, La/a/a/f;->a()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_17

    :cond_37
    sub-int v3, v2, v0

    invoke-virtual {p0, p2, v1, v0, v3}, La/a/a/f;->a(Ljava/io/OutputStream;[BII)V

    goto :goto_31
.end method

.method protected a(Ljava/io/OutputStream;)V
    .registers 3

    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, La/a/a/f;->a:Ljava/io/PrintStream;

    return-void
.end method

.method protected a(Ljava/io/OutputStream;I)V
    .registers 3

    return-void
.end method

.method protected abstract a(Ljava/io/OutputStream;[BII)V
.end method

.method protected abstract b()I
.end method

.method protected b(Ljava/io/OutputStream;)V
    .registers 2

    return-void
.end method

.method protected c(Ljava/io/OutputStream;)V
    .registers 3

    iget-object v0, p0, La/a/a/f;->a:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void
.end method
