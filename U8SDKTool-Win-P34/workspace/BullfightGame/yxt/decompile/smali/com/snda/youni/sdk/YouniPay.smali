.class public Lcom/snda/youni/sdk/YouniPay;
.super Ljava/lang/Object;
.source "YouniPay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snda/youni/sdk/YouniPay$CheckVersionTask;
    }
.end annotation


# static fields
.field private static final CHECK_VERSION_URL:Ljava/lang/String; = "http://switch.apps.y.sdo.com/services/switch/list"

.field private static final TEST_CHECK_VERSION_URL:Ljava/lang/String; = "http://temp.y.sdo.com/services/switch/list"

.field public static final guideUrl:Ljava/lang/String;

.field private static isTest:Z


# instance fields
.field private callback:Landroid/os/Handler;

.field private downloadPage:Lcom/snda/youni/sdk/DownloadWebPage;

.field iYouniPayApi:Lcom/snda/youni/sdk/IYouniPayApi;

.field private installed:Z

.field private isReceiverRegistered:Z

.field private jsonParams:Ljava/lang/String;

.field lock:Ljava/lang/Integer;

.field private mCallback:Lcom/snda/youni/sdk/IBizCallback;

.field private mContext:Landroid/content/Context;

.field private mPackageInstallationListener:Landroid/content/BroadcastReceiver;

.field private mPaying:Z

.field private myWhat:I

.field private registeredCallbackId:J

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private serviceDisconnected:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snda/youni/sdk/YouniPay;->isTest:Z

    .line 25
    sget-boolean v0, Lcom/snda/youni/sdk/YouniPay;->isTest:Z

    if-eqz v0, :cond_c

    const-string v0, "http://y.sdo.com/face-pay-test/show-error"

    :goto_9
    sput-object v0, Lcom/snda/youni/sdk/YouniPay;->guideUrl:Ljava/lang/String;

    return-void

    :cond_c
    const-string v0, "http://y.sdo.com/face-pay/show-error"

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snda/youni/sdk/YouniPay;->iYouniPayApi:Lcom/snda/youni/sdk/IYouniPayApi;

    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/snda/youni/sdk/YouniPay;->lock:Ljava/lang/Integer;

    .line 107
    new-instance v0, Lcom/snda/youni/sdk/YouniPay$1;

    invoke-direct {v0, p0}, Lcom/snda/youni/sdk/YouniPay$1;-><init>(Lcom/snda/youni/sdk/YouniPay;)V

    iput-object v0, p0, Lcom/snda/youni/sdk/YouniPay;->serviceConnection:Landroid/content/ServiceConnection;

    .line 129
    new-instance v0, Lcom/snda/youni/sdk/YouniPay$2;

    invoke-direct {v0, p0}, Lcom/snda/youni/sdk/YouniPay$2;-><init>(Lcom/snda/youni/sdk/YouniPay;)V

    iput-object v0, p0, Lcom/snda/youni/sdk/YouniPay;->mCallback:Lcom/snda/youni/sdk/IBizCallback;

    .line 201
    new-instance v0, Lcom/snda/youni/sdk/YouniPay$3;

    invoke-direct {v0, p0}, Lcom/snda/youni/sdk/YouniPay$3;-><init>(Lcom/snda/youni/sdk/YouniPay;)V

    iput-object v0, p0, Lcom/snda/youni/sdk/YouniPay;->mPackageInstallationListener:Landroid/content/BroadcastReceiver;

    .line 33
    iput-object p1, p0, Lcom/snda/youni/sdk/YouniPay;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/snda/youni/sdk/YouniPay;Z)V
    .registers 2

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/snda/youni/sdk/YouniPay;->serviceDisconnected:Z

    return-void
.end method

.method static synthetic access$1(Lcom/snda/youni/sdk/YouniPay;)Z
    .registers 2

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/snda/youni/sdk/YouniPay;->mPaying:Z

    return v0
.end method

.method static synthetic access$10(Lcom/snda/youni/sdk/YouniPay;Z)V
    .registers 2

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/snda/youni/sdk/YouniPay;->isReceiverRegistered:Z

    return-void
.end method

.method static synthetic access$11(Lcom/snda/youni/sdk/YouniPay;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniPay;->jsonParams:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/snda/youni/sdk/YouniPay;)Lcom/snda/youni/sdk/DownloadWebPage;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniPay;->downloadPage:Lcom/snda/youni/sdk/DownloadWebPage;

    return-object v0
.end method

.method static synthetic access$13(Lcom/snda/youni/sdk/YouniPay;Z)V
    .registers 2

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/snda/youni/sdk/YouniPay;->installed:Z

    return-void
.end method

.method static synthetic access$14()Z
    .registers 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/snda/youni/sdk/YouniPay;->isTest:Z

    return v0
.end method

