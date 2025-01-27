.class final Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory$1;
.super Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;
.source "UserAuthHostBasedFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createUserAuth(Lorg/apache/sshd/common/session/SessionContext;)Lorg/apache/sshd/common/auth/UserAuthInstance;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    check-cast p1, Lorg/apache/sshd/client/session/ClientSession;

    invoke-super {p0, p1}, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;->createUserAuth(Lorg/apache/sshd/client/session/ClientSession;)Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;

    move-result-object p1

    return-object p1
.end method

.method public getClientHostKeys()Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;
    .locals 1

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientHostname()Ljava/lang/String;
    .locals 1

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientUsername()Ljava/lang/String;
    .locals 1

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatureFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public setClientHostKeys(Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;)V
    .locals 2
    .param p1, "clientHostKeys"    # Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;

    .line 57
    if-nez p1, :cond_0

    .line 60
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not allowed to change default instance client host keys"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClientHostname(Ljava/lang/String;)V
    .locals 2
    .param p1, "clientHostname"    # Ljava/lang/String;

    .line 81
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not allowed to change default instance client hostname"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClientUsername(Ljava/lang/String;)V
    .locals 2
    .param p1, "clientUsername"    # Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not allowed to change default instance client username"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSignatureFactories(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;)V"
        }
    .end annotation

    .line 45
    .local p1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not allowed to change default instance signature factories"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
