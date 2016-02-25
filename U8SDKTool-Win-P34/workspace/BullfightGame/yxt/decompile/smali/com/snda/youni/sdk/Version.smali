.class public Lcom/snda/youni/sdk/Version;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field public expectedVersion:I

.field public md5:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public pkg:Ljava/lang/String;

.field public sha1:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x7a

    iput v0, p0, Lcom/snda/youni/sdk/Version;->expectedVersion:I

    .line 12
    const-string v0, "\u7248\u672c\u8fc7\u4f4e?\u9700\u4e3a4.6\u4ee5\u4e0a\u7248\u672c"

    iput-object v0, p0, Lcom/snda/youni/sdk/Version;->msg:Ljava/lang/String;

    .line 13
    const-string v0, "B7:D9:C6:68:BF:03:06:68:7D:75:E5:C0:55:87:EA:80:18:82:A1:71"

    iput-object v0, p0, Lcom/snda/youni/sdk/Version;->sha1:Ljava/lang/String;

    .line 14
    const-string v0, "com.snda.youni"

    iput-object v0, p0, Lcom/snda/youni/sdk/Version;->pkg:Ljava/lang/String;

    .line 15
    const-string v0, "51:22:6E:21:C8:75:02:DC:60:EB:73:3D:DD:97:82:27"

    iput-object v0, p0, Lcom/snda/youni/sdk/Version;->md5:Ljava/lang/String;

    .line 16
    const-string v0, "http://y.sdo.com/download/android?net=web&from=sdp_sdk"

    iput-object v0, p0, Lcom/snda/youni/sdk/Version;->url:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public setExpectedVersion(I)V
    .registers 2
    .param p1, "expectedVersion"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/snda/youni/sdk/Version;->expectedVersion:I

    .line 20
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .registers 2
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/snda/youni/sdk/Version;->md5:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/snda/youni/sdk/Version;->msg:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setPkg(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/snda/youni/sdk/Version;->pkg:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setSha1(Ljava/lang/String;)V
    .registers 2
    .param p1, "sha1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/snda/youni/sdk/Version;->sha1:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/snda/youni/sdk/Version;->url:Ljava/lang/String;

    .line 40
    return-void
.end method
