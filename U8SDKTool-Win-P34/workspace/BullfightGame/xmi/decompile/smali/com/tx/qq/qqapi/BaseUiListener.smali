.class public Lcom/tx/qq/qqapi/BaseUiListener;
.super Ljava/lang/Object;
.source "BaseUiListener.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;

    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 2
    .param p1    # Lcom/tencent/tauth/UiError;

    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
