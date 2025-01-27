.class public Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;
.super Lorg/apache/sshd/client/auth/AbstractUserAuthFactory;
.source "UserAuthHostBasedFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/signature/SignatureFactoriesManager;


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;

.field public static final NAME:Ljava/lang/String; = "hostbased"


# instance fields
.field private clientHostKeys:Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;

.field private clientHostname:Ljava/lang/String;

.field private clientUsername:Ljava/lang/String;

.field private factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory$1;

    invoke-direct {v0}, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;->INSTANCE:Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 93
    const-string v0, "hostbased"

    invoke-direct {p0, v0}, Lorg/apache/sshd/client/auth/AbstractUserAuthFactory;-><init>(Ljava/lang/String;)V

    .line 94
    return-void
.end method


# virtual methods
.method public createUserAuth(Lorg/apache/sshd/client/session/ClientSession;)Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    new-instance v0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;

    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;->getClientHostKeys()Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;-><init>(Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;)V

    .line 133
    .local v0, "auth":Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;->getClientHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->setClientHostname(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;->getClientUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->setClientUsername(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;->getSignatureFactories()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->setSignatureFactories(Ljava/util/List;)V

    .line 136
    return-object v0
.end method

.method public bridge synthetic createUserAuth(Lorg/apache/sshd/common/session/SessionContext;)Lorg/apache/sshd/common/auth/UserAuthInstance;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    check-cast p1, Lorg/apache/sshd/client/session/ClientSession;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;->createUserAuth(Lorg/apache/sshd/client/session/ClientSession;)Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;

    move-result-object p1

    return-object p1
.end method

.method public getClientHostKeys()Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;->clientHostKeys:Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;

    return-object v0
.end method

.method public getClientHostname()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;->clientHostname:Ljava/lang/String;

    return-object v0
.end method

.method public getClientUsername()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;->clientUsername:Ljava/lang/String;

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

    .line 98
    iget-object v0, p0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;->factories:Ljava/util/List;

    return-object v0
.end method

.method public setClientHostKeys(Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;)V
    .locals 0
    .param p1, "clientHostKeys"    # Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;

    .line 111
    iput-object p1, p0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;->clientHostKeys:Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;

    .line 112
    return-void
.end method

.method public setClientHostname(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientHostname"    # Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;->clientHostname:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setClientUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientUsername"    # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;->clientUsername:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setSignatureFactories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;)V"
        }
    .end annotation

    .line 103
    .local p1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    iput-object p1, p0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;->factories:Ljava/util/List;

    .line 104
    return-void
.end method
