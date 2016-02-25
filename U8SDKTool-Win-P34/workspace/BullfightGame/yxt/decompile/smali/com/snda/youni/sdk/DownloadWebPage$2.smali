.class Lcom/snda/youni/sdk/DownloadWebPage$2;
.super Ljava/lang/Object;
.source "DownloadWebPage.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snda/youni/sdk/DownloadWebPage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snda/youni/sdk/DownloadWebPage;


# direct methods
.method constructor <init>(Lcom/snda/youni/sdk/DownloadWebPage;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snda/youni/sdk/DownloadWebPage$2;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 115
    :cond_7
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 110
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_7

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    .line 107
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method