.method static synthetic access$15(Lcom/snda/youni/sdk/YouniPay;ILandroid/os/Handler;Lcom/snda/youni/sdk/Version;)V
    .registers 4

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/snda/youni/sdk/YouniPay;->checkInstalledYouni(ILandroid/os/Handler;Lcom/snda/youni/sdk/Version;)V

    return-void
.end method

.method static synthetic access$16(Lcom/snda/youni/sdk/YouniPay;)Z
    .registers 2

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/snda/youni/sdk/YouniPay;->installed:Z

    return v0
.end method

.method static synthetic access$17(Lcom/snda/youni/sdk/YouniPay;)Lcom/snda/youni/sdk/IBizCallback;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniPay;->mCallback:Lcom/snda/youni/sdk/IBizCallback;

    return-object v0
.end method

.method static synthetic access$18(Lcom/snda/youni/sdk/YouniPay;J)V
    .registers 4

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/snda/youni/sdk/YouniPay;->registeredCallbackId:J

    return-void
.end method

.method static synthetic access$19(Lcom/snda/youni/sdk/YouniPay;)Z
    .registers 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/snda/youni/sdk/YouniPay;->serviceDisconnected:Z

    return v0
.end method

.method static synthetic access$2(Lcom/snda/youni/sdk/YouniPay;)I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/snda/youni/sdk/YouniPay;->myWhat:I

    return v0
.end method

.method static synthetic access$3(Lcom/snda/youni/sdk/YouniPay;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniPay;->callback:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/snda/youni/sdk/YouniPay;Z)V
    .registers 2

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/snda/youni/sdk/YouniPay;->mPaying:Z

    return-void
.end method

.method static synthetic access$5(Lcom/snda/youni/sdk/YouniPay;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniPay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/snda/youni/sdk/YouniPay;)Landroid/content/ServiceConnection;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniPay;->serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$7(Lcom/snda/youni/sdk/YouniPay;)J
    .registers 3

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/snda/youni/sdk/YouniPay;->registeredCallbackId:J

    return-wide v0
.end method

.method static synthetic access$8(Lcom/snda/youni/sdk/YouniPay;)Z
    .registers 2

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/snda/youni/sdk/YouniPay;->isReceiverRegistered:Z

    return v0
.end method

.method static synthetic access$9(Lcom/snda/youni/sdk/YouniPay;)Landroid/content/BroadcastReceiver;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/snda/youni/sdk/YouniPay;->mPackageInstallationListener:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private checkInstalledYouni(ILandroid/os/Handler;Lcom/snda/youni/sdk/Version;)V
    .registers 9
    .param p1, "myWhat"    # I
    .param p2, "callback"    # Landroid/os/Handler;
    .param p3, "version"    # Lcom/snda/youni/sdk/Version;

    .prologue
    .line 60
    if-eqz p3, :cond_5d

    .line 61
    iget-object v3, p3, Lcom/snda/youni/sdk/Version;->pkg:Ljava/lang/String;

    sput-object v3, Lcom/snda/youni/sdk/YouniHelper;->PKG_NAME:Ljava/lang/String;

    .line 62
    iget-object v3, p0, Lcom/snda/youni/sdk/YouniPay;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/snda/youni/sdk/YouniHelper;->getInstance(Landroid/content/Context;)Lcom/snda/youni/sdk/YouniHelper;

    move-result-object v2

    .line 63
    .local v2, "youniHelper":Lcom/snda/youni/sdk/YouniHelper;
    invoke-static {}, Lcom/snda/youni/sdk/YouniPay;->isIsTest()Z

    move-result v3

    invoke-virtual {v2, p3, v3}, Lcom/snda/youni/sdk/YouniHelper;->checkIsYouniInstalled(Lcom/snda/youni/sdk/Version;Z)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 64
    iget-object v3, p0, Lcom/snda/youni/sdk/YouniPay;->jsonParams:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/snda/youni/sdk/YouniPay;->performPay(Ljava/lang/String;)V

    .line 104
    .end local v2    # "youniHelper":Lcom/snda/youni/sdk/YouniHelper;
    :goto_1b
    return-void

    .line 66
    .restart local v2    # "youniHelper":Lcom/snda/youni/sdk/YouniHelper;
    :cond_1c
    iget-object v3, v2, Lcom/snda/youni/sdk/YouniHelper;->apkHelper:Lcom/snda/youni/sdk/ApkHelper;

    if-eqz v3, :cond_24

    iget-object v3, v2, Lcom/snda/youni/sdk/YouniHelper;->apkHelper:Lcom/snda/youni/sdk/ApkHelper;

    iget-object v3, v3, Lcom/snda/youni/sdk/ApkHelper;->appCheckResult:Lcom/snda/youni/sdk/ApkHelper$AppCheckResult;

    .line 69
    :cond_24
    iget-boolean v3, p0, Lcom/snda/youni/sdk/YouniPay;->isReceiverRegistered:Z

    if-nez v3, :cond_3e

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 72
    iget-object v3, p0, Lcom/snda/youni/sdk/YouniPay;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/snda/youni/sdk/YouniPay;->mPackageInstallationListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/snda/youni/sdk/YouniPay;->isReceiverRegistered:Z

    .line 75
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3e
    new-instance v3, Lcom/snda/youni/sdk/DownloadWebPage;

    iget-object v4, p0, Lcom/snda/youni/sdk/YouniPay;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/snda/youni/sdk/DownloadWebPage;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/snda/youni/sdk/YouniPay;->downloadPage:Lcom/snda/youni/sdk/DownloadWebPage;

    .line 78
    iget-object v3, p0, Lcom/snda/youni/sdk/YouniPay;->downloadPage:Lcom/snda/youni/sdk/DownloadWebPage;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/snda/youni/sdk/DownloadWebPage;->setCancelable(Z)V

    .line 79
    iget-object v3, p0, Lcom/snda/youni/sdk/YouniPay;->downloadPage:Lcom/snda/youni/sdk/DownloadWebPage;

    new-instance v4, Lcom/snda/youni/sdk/YouniPay$4;

    invoke-direct {v4, p0, p1, p2}, Lcom/snda/youni/sdk/YouniPay$4;-><init>(Lcom/snda/youni/sdk/YouniPay;ILandroid/os/Handler;)V

    invoke-virtual {v3, v4}, Lcom/snda/youni/sdk/DownloadWebPage;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 95
    iget-object v3, p0, Lcom/snda/youni/sdk/YouniPay;->downloadPage:Lcom/snda/youni/sdk/DownloadWebPage;

    invoke-virtual {v3}, Lcom/snda/youni/sdk/DownloadWebPage;->show()V

    goto :goto_1b

    .line 98
    .end local v2    # "youniHelper":Lcom/snda/youni/sdk/YouniHelper;
    :cond_5d
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 99
    .local v1, "message":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 100
    const-string v3, "{\"transStatus\":\"00\",\"msg\":\"\u68c0\u6d4b\u7248\u672c\u5931\u8d25\"}"

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1b
.end method

