.class Lcom/tencent/android/tpush/ad;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/content/Intent;

.field c:Lcom/tencent/android/tpush/XGIOperateCallback;

.field d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1112
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1106
    iput-object v0, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    .line 1107
    iput-object v0, p0, Lcom/tencent/android/tpush/ad;->b:Landroid/content/Intent;

    .line 1108
    iput-object v0, p0, Lcom/tencent/android/tpush/ad;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    .line 1109
    iput v1, p0, Lcom/tencent/android/tpush/ad;->d:I

    .line 1113
    iput-object p1, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    .line 1114
    iput-object p2, p0, Lcom/tencent/android/tpush/ad;->b:Landroid/content/Intent;

    .line 1115
    iput-object p3, p0, Lcom/tencent/android/tpush/ad;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    .line 1116
    const-string v0, "opType"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/ad;->d:I

    .line 1118
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 1123
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/ae;

    .line 1124
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/android/tpush/common/g;->b()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1128
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> service start from app :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pkg"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , sdk version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ver"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeRunnableMapSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    iget v0, p0, Lcom/tencent/android/tpush/ad;->d:I

    packed-switch v0, :pswitch_data_98

    .line 1143
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegisterStartReceiver error optype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/android/tpush/ad;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    :goto_75
    iget-object v0, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tencent/android/tpush/common/p;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 1151
    :goto_7a
    return-void

    .line 1137
    :pswitch_7b
    iget-object v0, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/android/tpush/ad;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/android/tpush/ad;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->b(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_84} :catch_85

    goto :goto_75

    .line 1148
    :catch_85
    move-exception v0

    .line 1149
    const-string v1, "TPush"

    const-string v2, "RegisterStartReceiver error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7a

    .line 1140
    :pswitch_8e
    :try_start_8e
    iget-object v0, p0, Lcom/tencent/android/tpush/ad;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/android/tpush/ad;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/android/tpush/ad;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_97} :catch_85

    goto :goto_75

    .line 1135
    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_8e
    .end packed-switch
.end method
