.class public Lorg/apache/sshd/client/global/OpenSshHostKeysHandler;
.super Lorg/apache/sshd/common/global/AbstractOpenSshHostKeysHandler;
.source "OpenSshHostKeysHandler.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/client/global/OpenSshHostKeysHandler;

.field public static final REQUEST:Ljava/lang/String; = "hostkeys-00@openssh.com"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lorg/apache/sshd/client/global/OpenSshHostKeysHandler;

    invoke-direct {v0}, Lorg/apache/sshd/client/global/OpenSshHostKeysHandler;-><init>()V

    sput-object v0, Lorg/apache/sshd/client/global/OpenSshHostKeysHandler;->INSTANCE:Lorg/apache/sshd/client/global/OpenSshHostKeysHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    const-string v0, "hostkeys-00@openssh.com"

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/global/AbstractOpenSshHostKeysHandler;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<",
            "+",
            "Ljava/security/PublicKey;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "parser":Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<+Ljava/security/PublicKey;>;"
    const-string v0, "hostkeys-00@openssh.com"

    invoke-direct {p0, v0, p1}, Lorg/apache/sshd/common/global/AbstractOpenSshHostKeysHandler;-><init>(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected handleHostKeys(Lorg/apache/sshd/common/session/Session;Ljava/util/Collection;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p3, "wantReply"    # Z
    .param p4, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/Session;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/PublicKey;",
            ">;Z",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ")",
            "Lorg/apache/sshd/common/channel/RequestHandler$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/PublicKey;>;"
    xor-int/lit8 v0, p3, 0x1

    const-string v1, "Unexpected reply required for the host keys of %s"

    invoke-static {v0, v1, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lorg/apache/sshd/client/global/OpenSshHostKeysHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/apache/sshd/client/global/OpenSshHostKeysHandler;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 60
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 59
    const-string v2, "handleHostKeys({})[want-reply={}] received {} keys"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Replied:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v0
.end method
