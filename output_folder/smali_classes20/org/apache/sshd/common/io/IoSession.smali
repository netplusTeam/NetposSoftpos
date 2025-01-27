.class public interface abstract Lorg/apache/sshd/common/io/IoSession;
.super Ljava/lang/Object;
.source "IoSession.java"

# interfaces
.implements Lorg/apache/sshd/common/util/net/ConnectionEndpointsIndicator;
.implements Lorg/apache/sshd/common/io/PacketWriter;
.implements Lorg/apache/sshd/common/Closeable;


# virtual methods
.method public abstract getAcceptanceAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getId()J
.end method

.method public abstract getService()Lorg/apache/sshd/common/io/IoService;
.end method

.method public abstract removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract shudownOutputStream()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
