.class Lcom/snda/youni/sdk/DownloadWebPage$4;
.super Ljava/lang/Object;
.source "DownloadWebPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snda/youni/sdk/DownloadWebPage;->getBackTextView()Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snda/youni/sdk/DownloadWebPage;


# direct methods
.method constructor <init>(Lcom/snda/youni/sdk/DownloadWebPage;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/snda/youni/sdk/DownloadWebPage$4;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/snda/youni/sdk/DownloadWebPage$4;->this$0:Lcom/snda/youni/sdk/DownloadWebPage;

    invoke-virtual {v0}, Lcom/snda/youni/sdk/DownloadWebPage;->dismiss()V

    .line 198
    return-void
.end method
