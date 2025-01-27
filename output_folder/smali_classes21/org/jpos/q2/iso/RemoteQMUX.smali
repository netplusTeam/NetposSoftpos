.class public interface abstract Lorg/jpos/q2/iso/RemoteQMUX;
.super Ljava/lang/Object;
.source "RemoteQMUX.java"

# interfaces
.implements Ljava/rmi/Remote;


# virtual methods
.method public abstract isConnected()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation
.end method

.method public abstract request(Lorg/jpos/iso/ISOMsg;J)Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;,
            Ljava/rmi/RemoteException;
        }
    .end annotation
.end method

.method public abstract request(Lorg/jpos/iso/ISOMsg;JLorg/jpos/iso/ISOResponseListener;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;,
            Ljava/rmi/RemoteException;
        }
    .end annotation
.end method
