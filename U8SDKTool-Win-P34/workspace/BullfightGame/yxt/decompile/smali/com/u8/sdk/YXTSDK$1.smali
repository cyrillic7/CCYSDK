.class Lcom/u8/sdk/YXTSDK$1;
.super Ljava/lang/Object;
.source "YXTSDK.java"

# interfaces
.implements Lcom/yyjia/sdk/listener/LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/YXTSDK;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/YXTSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/YXTSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/YXTSDK$1;->this$0:Lcom/u8/sdk/YXTSDK;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loginSuccessed(Ljava/lang/String;)V
    .registers 8
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string v3, "1"

    if-ne p1, v3, :cond_54

    .line 55
    iget-object v3, p0, Lcom/u8/sdk/YXTSDK$1;->this$0:Lcom/u8/sdk/YXTSDK;

    iget-object v3, v3, Lcom/u8/sdk/YXTSDK;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v3}, Lcom/yyjia/sdk/center/GMcenter;->getSid()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "sid":Ljava/lang/String;
    iget-object v3, p0, Lcom/u8/sdk/YXTSDK$1;->this$0:Lcom/u8/sdk/YXTSDK;

    iget-object v3, v3, Lcom/u8/sdk/YXTSDK;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v3}, Lcom/yyjia/sdk/center/GMcenter;->getUid()I

    move-result v2

    .line 57
    .local v2, "userid":I
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 58
    iget-object v3, p0, Lcom/u8/sdk/YXTSDK$1;->this$0:Lcom/u8/sdk/YXTSDK;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/u8/sdk/YXTSDK;->encodeLoginResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v1}, Lcom/u8/sdk/YXTSDK;->access$0(Lcom/u8/sdk/YXTSDK;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/u8/sdk/U8SDK;->onLoginResult(Ljava/lang/String;)V

    .line 61
    const-string v3, "U8SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sid = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "sid":Ljava/lang/String;
    .end local v2    # "userid":I
    :goto_53
    return-void

    .line 63
    :cond_54
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "\u767b\u5f55\u5931\u8d25"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_53
.end method

.method public logoutSuccessed(Ljava/lang/String;)V
    .registers 4
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v1, "1"

    if-ne p1, v1, :cond_18

    .line 70
    iget-object v1, p0, Lcom/u8/sdk/YXTSDK$1;->this$0:Lcom/u8/sdk/YXTSDK;

    iget-object v1, v1, Lcom/u8/sdk/YXTSDK;->mCenter:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v1}, Lcom/yyjia/sdk/center/GMcenter;->getSid()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "sid":Ljava/lang/String;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->onLogout()V

    .line 73
    const-string v1, "eeee"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v0    # "sid":Ljava/lang/String;
    :cond_18
    return-void
.end method
