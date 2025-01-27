.class public interface abstract Lorg/apache/sshd/common/kex/DHFactory;
.super Ljava/lang/Object;
.source "DHFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedResource;
.implements Lorg/apache/sshd/common/OptionalFeature;


# virtual methods
.method public varargs abstract create([Ljava/lang/Object;)Lorg/apache/sshd/common/kex/AbstractDH;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isGroupExchange()Z
.end method
