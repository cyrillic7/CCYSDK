.class public Lorg/cocos2dx/lib/Cocos2dxEditText;
.super Landroid/widget/EditText;
.source "Cocos2dxEditText.java"


# instance fields
.field private mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v5, 0x3

    const/4 v4, 0x1

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    sget-object v2, Lcom/xw/BullfightGame/BullfightGame;->game:Lcom/xw/BullfightGame/BullfightGame;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/xw/BullfightGame/BullfightGame;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditText;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/16 v2, 0x19

    if-ne p1, v2, :cond_2

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v5, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x18

    if-ne p1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v5, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public setCocos2dxGLSurfaceView(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V
    .locals 0
    .param p1    # Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditText;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    return-void
.end method
