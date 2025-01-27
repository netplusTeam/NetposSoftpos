.class Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;
.super Ljava/lang/Object;
.source "UserAuthPublicKeyIterator.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->initializeAgentIdentities(Lorg/apache/sshd/client/session/ClientSession;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;",
        ">;"
    }
.end annotation


# instance fields
.field private final agentId:Ljava/lang/String;

.field private final agentIds:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/security/PublicKey;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;


# direct methods
.method constructor <init>(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;->this$0:Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    nop

    .line 154
    invoke-static {p1}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->access$200(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;)Lorg/apache/sshd/agent/SshAgent;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/sshd/agent/SshAgent;->getIdentities()Ljava/lang/Iterable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;->agentIds:Ljava/lang/Iterable;

    .line 155
    nop

    .line 156
    invoke-static {p1}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->access$200(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;)Lorg/apache/sshd/agent/SshAgent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;->agentId:Ljava/lang/String;

    .line 155
    return-void
.end method

.method static synthetic access$300(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;)Ljava/lang/Iterable;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;

    .line 152
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;->agentIds:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;

    .line 152
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;->agentId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2$1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2$1;-><init>(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[iterable]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;->agentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
