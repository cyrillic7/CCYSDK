.class Lcom/yyjia/sdk/f/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/p;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/p;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/x;->a:Lcom/yyjia/sdk/f/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/f/x;->a:Lcom/yyjia/sdk/f/p;

    invoke-static {v0}, Lcom/yyjia/sdk/f/p;->h(Lcom/yyjia/sdk/f/p;)V

    return-void
.end method
