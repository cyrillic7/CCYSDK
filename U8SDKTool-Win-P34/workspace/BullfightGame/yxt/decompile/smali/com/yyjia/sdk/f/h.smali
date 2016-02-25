.class Lcom/yyjia/sdk/f/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/b;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/b;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/h;->a:Lcom/yyjia/sdk/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/f/h;->a:Lcom/yyjia/sdk/f/b;

    invoke-static {v0}, Lcom/yyjia/sdk/f/b;->e(Lcom/yyjia/sdk/f/b;)V

    return-void
.end method
