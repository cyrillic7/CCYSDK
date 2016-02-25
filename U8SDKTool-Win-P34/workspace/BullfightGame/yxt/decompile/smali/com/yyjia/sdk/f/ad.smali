.class Lcom/yyjia/sdk/f/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/ab;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/ad;->a:Lcom/yyjia/sdk/f/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    iget-object v0, p0, Lcom/yyjia/sdk/f/ad;->a:Lcom/yyjia/sdk/f/ab;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/yyjia/sdk/f/ab;->a(Lcom/yyjia/sdk/f/ab;J)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
