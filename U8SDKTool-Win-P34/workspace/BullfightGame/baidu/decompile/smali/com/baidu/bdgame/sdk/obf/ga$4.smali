.class final Lcom/baidu/bdgame/sdk/obf/ga$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ga;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/baidu/bdgame/sdk/obf/ig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/bdgame/sdk/obf/ga;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ga;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 269
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->e:Lcom/baidu/bdgame/sdk/obf/ga;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ig;)V
    .registers 7

    .prologue
    .line 274
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->e:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ga;->i(Lcom/baidu/bdgame/sdk/obf/ga;)Lcom/baidu/bdgame/sdk/obf/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gd;->O()V

    .line 275
    if-nez p1, :cond_65

    .line 276
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->e:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ga;->j(Lcom/baidu/bdgame/sdk/obf/ga;)V

    .line 277
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->e:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ga;->a(Lcom/baidu/bdgame/sdk/obf/ga;Lcom/baidu/bdgame/sdk/obf/ig;)Lcom/baidu/bdgame/sdk/obf/ig;

    .line 278
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ga$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->e:Lcom/baidu/bdgame/sdk/obf/ga;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ga$a;-><init>(Lcom/baidu/bdgame/sdk/obf/ga;Lcom/baidu/bdgame/sdk/obf/ga$1;)V

    .line 279
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ga$a;->a:Ljava/lang/String;

    .line 280
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ga$a;->b:Ljava/lang/String;

    .line 281
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ga$a;->c:Ljava/lang/String;

    .line 282
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ga$a;->d:Ljava/lang/String;

    .line 283
    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/ga$a;->e:Lcom/baidu/bdgame/sdk/obf/ig;

    .line 284
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->e:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ga;->k(Lcom/baidu/bdgame/sdk/obf/ga;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ig;->a()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 286
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->e:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ga;->l(Lcom/baidu/bdgame/sdk/obf/ga;)Lcom/baidu/bdgame/sdk/obf/gb;

    move-result-object v1

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ga$a;->e:Lcom/baidu/bdgame/sdk/obf/ig;

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/gb;->a(Lcom/baidu/bdgame/sdk/obf/ig;)V

    .line 300
    :goto_49
    return-void

    .line 288
    :cond_4a
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->e:Lcom/baidu/bdgame/sdk/obf/ga;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->e:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ga;->m(Lcom/baidu/bdgame/sdk/obf/ga;)Lcom/baidu/bdgame/sdk/obf/ig;

    move-result-object v0

    if-nez v0, :cond_5a

    const-string v0, ""

    :goto_56
    invoke-static {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/ga;->a(Lcom/baidu/bdgame/sdk/obf/ga;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :cond_5a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->e:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ga;->m(Lcom/baidu/bdgame/sdk/obf/ga;)Lcom/baidu/bdgame/sdk/obf/ig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ig;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    .line 292
    :cond_65
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 293
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->e:Lcom/baidu/bdgame/sdk/obf/ga;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->e:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ga;->m(Lcom/baidu/bdgame/sdk/obf/ga;)Lcom/baidu/bdgame/sdk/obf/ig;

    move-result-object v0

    if-nez v0, :cond_7b

    const-string v0, ""

    :goto_77
    invoke-static {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/ga;->b(Lcom/baidu/bdgame/sdk/obf/ga;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :cond_7b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->e:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ga;->m(Lcom/baidu/bdgame/sdk/obf/ga;)Lcom/baidu/bdgame/sdk/obf/ig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ig;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_77

    .line 296
    :cond_86
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$4;->e:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ga;->g(Lcom/baidu/bdgame/sdk/obf/ga;)Lcom/baidu/bdgame/sdk/obf/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gh;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->c(Landroid/content/Context;)V

    goto :goto_49
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 269
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ga$4;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ig;)V

    return-void
.end method