.class public interface abstract Lorg/apache/sshd/common/Service;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Lorg/apache/sshd/common/session/SessionHolder;
.implements Lorg/apache/sshd/common/PropertyResolver;
.implements Lorg/apache/sshd/common/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/session/SessionHolder<",
        "Lorg/apache/sshd/common/session/Session;",
        ">;",
        "Lorg/apache/sshd/common/PropertyResolver;",
        "Lorg/apache/sshd/common/Closeable;"
    }
.end annotation


# virtual methods
.method public getParentPropertyResolver()Lorg/apache/sshd/common/PropertyResolver;
    .locals 1

    .line 34
    invoke-interface {p0}, Lorg/apache/sshd/common/Service;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    return-object v0
.end method

.method public abstract process(ILorg/apache/sshd/common/util/buffer/Buffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract start()V
.end method