.method private getVersionInfo()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcom/snda/youni/sdk/YouniPay$CheckVersionTask;

    invoke-direct {v0, p0}, Lcom/snda/youni/sdk/YouniPay$CheckVersionTask;-><init>(Lcom/snda/youni/sdk/YouniPay;)V

    .line 51
    .local v0, "task":Lcom/snda/youni/sdk/YouniPay$CheckVersionTask;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_14

    .line 52
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/snda/youni/sdk/YouniPay$CheckVersionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    :goto_13
    return-void

    .line 54
    :cond_14
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/snda/youni/sdk/YouniPay$CheckVersionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_13
.end method

.method public static isIsTest()Z
    .registers 1

    .prologue
    .line 186
    sget-boolean v0, Lcom/snda/youni/sdk/YouniPay;->isTest:Z

    return v0
.end method

.method public static setTEST(Z)V
    .registers 1
    .param p0, "isTest"    # Z

    .prologue
    .line 190
    sput-boolean p0, Lcom/snda/youni/sdk/YouniPay;->isTest:Z

    .line 191
    return-void
.end method


# virtual methods
.method public pay(Ljava/lang/String;ILandroid/os/Handler;)V
    .registers 4
    .param p1, "jsonParams"    # Ljava/lang/String;
    .param p2, "myWhat"    # I
    .param p3, "callback"    # Landroid/os/Handler;

    .prologue
    .line 43
    iput p2, p0, Lcom/snda/youni/sdk/YouniPay;->myWhat:I

    .line 44
    iput-object p3, p0, Lcom/snda/youni/sdk/YouniPay;->callback:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/snda/youni/sdk/YouniPay;->jsonParams:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lcom/snda/youni/sdk/YouniPay;->getVersionInfo()V

    .line 47
    return-void
.end method

.method public performPay(Ljava/lang/String;)V
    .registers 6
    .param p1, "orderInfoJson"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 146
    iget-boolean v1, p0, Lcom/snda/youni/sdk/YouniPay;->mPaying:Z

    if-eqz v1, :cond_6

    .line 182
    :goto_5
    return-void

    .line 147
    :cond_6
    iput-boolean v3, p0, Lcom/snda/youni/sdk/YouniPay;->mPaying:Z

    .line 148
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v0, "youniPayService":Landroid/content/Intent;
    const-string v1, "com.snda.youni.wallet"

    const-string v2, "com.snda.youni.sdk.PayService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lcom/snda/youni/sdk/YouniPay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/snda/youni/sdk/YouniPay;->serviceConnection:Landroid/content/ServiceConnection;

    .line 150
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 153
    new-instance v1, Lcom/snda/youni/sdk/YouniPay$5;

    invoke-direct {v1, p0, p1}, Lcom/snda/youni/sdk/YouniPay$5;-><init>(Lcom/snda/youni/sdk/YouniPay;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v1}, Lcom/snda/youni/sdk/YouniPay$5;->start()V

    goto :goto_5
.end method
