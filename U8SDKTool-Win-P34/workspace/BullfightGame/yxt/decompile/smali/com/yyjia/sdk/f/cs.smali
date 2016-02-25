.class Lcom/yyjia/sdk/f/cs;
.super Lcom/shengpay/smc/sdk/callback/AbstractPaymentCallback;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/cf;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/cf;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/cs;->a:Lcom/yyjia/sdk/f/cf;

    invoke-direct {p0}, Lcom/shengpay/smc/sdk/callback/AbstractPaymentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPaymentFinished(Ljava/lang/String;)V
    .registers 5

    const/16 v2, 0x1f42

    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "transStatus"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x1f41

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/yyjia/sdk/f/cs;->a:Lcom/yyjia/sdk/f/cf;

    iget-object v1, v1, Lcom/yyjia/sdk/f/cf;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_25
    return-void

    :cond_26
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x1f42

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/yyjia/sdk/f/cs;->a:Lcom/yyjia/sdk/f/cf;

    iget-object v1, v1, Lcom/yyjia/sdk/f/cf;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_36} :catch_37

    goto :goto_25

    :catch_37
    move-exception v0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/yyjia/sdk/f/cs;->a:Lcom/yyjia/sdk/f/cf;

    iget-object v1, v1, Lcom/yyjia/sdk/f/cf;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_25
.end method
