.class public abstract Lorg/apache/sshd/server/auth/AbstractUserAuth;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AbstractUserAuth.java"

# interfaces
.implements Lorg/apache/sshd/server/auth/UserAuth;


# instance fields
.field private final name:Ljava/lang/String;

.field private service:Ljava/lang/String;

.field private session:Lorg/apache/sshd/server/session/ServerSession;

.field private username:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 38
    const-string v0, "No name"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/auth/AbstractUserAuth;->name:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public auth(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "service"    # Ljava/lang/String;
    .param p4, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    const-string v0, "No server session"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/session/ServerSession;

    iput-object v0, p0, Lorg/apache/sshd/server/auth/AbstractUserAuth;->session:Lorg/apache/sshd/server/session/ServerSession;

    .line 68
    iput-object p2, p0, Lorg/apache/sshd/server/auth/AbstractUserAuth;->username:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lorg/apache/sshd/server/auth/AbstractUserAuth;->service:Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, p4, v0}, Lorg/apache/sshd/server/auth/AbstractUserAuth;->doAuth(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 0

    .line 81
    return-void
.end method

.method protected abstract doAuth(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/apache/sshd/server/auth/AbstractUserAuth;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getServerSession()Lorg/apache/sshd/server/session/ServerSession;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/sshd/server/auth/AbstractUserAuth;->session:Lorg/apache/sshd/server/session/ServerSession;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/sshd/server/auth/AbstractUserAuth;->service:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getSession()Lorg/apache/sshd/common/session/SessionContext;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/AbstractUserAuth;->getSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lorg/apache/sshd/server/session/ServerSession;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/AbstractUserAuth;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/sshd/server/auth/AbstractUserAuth;->username:Ljava/lang/String;

    return-object v0
.end method

.method public next(Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/server/auth/AbstractUserAuth;->doAuth(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/AbstractUserAuth;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/AbstractUserAuth;->getSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/AbstractUserAuth;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
