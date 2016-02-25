.class Lcom/yyjia/sdk/center/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/center/GMcenter;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/center/GMcenter;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/center/k;->a:Lcom/yyjia/sdk/center/GMcenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/yyjia/sdk/center/k;->a:Lcom/yyjia/sdk/center/GMcenter;

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->loginType:Ljava/lang/String;
    invoke-static {v0}, Lcom/yyjia/sdk/center/GMcenter;->access$3(Lcom/yyjia/sdk/center/GMcenter;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    new-instance v0, Lcom/yyjia/sdk/b/b;

    const-string v2, "params"

    const-string v3, "sinalogin"

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;
    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->access$0()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/yyjia/sdk/center/k;->a:Lcom/yyjia/sdk/center/GMcenter;

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->username1:Ljava/lang/String;
    invoke-static {v5}, Lcom/yyjia/sdk/center/GMcenter;->access$4(Lcom/yyjia/sdk/center/GMcenter;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yyjia/sdk/center/k;->a:Lcom/yyjia/sdk/center/GMcenter;

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->password:Ljava/lang/String;
    invoke-static {v6}, Lcom/yyjia/sdk/center/GMcenter;->access$5(Lcom/yyjia/sdk/center/GMcenter;)Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;
    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->access$2()Lcom/yyjia/sdk/data/a;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/yyjia/sdk/e/ae;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/yyjia/sdk/data/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yyjia/sdk/e/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/yyjia/sdk/b/e;

    invoke-direct {v0}, Lcom/yyjia/sdk/b/e;-><init>()V

    :try_start_44
    const-string v2, "http://api.yxtsy.com/sdkapi.php"

    invoke-virtual {v0, v2, v1}, Lcom/yyjia/sdk/b/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    if-ne v0, v1, :cond_c3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, -0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/yyjia/sdk/center/k;->a:Lcom/yyjia/sdk/center/GMcenter;

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->mHandle:Landroid/os/Handler;
    invoke-static {v1}, Lcom/yyjia/sdk/center/GMcenter;->access$6(Lcom/yyjia/sdk/center/GMcenter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5f} :catch_cd

    :goto_5f
    return-void

    :cond_60
    iget-object v0, p0, Lcom/yyjia/sdk/center/k;->a:Lcom/yyjia/sdk/center/GMcenter;

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->loginType:Ljava/lang/String;
    invoke-static {v0}, Lcom/yyjia/sdk/center/GMcenter;->access$3(Lcom/yyjia/sdk/center/GMcenter;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    new-instance v0, Lcom/yyjia/sdk/b/b;

    const-string v2, "params"

    const-string v3, "qqlogin"

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;
    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->access$0()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/yyjia/sdk/center/k;->a:Lcom/yyjia/sdk/center/GMcenter;

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->username1:Ljava/lang/String;
    invoke-static {v5}, Lcom/yyjia/sdk/center/GMcenter;->access$4(Lcom/yyjia/sdk/center/GMcenter;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yyjia/sdk/center/k;->a:Lcom/yyjia/sdk/center/GMcenter;

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->password:Ljava/lang/String;
    invoke-static {v6}, Lcom/yyjia/sdk/center/GMcenter;->access$5(Lcom/yyjia/sdk/center/GMcenter;)Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;
    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->access$2()Lcom/yyjia/sdk/data/a;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/yyjia/sdk/e/ae;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/yyjia/sdk/data/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yyjia/sdk/e/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_98
    new-instance v0, Lcom/yyjia/sdk/b/b;

    const-string v2, "params"

    const-string v3, "login"

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->context:Landroid/content/Context;
    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->access$0()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/yyjia/sdk/center/k;->a:Lcom/yyjia/sdk/center/GMcenter;

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->username1:Ljava/lang/String;
    invoke-static {v5}, Lcom/yyjia/sdk/center/GMcenter;->access$4(Lcom/yyjia/sdk/center/GMcenter;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yyjia/sdk/center/k;->a:Lcom/yyjia/sdk/center/GMcenter;

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->password:Ljava/lang/String;
    invoke-static {v6}, Lcom/yyjia/sdk/center/GMcenter;->access$5(Lcom/yyjia/sdk/center/GMcenter;)Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/yyjia/sdk/center/GMcenter;->configInfo:Lcom/yyjia/sdk/data/a;
    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->access$2()Lcom/yyjia/sdk/data/a;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/yyjia/sdk/e/ae;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/yyjia/sdk/data/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yyjia/sdk/e/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/yyjia/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3c

    :cond_c3
    :try_start_c3
    invoke-static {v0}, Lcom/yyjia/sdk/e/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/center/k;->a:Lcom/yyjia/sdk/center/GMcenter;

    # invokes: Lcom/yyjia/sdk/center/GMcenter;->getSessionId(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/yyjia/sdk/center/GMcenter;->access$7(Lcom/yyjia/sdk/center/GMcenter;Ljava/lang/String;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_cc} :catch_cd

    goto :goto_5f

    :catch_cd
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5f
.end method
