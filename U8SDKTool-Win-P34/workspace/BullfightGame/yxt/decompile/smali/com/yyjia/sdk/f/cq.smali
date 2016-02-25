.class Lcom/yyjia/sdk/f/cq;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/yyjia/sdk/f/cf;


# direct methods
.method constructor <init>(Lcom/yyjia/sdk/f/cf;)V
    .registers 2

    iput-object p1, p0, Lcom/yyjia/sdk/f/cq;->a:Lcom/yyjia/sdk/f/cf;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4

    iget-object v0, p0, Lcom/yyjia/sdk/f/cq;->a:Lcom/yyjia/sdk/f/cf;

    invoke-static {v0, p2}, Lcom/yyjia/sdk/f/cf;->a(Lcom/yyjia/sdk/f/cf;I)V

    return-void
.end method
