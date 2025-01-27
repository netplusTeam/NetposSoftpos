.class public Lorg/apache/sshd/client/auth/pubkey/SessionKeyPairIterator;
.super Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator;
.source "SessionKeyPairIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator<",
        "Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;",
        ">;"
    }
.end annotation


# instance fields
.field private final keys:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation
.end field

.field private final signatureFactories:Lorg/apache/sshd/common/signature/SignatureFactoriesManager;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/client/session/ClientSession;Lorg/apache/sshd/common/signature/SignatureFactoriesManager;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "signatureFactories"    # Lorg/apache/sshd/common/signature/SignatureFactoriesManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/session/ClientSession;",
            "Lorg/apache/sshd/common/signature/SignatureFactoriesManager;",
            "Ljava/util/Iterator<",
            "Ljava/security/KeyPair;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/KeyPair;>;"
    invoke-direct {p0, p1}, Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator;-><init>(Lorg/apache/sshd/client/session/ClientSession;)V

    .line 37
    iput-object p2, p0, Lorg/apache/sshd/client/auth/pubkey/SessionKeyPairIterator;->signatureFactories:Lorg/apache/sshd/common/signature/SignatureFactoriesManager;

    .line 38
    iput-object p3, p0, Lorg/apache/sshd/client/auth/pubkey/SessionKeyPairIterator;->keys:Ljava/util/Iterator;

    .line 39
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/SessionKeyPairIterator;->keys:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/SessionKeyPairIterator;->next()Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;
    .locals 4

    .line 48
    new-instance v0, Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;

    iget-object v1, p0, Lorg/apache/sshd/client/auth/pubkey/SessionKeyPairIterator;->signatureFactories:Lorg/apache/sshd/common/signature/SignatureFactoriesManager;

    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/SessionKeyPairIterator;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sshd/client/auth/pubkey/SessionKeyPairIterator;->keys:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/KeyPair;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;-><init>(Lorg/apache/sshd/common/signature/SignatureFactoriesManager;Lorg/apache/sshd/common/signature/SignatureFactoriesManager;Ljava/security/KeyPair;)V

    return-object v0
.end method
