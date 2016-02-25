.class Lcom/yyjia/sdk/e/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/e/b;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/e/c;->a:Lcom/yyjia/sdk/e/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/yyjia/sdk/e/c;->a:Lcom/yyjia/sdk/e/b;

    invoke-static {v0}, Lcom/yyjia/sdk/e/b;->a(Lcom/yyjia/sdk/e/b;)Lcom/yyjia/sdk/e/f;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/yyjia/sdk/e/c;->a:Lcom/yyjia/sdk/e/b;

    invoke-static {v0}, Lcom/yyjia/sdk/e/b;->a(Lcom/yyjia/sdk/e/b;)Lcom/yyjia/sdk/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/yyjia/sdk/e/f;->a()V

    :cond_20
    const-string v0, "extra_download_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    new-array v2, v6, [I

    fill-array-data v2, :array_a4

    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v4, v4, [J

    aput-wide v0, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_3b
    iget-object v3, p0, Lcom/yyjia/sdk/e/c;->a:Lcom/yyjia/sdk/e/b;

    invoke-static {v3}, Lcom/yyjia/sdk/e/b;->b(Lcom/yyjia/sdk/e/b;)Landroid/app/DownloadManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_97

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_97

    const/4 v0, 0x0

    const-string v3, "bytes_so_far"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "total_size"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "status"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v2, v0

    const-string v0, "status"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x8

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_7f
    .catchall {:try_start_3b .. :try_end_7f} :catchall_9d

    move-result v0

    if-eq v2, v0, :cond_88

    if-eqz v1, :cond_87

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_87
    :goto_87
    return-void

    :cond_88
    :try_start_88
    const-string v0, "local_uri"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yyjia/sdk/e/c;->a:Lcom/yyjia/sdk/e/b;

    invoke-static {v2, v0}, Lcom/yyjia/sdk/e/b;->a(Lcom/yyjia/sdk/e/b;Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_88 .. :try_end_97} :catchall_9d

    :cond_97
    if-eqz v1, :cond_87

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_87

    :catchall_9d
    move-exception v0

    if-eqz v1, :cond_a3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a3
    throw v0

    :array_a4
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method
