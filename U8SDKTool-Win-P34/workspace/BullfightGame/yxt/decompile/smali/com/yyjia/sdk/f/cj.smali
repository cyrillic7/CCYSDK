.class Lcom/yyjia/sdk/f/cj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/cf;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/cf;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/cj;->a:Lcom/yyjia/sdk/f/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/yyjia/sdk/f/cj;->a:Lcom/yyjia/sdk/f/cf;

    const/16 v1, 0x1b59

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/yyjia/sdk/f/cf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
