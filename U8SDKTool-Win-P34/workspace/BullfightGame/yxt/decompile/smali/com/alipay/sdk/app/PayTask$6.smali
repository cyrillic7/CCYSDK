.class Lcom/alipay/sdk/app/PayTask$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/PayTask;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/PayTask;)V
    .registers 2

    .prologue
    .line 484
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$6;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 487
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$6;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v0}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/app/PayTask;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask$6;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v1}, Lcom/alipay/sdk/app/PayTask;->i(Lcom/alipay/sdk/app/PayTask;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/Utils;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 488
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$6;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v0}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/app/PayTask;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask$6;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v1}, Lcom/alipay/sdk/app/PayTask;->i(Lcom/alipay/sdk/app/PayTask;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/Utils;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 490
    iget-object v7, p0, Lcom/alipay/sdk/app/PayTask$6;->a:Lcom/alipay/sdk/app/PayTask;

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$6;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v0}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/app/PayTask;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u662f\u5426\u53d6\u6d88\u5b89\u88c5\uff1f"

    const-string v3, "\u91cd\u65b0\u5b89\u88c5"

    new-instance v4, Lcom/alipay/sdk/app/PayTask$6$1;

    invoke-direct {v4, p0}, Lcom/alipay/sdk/app/PayTask$6$1;-><init>(Lcom/alipay/sdk/app/PayTask$6;)V

    const-string v5, "\u53d6\u6d88"

    new-instance v6, Lcom/alipay/sdk/app/PayTask$6$2;

    invoke-direct {v6, p0}, Lcom/alipay/sdk/app/PayTask$6$2;-><init>(Lcom/alipay/sdk/app/PayTask$6;)V

    invoke-static/range {v0 .. v6}, Lcom/alipay/sdk/widget/SystemDefaultDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/app/PayTask;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 535
    :goto_42
    return-void

    .line 523
    :cond_43
    sget-object v1, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 524
    :try_start_46
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->b:Lcom/alipay/sdk/app/ResultStatus;

    invoke-static {v0}, Lcom/alipay/sdk/app/ResultStatus;->a(Lcom/alipay/sdk/app/ResultStatus;)Lcom/alipay/sdk/app/ResultStatus;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-static {v2, v0, v3}, Lcom/alipay/sdk/app/Result;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/Result;->a(Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_46 .. :try_end_5d} :catchall_64

    .line 529
    :try_start_5d
    sget-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_62} :catch_67
    .catchall {:try_start_5d .. :try_end_62} :catchall_64

    .line 533
    :goto_62
    :try_start_62
    monitor-exit v1

    goto :goto_42

    :catchall_64
    move-exception v0

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_64

    throw v0

    .line 530
    :catch_67
    move-exception v0

    .line 531
    :try_start_68
    invoke-static {v0}, Lcom/alipay/sdk/util/LogUtils;->a(Ljava/lang/Object;)V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_64

    goto :goto_62
.end method
