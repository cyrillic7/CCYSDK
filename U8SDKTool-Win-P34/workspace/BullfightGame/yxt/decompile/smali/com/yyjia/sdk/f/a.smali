.class public Lcom/yyjia/sdk/f/a;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private final b:Ljava/lang/Object;

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;FLjava/util/ArrayList;)V
    .registers 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yyjia/sdk/f/a;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yyjia/sdk/f/a;->c:Z

    iput p2, p0, Lcom/yyjia/sdk/f/a;->e:F

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/yyjia/sdk/f/a;->a(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-nez p2, :cond_42

    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yyjia/sdk/f/a;->d:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    const/high16 v2, 0x40000000

    iget v3, p0, Lcom/yyjia/sdk/f/a;->e:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHeight(I)V

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    iget v3, p0, Lcom/yyjia/sdk/f/a;->e:F

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_31
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/yyjia/sdk/f/a;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_42
    move-object v1, p2

    goto :goto_31
.end method

.method private a(Landroid/content/Context;ILjava/util/List;)V
    .registers 4

    iput-object p1, p0, Lcom/yyjia/sdk/f/a;->d:Landroid/content/Context;

    check-cast p3, Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/yyjia/sdk/f/a;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/yyjia/sdk/f/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/f/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/yyjia/sdk/f/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
