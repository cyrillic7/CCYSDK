.class Lcom/yyjia/sdk/f/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/ab;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/ao;->a:Lcom/yyjia/sdk/f/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/f/ao;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0}, Lcom/yyjia/sdk/f/ab;->h(Lcom/yyjia/sdk/f/ab;)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/ao;->a:Lcom/yyjia/sdk/f/ab;

    invoke-static {v0}, Lcom/yyjia/sdk/f/ab;->i(Lcom/yyjia/sdk/f/ab;)Lcom/yyjia/sdk/f/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yyjia/sdk/f/as;->start()Landroid/os/CountDownTimer;

    return-void
.end method
