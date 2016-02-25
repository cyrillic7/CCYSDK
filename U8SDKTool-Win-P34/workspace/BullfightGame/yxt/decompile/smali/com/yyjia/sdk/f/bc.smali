.class Lcom/yyjia/sdk/f/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/at;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/at;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/bc;->a:Lcom/yyjia/sdk/f/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/bc;)Lcom/yyjia/sdk/f/at;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/bc;->a:Lcom/yyjia/sdk/f/at;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    new-instance v0, Lcom/yyjia/sdk/f/bd;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/f/bd;-><init>(Lcom/yyjia/sdk/f/bc;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
