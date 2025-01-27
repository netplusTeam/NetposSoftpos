.class public interface abstract Lorg/apache/sshd/common/forward/PortForwardingEventListenerManagerHolder;
.super Ljava/lang/Object;
.source "PortForwardingEventListenerManagerHolder.java"


# virtual methods
.method public abstract addPortForwardingEventListenerManager(Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;)Z
.end method

.method public abstract getRegisteredManagers()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removePortForwardingEventListenerManager(Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;)Z
.end method
