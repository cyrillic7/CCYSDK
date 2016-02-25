.class Lcom/yyjia/sdk/f/ct;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/cf;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/cf;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/yyjia/sdk/f/ct;->a:Lcom/yyjia/sdk/f/cf;

    iput-object p2, p0, Lcom/yyjia/sdk/f/ct;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Lcom/yyjia/sdk/b/e;

    invoke-direct {v0}, Lcom/yyjia/sdk/b/e;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/yyjia/sdk/f/ct;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/yyjia/sdk/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/yyjia/sdk/f/ct;->a:Lcom/yyjia/sdk/f/cf;

    const/16 v2, 0x1772

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/yyjia/sdk/f/cf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method
