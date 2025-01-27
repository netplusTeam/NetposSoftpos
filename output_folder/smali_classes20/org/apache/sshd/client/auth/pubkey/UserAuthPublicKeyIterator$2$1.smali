.class Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2$1;
.super Ljava/lang/Object;
.source "UserAuthPublicKeyIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;",
        ">;"
    }
.end annotation


# instance fields
.field private final iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/security/PublicKey;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;


# direct methods
.method constructor <init>(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;)V
    .locals 1
    .param p1, "this$1"    # Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;

    .line 160
    iput-object p1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2$1;->this$1:Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    nop

    .line 162
    invoke-static {p1}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;->access$300(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2$1;->iter:Ljava/util/Iterator;

    .line 161
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2$1;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2$1;->next()Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;
    .locals 5

    .line 172
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2$1;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 173
    .local v0, "kp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/PublicKey;Ljava/lang/String;>;"
    new-instance v1, Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;

    iget-object v2, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2$1;->this$1:Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;

    iget-object v2, v2, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;->this$0:Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;

    invoke-static {v2}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->access$200(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;)Lorg/apache/sshd/agent/SshAgent;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;-><init>(Lorg/apache/sshd/agent/SshAgent;Ljava/security/PublicKey;Ljava/lang/String;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[iterator]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2$1;->this$1:Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;

    invoke-static {v1}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;->access$400(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;)Ljava/lang/String;

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
