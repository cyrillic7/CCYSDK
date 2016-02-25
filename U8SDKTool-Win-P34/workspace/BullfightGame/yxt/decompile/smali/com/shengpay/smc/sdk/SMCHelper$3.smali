.class Lcom/shengpay/smc/sdk/SMCHelper$3;
.super Ljava/lang/Object;
.source "SMCHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shengpay/smc/sdk/SMCHelper;->showInstallConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shengpay/smc/sdk/SMCHelper;


# direct methods
.method constructor <init>(Lcom/shengpay/smc/sdk/SMCHelper;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/shengpay/smc/sdk/SMCHelper$3;->this$0:Lcom/shengpay/smc/sdk/SMCHelper;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 329
    return-void
.end method
