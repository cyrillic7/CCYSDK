.class Lcom/yyjia/sdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/PayActivity;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/PayActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/d;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/d;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-virtual {v0}, Lcom/yyjia/sdk/PayActivity;->finish()V

    return-void
.end method
