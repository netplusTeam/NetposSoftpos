.class Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1$1;
.super Ljava/lang/Object;
.source "UserAuthPublicKeyIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
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

.field final synthetic this$1:Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;


# direct methods
.method constructor <init>(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;)V
    .locals 2
    .param p1, "this$1"    # Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;

    .line 108
    iput-object p1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1$1;->this$1:Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    nop

    .line 114
    invoke-static {p1}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;->access$000(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "No session keys available"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 115
    .local v0, "sessionKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1$1;->keys:Ljava/util/Iterator;

    .line 116
    .end local v0    # "sessionKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1$1;->keys:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1$1;->next()Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;
    .locals 4

    .line 125
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1$1;->keys:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPair;

    .line 126
    .local v0, "kp":Ljava/security/KeyPair;
    new-instance v1, Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;

    iget-object v2, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1$1;->this$1:Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;

    iget-object v2, v2, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;->val$signatureFactories:Lorg/apache/sshd/common/signature/SignatureFactoriesManager;

    iget-object v3, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1$1;->this$1:Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;

    iget-object v3, v3, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;->val$session:Lorg/apache/sshd/client/session/ClientSession;

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;-><init>(Lorg/apache/sshd/common/signature/SignatureFactoriesManager;Lorg/apache/sshd/common/signature/SignatureFactoriesManager;Ljava/security/KeyPair;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[iterator]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1$1;->this$1:Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;

    invoke-static {v1}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;->access$100(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;)Ljava/lang/String;

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
