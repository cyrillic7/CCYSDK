.class Lcom/yyjia/sdk/e/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/e/v;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/e/v;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/e/aa;->a:Lcom/yyjia/sdk/e/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/yyjia/sdk/e/aa;->a:Lcom/yyjia/sdk/e/v;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yyjia/sdk/e/v;->a(Lcom/yyjia/sdk/e/v;Z)V

    return-void
.end method
