.class Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;
.super Ljava/lang/Object;
.source "UserAuthPublicKeyIterator.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->initializeSessionIdentities(Lorg/apache/sshd/client/session/ClientSession;Lorg/apache/sshd/common/signature/SignatureFactoriesManager;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;",
        ">;"
    }
.end annotation


# instance fields
.field private final keysHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Iterable<",
            "Ljava/security/KeyPair;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sessionId:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;

.field final synthetic val$session:Lorg/apache/sshd/client/session/ClientSession;

.field final synthetic val$signatureFactories:Lorg/apache/sshd/common/signature/SignatureFactoriesManager;


# direct methods
.method constructor <init>(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;Lorg/apache/sshd/client/session/ClientSession;Lorg/apache/sshd/common/signature/SignatureFactoriesManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;

    .line 91
    iput-object p1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;->this$0:Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;

    iput-object p2, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;->val$session:Lorg/apache/sshd/client/session/ClientSession;

    iput-object p3, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;->val$signatureFactories:Lorg/apache/sshd/common/signature/SignatureFactoriesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;->sessionId:Ljava/lang/String;

    .line 93
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;->keysHolder:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;

    .line 91
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;->keysHolder:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;

    .line 91
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;->sessionId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;->keysHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 100
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;->val$session:Lorg/apache/sshd/client/session/ClientSession;

    invoke-static {v0}, Lorg/apache/sshd/client/session/ClientSession;->providerOf(Lorg/apache/sshd/client/session/ClientSession;)Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    move-result-object v0

    .line 101
    .local v0, "sessionKeysProvider":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    iget-object v1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;->keysHolder:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;->val$session:Lorg/apache/sshd/client/session/ClientSession;

    invoke-interface {v0, v2}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "sessionKeysProvider":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") keys loading exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    new-instance v0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1$1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1$1;-><init>(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[iterable]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
