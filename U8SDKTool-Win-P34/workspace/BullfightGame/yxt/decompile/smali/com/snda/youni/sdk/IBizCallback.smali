.class public interface abstract Lcom/snda/youni/sdk/IBizCallback;
.super Ljava/lang/Object;
.source "IBizCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snda/youni/sdk/IBizCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onComplete(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
