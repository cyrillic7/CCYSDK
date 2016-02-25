.class Lcom/adobe/air/AndroidInputDevice;
.super Ljava/lang/Object;
.source "AndroidInputManager.java"


# instance fields
.field private mDevice:Landroid/view/InputDevice;

.field private mInputControls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/air/AndroidInputControl;",
            ">;"
        }
    .end annotation
.end field

.field private mNumControls:I


# direct methods
.method public constructor <init>(Landroid/view/InputDevice;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidInputDevice;->mDevice:Landroid/view/InputDevice;

    iput-object v0, p0, Lcom/adobe/air/AndroidInputDevice;->mInputControls:Ljava/util/List;

    iput v1, p0, Lcom/adobe/air/AndroidInputDevice;->mNumControls:I

    iput-object p1, p0, Lcom/adobe/air/AndroidInputDevice;->mDevice:Landroid/view/InputDevice;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidInputDevice;->mInputControls:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_0

    new-instance v3, Lcom/adobe/air/AndroidInputControl;

    sget-object v4, Lcom/adobe/air/ControlType;->AXIS:Lcom/adobe/air/ControlType;

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v0

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/adobe/air/AndroidInputControl;-><init>(Lcom/adobe/air/ControlType;IFF)V

    iget-object v0, p0, Lcom/adobe/air/AndroidInputDevice;->mInputControls:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/adobe/air/AndroidInputDevice;->mNumControls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/air/AndroidInputDevice;->mNumControls:I

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/adobe/air/AndroidInputDevice;->isGameKey(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/adobe/air/AndroidInputControl;

    sget-object v2, Lcom/adobe/air/ControlType;->BUTTON:Lcom/adobe/air/ControlType;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/adobe/air/AndroidInputControl;-><init>(Lcom/adobe/air/ControlType;IFF)V

    iget-object v2, p0, Lcom/adobe/air/AndroidInputDevice;->mInputControls:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/adobe/air/AndroidInputDevice;->mNumControls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/air/AndroidInputDevice;->mNumControls:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static isGameKey(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getInputControl(I)Lcom/adobe/air/AndroidInputControl;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidInputDevice;->mInputControls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AndroidInputControl;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidInputDevice;->mDevice:Landroid/view/InputDevice;

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumControls()I
    .locals 1

    iget v0, p0, Lcom/adobe/air/AndroidInputDevice;->mNumControls:I

    return v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidInputDevice;->mDevice:Landroid/view/InputDevice;

    invoke-virtual {v0}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adobe/air/AndroidInputDevice;->mInputControls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AndroidInputDevice;->mInputControls:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AndroidInputControl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidInputControl;->getType()I

    move-result v2

    sget-object v3, Lcom/adobe/air/ControlType;->AXIS:Lcom/adobe/air/ControlType;

    invoke-virtual {v3}, Lcom/adobe/air/ControlType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidInputControl;->getCode()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/adobe/air/AndroidInputControl;->setData(F)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/adobe/air/AndroidInputDevice;->mInputControls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AndroidInputDevice;->mInputControls:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AndroidInputControl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidInputControl;->getType()I

    move-result v4

    sget-object v5, Lcom/adobe/air/ControlType;->BUTTON:Lcom/adobe/air/ControlType;

    invoke-virtual {v5}, Lcom/adobe/air/ControlType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidInputControl;->getCode()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidInputControl;->setData(F)V

    move v2, v3

    :cond_1
    :goto_1
    return v2

    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidInputControl;->setData(F)V

    move v2, v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method