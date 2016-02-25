.class public Lcom/yyjia/sdk/PayActivity;
.super Landroid/app/Activity;


# static fields
.field public static a:Lcom/yyjia/sdk/PayActivity;


# instance fields
.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/RelativeLayout;

.field private o:F

.field private p:F

.field private q:Ljava/lang/String;

.field private r:Landroid/widget/CheckBox;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Landroid/app/ProgressDialog;

.field private x:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/yyjia/sdk/PayActivity;->a:Lcom/yyjia/sdk/PayActivity;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/yyjia/sdk/a;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/a;-><init>(Lcom/yyjia/sdk/PayActivity;)V

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->x:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/PayActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->x:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/yyjia/sdk/PayActivity;F)V
    .registers 2

    iput p1, p0, Lcom/yyjia/sdk/PayActivity;->p:F

    return-void
.end method

.method static synthetic b(Lcom/yyjia/sdk/PayActivity;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->r:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private b()V
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rmb"

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/yyjia/sdk/PayActivity;->o:F

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "APPID"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "productname"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->q:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "yyjia_sdk_rlimg"

    invoke-static {v0, v2, v3}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "serverId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->s:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "charId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->t:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "callbackInfo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->u:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "cporderid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->v:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "yyjia_sdk_btn_pay"

    invoke-static {v0, v2, v3}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->b:Landroid/widget/Button;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "http://api.yxtsy.com/sdkapi.php?ac=getyue&appid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sessionid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "abc"

    invoke-virtual {p0, v1, v4}, Lcom/yyjia/sdk/PayActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "sessionid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yyjia/sdk/PayActivity;->w:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/yyjia/sdk/PayActivity;->w:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    new-instance v1, Lcom/yyjia/sdk/c;

    invoke-direct {v1, p0, v0}, Lcom/yyjia/sdk/c;-><init>(Lcom/yyjia/sdk/PayActivity;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "yyjia_sdk_btn_back"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yyjia/sdk/d;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/d;-><init>(Lcom/yyjia/sdk/PayActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "yyjia_sdk_tv_useyue"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->r:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->r:Landroid/widget/CheckBox;

    new-instance v1, Lcom/yyjia/sdk/e;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/e;-><init>(Lcom/yyjia/sdk/PayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/yyjia/sdk/f;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f;-><init>(Lcom/yyjia/sdk/PayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/yyjia/sdk/PayActivity;)F
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/PayActivity;->o:F

    return v0
.end method

.method static synthetic d(Lcom/yyjia/sdk/PayActivity;)F
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/PayActivity;->p:F

    return v0
.end method

.method static synthetic e(Lcom/yyjia/sdk/PayActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/yyjia/sdk/PayActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/yyjia/sdk/PayActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/yyjia/sdk/PayActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/yyjia/sdk/PayActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/yyjia/sdk/PayActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/yyjia/sdk/PayActivity;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->w:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 9

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yyjia/sdk/PayActivity;->p:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/yyjia/sdk/PayActivity;->o:F

    iget v1, p0, Lcom/yyjia/sdk/PayActivity;->p:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6b

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/yyjia/sdk/PayActivity;->o:F

    iget v6, p0, Lcom/yyjia/sdk/PayActivity;->p:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4f
    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->w:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->w:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    :cond_58
    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->b:Landroid/widget/Button;

    const-string v1, "drawable"

    const-string v2, "yyjia_sdk_bg_pay"

    invoke-static {p0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void

    :cond_6b
    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->j:Landroid/widget/TextView;

    const-string v1, "0\u5143"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17d

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "yyjia_sdk_activity_main2_hp"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/PayActivity;->setContentView(I)V

    :goto_1f
    sput-object p0, Lcom/yyjia/sdk/PayActivity;->a:Lcom/yyjia/sdk/PayActivity;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "yyjia_sdk_tv_rmb"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "yyjia_sdk_tv_rmb1"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "yyjia_sdk_tv_user"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "yyjia_sdk_tv_user1"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "yyjia_sdk_tv_spm"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "yyjia_sdk_tv_goodsName"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "yyjia_sdk_tv_goodsName1"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "yyjia_sdk_tv_paymoney1"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "yyjia_sdk_tv_paymoney"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "yyjia_sdk_tv_yue"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "yyjia_sdk_tv_yue1"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yyjia/sdk/PayActivity;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "rmb"

    const/high16 v4, 0x3f800000

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->d:Landroid/widget/TextView;

    const-string v1, "\u5546\u54c1\u4ef7\u683c:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->e:Landroid/widget/TextView;

    const-string v1, "abc"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/yyjia/sdk/PayActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "u"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->f:Landroid/widget/TextView;

    const-string v1, "\u5f53\u524d\u8d26\u53f7:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "productname"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "productname"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->h:Landroid/widget/TextView;

    const-string v1, "\u5546\u54c1\u540d\u79f0:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->k:Landroid/widget/TextView;

    const-string v1, "\u8fd8\u9700\u652f\u4ed8:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->m:Landroid/widget/TextView;

    const-string v1, "\u8d26\u6237\u4f59\u989d:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/yyjia/sdk/PayActivity;->b()V

    return-void

    :cond_17d
    invoke-virtual {p0}, Lcom/yyjia/sdk/PayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "yyjia_sdk_activity_main2"

    invoke-static {v0, v1, v2}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/PayActivity;->setContentView(I)V

    goto/16 :goto_1f
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/yyjia/sdk/PayActivity;->w:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
