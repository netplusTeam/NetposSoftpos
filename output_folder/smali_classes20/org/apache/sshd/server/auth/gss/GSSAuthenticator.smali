.class public Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;
.super Ljava/lang/Object;
.source "GSSAuthenticator.java"


# instance fields
.field private keytabFile:Ljava/lang/String;

.field private servicePrincipalName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public getGSSCredential(Lorg/ietf/jgss/GSSManager;)Lorg/ietf/jgss/GSSCredential;
    .locals 3
    .param p1, "mgr"    # Lorg/ietf/jgss/GSSManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljavax/security/auth/login/LoginException;,
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;->servicePrincipalName:Ljava/lang/String;

    .line 72
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;->keytabFile:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lorg/apache/sshd/server/auth/gss/CredentialHelper;->creds(Lorg/ietf/jgss/GSSManager;Ljava/lang/String;Ljava/lang/String;)Lorg/ietf/jgss/GSSCredential;

    move-result-object v1

    return-object v1
.end method

.method public getGSSManager()Lorg/ietf/jgss/GSSManager;
    .locals 1

    .line 57
    invoke-static {}, Lorg/ietf/jgss/GSSManager;->getInstance()Lorg/ietf/jgss/GSSManager;

    move-result-object v0

    return-object v0
.end method

.method public setKeytabFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "keytabFile"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;->keytabFile:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setServicePrincipalName(Ljava/lang/String;)V
    .locals 0
    .param p1, "servicePrincipalName"    # Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;->servicePrincipalName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public validateIdentity(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p2, "identity"    # Ljava/lang/String;

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public validateInitialUser(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p2, "user"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x1

    return v0
.end method
