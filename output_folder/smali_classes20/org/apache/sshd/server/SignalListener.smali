.class public interface abstract Lorg/apache/sshd/server/SignalListener;
.super Ljava/lang/Object;
.source "SignalListener.java"

# interfaces
.implements Lorg/apache/sshd/common/util/SshdEventListener;


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static validateListener(Lorg/apache/sshd/server/SignalListener;)Lorg/apache/sshd/server/SignalListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Lorg/apache/sshd/server/SignalListener;",
            ">(T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .line 38
    .local p0, "listener":Lorg/apache/sshd/server/SignalListener;, "TL;"
    const-class v0, Lorg/apache/sshd/server/SignalListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/SshdEventListener;->validateListener(Lorg/apache/sshd/common/util/SshdEventListener;Ljava/lang/String;)Lorg/apache/sshd/common/util/SshdEventListener;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/SignalListener;

    return-object v0
.end method


# virtual methods
.method public abstract signal(Lorg/apache/sshd/common/channel/Channel;Lorg/apache/sshd/server/Signal;)V
.end method
