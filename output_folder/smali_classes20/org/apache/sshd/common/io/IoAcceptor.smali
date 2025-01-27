.class public interface abstract Lorg/apache/sshd/common/io/IoAcceptor;
.super Ljava/lang/Object;
.source "IoAcceptor.java"

# interfaces
.implements Lorg/apache/sshd/common/io/IoService;


# static fields
.field public static final DEFAULT_BACKLOG:I


# virtual methods
.method public abstract bind(Ljava/net/SocketAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract bind(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBoundAddresses()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract unbind()V
.end method

.method public abstract unbind(Ljava/net/SocketAddress;)V
.end method

.method public abstract unbind(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation
.end method
