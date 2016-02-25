.class public final Lcom/yyjia/sdk/e/b;
.super Ljava/lang/Object;


# static fields
.field private static final b:Landroid/net/Uri;

.field private static h:Lcom/yyjia/sdk/e/b;


# instance fields
.field protected a:Landroid/os/Handler;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Landroid/app/DownloadManager;

.field private g:Landroid/content/Context;

.field private i:Lcom/yyjia/sdk/e/f;

.field private j:Lcom/yyjia/sdk/e/e;

.field private k:J

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://downloads/my_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/yyjia/sdk/e/b;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/e/b;->c:Ljava/lang/String;

    const-string v0, "flsdkdownload"

    iput-object v0, p0, Lcom/yyjia/sdk/e/b;->d:Ljava/lang/String;

    const-string v0, "application/vnd.android.package-archive"

    iput-object v0, p0, Lcom/yyjia/sdk/e/b;->e:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yyjia/sdk/e/b;->k:J

    new-instance v0, Lcom/yyjia/sdk/e/c;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/e/c;-><init>(Lcom/yyjia/sdk/e/b;)V

    iput-object v0, p0, Lcom/yyjia/sdk/e/b;->l:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/yyjia/sdk/e/d;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/e/d;-><init>(Lcom/yyjia/sdk/e/b;)V

    iput-object v0, p0, Lcom/yyjia/sdk/e/b;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/yyjia/sdk/e/b;->g:Landroid/content/Context;

    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/yyjia/sdk/e/b;->f:Landroid/app/DownloadManager;

    new-instance v0, Lcom/yyjia/sdk/e/e;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/e/e;-><init>(Lcom/yyjia/sdk/e/b;)V

    iput-object v0, p0, Lcom/yyjia/sdk/e/b;->j:Lcom/yyjia/sdk/e/e;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/yyjia/sdk/e/b;->b:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yyjia/sdk/e/b;->j:Lcom/yyjia/sdk/e/e;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/yyjia/sdk/e/b;->b()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yyjia/sdk/e/b;
    .registers 2

    sget-object v0, Lcom/yyjia/sdk/e/b;->h:Lcom/yyjia/sdk/e/b;

    if-nez v0, :cond_b

    new-instance v0, Lcom/yyjia/sdk/e/b;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/e/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yyjia/sdk/e/b;->h:Lcom/yyjia/sdk/e/b;

    :cond_b
    sget-object v0, Lcom/yyjia/sdk/e/b;->h:Lcom/yyjia/sdk/e/b;

    return-object v0
.end method

.method static synthetic a(Lcom/yyjia/sdk/e/b;)Lcom/yyjia/sdk/e/f;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/e/b;->i:Lcom/yyjia/sdk/e/f;

    return-object v0
.end method

.method static synthetic a(Lcom/yyjia/sdk/e/b;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/yyjia/sdk/e/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/yyjia/sdk/e/b;)Landroid/app/DownloadManager;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/e/b;->f:Landroid/app/DownloadManager;

    return-object v0
.end method

.method private b()V
    .registers 5

    iget-object v0, p0, Lcom/yyjia/sdk/e/b;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/yyjia/sdk/e/b;->l:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    const-string v0, "///"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/yyjia/sdk/e/b;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 9

    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_11
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_17

    return-void

    :cond_17
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    aget-object v0, v2, v1

    :goto_21
    aget-object v3, v2, v1

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_40

    aget-object v3, v2, v1

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_40

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    invoke-direct {p0, v0}, Lcom/yyjia/sdk/e/b;->d(Ljava/lang/String;)V

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method

.method private d(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    :cond_e
    :goto_e
    return-void

    :catch_f
    move-exception v0

    goto :goto_e
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/yyjia/sdk/e/b;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/yyjia/sdk/e/u;->a(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_9c

    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, ".apk"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yyjia/sdk/e/b;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "yyjiasdkdownload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yyjia/sdk/e/b;->c(Ljava/lang/String;)V

    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const-string v2, "yyjiasdkdownload"

    invoke-virtual {v1, v2, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const-string v0, "YYJIA"

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const-string v0, "YYJIA download"

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    iget-object v0, p0, Lcom/yyjia/sdk/e/b;->f:Landroid/app/DownloadManager;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yyjia/sdk/e/b;->k:J
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_7f} :catch_82

    :goto_7f
    iget-wide v0, p0, Lcom/yyjia/sdk/e/b;->k:J

    return-wide v0

    :catch_82
    move-exception v0

    const-string v1, "lyxfile"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download apk Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    :cond_9c
    iget-object v0, p0, Lcom/yyjia/sdk/e/b;->g:Landroid/content/Context;

    const-string v1, "\u4f60\u7684\u7cfb\u7edf\u7248\u672c\u4f4e\u4e8eAndroid 3.0 \u4e0d\u80fd\u4e0b\u8f7d\uff01"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yyjia/sdk/e/b;->k:J

    goto :goto_7f
.end method

.method public a()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-wide v0, p0, Lcom/yyjia/sdk/e/b;->k:J

    invoke-virtual {p0, v0, v1}, Lcom/yyjia/sdk/e/b;->a(J)[I

    move-result-object v0

    aget v1, v0, v5

    mul-int/lit8 v1, v1, 0x64

    aget v2, v0, v6

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/yyjia/sdk/e/b;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/yyjia/sdk/e/b;->a:Landroid/os/Handler;

    aget v4, v0, v5

    aget v0, v0, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v5, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/yyjia/sdk/e/f;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/e/b;->i:Lcom/yyjia/sdk/e/f;

    return-void
.end method

.method public a(J)[I
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_58

    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v2, v2, [J

    aput-wide p1, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_16
    iget-object v3, p0, Lcom/yyjia/sdk/e/b;->f:Landroid/app/DownloadManager;

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4b

    const/4 v2, 0x0

    const-string v3, "bytes_so_far"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "total_size"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "status"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v2
    :try_end_4b
    .catchall {:try_start_16 .. :try_end_4b} :catchall_51

    :cond_4b
    if-eqz v1, :cond_50

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_50
    return-object v0

    :catchall_51
    move-exception v0

    if-eqz v1, :cond_57

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_57
    throw v0

    :array_58
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method
