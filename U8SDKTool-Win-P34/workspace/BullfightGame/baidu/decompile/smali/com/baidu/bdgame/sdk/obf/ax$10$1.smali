.class final Lcom/baidu/bdgame/sdk/obf/ax$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ax$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ax$10;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ax$10;)V
    .registers 2

    .prologue
    .line 248
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax$10$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 252
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$10$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$10;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->m()V

    .line 253
    if-nez p1, :cond_31

    .line 254
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$10$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$10;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ax$10$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$10;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "bdp_passport_login"

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/bdgame/sdk/obf/cd;->b(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 267
    :goto_30
    return-void

    .line 256
    :cond_31
    const v0, 0x8d04

    if-ne p1, v0, :cond_51

    instance-of v0, p3, Lcom/baidu/bdgame/sdk/obf/ag;

    if-eqz v0, :cond_51

    .line 258
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mr;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ax$10$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$10;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v1

    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-direct {v0, v1, p3}, Lcom/baidu/bdgame/sdk/obf/mr;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/ag;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mr;->a()V

    goto :goto_30

    .line 261
    :cond_51
    const v0, 0x8ca5

    if-ne p1, v0, :cond_74

    .line 262
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$10$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$10;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->d(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$10$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$10;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->j(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/s;->b(Ljava/lang/String;)V

    .line 265
    :cond_74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$10$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$10;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_30
.end method