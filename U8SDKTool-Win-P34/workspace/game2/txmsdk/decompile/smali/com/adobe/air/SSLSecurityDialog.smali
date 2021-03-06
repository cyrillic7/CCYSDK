.class public Lcom/adobe/air/SSLSecurityDialog;
.super Ljava/lang/Object;
.source "SSLSecurityDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final USER_ACTION_TRUST_ALWAYS:Ljava/lang/String; = "always"

.field private static final USER_ACTION_TRUST_NONE:Ljava/lang/String; = "none"

.field private static final USER_ACTION_TRUST_SESSION:Ljava/lang/String; = "session"


# instance fields
.field private m_condition:Ljava/util/concurrent/locks/Condition;

.field private m_lock:Ljava/util/concurrent/locks/Lock;

.field private m_useraction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/adobe/air/SSLSecurityDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/SSLSecurityDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_condition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method private SetUserAction(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iput-object p1, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/SSLSecurityDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adobe/air/SSLSecurityDialog;->SetUserAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ShowSSLDialog(Ljava/lang/String;[BLandroid/net/http/SslCertificate;Z)V
    .locals 11

    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Lcom/adobe/air/AndroidActivityWrapper;->WaitForNewActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v3, Lcom/adobe/air/AndroidAlertDialog;

    invoke-direct {v3, v1}, Lcom/adobe/air/AndroidAlertDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/adobe/air/AndroidAlertDialog;->GetAlertDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/adobe/air/AndroidActivityWrapper;->getRuntimeContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v0, "ssl_certificate_warning"

    invoke-static {v0, v5, v2}, Lcom/adobe/air/utils/Utils;->GetLayoutViewFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v0, "ServerName"

    invoke-static {v0, v6, v2}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByName(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_3

    new-instance v0, Lcom/adobe/air/Certificate;

    invoke-direct {v0}, Lcom/adobe/air/Certificate;-><init>()V

    invoke-virtual {v0, p2}, Lcom/adobe/air/Certificate;->setCertificate([B)Ljava/lang/Boolean;

    :goto_1
    const-string v7, "IDA_CERTIFICATE_DETAILS"

    invoke-static {v7, v5}, Lcom/adobe/air/utils/Utils;->GetResourceStringFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/adobe/air/Certificate;->getIssuedToCommonName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v0}, Lcom/adobe/air/Certificate;->getIssuedToOrganization()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v0}, Lcom/adobe/air/Certificate;->getIssuedToOrganizationalUnit()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v0}, Lcom/adobe/air/Certificate;->getIssuedByCommonName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-virtual {v0}, Lcom/adobe/air/Certificate;->getIssuedByOrganization()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-virtual {v0}, Lcom/adobe/air/Certificate;->getIssuedByOrganizationalUnit()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    invoke-virtual {v0}, Lcom/adobe/air/Certificate;->getIssuedOn()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x7

    invoke-virtual {v0}, Lcom/adobe/air/Certificate;->getExpiresOn()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "CertificateDetails"

    invoke-static {v0, v6, v2}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByName(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    if-eqz p4, :cond_0

    const-string v0, "IDA_CURL_INTERFACE_ALLSESS"

    invoke-static {v0, v5}, Lcom/adobe/air/utils/Utils;->GetResourceStringFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/adobe/air/SSLSecurityDialog$1;

    invoke-direct {v2, p0}, Lcom/adobe/air/SSLSecurityDialog$1;-><init>(Lcom/adobe/air/SSLSecurityDialog;)V

    invoke-virtual {v4, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    const-string v0, "IDA_CURL_INTERFACE_THISSESS"

    invoke-static {v0, v5}, Lcom/adobe/air/utils/Utils;->GetResourceStringFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/adobe/air/SSLSecurityDialog$2;

    invoke-direct {v2, p0}, Lcom/adobe/air/SSLSecurityDialog$2;-><init>(Lcom/adobe/air/SSLSecurityDialog;)V

    invoke-virtual {v4, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "IDA_CURL_INTERFACE_NOSESS"

    invoke-static {v0, v5}, Lcom/adobe/air/utils/Utils;->GetResourceStringFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/adobe/air/SSLSecurityDialog$3;

    invoke-direct {v2, p0}, Lcom/adobe/air/SSLSecurityDialog$3;-><init>(Lcom/adobe/air/SSLSecurityDialog;)V

    invoke-virtual {v4, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/adobe/air/SSLSecurityDialog$4;

    invoke-direct {v0, p0}, Lcom/adobe/air/SSLSecurityDialog$4;-><init>(Lcom/adobe/air/SSLSecurityDialog;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/adobe/air/SSLSecurityDialog$5;

    invoke-direct {v0, p0, v3}, Lcom/adobe/air/SSLSecurityDialog$5;-><init>(Lcom/adobe/air/SSLSecurityDialog;Lcom/adobe/air/AndroidAlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v0, Lcom/adobe/air/Certificate;

    invoke-direct {v0, p3}, Lcom/adobe/air/Certificate;-><init>(Landroid/net/http/SslCertificate;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_4
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public getUserAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    return-object v0
.end method

.method public show(Ljava/lang/String;Landroid/net/http/SslCertificate;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/adobe/air/SSLSecurityDialog;->ShowSSLDialog(Ljava/lang/String;[BLandroid/net/http/SslCertificate;Z)V

    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    return-object v0
.end method

.method public show(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/adobe/air/SSLSecurityDialog;->ShowSSLDialog(Ljava/lang/String;[BLandroid/net/http/SslCertificate;Z)V

    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    return-object v0
.end method
