.class public interface abstract Lorg/apache/sshd/server/auth/UserAuth;
.super Ljava/lang/Object;
.source "UserAuth.java"

# interfaces
.implements Lorg/apache/sshd/server/session/ServerSessionHolder;
.implements Lorg/apache/sshd/common/auth/UserAuthInstance;
.implements Lorg/apache/sshd/common/auth/UsernameHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/server/session/ServerSessionHolder;",
        "Lorg/apache/sshd/common/auth/UserAuthInstance<",
        "Lorg/apache/sshd/server/session/ServerSession;",
        ">;",
        "Lorg/apache/sshd/common/auth/UsernameHolder;"
    }
.end annotation


# virtual methods
.method public abstract auth(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sshd/server/auth/AsyncAuthException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public abstract next(Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sshd/server/auth/AsyncAuthException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method
