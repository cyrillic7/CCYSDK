.class public Lcom/yyjia/sdk/f/at;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yyjia/sdk/f/bu;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Landroid/widget/PopupWindow;

.field private d:Landroid/webkit/WebView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/ListView;

.field private h:Ljava/util/ArrayList;

.field private i:Landroid/widget/LinearLayout;

.field private j:Lcom/yyjia/sdk/data/a;

.field private k:Ljava/util/ArrayList;

.field private l:F

.field private m:I

.field private n:I

.field private o:Landroid/widget/ProgressBar;

.field private p:Landroid/widget/ProgressBar;

.field private q:Landroid/widget/RelativeLayout$LayoutParams;

.field private r:Landroid/widget/RelativeLayout$LayoutParams;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/LinearLayout;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Lcom/yyjia/sdk/listener/LoginListener;

.field private x:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/yyjia/sdk/listener/LoginListener;Lcom/yyjia/sdk/data/a;)V
    .registers 14

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yyjia/sdk/f/at;->k:Ljava/util/ArrayList;

    const/16 v0, 0x262

    iput v0, p0, Lcom/yyjia/sdk/f/at;->m:I

    const/16 v0, 0x226

    iput v0, p0, Lcom/yyjia/sdk/f/at;->n:I

    new-instance v0, Lcom/yyjia/sdk/f/au;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/f/au;-><init>(Lcom/yyjia/sdk/f/at;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/at;->x:Landroid/os/Handler;

    iput-object p3, p0, Lcom/yyjia/sdk/f/at;->u:Ljava/lang/String;

    iput-object p4, p0, Lcom/yyjia/sdk/f/at;->v:Ljava/lang/String;

    iput-object p1, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yyjia/sdk/f/at;->b:Z

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/at;->e:Landroid/widget/EditText;

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/at;->f:Landroid/widget/EditText;

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/at;->g:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/at;->i:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/at;->s:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/at;->t:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/yyjia/sdk/f/at;->w:Lcom/yyjia/sdk/listener/LoginListener;

    iput-object p6, p0, Lcom/yyjia/sdk/f/at;->j:Lcom/yyjia/sdk/data/a;

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/at;->d:Landroid/webkit/WebView;

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/at;->o:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/ProgressBar;

    const v2, 0x1010078

    invoke-direct {v0, p1, v6, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/at;->p:Landroid/widget/ProgressBar;

    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    invoke-static {p1}, Lcom/yyjia/sdk/e/ad;->a(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/yyjia/sdk/f/at;->l:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yyjia/sdk/f/at;->h:Ljava/util/ArrayList;

    const-string v0, "abc"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v0, "userrnums"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v0, v1

    :goto_8a
    if-lt v0, v3, :cond_b5

    invoke-direct {p0}, Lcom/yyjia/sdk/f/at;->e()V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-direct {p0}, Lcom/yyjia/sdk/f/at;->c()V

    const-string v0, "abc"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->e:Landroid/widget/EditText;

    const-string v2, "u"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->f:Landroid/widget/EditText;

    const-string v2, "p"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_b4
    return-void

    :cond_b5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "username_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yyjia/sdk/f/at;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    :cond_d0
    invoke-direct {p0}, Lcom/yyjia/sdk/f/at;->c()V

    goto :goto_b4
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/at;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/widget/TextView;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->c:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1e

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/yyjia/sdk/f/at;->d()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/yyjia/sdk/f/at;->l:F

    iget v3, p0, Lcom/yyjia/sdk/f/at;->m:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/yyjia/sdk/f/at;->l:F

    iget v4, p0, Lcom/yyjia/sdk/f/at;->n:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/yyjia/sdk/f/at;->c:Landroid/widget/PopupWindow;

    :cond_1e
    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->c:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->c:Landroid/widget/PopupWindow;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    const-string v2, "style"

    const-string v3, "yyjia_sdk_PopupAnimation"

    invoke-static {v1, v2, v3}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->c:Landroid/widget/PopupWindow;

    const/16 v1, 0x11

    invoke-virtual {v0, p1, v1, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/at;Landroid/widget/TextView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/yyjia/sdk/f/at;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic a(Lcom/yyjia/sdk/f/at;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/yyjia/sdk/f/at;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    if-eq p1, v0, :cond_4c

    move v1, v2

    move v3, v2

    :goto_c
    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_39

    :goto_14
    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    const-string v1, "abc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->f:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "password_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/yyjia/sdk/f/at;->f()V

    return-void

    :cond_39
    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    move v3, v1

    :cond_48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_4c
    move v3, v2

    goto :goto_14
.end method

.method static synthetic b(Lcom/yyjia/sdk/f/at;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/yyjia/sdk/f/at;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/yyjia/sdk/f/at;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x237

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_f} :catch_62

    move-result v5

    :try_start_10
    const-string v1, "sessionid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_15} :catch_6a

    move-result-object v3

    :try_start_16
    const-string v1, "ischeck"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_1b} :catch_6e

    move-result v1

    :try_start_1c
    const-string v6, "uid"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_21} :catch_71

    move-result v2

    :goto_22
    if-ne v5, v7, :cond_61

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    const-string v6, "abc"

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "sessionid"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/yyjia/sdk/center/GMcenter;->getInstance(Landroid/content/Context;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yyjia/sdk/center/GMcenter;->setUid(I)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/yyjia/sdk/center/GMcenter;->getInstance(Landroid/content/Context;)Lcom/yyjia/sdk/center/GMcenter;

    invoke-static {}, Lcom/yyjia/sdk/center/GMcenter;->getConfigInfo()Lcom/yyjia/sdk/data/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yyjia/sdk/data/a;->a(I)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v5, v1, Landroid/os/Message;->what:I

    const-string v2, "u"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->x:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_61
    return-void

    :catch_62
    move-exception v0

    move-object v3, v4

    move v5, v1

    move v1, v2

    :goto_66
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_22

    :catch_6a
    move-exception v0

    move v1, v2

    move-object v3, v4

    goto :goto_66

    :catch_6e
    move-exception v0

    move v1, v2

    goto :goto_66

    :catch_71
    move-exception v0

    goto :goto_66
.end method

.method static synthetic c(Lcom/yyjia/sdk/f/at;)Lcom/yyjia/sdk/listener/LoginListener;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->w:Lcom/yyjia/sdk/listener/LoginListener;

    return-object v0
.end method

.method private c()V
    .registers 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/yyjia/sdk/f/ay;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/ay;-><init>(Lcom/yyjia/sdk/f/at;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d()Landroid/view/View;
    .registers 14

    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/yyjia/sdk/f/o;

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    iget v2, p0, Lcom/yyjia/sdk/f/at;->l:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/yyjia/sdk/f/o;-><init>(Landroid/content/Context;FZZZLcom/yyjia/sdk/f/bu;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const v3, 0x43d58000

    iget v4, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/yyjia/sdk/f/at;->q:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->q:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/f/o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->q:Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x42780000

    iget v3, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v3, 0x42480000

    iget v4, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "\u8d26\u53f7\u767b\u9646"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/4 v3, 0x0

    const/high16 v4, 0x420c0000

    iget v5, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x43160000

    iget v5, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v1, 0x11

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x43ba0000

    iget v5, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x42840000

    iget v6, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v5, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    const-string v6, "drawable"

    const-string v8, "yyjia_sdk_inputbox"

    invoke-static {v5, v6, v8}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42040000

    iget v8, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    const/high16 v8, 0x41f00000

    iget v9, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v5, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x41000000

    iget v8, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v6, 0x10

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x43a00000

    iget v8, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    const/high16 v8, 0x429c0000

    iget v9, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v5, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v6, 0x10

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v6, p0, Lcom/yyjia/sdk/f/at;->e:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/yyjia/sdk/f/at;->e:Landroid/widget/EditText;

    const-string v8, "\u8d26\u53f7"

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/yyjia/sdk/f/at;->e:Landroid/widget/EditText;

    const/4 v8, 0x0

    const/high16 v9, 0x41d00000

    iget v10, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v6, p0, Lcom/yyjia/sdk/f/at;->e:Landroid/widget/EditText;

    const/high16 v8, -0x1000000

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v6, p0, Lcom/yyjia/sdk/f/at;->e:Landroid/widget/EditText;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v6, p0, Lcom/yyjia/sdk/f/at;->e:Landroid/widget/EditText;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/yyjia/sdk/f/at;->e:Landroid/widget/EditText;

    const/16 v8, 0x10

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v6, p0, Lcom/yyjia/sdk/f/at;->e:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x43ba0000

    iget v10, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x42840000

    iget v11, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x41700000

    iget v10, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x10

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->f:Landroid/widget/EditText;

    const-string v5, "\u5bc6\u7801"

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->f:Landroid/widget/EditText;

    const/4 v5, 0x0

    const/high16 v8, 0x41d00000

    iget v9, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v8, v9

    invoke-virtual {v1, v5, v8}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->f:Landroid/widget/EditText;

    const/high16 v5, -0x1000000

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->f:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->f:Landroid/widget/EditText;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->f:Landroid/widget/EditText;

    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->f:Landroid/widget/EditText;

    const/16 v5, 0x81

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->f:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42500000

    iget v8, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v5, v8

    float-to-int v5, v5

    const/high16 v8, 0x42840000

    iget v9, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v1, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x10

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v5, Landroid/widget/Button;

    iget-object v8, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v5, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v8, -0xff0100

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    const-string v8, "drawable"

    const-string v9, "yyjia_sdk_accountlist"

    invoke-static {v1, v8, v9}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v1, Lcom/yyjia/sdk/f/az;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/az;-><init>(Lcom/yyjia/sdk/f/at;)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v8, -0x2

    invoke-direct {v1, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v5, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x43140000

    iget v6, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    const/high16 v6, 0x43140000

    iget v8, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-direct {v1, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41700000

    iget v6, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x43140000

    iget v8, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    const/high16 v8, 0x43140000

    iget v9, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/Button;

    iget-object v8, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "\u767b\u9646"

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v6}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/4 v1, 0x0

    const/high16 v8, 0x41f00000

    iget v9, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v8, v9

    invoke-virtual {v6, v1, v8}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    const-string v8, "drawable"

    const-string v9, "yyjia_sdk_login"

    invoke-static {v1, v8, v9}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40e00000

    iget v5, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v9, 0x42480000

    iget v10, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-direct {v1, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v9, "\u5fd8\u8bb0\u8d26\u53f7/\u5bc6\u7801\uff1f"

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/4 v9, 0x0

    const/high16 v10, 0x41d00000

    iget v11, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v10, v11

    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v9, 0x5

    const/16 v10, 0x75

    const/16 v11, 0xfb

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Lcom/yyjia/sdk/f/ba;

    invoke-direct {v9, p0}, Lcom/yyjia/sdk/f/ba;-><init>(Lcom/yyjia/sdk/f/at;)V

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "\u5feb\u901f\u6ce8\u518c"

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/4 v1, 0x0

    const/high16 v9, 0x41d00000

    iget v10, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v9, v10

    invoke-virtual {v5, v1, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, 0x5

    const/16 v9, 0x75

    const/16 v10, 0xfb

    invoke-static {v1, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41f00000

    iget v9, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v1, v9

    float-to-int v1, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v1, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/yyjia/sdk/f/bb;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/bb;-><init>(Lcom/yyjia/sdk/f/at;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v9, -0x2

    invoke-direct {v1, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/yyjia/sdk/f/bc;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/bc;-><init>(Lcom/yyjia/sdk/f/at;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v3, 0x43af0000

    iget v4, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v1, 0x11

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v2}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/at;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/yyjia/sdk/f/at;->s:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x43b80000

    iget v3, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->s:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42940000

    iget v3, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x41b80000

    iget v4, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    const-string v4, "drawable"

    const-string v5, "yyjia_sdk_downarrow"

    invoke-static {v3, v4, v5}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/f/o;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x43480000

    iget v5, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/yyjia/sdk/f/at;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, 0x43b00000

    iget v4, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->t:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->t:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    const-string v5, "drawable"

    const-string v6, "yyjia_sdk_background_bottom"

    invoke-static {v4, v5, v6}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->t:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41700000

    iget v4, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u793e\u4ea4\u8d26\u53f7\u767b\u9646"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/4 v4, 0x0

    const/high16 v5, 0x41f00000

    iget v6, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/yyjia/sdk/f/be;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/be;-><init>(Lcom/yyjia/sdk/f/at;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41c80000

    iget v3, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/yyjia/sdk/f/at;->l:F

    const v4, 0x44188000

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41f00000

    iget v5, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x5

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/yyjia/sdk/a/a/a;->a:Ljava/lang/String;

    const-string v5, "1151"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66d

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42a00000

    iget v6, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x42a00000

    iget v8, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    const-string v6, "drawable"

    const-string v8, "yyjia_sdk_sina"

    invoke-static {v5, v6, v8}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_511
    new-instance v4, Lcom/yyjia/sdk/f/bf;

    invoke-direct {v4, p0}, Lcom/yyjia/sdk/f/bf;-><init>(Lcom/yyjia/sdk/f/at;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/yyjia/sdk/f/at;->l:F

    const v5, 0x44188000

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41f00000

    iget v5, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x3

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42a00000

    iget v6, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x42a00000

    iget v8, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lcom/yyjia/sdk/a/a/a;->a:Ljava/lang/String;

    const-string v6, "1151"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69a

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v6, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    const-string v8, "drawable"

    const-string v9, "yyjia_sdk_qq"

    invoke-static {v6, v8, v9}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_582
    new-instance v1, Lcom/yyjia/sdk/f/bh;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/bh;-><init>(Lcom/yyjia/sdk/f/at;)V

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42940000

    iget v4, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x41b80000

    iget v5, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    const-string v5, "drawable"

    const-string v6, "yyjia_sdk_uparrow"

    invoke-static {v4, v5, v6}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/yyjia/sdk/f/av;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/av;-><init>(Lcom/yyjia/sdk/f/at;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x43a00000

    iget v3, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/yyjia/sdk/f/at;->r:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->i:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/yyjia/sdk/f/at;->r:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->i:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->i:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->i:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "yyjia_sdk_downwindow"

    invoke-static {v2, v3, v4}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->i:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41700000

    iget v3, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/yyjia/sdk/f/at;->g:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->g:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->i:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/yyjia/sdk/f/at;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->g:Landroid/widget/ListView;

    new-instance v2, Lcom/yyjia/sdk/f/aw;

    invoke-direct {v2, p0}, Lcom/yyjia/sdk/f/aw;-><init>(Lcom/yyjia/sdk/f/at;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/yyjia/sdk/f/ax;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/f/ax;-><init>(Lcom/yyjia/sdk/f/at;)V

    invoke-virtual {v0, v1}, Lcom/yyjia/sdk/f/o;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v7

    :cond_66d
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42840000

    iget v6, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x42840000

    iget v8, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    const-string v6, "drawable"

    const-string v8, "yyjia_sdk_google"

    invoke-static {v5, v6, v8}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_511

    :cond_69a
    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v6, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    const-string v8, "drawable"

    const-string v9, "yyjia_sdk_facebook"

    invoke-static {v6, v8, v9}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_582
.end method

.method static synthetic d(Lcom/yyjia/sdk/f/at;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/yyjia/sdk/f/at;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e()V
    .registers 6

    const-string v0, ""

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/yyjia/sdk/f/a;

    iget-object v2, p0, Lcom/yyjia/sdk/f/at;->a:Landroid/content/Context;

    const/high16 v3, 0x41d00000

    iget v4, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/yyjia/sdk/f/at;->h:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/yyjia/sdk/f/a;-><init>(Landroid/content/Context;FLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_21
    return-void
.end method

.method static synthetic f(Lcom/yyjia/sdk/f/at;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->c:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method static synthetic g(Lcom/yyjia/sdk/f/at;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private g()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->getLocationInWindow([I)V

    aget v1, v0, v4

    iget-object v2, p0, Lcom/yyjia/sdk/f/at;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, 0x41000000

    iget v3, p0, Lcom/yyjia/sdk/f/at;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    aput v1, v0, v4

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->r:Landroid/widget/RelativeLayout$LayoutParams;

    aget v2, v0, v5

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/yyjia/sdk/f/at;->r:Landroid/widget/RelativeLayout$LayoutParams;

    aget v0, v0, v4

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic h(Lcom/yyjia/sdk/f/at;)V
    .registers 1

    invoke-direct {p0}, Lcom/yyjia/sdk/f/at;->f()V

    return-void
.end method

.method static synthetic i(Lcom/yyjia/sdk/f/at;)V
    .registers 1

    invoke-direct {p0}, Lcom/yyjia/sdk/f/at;->g()V

    return-void
.end method

.method static synthetic j(Lcom/yyjia/sdk/f/at;)Lcom/yyjia/sdk/data/a;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->j:Lcom/yyjia/sdk/data/a;

    return-object v0
.end method

.method static synthetic k(Lcom/yyjia/sdk/f/at;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->x:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/yyjia/sdk/f/at;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->q:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic m(Lcom/yyjia/sdk/f/at;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->s:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/yyjia/sdk/f/at;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->t:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic o(Lcom/yyjia/sdk/f/at;)F
    .registers 2

    iget v0, p0, Lcom/yyjia/sdk/f/at;->l:F

    return v0
.end method

.method static synthetic p(Lcom/yyjia/sdk/f/at;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->r:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/yyjia/sdk/f/at;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
