.class Lcom/alipay/sdk/authjs/JsBridge$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/authjs/CallInfo;

.field final synthetic b:Lcom/alipay/sdk/authjs/JsBridge;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/authjs/JsBridge;Lcom/alipay/sdk/authjs/CallInfo;)V
    .registers 3

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/sdk/authjs/JsBridge$1;->b:Lcom/alipay/sdk/authjs/JsBridge;

    iput-object p2, p0, Lcom/alipay/sdk/authjs/JsBridge$1;->a:Lcom/alipay/sdk/authjs/CallInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/sdk/authjs/JsBridge$1;->b:Lcom/alipay/sdk/authjs/JsBridge;

    iget-object v1, p0, Lcom/alipay/sdk/authjs/JsBridge$1;->a:Lcom/alipay/sdk/authjs/CallInfo;

    invoke-static {v0, v1}, Lcom/alipay/sdk/authjs/JsBridge;->a(Lcom/alipay/sdk/authjs/JsBridge;Lcom/alipay/sdk/authjs/CallInfo;)Lcom/alipay/sdk/authjs/CallInfo$CallError;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/alipay/sdk/authjs/CallInfo$CallError;->a:Lcom/alipay/sdk/authjs/CallInfo$CallError;

    if-eq v0, v1, :cond_18

    .line 94
    :try_start_c
    iget-object v1, p0, Lcom/alipay/sdk/authjs/JsBridge$1;->b:Lcom/alipay/sdk/authjs/JsBridge;

    iget-object v2, p0, Lcom/alipay/sdk/authjs/JsBridge$1;->a:Lcom/alipay/sdk/authjs/CallInfo;

    invoke-virtual {v2}, Lcom/alipay/sdk/authjs/CallInfo;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/alipay/sdk/authjs/JsBridge;->a(Lcom/alipay/sdk/authjs/JsBridge;Ljava/lang/String;Lcom/alipay/sdk/authjs/CallInfo$CallError;Z)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_18} :catch_19

    .line 99
    :cond_18
    :goto_18
    return-void

    .line 95
    :catch_19
    move-exception v0

    .line 96
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_18
.end method
