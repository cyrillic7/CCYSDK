.class Lcom/yyjia/sdk/f/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/bh;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/bh;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/bi;->a:Lcom/yyjia/sdk/f/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 4

    iget-object v0, p0, Lcom/yyjia/sdk/f/bi;->a:Lcom/yyjia/sdk/f/bh;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bh;->a(Lcom/yyjia/sdk/f/bh;)Lcom/yyjia/sdk/f/at;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/f/at;->a(Lcom/yyjia/sdk/f/at;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yyjia/sdk/center/GMcenter;->getInstance(Landroid/content/Context;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->getUsername()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->getUsername()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_20
    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->checkLogin()V

    :cond_23
    return-void
.end method
