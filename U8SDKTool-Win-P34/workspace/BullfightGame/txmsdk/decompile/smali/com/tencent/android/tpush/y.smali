.class final Lcom/tencent/android/tpush/y;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 593
    iput-object p1, p0, Lcom/tencent/android/tpush/y;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 598
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/y;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    .line 602
    :goto_d
    return-void

    .line 599
    :catch_e
    move-exception v0

    .line 600
    const-string v1, "TPush"

    const-string v2, "clearLocalNotifications run error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method