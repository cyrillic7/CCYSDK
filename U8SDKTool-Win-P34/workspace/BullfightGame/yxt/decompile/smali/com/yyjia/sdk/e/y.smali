.class Lcom/yyjia/sdk/e/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/e/v;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/e/v;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/e/y;->a:Lcom/yyjia/sdk/e/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/yyjia/sdk/e/y;->a:Lcom/yyjia/sdk/e/v;

    invoke-static {v0}, Lcom/yyjia/sdk/e/v;->m(Lcom/yyjia/sdk/e/v;)V

    return-void
.end method
