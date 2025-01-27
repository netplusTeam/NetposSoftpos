.class public Lorg/apache/sshd/server/auth/UserAuthNone;
.super Lorg/apache/sshd/server/auth/AbstractUserAuth;
.source "UserAuthNone.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "none"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    const-string v0, "none"

    invoke-direct {p0, v0}, Lorg/apache/sshd/server/auth/AbstractUserAuth;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public doAuth(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Ljava/lang/Boolean;
    .locals 4
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "init"    # Z

    .line 37
    iget-object v0, p0, Lorg/apache/sshd/server/auth/UserAuthNone;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lorg/apache/sshd/server/auth/UserAuthNone;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/UserAuthNone;->getUsername()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/UserAuthNone;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "doAuth({}@{}) init={}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method
