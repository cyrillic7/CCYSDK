.class public abstract Lcom/snda/youni/sdk/IYouniPayApi$Stub;
.super Landroid/os/Binder;
.source "IYouniPayApi.java"

# interfaces
.implements Lcom/snda/youni/sdk/IYouniPayApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snda/youni/sdk/IYouniPayApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snda/youni/sdk/IYouniPayApi$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.snda.youni.sdk.IYouniPayApi"

.field static final TRANSACTION_pay:I = 0x1

.field static final TRANSACTION_registerCallback:I = 0x2

.field static final TRANSACTION_unregisterCallback:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.snda.youni.sdk.IYouniPayApi"

    invoke-virtual {p0, p0, v0}, Lcom/snda/youni/sdk/IYouniPayApi$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/snda/youni/sdk/IYouniPayApi;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 32
    if-nez p0, :cond_4

    .line 33
    const/4 v0, 0x0

    .line 39
    :goto_3
    return-object v0

    .line 35
    :cond_4
    const-string v1, "com.snda.youni.sdk.IYouniPayApi"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/snda/youni/sdk/IYouniPayApi;

    if-eqz v1, :cond_13

    .line 37
    check-cast v0, Lcom/snda/youni/sdk/IYouniPayApi;

    goto :goto_3

    .line 39
    :cond_13
    new-instance v0, Lcom/snda/youni/sdk/IYouniPayApi$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/snda/youni/sdk/IYouniPayApi$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
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
    const/4 v3, 0x1

    .line 49
    sparse-switch p1, :sswitch_data_4c

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 53
    :sswitch_9
    const-string v6, "com.snda.youni.sdk.IYouniPayApi"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 58
    :sswitch_f
    const-string v6, "com.snda.youni.sdk.IYouniPayApi"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/snda/youni/sdk/IYouniPayApi$Stub;->pay(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 69
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_23
    const-string v6, "com.snda.youni.sdk.IYouniPayApi"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/snda/youni/sdk/IBizCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/snda/youni/sdk/IBizCallback;

    move-result-object v0

    .line 72
    .local v0, "_arg0":Lcom/snda/youni/sdk/IBizCallback;
    invoke-virtual {p0, v0}, Lcom/snda/youni/sdk/IYouniPayApi$Stub;->registerCallback(Lcom/snda/youni/sdk/IBizCallback;)J

    move-result-wide v4

    .line 73
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_8

    .line 79
    .end local v0    # "_arg0":Lcom/snda/youni/sdk/IBizCallback;
    .end local v4    # "_result":J
    :sswitch_3b
    const-string v6, "com.snda.youni.sdk.IYouniPayApi"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 82
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/snda/youni/sdk/IYouniPayApi$Stub;->unregisterCallback(J)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 49
    nop

    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_23
        0x3 -> :sswitch_3b
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
