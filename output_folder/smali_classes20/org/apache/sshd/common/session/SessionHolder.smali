.class public interface abstract Lorg/apache/sshd/common/session/SessionHolder;
.super Ljava/lang/Object;
.source "SessionHolder.java"

# interfaces
.implements Lorg/apache/sshd/common/session/SessionContextHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/sshd/common/session/Session;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/session/SessionContextHolder;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract getSession()Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public getSessionContext()Lorg/apache/sshd/common/session/SessionContext;
    .locals 1

    .line 30
    .local p0, "this":Lorg/apache/sshd/common/session/SessionHolder;, "Lorg/apache/sshd/common/session/SessionHolder<TS;>;"
    invoke-interface {p0}, Lorg/apache/sshd/common/session/SessionHolder;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    return-object v0
.end method
