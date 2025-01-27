.class public interface abstract Lorg/apache/sshd/client/auth/UserAuth;
.super Ljava/lang/Object;
.source "UserAuth.java"

# interfaces
.implements Lorg/apache/sshd/client/session/ClientSessionHolder;
.implements Lorg/apache/sshd/common/auth/UserAuthInstance;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/client/session/ClientSessionHolder;",
        "Lorg/apache/sshd/common/auth/UserAuthInstance<",
        "Lorg/apache/sshd/client/session/ClientSession;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract init(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract process(Lorg/apache/sshd/common/util/buffer/Buffer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
