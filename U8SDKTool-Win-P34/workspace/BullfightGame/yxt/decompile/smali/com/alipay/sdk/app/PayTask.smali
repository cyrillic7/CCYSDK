.class public Lcom/alipay/sdk/app/PayTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/Object;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Dialog;

.field private e:Lcom/alipay/sdk/util/FileDownloader;

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/Runnable;

.field private k:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-class v0, Lcom/alipay/sdk/util/PayHelper;

    sput-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    new-instance v0, Lcom/alipay/sdk/app/PayTask$4;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/PayTask$4;-><init>(Lcom/alipay/sdk/app/PayTask;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->j:Ljava/lang/Runnable;

    .line 462
    new-instance v0, Lcom/alipay/sdk/app/PayTask$5;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/PayTask$5;-><init>(Lcom/alipay/sdk/app/PayTask;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->k:Landroid/content/BroadcastReceiver;

    .line 67
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/app/PayTask;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/sdk/app/PayTask;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask;->d:Landroid/app/Dialog;

    return-object p1
.end method

.method private a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 112
    sget-boolean v0, Lcom/alipay/sdk/cons/GlobalConstants;->m:Z

    if-eqz v0, :cond_25

    .line 113
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v1, "https://wappaygw.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 114
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v2, "https://wappaygw.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "https://wappaygw.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    .line 135
    :cond_25
    :goto_25
    new-instance v0, Lcom/alipay/sdk/util/PayHelper;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/util/PayHelper;-><init>(Landroid/app/Activity;)V

    .line 137
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v2, "bizcontext="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 138
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/util/PayHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_3c
    return-object v0

    .line 117
    :cond_3d
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v1, "https://mclient.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 119
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v2, "https://mclient.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "https://mclient.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    goto :goto_25

    .line 122
    :cond_5f
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v1, "http://mcashier.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 124
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v2, "http://mcashier.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "http://mcashier.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    goto :goto_25

    .line 127
    :cond_81
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v1, "http://mobileclientgw.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 129
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v2, "http://mobileclientgw.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "http://mobileclientgw.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    goto :goto_25

    .line 140
    :cond_a3
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&bizcontext=\"{\"appkey\":\"2014052600006128\"}\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/util/PayHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3c

    .line 144
    :cond_c8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&bizcontext={\"appkey\":\"2014052600006128\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/util/PayHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3c
.end method

.method private a(Lcom/alipay/sdk/protocol/ActionType;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 238
    const-string v0, ""

    .line 239
    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 240
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const-class v3, Lcom/alipay/sdk/app/H5PayActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 242
    const/4 v3, 0x0

    aget-object v3, v0, v3

    .line 243
    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2c

    .line 246
    const/4 v3, 0x1

    aget-object v0, v0, v3

    .line 247
    const-string v3, "cookie"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_2c
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 251
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 253
    sget-object v1, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_37
    sget-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3c} :catch_5c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_61

    .line 259
    :goto_3c
    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_61

    .line 261
    invoke-static {}, Lcom/alipay/sdk/app/Result;->a()Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 263
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->c:Lcom/alipay/sdk/app/ResultStatus;

    invoke-static {v0}, Lcom/alipay/sdk/app/ResultStatus;->a(Lcom/alipay/sdk/app/ResultStatus;)Lcom/alipay/sdk/app/ResultStatus;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/Result;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_5b
    return-object v0

    .line 256
    :catch_5c
    move-exception v0

    .line 257
    :try_start_5d
    invoke-static {v0}, Lcom/alipay/sdk/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_3c

    .line 259
    :catchall_61
    move-exception v0

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_61

    throw v0
.end method

.method static synthetic a(Lcom/alipay/sdk/app/PayTask;[Lcom/alipay/sdk/protocol/ActionType;)V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/PayTask;->a([Lcom/alipay/sdk/protocol/ActionType;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/sdk/protocol/ActionType;Ljava/lang/String;[Lcom/alipay/sdk/protocol/ActionType;)V
    .registers 16

    .prologue
    .line 314
    iget-object v8, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    new-instance v0, Lcom/alipay/sdk/app/PayTask$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alipay/sdk/app/PayTask$1;-><init>(Lcom/alipay/sdk/app/PayTask;[Lcom/alipay/sdk/protocol/ActionType;[Lcom/alipay/sdk/protocol/ActionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 344
    return-void
.end method

.method private a([Lcom/alipay/sdk/protocol/ActionType;)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 347
    array-length v3, p1

    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_4a

    aget-object v0, p1, v1

    .line 348
    sget-object v4, Lcom/alipay/sdk/protocol/ActionType;->c:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v0, v4, :cond_1a

    .line 349
    invoke-virtual {v0}, Lcom/alipay/sdk/protocol/ActionType;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/sdk/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 350
    aget-object v4, v4, v2

    iput-object v4, p0, Lcom/alipay/sdk/app/PayTask;->g:Ljava/lang/String;

    .line 351
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->c()V

    .line 353
    :cond_1a
    sget-object v4, Lcom/alipay/sdk/protocol/ActionType;->h:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v0, v4, :cond_3e

    .line 354
    sget-object v4, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 355
    :try_start_21
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->c:Lcom/alipay/sdk/app/ResultStatus;

    invoke-static {v0}, Lcom/alipay/sdk/app/ResultStatus;->a(Lcom/alipay/sdk/app/ResultStatus;)Lcom/alipay/sdk/app/ResultStatus;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->a()I

    move-result v5

    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->b()Ljava/lang/String;

    move-result-object v0

    const-string v6, ""

    invoke-static {v5, v0, v6}, Lcom/alipay/sdk/app/Result;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/Result;->a(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_47

    .line 360
    :try_start_38
    sget-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_42
    .catchall {:try_start_38 .. :try_end_3d} :catchall_47

    .line 364
    :goto_3d
    :try_start_3d
    monitor-exit v4

    .line 347
    :cond_3e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 361
    :catch_42
    move-exception v0

    .line 362
    invoke-static {v0}, Lcom/alipay/sdk/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_3d

    .line 364
    :catchall_47
    move-exception v0

    monitor-exit v4
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_47

    throw v0

    .line 367
    :cond_4a
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/app/PayTask;Z)Z
    .registers 2

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/alipay/sdk/app/PayTask;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/sdk/app/PayTask;)Lcom/alipay/sdk/util/FileDownloader;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->e:Lcom/alipay/sdk/util/FileDownloader;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 149
    .line 151
    :try_start_2
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1a0

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1a0

    .line 152
    new-instance v0, Lcom/alipay/sdk/widget/Loading;

    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/alipay/sdk/widget/Loading;-><init>(Landroid/app/Activity;)V

    .line 153
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->b()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_a6

    .line 159
    :goto_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/temp.apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/sdk/app/PayTask;->i:Ljava/lang/String;

    .line 161
    sget-boolean v3, Lcom/alipay/sdk/cons/GlobalConstants;->m:Z

    if-eqz v3, :cond_5c

    .line 162
    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v4, "https://wappaygw.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 163
    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v5, "https://wappaygw.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "https://wappaygw.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    .line 186
    :cond_5c
    :goto_5c
    new-instance v3, Lcom/alipay/sdk/data/InteractionData;

    invoke-direct {v3}, Lcom/alipay/sdk/data/InteractionData;-><init>()V

    iget-object v4, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/alipay/sdk/data/FrameUtils;->a(Lcom/alipay/sdk/data/InteractionData;Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/alipay/sdk/data/Request;

    move-result-object v3

    .line 188
    new-instance v4, Lcom/alipay/sdk/net/RequestWrapper;

    new-instance v5, Lcom/alipay/sdk/data/InteractionData;

    invoke-direct {v5}, Lcom/alipay/sdk/data/InteractionData;-><init>()V

    invoke-direct {v4, v5}, Lcom/alipay/sdk/net/RequestWrapper;-><init>(Lcom/alipay/sdk/data/InteractionData;)V

    .line 192
    :try_start_77
    iget-object v5, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/alipay/sdk/net/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/sdk/data/Request;Z)Lcom/alipay/sdk/protocol/FrameData;

    move-result-object v3

    .line 193
    invoke-virtual {v3}, Lcom/alipay/sdk/protocol/FrameData;->d()Lorg/json/JSONObject;

    move-result-object v3

    .line 194
    const-string v4, "form"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "onload"

    invoke-static {v3, v4}, Lcom/alipay/sdk/protocol/ElementAction;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/sdk/protocol/ElementAction;

    move-result-object v3

    .line 196
    invoke-static {v3}, Lcom/alipay/sdk/protocol/ActionType;->a(Lcom/alipay/sdk/protocol/ElementAction;)[Lcom/alipay/sdk/protocol/ActionType;

    move-result-object v4

    .line 197
    array-length v5, v4

    move v3, v2

    :goto_94
    if-ge v3, v5, :cond_11a

    aget-object v6, v4, v3

    .line 198
    sget-object v7, Lcom/alipay/sdk/protocol/ActionType;->g:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v6, v7, :cond_a3

    .line 199
    invoke-virtual {v6}, Lcom/alipay/sdk/protocol/ActionType;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/sdk/util/ActionUtil;->b(Ljava/lang/String;)V
    :try_end_a3
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_77 .. :try_end_a3} :catch_16f
    .catch Lcom/alipay/sdk/exception/FailOperatingException; {:try_start_77 .. :try_end_a3} :catch_17d
    .catch Lcom/alipay/sdk/exception/AppErrorException; {:try_start_77 .. :try_end_a3} :catch_185
    .catch Lcom/alipay/sdk/exception/UnZipException; {:try_start_77 .. :try_end_a3} :catch_18d
    .catchall {:try_start_77 .. :try_end_a3} :catchall_195

    .line 197
    :cond_a3
    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    .line 155
    :catch_a6
    move-exception v0

    move-object v0, v1

    .line 156
    goto/16 :goto_18

    .line 166
    :cond_aa
    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v4, "https://mclient.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 168
    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v5, "https://mclient.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "https://mclient.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    goto :goto_5c

    .line 171
    :cond_cc
    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v4, "http://mcashier.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 173
    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v5, "http://mcashier.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "http://mcashier.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    .line 176
    const-string v3, "https://mobiletestabc.alipaydev.com/mobileclientgw/stable/gateway.do"

    sput-object v3, Lcom/alipay/sdk/cons/GlobalConstants;->b:Ljava/lang/String;

    goto/16 :goto_5c

    .line 177
    :cond_f3
    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v4, "http://mobileclientgw.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 179
    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v5, "http://mobileclientgw.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "http://mobileclientgw.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    .line 182
    const-string v3, "https://mobiletestabc.alipaydev.com/mobileclientgw/stable/gateway.do"

    sput-object v3, Lcom/alipay/sdk/cons/GlobalConstants;->b:Ljava/lang/String;

    goto/16 :goto_5c

    .line 203
    :cond_11a
    if-eqz v0, :cond_11f

    .line 204
    :try_start_11c
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    .line 206
    :cond_11f
    array-length v3, v4

    :goto_120
    if-ge v2, v3, :cond_152

    aget-object v5, v4, v2

    .line 207
    sget-object v6, Lcom/alipay/sdk/protocol/ActionType;->a:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v5, v6, :cond_133

    .line 208
    invoke-direct {p0, v5}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/protocol/ActionType;)Ljava/lang/String;
    :try_end_12b
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_11c .. :try_end_12b} :catch_16f
    .catch Lcom/alipay/sdk/exception/FailOperatingException; {:try_start_11c .. :try_end_12b} :catch_17d
    .catch Lcom/alipay/sdk/exception/AppErrorException; {:try_start_11c .. :try_end_12b} :catch_185
    .catch Lcom/alipay/sdk/exception/UnZipException; {:try_start_11c .. :try_end_12b} :catch_18d
    .catchall {:try_start_11c .. :try_end_12b} :catchall_195

    move-result-object v1

    .line 225
    if-eqz v0, :cond_131

    .line 226
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    :cond_131
    move-object v0, v1

    .line 234
    :goto_132
    return-object v0

    .line 213
    :cond_133
    :try_start_133
    sget-object v6, Lcom/alipay/sdk/protocol/ActionType;->e:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v5, v6, :cond_14f

    .line 214
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/alipay/sdk/app/PayTask;->f:Landroid/os/Handler;

    .line 215
    invoke-direct {p0, v5}, Lcom/alipay/sdk/app/PayTask;->b(Lcom/alipay/sdk/protocol/ActionType;)Ljava/lang/String;
    :try_end_147
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_133 .. :try_end_147} :catch_16f
    .catch Lcom/alipay/sdk/exception/FailOperatingException; {:try_start_133 .. :try_end_147} :catch_17d
    .catch Lcom/alipay/sdk/exception/AppErrorException; {:try_start_133 .. :try_end_147} :catch_185
    .catch Lcom/alipay/sdk/exception/UnZipException; {:try_start_133 .. :try_end_147} :catch_18d
    .catchall {:try_start_133 .. :try_end_147} :catchall_195

    move-result-object v1

    .line 225
    if-eqz v0, :cond_14d

    .line 226
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    :cond_14d
    move-object v0, v1

    goto :goto_132

    .line 206
    :cond_14f
    add-int/lit8 v2, v2, 0x1

    goto :goto_120

    .line 225
    :cond_152
    if-eqz v0, :cond_19c

    .line 226
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    move-object v0, v1

    .line 229
    :goto_158
    if-nez v0, :cond_160

    .line 230
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->b:Lcom/alipay/sdk/app/ResultStatus;

    invoke-static {v0}, Lcom/alipay/sdk/app/ResultStatus;->a(Lcom/alipay/sdk/app/ResultStatus;)Lcom/alipay/sdk/app/ResultStatus;

    move-result-object v0

    .line 232
    :cond_160
    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/Result;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_132

    .line 219
    :catch_16f
    move-exception v1

    .line 220
    :try_start_170
    sget-object v1, Lcom/alipay/sdk/app/ResultStatus;->d:Lcom/alipay/sdk/app/ResultStatus;

    invoke-static {v1}, Lcom/alipay/sdk/app/ResultStatus;->a(Lcom/alipay/sdk/app/ResultStatus;)Lcom/alipay/sdk/app/ResultStatus;
    :try_end_175
    .catchall {:try_start_170 .. :try_end_175} :catchall_195

    move-result-object v1

    .line 225
    if-eqz v0, :cond_19e

    .line 226
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    move-object v0, v1

    goto :goto_158

    .line 221
    :catch_17d
    move-exception v2

    .line 225
    if-eqz v0, :cond_19c

    .line 226
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    move-object v0, v1

    goto :goto_158

    .line 222
    :catch_185
    move-exception v2

    .line 225
    if-eqz v0, :cond_19c

    .line 226
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    move-object v0, v1

    goto :goto_158

    .line 223
    :catch_18d
    move-exception v2

    .line 225
    if-eqz v0, :cond_19c

    .line 226
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    move-object v0, v1

    goto :goto_158

    .line 225
    :catchall_195
    move-exception v1

    if-eqz v0, :cond_19b

    .line 226
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    :cond_19b
    throw v1

    :cond_19c
    move-object v0, v1

    goto :goto_158

    :cond_19e
    move-object v0, v1

    goto :goto_158

    :cond_1a0
    move-object v0, v1

    goto/16 :goto_18
.end method

.method private b(Lcom/alipay/sdk/protocol/ActionType;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 273
    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 278
    array-length v1, v5

    if-le v1, v2, :cond_81

    aget-object v1, v5, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_81

    .line 279
    aget-object v1, v5, v2

    invoke-static {v1, p1}, Lcom/alipay/sdk/protocol/ElementAction;->a(Ljava/lang/String;Lcom/alipay/sdk/protocol/ActionType;)Lcom/alipay/sdk/protocol/ElementAction;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/protocol/ActionType;->a(Lcom/alipay/sdk/protocol/ElementAction;)[Lcom/alipay/sdk/protocol/ActionType;

    move-result-object v4

    .line 283
    :goto_20
    array-length v1, v5

    if-le v1, v3, :cond_7f

    aget-object v1, v5, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 284
    aget-object v0, v5, v3

    invoke-static {v0, p1}, Lcom/alipay/sdk/protocol/ElementAction;->a(Ljava/lang/String;Lcom/alipay/sdk/protocol/ActionType;)Lcom/alipay/sdk/protocol/ElementAction;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/protocol/ActionType;->a(Lcom/alipay/sdk/protocol/ElementAction;)[Lcom/alipay/sdk/protocol/ActionType;

    move-result-object v0

    move-object v6, v0

    .line 287
    :goto_36
    const/4 v0, 0x0

    aget-object v1, v5, v0

    const/4 v0, 0x1

    aget-object v2, v5, v0

    const/4 v0, 0x2

    aget-object v3, v5, v0

    const/4 v0, 0x3

    aget-object v5, v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/alipay/sdk/app/PayTask;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/sdk/protocol/ActionType;Ljava/lang/String;[Lcom/alipay/sdk/protocol/ActionType;)V

    .line 290
    sget-object v1, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_49
    sget-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4e} :catch_58
    .catchall {:try_start_49 .. :try_end_4e} :catchall_5d

    .line 296
    :goto_4e
    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_5d

    .line 298
    iget-boolean v0, p0, Lcom/alipay/sdk/app/PayTask;->h:Z

    if-eqz v0, :cond_60

    .line 299
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->a()Ljava/lang/String;

    move-result-object v0

    .line 308
    :cond_57
    :goto_57
    return-object v0

    .line 293
    :catch_58
    move-exception v0

    .line 294
    :try_start_59
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4e

    .line 296
    :catchall_5d
    move-exception v0

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_5d

    throw v0

    .line 301
    :cond_60
    invoke-static {}, Lcom/alipay/sdk/app/Result;->a()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 303
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->c:Lcom/alipay/sdk/app/ResultStatus;

    invoke-static {v0}, Lcom/alipay/sdk/app/ResultStatus;->a(Lcom/alipay/sdk/app/ResultStatus;)Lcom/alipay/sdk/app/ResultStatus;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/Result;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_57

    :cond_7f
    move-object v6, v0

    goto :goto_36

    :cond_81
    move-object v4, v0

    goto :goto_20
.end method

.method static synthetic c(Lcom/alipay/sdk/app/PayTask;)Landroid/content/BroadcastReceiver;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->k:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private c()V
    .registers 5

    .prologue
    .line 370
    new-instance v0, Lcom/alipay/sdk/widget/Loading;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/widget/Loading;-><init>(Landroid/app/Activity;)V

    .line 371
    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u4e2d"

    const/4 v2, 0x1

    new-instance v3, Lcom/alipay/sdk/app/PayTask$2;

    invoke-direct {v3, p0, v0}, Lcom/alipay/sdk/app/PayTask$2;-><init>(Lcom/alipay/sdk/app/PayTask;Lcom/alipay/sdk/widget/Loading;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/sdk/widget/Loading;->a(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 394
    new-instance v1, Lcom/alipay/sdk/util/FileDownloader;

    invoke-direct {v1}, Lcom/alipay/sdk/util/FileDownloader;-><init>()V

    iput-object v1, p0, Lcom/alipay/sdk/app/PayTask;->e:Lcom/alipay/sdk/util/FileDownloader;

    .line 395
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->e:Lcom/alipay/sdk/util/FileDownloader;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/util/FileDownloader;->a(Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->e:Lcom/alipay/sdk/util/FileDownloader;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/util/FileDownloader;->b(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->e:Lcom/alipay/sdk/util/FileDownloader;

    new-instance v2, Lcom/alipay/sdk/app/PayTask$3;

    invoke-direct {v2, p0, v0}, Lcom/alipay/sdk/app/PayTask$3;-><init>(Lcom/alipay/sdk/app/PayTask;Lcom/alipay/sdk/widget/Loading;)V

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/util/FileDownloader;->a(Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;)V

    .line 416
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->e:Lcom/alipay/sdk/util/FileDownloader;

    invoke-virtual {v0}, Lcom/alipay/sdk/util/FileDownloader;->b()V

    .line 418
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 419
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 423
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->j:Ljava/lang/Runnable;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 424
    return-void
.end method

.method static synthetic d(Lcom/alipay/sdk/app/PayTask;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 484
    new-instance v0, Lcom/alipay/sdk/app/PayTask$6;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/PayTask$6;-><init>(Lcom/alipay/sdk/app/PayTask;)V

    .line 537
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 539
    return-void
.end method

.method static synthetic e(Lcom/alipay/sdk/app/PayTask;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/sdk/app/PayTask;)V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->d()V

    return-void
.end method

.method static synthetic g(Lcom/alipay/sdk/app/PayTask;)V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->c()V

    return-void
.end method

.method static synthetic h(Lcom/alipay/sdk/app/PayTask;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/sdk/app/PayTask;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public checkAccountIfExist()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-static {}, Lcom/alipay/sdk/data/FrameUtils;->a()Lcom/alipay/sdk/data/Request;

    move-result-object v1

    .line 101
    :try_start_5
    new-instance v2, Lcom/alipay/sdk/net/RequestWrapper;

    invoke-direct {v2}, Lcom/alipay/sdk/net/RequestWrapper;-><init>()V

    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/alipay/sdk/net/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/sdk/data/Request;Z)Lcom/alipay/sdk/protocol/FrameData;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/alipay/sdk/protocol/FrameData;->d()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "hasAccount"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_1d

    move-result v0

    .line 105
    :goto_1c
    return v0

    .line 104
    :catch_1d
    move-exception v1

    goto :goto_1c
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    const-string v0, "9.1.5"

    return-object v0
.end method

.method public declared-synchronized pay(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/alipay/sdk/sys/GlobalContext;->a()Lcom/alipay/sdk/sys/GlobalContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/data/MspConfig;->b()Lcom/alipay/sdk/data/MspConfig;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/sdk/data/MspConfig;)V

    .line 74
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v1, "service=alipay.acquire.mr.ord.createandpay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/sdk/cons/GlobalConstants;->m:Z

    .line 77
    :cond_1d
    const-string v0, "paymethod=\"expressGateway\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 78
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->b()Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_47

    move-result-object v0

    .line 88
    :cond_29
    :goto_29
    monitor-exit p0

    return-object v0

    .line 81
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/sdk/util/Utils;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 82
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->a()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 84
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 88
    :cond_42
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->b()Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_47

    move-result-object v0

    goto :goto_29

    .line 71
    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method
