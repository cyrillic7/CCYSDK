.class public Lcom/shengpay/smc/sdk/http/SimpleHttpClient;
.super Ljava/lang/Object;
.source "SimpleHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shengpay/smc/sdk/http/SimpleHttpClient$StringResponseHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleHttpClient"

.field private static simpleHttpClient:Lcom/shengpay/smc/sdk/http/SimpleHttpClient;


# instance fields
.field protected client:Lorg/apache/http/client/HttpClient;

.field private responseHandler:Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/client/ResponseHandler",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;

    invoke-direct {v0}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;-><init>()V

    sput-object v0, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->simpleHttpClient:Lcom/shengpay/smc/sdk/http/SimpleHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 14
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v10, Lcom/shengpay/smc/sdk/http/SimpleHttpClient$StringResponseHandler;

    invoke-direct {v10, p0}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient$StringResponseHandler;-><init>(Lcom/shengpay/smc/sdk/http/SimpleHttpClient;)V

    iput-object v10, p0, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->responseHandler:Lorg/apache/http/client/ResponseHandler;

    .line 64
    const-string v10, "SimpleHttpClient"

    const-string v11, "Init HttpClient..."

    invoke-static {v10, v11}, Lcom/shengpay/smc/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :try_start_11
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 67
    .local v2, "httpParams":Lorg/apache/http/params/BasicHttpParams;
    const/4 v10, 0x1

    invoke-static {v2, v10}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 68
    const v10, 0xea60

    invoke-static {v2, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 69
    const/16 v10, 0x7530

    invoke-static {v2, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 70
    const/16 v10, 0x4000

    invoke-static {v2, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 71
    const/4 v10, 0x0

    invoke-static {v2, v10}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 72
    const/4 v10, 0x0

    invoke-static {v2, v10}, Lorg/apache/http/client/params/HttpClientParams;->setAuthenticating(Lorg/apache/http/params/HttpParams;Z)V

    .line 73
    if-eqz p1, :cond_37

    .line 74
    invoke-static {v2, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 76
    :cond_37
    new-instance v5, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 78
    .local v5, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    .line 80
    .local v6, "socketFactory":Lorg/apache/http/conn/scheme/PlainSocketFactory;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "http"

    const/16 v11, 0x50

    invoke-direct {v3, v10, v6, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 81
    .local v3, "httpScheme":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v5, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 87
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v10

    .line 86
    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    .line 88
    .local v8, "trustStore":Ljava/security/KeyStore;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 89
    new-instance v7, Lcom/shengpay/smc/sdk/http/SmkSSLSocketFactory;

    invoke-direct {v7, v8}, Lcom/shengpay/smc/sdk/http/SmkSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 92
    .local v7, "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v9, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 94
    .local v9, "x509HostnameVerifier":Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    invoke-virtual {v7, v9}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 95
    invoke-static {v9}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 97
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "https"

    const/16 v11, 0x1bb

    invoke-direct {v4, v10, v7, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 98
    .local v4, "httpsScheme":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v5, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 100
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v5}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 103
    .local v0, "connManager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v10, p0, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->client:Lorg/apache/http/client/HttpClient;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_7e} :catch_7f

    .line 107
    .end local v0    # "connManager":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2    # "httpParams":Lorg/apache/http/params/BasicHttpParams;
    .end local v3    # "httpScheme":Lorg/apache/http/conn/scheme/Scheme;
    .end local v4    # "httpsScheme":Lorg/apache/http/conn/scheme/Scheme;
    .end local v5    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v6    # "socketFactory":Lorg/apache/http/conn/scheme/PlainSocketFactory;
    .end local v7    # "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v8    # "trustStore":Ljava/security/KeyStore;
    .end local v9    # "x509HostnameVerifier":Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    :goto_7e
    return-void

    .line 104
    :catch_7f
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "SimpleHttpClient"

    invoke-static {v10, v1}, Lcom/shengpay/smc/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7e
.end method

.method public static INSTANCE()Lcom/shengpay/smc/sdk/http/SimpleHttpClient;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->simpleHttpClient:Lcom/shengpay/smc/sdk/http/SimpleHttpClient;

    return-object v0
.end method

.method private static getParamsList(Landroid/os/Bundle;)Ljava/util/List;
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 275
    :cond_8
    const/4 v1, 0x0

    .line 281
    :cond_9
    return-object v1

    .line 277
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 279
    .local v0, "key":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method private getParamsList(Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p1, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 260
    const-string v4, "&"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "paramArray":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v1, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    array-length v6, v3

    move v4, v5

    :goto_e
    if-lt v4, v6, :cond_11

    .line 270
    return-object v1

    .line 263
    :cond_11
    aget-object v2, v3, v4

    .line 264
    .local v2, "param":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "keyValue":[Ljava/lang/String;
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    aget-object v8, v0, v5

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    add-int/lit8 v4, v4, 0x1

    goto :goto_e
.end method

.method private getParamsListByJson(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 8
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 245
    .local v2, "keyiter":Ljava/util/Iterator;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v3, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_10

    .line 256
    return-object v3

    .line 248
    :cond_10
    :try_start_10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 249
    .local v1, "key":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_22} :catch_23

    goto :goto_9

    .line 250
    .end local v1    # "key":Ljava/lang/String;
    :catch_23
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SimpleHttpClient"

    invoke-static {v4, v0}, Lcom/shengpay/smc/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method


# virtual methods
.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 10
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<TT;>;"
    const-string v5, "SimpleHttpClient"

    const-string v6, "HttpClient execute request..."

    invoke-static {v5, v6}, Lcom/shengpay/smc/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v4, 0x0

    .line 115
    .local v4, "returnString":Z
    instance-of v5, p2, Lcom/shengpay/smc/sdk/http/SimpleHttpClient$StringResponseHandler;

    if-eqz v5, :cond_d

    .line 116
    const/4 v4, 0x1

    .line 120
    :cond_d
    if-nez p2, :cond_16

    .line 121
    :try_start_f
    iget-object v5, p0, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v5, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 167
    :goto_15
    return-object v2

    .line 124
    :cond_16
    iget-object v5, p0, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v5, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    :try_end_1b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_f .. :try_end_1b} :catch_1d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_f .. :try_end_1b} :catch_37
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1b} :catch_51

    move-result-object v2

    goto :goto_15

    .line 126
    :catch_1d
    move-exception v0

    .line 127
    .local v0, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    const-string v5, "SimpleHttpClient"

    invoke-static {v5, v0}, Lcom/shengpay/smc/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    const/4 v2, 0x0

    .line 129
    .local v2, "response":Ljava/lang/Object;
    if-eqz v4, :cond_29

    .line 130
    const-string v2, "{\'code\':\'-9997\',\'message\':\'[-9997]\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u60a8\u91cd\u65b0\u5c1d\u8bd5\'}"

    .line 131
    .local v2, "response":Ljava/lang/String;
    goto :goto_15

    .line 133
    .local v2, "response":Ljava/lang/Object;
    :cond_29
    :try_start_29
    new-instance v3, Lorg/json/JSONObject;

    const-string v5, "{\'status\':\'ERROR\',\'result\':{\'code\':\'-9997\',\'message\':\'\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u60a8\u91cd\u65b0\u5c1d\u8bd5\'}}"

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_30} :catch_32

    .end local v2    # "response":Ljava/lang/Object;
    .local v3, "response":Lorg/json/JSONObject;
    move-object v2, v3

    .line 134
    .restart local v2    # "response":Ljava/lang/Object;
    goto :goto_15

    .end local v3    # "response":Lorg/json/JSONObject;
    :catch_32
    move-exception v1

    .line 135
    .local v1, "e1":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_15

    .line 139
    .end local v0    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    .end local v1    # "e1":Lorg/json/JSONException;
    .end local v2    # "response":Ljava/lang/Object;
    :catch_37
    move-exception v0

    .line 140
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v5, "SimpleHttpClient"

    invoke-static {v5, v0}, Lcom/shengpay/smc/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    const/4 v2, 0x0

    .line 142
    .restart local v2    # "response":Ljava/lang/Object;
    if-eqz v4, :cond_43

    .line 143
    const-string v2, "{\'code\':\'-9998\',\'message\':\'[-9998]\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u60a8\u91cd\u65b0\u5c1d\u8bd5\'}"

    .line 144
    .local v2, "response":Ljava/lang/String;
    goto :goto_15

    .line 146
    .local v2, "response":Ljava/lang/Object;
    :cond_43
    :try_start_43
    new-instance v3, Lorg/json/JSONObject;

    const-string v5, "{\'status\':\'ERROR\',\'result\':{\'code\':\'-9998\',\'message\':\'\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u60a8\u91cd\u65b0\u5c1d\u8bd5\'}}"

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_4a} :catch_4c

    .end local v2    # "response":Ljava/lang/Object;
    .restart local v3    # "response":Lorg/json/JSONObject;
    move-object v2, v3

    .line 147
    .restart local v2    # "response":Ljava/lang/Object;
    goto :goto_15

    .end local v3    # "response":Lorg/json/JSONObject;
    :catch_4c
    move-exception v1

    .line 148
    .restart local v1    # "e1":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_15

    .line 154
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    .end local v1    # "e1":Lorg/json/JSONException;
    .end local v2    # "response":Ljava/lang/Object;
    :catch_51
    move-exception v0

    .line 155
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "SimpleHttpClient"

    invoke-static {v5, v0}, Lcom/shengpay/smc/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    const/4 v2, 0x0

    .line 157
    .restart local v2    # "response":Ljava/lang/Object;
    if-eqz v4, :cond_5d

    .line 158
    const-string v2, "{\'code\':\'-9999\',\'message\':\'[-9999]\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u60a8\u91cd\u65b0\u5c1d\u8bd5\'}"

    .line 159
    .local v2, "response":Ljava/lang/String;
    goto :goto_15

    .line 161
    .local v2, "response":Ljava/lang/Object;
    :cond_5d
    :try_start_5d
    new-instance v3, Lorg/json/JSONObject;

    const-string v5, "{\'status\':\'ERROR\',\'result\':{\'code\':\'-9999\',\'message\':\'\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u60a8\u91cd\u65b0\u5c1d\u8bd5\'}}"

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_64} :catch_6d

    .line 162
    .restart local v3    # "response":Lorg/json/JSONObject;
    :try_start_64
    const-string v5, "SimpleHttpClient"

    .end local v2    # "response":Ljava/lang/Object;
    const-string v6, "HttpClient execute request...\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6-9999"

    invoke-static {v5, v6}, Lcom/shengpay/smc/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_64 .. :try_end_6b} :catch_72

    move-object v2, v3

    .line 163
    goto :goto_15

    .end local v3    # "response":Lorg/json/JSONObject;
    .restart local v2    # "response":Ljava/lang/Object;
    :catch_6d
    move-exception v1

    .line 164
    .end local v2    # "response":Ljava/lang/Object;
    .restart local v1    # "e1":Lorg/json/JSONException;
    :goto_6e
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_15

    .line 163
    .end local v1    # "e1":Lorg/json/JSONException;
    .restart local v3    # "response":Lorg/json/JSONObject;
    :catch_72
    move-exception v1

    move-object v2, v3

    .end local v3    # "response":Lorg/json/JSONObject;
    .local v2, "response":Lorg/json/JSONObject;
    goto :goto_6e
