.class Lcom/yyjia/sdk/e/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/e/v;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/e/v;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/e/z;->a:Lcom/yyjia/sdk/e/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
