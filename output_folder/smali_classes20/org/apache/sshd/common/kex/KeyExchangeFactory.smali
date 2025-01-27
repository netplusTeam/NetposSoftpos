.class public interface abstract Lorg/apache/sshd/common/kex/KeyExchangeFactory;
.super Ljava/lang/Object;
.source "KeyExchangeFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedResource;


# virtual methods
.method public abstract createKeyExchange(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/common/kex/KeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
