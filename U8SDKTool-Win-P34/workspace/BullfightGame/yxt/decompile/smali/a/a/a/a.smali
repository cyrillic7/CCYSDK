.class public La/a/a/a;
.super La/a/a/e;


# static fields
.field private static final c:[C

.field private static final d:[B


# instance fields
.field a:[B

.field b:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x40

    new-array v1, v1, [C

    fill-array-data v1, :array_30

    sput-object v1, La/a/a/a;->c:[C

    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, La/a/a/a;->d:[B

    move v1, v0

    :goto_11
    const/16 v2, 0xff

    if-lt v1, v2, :cond_1b

    :goto_15
    sget-object v1, La/a/a/a;->c:[C

    array-length v1, v1

    if-lt v0, v1, :cond_23

    return-void

    :cond_1b
    sget-object v2, La/a/a/a;->d:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_23
    sget-object v1, La/a/a/a;->d:[B

    sget-object v2, La/a/a/a;->c:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    nop

    :array_30
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, La/a/a/e;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, La/a/a/a;->a:[B

    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method protected a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x3

    const/4 v1, 0x2

    const/4 v0, -0x1

    if-ge p3, v1, :cond_f

    new-instance v0, La/a/a/c;

    const-string v1, "BASE64Decoder: Not enough bytes for an atom."

    invoke-direct {v0, v1}, La/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v2

    iput v2, p0, La/a/a/a;->b:I

    iget v2, p0, La/a/a/a;->b:I

    if-ne v2, v0, :cond_1f

    new-instance v0, La/a/a/d;

    invoke-direct {v0}, La/a/a/d;-><init>()V

    throw v0

    :cond_1f
    iget v2, p0, La/a/a/a;->b:I

    const/16 v4, 0xa

    if-eq v2, v4, :cond_f

    iget v2, p0, La/a/a/a;->b:I

    const/16 v4, 0xd

    if-eq v2, v4, :cond_f

    iget-object v2, p0, La/a/a/a;->a:[B

    iget v4, p0, La/a/a/a;->b:I

    int-to-byte v4, v4

    aput-byte v4, v2, v6

    iget-object v2, p0, La/a/a/a;->a:[B

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p0, p1, v2, v7, v4}, La/a/a/a;->a(Ljava/io/InputStream;[BII)I

    move-result v2

    if-ne v2, v0, :cond_42

    new-instance v0, La/a/a/d;

    invoke-direct {v0}, La/a/a/d;-><init>()V

    throw v0

    :cond_42
    if-le p3, v3, :cond_df

    iget-object v2, p0, La/a/a/a;->a:[B

    aget-byte v2, v2, v3

    const/16 v4, 0x3d

    if-ne v2, v4, :cond_df

    move v2, v3

    :goto_4d
    if-le v2, v1, :cond_dc

    iget-object v4, p0, La/a/a/a;->a:[B

    aget-byte v4, v4, v1

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_dc

    move v4, v1

    :goto_58
    packed-switch v4, :pswitch_data_e2

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_5e
    packed-switch v4, :pswitch_data_ec

    :goto_61
    return-void

    :pswitch_62
    sget-object v0, La/a/a/a;->d:[B

    iget-object v2, p0, La/a/a/a;->a:[B

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v0, v0, v2

    :pswitch_6c
    sget-object v2, La/a/a/a;->d:[B

    iget-object v3, p0, La/a/a/a;->a:[B

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v2, v1

    :goto_76
    sget-object v2, La/a/a/a;->d:[B

    iget-object v3, p0, La/a/a/a;->a:[B

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    sget-object v3, La/a/a/a;->d:[B

    iget-object v5, p0, La/a/a/a;->a:[B

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-byte v3, v3, v5

    goto :goto_5e

    :pswitch_8b
    shl-int/lit8 v0, v3, 0x2

    and-int/lit16 v0, v0, 0xfc

    ushr-int/lit8 v1, v2, 0x4

    and-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_61

    :pswitch_99
    shl-int/lit8 v0, v3, 0x2

    and-int/lit16 v0, v0, 0xfc

    ushr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0x3

    or-int/2addr v0, v3

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v2, 0x4

    and-int/lit16 v0, v0, 0xf0

    ushr-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_61

    :pswitch_b4
    shl-int/lit8 v3, v3, 0x2

    and-int/lit16 v3, v3, 0xfc

    ushr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xf0

    ushr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v1, 0x6

    and-int/lit16 v1, v1, 0xc0

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_61

    :pswitch_da
    move v1, v0

    goto :goto_76

    :cond_dc
    move v4, v2

    goto/16 :goto_58

    :cond_df
    move v2, p3

    goto/16 :goto_4d

    :pswitch_data_e2
    .packed-switch 0x2
        :pswitch_da
        :pswitch_6c
        :pswitch_62
    .end packed-switch

    :pswitch_data_ec
    .packed-switch 0x2
        :pswitch_8b
        :pswitch_99
        :pswitch_b4
    .end packed-switch
.end method

.method protected b()I
    .registers 2

    const/16 v0, 0x48

    return v0
.end method