.end method

.method public getResponseHandler()Lorg/apache/http/client/ResponseHandler;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->responseHandler:Lorg/apache/http/client/ResponseHandler;

    return-object v0
.end method

.method public sendGetMessage(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    const-string v1, "SimpleHttpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendGetMessage, uri: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shengpay/smc/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->getResponseHandler()Lorg/apache/http/client/ResponseHandler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public sendGetMessage(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "paramsMap"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    const-string v5, "SimpleHttpClient"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sendGetMessage, uri: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " paramsMap: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 185
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 184
    invoke-static {v5, v6}, Lcom/shengpay/smc/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v5

    if-eqz v5, :cond_3e

    .line 189
    const-string v5, "?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_38
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5f

    .line 194
    :cond_3e
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "url":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 197
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 198
    invoke-virtual {p0}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->getResponseHandler()Lorg/apache/http/client/ResponseHandler;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 190
    .end local v0    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v4    # "url":Ljava/lang/String;
    :cond_5f
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    .local v1, "key":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38
.end method

.method public sendJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 304
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_16

    .line 305
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    const-string v2, "utf-8"

    invoke-direct {v0, p2, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .local v0, "entity":Lorg/apache/http/entity/StringEntity;
    const-string v2, "application/json"

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 309
    .end local v0    # "entity":Lorg/apache/http/entity/StringEntity;
    :cond_16
    invoke-virtual {p0}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->getResponseHandler()Lorg/apache/http/client/ResponseHandler;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public sendPostMessage(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const-string v2, "SimpleHttpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendPostMessage, uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shengpay/smc/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_39

    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_39

    .line 207
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .line 208
    invoke-static {p2}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->getParamsList(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    const-string v3, "utf-8"

    .line 207
    invoke-direct {v0, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 209
    .local v0, "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 211
    .end local v0    # "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_39
    invoke-virtual {p0}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->getResponseHandler()Lorg/apache/http/client/ResponseHandler;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public sendPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    const-string v2, "SimpleHttpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendPostMessage, uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " paramsMap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 218
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-static {v2, v3}, Lcom/shengpay/smc/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_33

    .line 222
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .line 223
    invoke-direct {p0, p2}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->getParamsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "utf-8"

    .line 222
    invoke-direct {v0, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 224
    .local v0, "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 226
    .end local v0    # "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_33
    invoke-virtual {p0}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->getResponseHandler()Lorg/apache/http/client/ResponseHandler;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public sendPostMessage(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_15

    .line 235
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .line 236
    invoke-direct {p0, p2}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->getParamsListByJson(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    const-string v3, "utf-8"

    .line 235
    invoke-direct {v0, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 237
    .local v0, "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 239
    .end local v0    # "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_15
    invoke-virtual {p0}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->getResponseHandler()Lorg/apache/http/client/ResponseHandler;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/shengpay/smc/sdk/http/SimpleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
