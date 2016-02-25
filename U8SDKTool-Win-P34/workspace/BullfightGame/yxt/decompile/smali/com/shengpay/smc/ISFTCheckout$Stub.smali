.class public abstract Lcom/shengpay/smc/ISFTCheckout$Stub;
.super Landroid/os/Binder;
.source "ISFTCheckout.java"

# interfaces
.implements Lcom/shengpay/smc/ISFTCheckout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shengpay/smc/ISFTCheckout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shengpay/smc/ISFTCheckout$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.shengpay.smc.ISFTCheckout"

.field static final TRANSACTION_payOrder:I = 0x1

.field static final TRANSACTION_registerCallback:I = 0x2

.field static final TRANSACTION_unregisterCallback:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.shengpay.smc.ISFTCheckout"

    invoke-virtual {p0, p0, v0}, Lcom/shengpay/smc/ISFTCheckout$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/shengpay/smc/ISFTCheckout;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.shengpay.smc.ISFTCheckout"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/shengpay/smc/ISFTCheckout;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/shengpay/smc/ISFTCheckout;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/shengpay/smc/ISFTCheckout$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/shengpay/smc/ISFTCheckout$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_4c

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 42
    :sswitch_9
    const-string v3, "com.shengpay.smc.ISFTCheckout"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v3, "com.shengpay.smc.ISFTCheckout"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/shengpay/smc/ISFTCheckout$Stub;->payOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 57
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_23
    const-string v3, "com.shengpay.smc.ISFTCheckout"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/shengpay/smc/ICheckoutCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/shengpay/smc/ICheckoutCallback;

    move-result-object v0

    .line 60
    .local v0, "_arg0":Lcom/shengpay/smc/ICheckoutCallback;
    invoke-virtual {p0, v0}, Lcom/shengpay/smc/ISFTCheckout$Stub;->registerCallback(Lcom/shengpay/smc/ICheckoutCallback;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 66
    .end local v0    # "_arg0":Lcom/shengpay/smc/ICheckoutCallback;
    :sswitch_37
    const-string v3, "com.shengpay.smc.ISFTCheckout"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/shengpay/smc/ICheckoutCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/shengpay/smc/ICheckoutCallback;

    move-result-object v0

    .line 69
    .restart local v0    # "_arg0":Lcom/shengpay/smc/ICheckoutCallback;
    invoke-virtual {p0, v0}, Lcom/shengpay/smc/ISFTCheckout$Stub;->unregisterCallback(Lcom/shengpay/smc/ICheckoutCallback;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 38
    nop

    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_23
        0x3 -> :sswitch_37
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
