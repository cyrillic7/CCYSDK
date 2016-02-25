.class Lcom/yyjia/sdk/f/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/bj;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/bp;->a:Lcom/yyjia/sdk/f/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/f/bp;->a:Lcom/yyjia/sdk/f/bj;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bj;->g(Lcom/yyjia/sdk/f/bj;)V

    return-void
.end method
