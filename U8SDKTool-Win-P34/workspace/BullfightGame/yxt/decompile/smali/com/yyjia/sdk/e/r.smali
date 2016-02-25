.class Lcom/yyjia/sdk/e/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yyjia/sdk/e/r;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/yyjia/sdk/e/r;->b:J

    iput-wide p4, p0, Lcom/yyjia/sdk/e/r;->c:J

    return-void
.end method


# virtual methods
.method public a(Lcom/yyjia/sdk/e/r;)I
    .registers 8

    const/4 v0, 0x1

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-wide v2, p0, Lcom/yyjia/sdk/e/r;->c:J

    iget-wide v4, p1, Lcom/yyjia/sdk/e/r;->c:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    const/4 v0, -0x1

    goto :goto_3
.end method

.method a()J
    .registers 3

    iget-wide v0, p0, Lcom/yyjia/sdk/e/r;->b:J

    return-wide v0
.end method

.method b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/e/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/yyjia/sdk/e/r;

    invoke-virtual {p0, p1}, Lcom/yyjia/sdk/e/r;->a(Lcom/yyjia/sdk/e/r;)I

    move-result v0

    return v0
.end method
