.class Lcom/yyjia/sdk/center/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/center/GMcenter;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/center/GMcenter;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/yyjia/sdk/center/l;->a:Lcom/yyjia/sdk/center/GMcenter;

    iput-object p2, p0, Lcom/yyjia/sdk/center/l;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/yyjia/sdk/b/b;

    const-string v2, "ac"

    const-string v3, "logout"

    invoke-direct {v1, v2, v3}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/yyjia/sdk/b/b;

    const-string v3, "username"

    iget-object v4, p0, Lcom/yyjia/sdk/center/l;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/yyjia/sdk/b/e;

    invoke-direct {v1}, Lcom/yyjia/sdk/b/e;-><init>()V

    :try_start_22
    const-string v2, "http://api.yxtsy.com/sdkapi.php"

    invoke-virtual {v1, v2, v0}, Lcom/yyjia/sdk/b/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_28

    :goto_27
    return-void

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method
