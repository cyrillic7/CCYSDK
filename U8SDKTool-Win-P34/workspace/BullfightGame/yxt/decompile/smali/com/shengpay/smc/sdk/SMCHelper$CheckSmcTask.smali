.class Lcom/shengpay/smc/sdk/SMCHelper$CheckSmcTask;
.super Ljava/lang/Object;
.source "SMCHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shengpay/smc/sdk/SMCHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckSmcTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shengpay/smc/sdk/SMCHelper;


# direct methods
.method public constructor <init>(Lcom/shengpay/smc/sdk/SMCHelper;)V
    .registers 3

    .prologue
    .line 126
    iput-object p1, p0, Lcom/shengpay/smc/sdk/SMCHelper$CheckSmcTask;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const-string v0, "\u6b63\u5728\u68c0\u6d4b\u5b89\u5168\u652f\u4ed8\u670d\u52a1\u7248\u672c"

    # invokes: Lcom/shengpay/smc/sdk/SMCHelper;->showProgress(Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
    invoke-static {p1, v0}, Lcom/shengpay/smc/sdk/SMCHelper;->access$4(Lcom/shengpay/smc/sdk/SMCHelper;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shengpay/smc/sdk/SMCHelper;->access$5(Lcom/shengpay/smc/sdk/SMCHelper;Landroid/app/ProgressDialog;)V

    .line 128
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 131
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 132
    .local v3, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->what:I

    .line 134
    :try_start_8
    iget-object v5, p0, Lcom/shengpay/smc/sdk/SMCHelper$CheckSmcTask;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;

    invoke-static {}, Lcom/shengpay/smc/sdk/common/Constant;->getAPKVersionURL()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/shengpay/smc/sdk/SMCHelper;->getLatestApkInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/shengpay/smc/sdk/SMCHelper;->access$6(Lcom/shengpay/smc/sdk/SMCHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "apkInfo":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 136
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v5, "url-release"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "apkdlUrl":Ljava/lang/String;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_29

    .line 142
    .end local v0    # "apkInfo":Ljava/lang/String;
    .end local v1    # "apkdlUrl":Ljava/lang/String;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :goto_1f
    iget-object v5, p0, Lcom/shengpay/smc/sdk/SMCHelper$CheckSmcTask;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;

    # getter for: Lcom/shengpay/smc/sdk/SMCHelper;->smcHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/shengpay/smc/sdk/SMCHelper;->access$7(Lcom/shengpay/smc/sdk/SMCHelper;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    return-void

    .line 138
    :catch_29
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    const/4 v5, 0x0

    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1f
.end method
