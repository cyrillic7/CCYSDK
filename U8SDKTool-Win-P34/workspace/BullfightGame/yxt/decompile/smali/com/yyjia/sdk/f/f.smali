.class Lcom/yyjia/sdk/f/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/b;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/b;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/f;->a:Lcom/yyjia/sdk/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    iget-object v0, p0, Lcom/yyjia/sdk/f/f;->a:Lcom/yyjia/sdk/f/b;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/yyjia/sdk/f/b;->a(Lcom/yyjia/sdk/f/b;J)V

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
