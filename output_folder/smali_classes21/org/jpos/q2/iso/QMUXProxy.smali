.class public Lorg/jpos/q2/iso/QMUXProxy;
.super Ljava/lang/Object;
.source "QMUXProxy.java"

# interfaces
.implements Lorg/jpos/q2/iso/RemoteQMUX;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field qmux:Lorg/jpos/q2/iso/QMUX;

.field private ref:Ljava/rmi/server/RemoteRef;

.field private stub:Ljava/rmi/server/RemoteStub;


# direct methods
.method public constructor <init>(Lorg/jpos/q2/iso/QMUX;)V
    .locals 0
    .param p1, "qmux"    # Lorg/jpos/q2/iso/QMUX;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/jpos/q2/iso/QMUXProxy;->qmux:Lorg/jpos/q2/iso/QMUX;

    .line 48
    invoke-direct {p0}, Lorg/jpos/q2/iso/QMUXProxy;->startService()V

    .line 49
    return-void
.end method

.method private startService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 53
    const/16 v0, 0x44b

    :try_start_0
    invoke-static {v0}, Ljava/rmi/registry/LocateRegistry;->createRegistry(I)Ljava/rmi/registry/Registry;
    :try_end_0
    .catch Ljava/rmi/server/ExportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 57
    :goto_0
    invoke-static {p0}, Ljava/rmi/server/UnicastRemoteObject;->exportObject(Ljava/rmi/Remote;)Ljava/rmi/server/RemoteStub;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/iso/QMUXProxy;->stub:Ljava/rmi/server/RemoteStub;

    .line 58
    invoke-virtual {v0}, Ljava/rmi/server/RemoteStub;->getRef()Ljava/rmi/server/RemoteRef;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/iso/QMUXProxy;->ref:Ljava/rmi/server/RemoteRef;

    .line 59
    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUXProxy;->qmux:Lorg/jpos/q2/iso/QMUX;

    invoke-virtual {v0}, Lorg/jpos/q2/iso/QMUX;->isConnected()Z

    move-result v0

    return v0
.end method

.method public request(Lorg/jpos/iso/ISOMsg;J)Lorg/jpos/iso/ISOMsg;
    .locals 1
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUXProxy;->qmux:Lorg/jpos/q2/iso/QMUX;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jpos/q2/iso/QMUX;->request(Lorg/jpos/iso/ISOMsg;J)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    return-object v0
.end method

.method public request(Lorg/jpos/iso/ISOMsg;JLorg/jpos/iso/ISOResponseListener;Ljava/lang/Object;)V
    .locals 6
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "timeout"    # J
    .param p4, "rl"    # Lorg/jpos/iso/ISOResponseListener;
    .param p5, "handBack"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUXProxy;->qmux:Lorg/jpos/q2/iso/QMUX;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jpos/q2/iso/QMUX;->request(Lorg/jpos/iso/ISOMsg;JLorg/jpos/iso/ISOResponseListener;Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 1
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUXProxy;->qmux:Lorg/jpos/q2/iso/QMUX;

    invoke-virtual {v0, p1}, Lorg/jpos/q2/iso/QMUX;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 75
    return-void
.end method
