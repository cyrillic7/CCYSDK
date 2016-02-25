.class Lcom/u8/sdk/YXTSDK$2;
.super Ljava/lang/Object;
.source "YXTSDK.java"

# interfaces
.implements Lcom/yyjia/sdk/listener/PayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/YXTSDK;->pay(Lcom/u8/sdk/PayParams;)V
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
    iput-object p1, p0, Lcom/u8/sdk/YXTSDK$2;->this$0:Lcom/u8/sdk/YXTSDK;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public paySuccessed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "cporderid"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v0, "1"

    if-ne p1, v0, :cond_10

    .line 96
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "pay successed."

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 102
    :goto_f
    return-void

    .line 99
    :cond_10
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/16 v1, 0xb

    const-string v2, "pay failed."

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_f
.end method
