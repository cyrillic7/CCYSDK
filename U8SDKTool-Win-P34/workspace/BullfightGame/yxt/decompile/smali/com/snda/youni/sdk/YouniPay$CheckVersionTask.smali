.class public Lcom/snda/youni/sdk/YouniPay$CheckVersionTask;
.super Landroid/os/AsyncTask;
.source "YouniPay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snda/youni/sdk/YouniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckVersionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/snda/youni/sdk/Version;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snda/youni/sdk/YouniPay;


# direct methods
.method public constructor <init>(Lcom/snda/youni/sdk/YouniPay;)V
    .registers 2

    .prologue
    .line 229
    iput-object p1, p0, Lcom/snda/youni/sdk/YouniPay$CheckVersionTask;->this$0:Lcom/snda/youni/sdk/YouniPay;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/snda/youni/sdk/Version;
    .registers 13
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    .line 233
    :try_start_1
    invoke-static {}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->INSTANCE()Lcom/shengpay/smc/sdk/http/SimpleHttpClient;

    move-result-object v1

    .line 234
    .local v1, "http":Lcom/shengpay/smc/sdk/http/SimpleHttpClient;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v3, "params":Landroid/os/Bundle;
    const-string v9, "v"

    const-string v10, "0.01"

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v9, "key"

    const-string v10, "sdp_sdk_jdw_ver_chk"

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v9, "from"

    const-string v10, "sdp_sdk"

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    # getter for: Lcom/snda/youni/sdk/YouniPay;->isTest:Z
    invoke-static {}, Lcom/snda/youni/sdk/YouniPay;->access$14()Z

    move-result v9

    if-eqz v9, :cond_44

    const-string v9, "http://temp.y.sdo.com/services/switch/list"

    :goto_27
    invoke-virtual {v1, v9, v3}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->sendGetMessage(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 239
    .local v4, "response":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 240
    .local v5, "responseJson":Lorg/json/JSONObject;
    const-string v9, "resultCode"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, "resultCode":Ljava/lang/String;
    if-eqz v6, :cond_47

    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_47

    move-object v7, v8

    .line 256
    .end local v1    # "http":Lcom/shengpay/smc/sdk/http/SimpleHttpClient;
    .end local v3    # "params":Landroid/os/Bundle;
    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "responseJson":Lorg/json/JSONObject;
    .end local v6    # "resultCode":Ljava/lang/String;
    :goto_43
    return-object v7

    .line 238
    .restart local v1    # "http":Lcom/shengpay/smc/sdk/http/SimpleHttpClient;
    .restart local v3    # "params":Landroid/os/Bundle;
    :cond_44
    const-string v9, "http://switch.apps.y.sdo.com/services/switch/list"

    goto :goto_27

    .line 244
    .restart local v4    # "response":Ljava/lang/String;
    .restart local v5    # "responseJson":Lorg/json/JSONObject;
    .restart local v6    # "resultCode":Ljava/lang/String;
    :cond_47
    const-string v9, "result"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "sdp_sdk_jdw_ver_chk"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 245
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v7, Lcom/snda/youni/sdk/Version;

    invoke-direct {v7}, Lcom/snda/youni/sdk/Version;-><init>()V

    .line 246
    .local v7, "version":Lcom/snda/youni/sdk/Version;
    const-string v9, "version"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/snda/youni/sdk/Version;->setExpectedVersion(I)V

    .line 247
    const-string v9, "msg"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/snda/youni/sdk/Version;->setMsg(Ljava/lang/String;)V

    .line 248
    const-string v9, "sha1"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/snda/youni/sdk/Version;->setSha1(Ljava/lang/String;)V

    .line 249
    const-string v9, "pkg"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/snda/youni/sdk/Version;->setPkg(Ljava/lang/String;)V

    .line 250
    const-string v9, "md5"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/snda/youni/sdk/Version;->setMd5(Ljava/lang/String;)V

    .line 251
    const-string v9, "url"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/snda/youni/sdk/Version;->setUrl(Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8e} :catch_8f

    goto :goto_43

    .line 255
    .end local v1    # "http":Lcom/shengpay/smc/sdk/http/SimpleHttpClient;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "params":Landroid/os/Bundle;
    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "responseJson":Lorg/json/JSONObject;
    .end local v6    # "resultCode":Ljava/lang/String;
    .end local v7    # "version":Lcom/snda/youni/sdk/Version;
    :catch_8f
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v7, v8

    .line 256
    goto :goto_43
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/snda/youni/sdk/YouniPay$CheckVersionTask;->doInBackground([Ljava/lang/Void;)Lcom/snda/youni/sdk/Version;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/snda/youni/sdk/Version;)V
    .registers 5
    .param p1, "result"    # Lcom/snda/youni/sdk/Version;

    .prologue
    .line 267
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniPay$CheckVersionTask;->this$0:Lcom/snda/youni/sdk/YouniPay;

    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay$CheckVersionTask;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->myWhat:I
    invoke-static {v1}, Lcom/snda/youni/sdk/YouniPay;->access$2(Lcom/snda/youni/sdk/YouniPay;)I

    move-result v1

    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay$CheckVersionTask;->this$0:Lcom/snda/youni/sdk/YouniPay;

    # getter for: Lcom/snda/youni/sdk/YouniPay;->callback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/snda/youni/sdk/YouniPay;->access$3(Lcom/snda/youni/sdk/YouniPay;)Landroid/os/Handler;

    move-result-object v2

    # invokes: Lcom/snda/youni/sdk/YouniPay;->checkInstalledYouni(ILandroid/os/Handler;Lcom/snda/youni/sdk/Version;)V
    invoke-static {v0, v1, v2, p1}, Lcom/snda/youni/sdk/YouniPay;->access$15(Lcom/snda/youni/sdk/YouniPay;ILandroid/os/Handler;Lcom/snda/youni/sdk/Version;)V

    .line 269
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Lcom/snda/youni/sdk/Version;

    invoke-virtual {p0, p1}, Lcom/snda/youni/sdk/YouniPay$CheckVersionTask;->onPostExecute(Lcom/snda/youni/sdk/Version;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 262
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 263
    return-void
.end method
