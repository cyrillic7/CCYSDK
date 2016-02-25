.class public interface abstract Lcom/shengpay/smc/ICheckoutCallback;
.super Ljava/lang/Object;
.source "ICheckoutCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shengpay/smc/ICheckoutCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
