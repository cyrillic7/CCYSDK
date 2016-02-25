.class Lcom/xw/BullfightGame/BullfightGame$2;
.super Landroid/os/Handler;
.source "BullfightGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xw/BullfightGame/BullfightGame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xw/BullfightGame/BullfightGame;


# direct methods
.method constructor <init>(Lcom/xw/BullfightGame/BullfightGame;)V
    .locals 0

    iput-object p1, p0, Lcom/xw/BullfightGame/BullfightGame$2;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/xw/BullfightGame/BullfightGame$2;->this$0:Lcom/xw/BullfightGame/BullfightGame;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u5b9a\u9000\u51fa\u6e38\u620f\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/xw/BullfightGame/BullfightGame$2$1;

    invoke-direct {v2, p0}, Lcom/xw/BullfightGame/BullfightGame$2$1;-><init>(Lcom/xw/BullfightGame/BullfightGame$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
