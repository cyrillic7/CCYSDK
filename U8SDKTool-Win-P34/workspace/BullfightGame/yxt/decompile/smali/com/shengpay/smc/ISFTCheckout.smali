.class public interface abstract Lcom/shengpay/smc/ISFTCheckout;
.super Ljava/lang/Object;
.source "ISFTCheckout.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shengpay/smc/ISFTCheckout$Stub;
    }
.end annotation


# virtual methods
.method public abstract payOrder(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/shengpay/smc/ICheckoutCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/shengpay/smc/ICheckoutCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
