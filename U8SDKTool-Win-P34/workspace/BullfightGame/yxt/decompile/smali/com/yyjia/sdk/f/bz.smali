.class Lcom/yyjia/sdk/f/bz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/bv;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/bv;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/bz;->a:Lcom/yyjia/sdk/f/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    if-eqz p2, :cond_d

    iget-object v0, p0, Lcom/yyjia/sdk/f/bz;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bv;->h(Lcom/yyjia/sdk/f/bv;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/yyjia/sdk/f/bz;->a:Lcom/yyjia/sdk/f/bv;

    invoke-static {v0}, Lcom/yyjia/sdk/f/bv;->h(Lcom/yyjia/sdk/f/bv;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_c
.end method
