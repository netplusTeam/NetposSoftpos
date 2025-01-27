.class public abstract Lorg/apache/sshd/common/global/AbstractOpenSshHostKeysHandler;
.super Lorg/apache/sshd/common/session/helpers/AbstractConnectionServiceRequestHandler;
.source "AbstractOpenSshHostKeysHandler.java"


# instance fields
.field private final parser:Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<",
            "+",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field private final request:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "request"    # Ljava/lang/String;

    .line 43
    sget-object v0, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;->DEFAULT:Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/common/global/AbstractOpenSshHostKeysHandler;-><init>(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;)V
    .locals 1
    .param p1, "request"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<",
            "+",
            "Ljava/security/PublicKey;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p2, "parser":Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<+Ljava/security/PublicKey;>;"
    invoke-direct {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionServiceRequestHandler;-><init>()V

    .line 48
    const-string v0, "No request identifier"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/global/AbstractOpenSshHostKeysHandler;->request:Ljava/lang/String;

    .line 49
    const-string v0, "No public keys extractor"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;

    iput-object v0, p0, Lorg/apache/sshd/common/global/AbstractOpenSshHostKeysHandler;->parser:Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;

    .line 50
    return-void
.end method


# virtual methods
.method public getPublicKeysParser()Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<",
            "+",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/apache/sshd/common/global/AbstractOpenSshHostKeysHandler;->parser:Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;

    return-object v0
.end method

.method public final getRequestName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/sshd/common/global/AbstractOpenSshHostKeysHandler;->request:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract handleHostKeys(Lorg/apache/sshd/common/session/Session;Ljava/util/Collection;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
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
.end method

.method public bridge synthetic process(Ljava/lang/Object;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    check-cast p1, Lorg/apache/sshd/common/session/ConnectionService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/global/AbstractOpenSshHostKeysHandler;->process(Lorg/apache/sshd/common/session/ConnectionService;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object p1

    return-object p1
.end method

.method public process(Lorg/apache/sshd/common/session/ConnectionService;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 9
    .param p1, "connectionService"    # Lorg/apache/sshd/common/session/ConnectionService;
    .param p2, "request"    # Ljava/lang/String;
    .param p3, "wantReply"    # Z
    .param p4, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lorg/apache/sshd/common/global/AbstractOpenSshHostKeysHandler;->getRequestName()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "expected":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionServiceRequestHandler;->process(Lorg/apache/sshd/common/session/ConnectionService;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v1

    return-object v1

    .line 69
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 70
    .local v1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/PublicKey;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/global/AbstractOpenSshHostKeysHandler;->getPublicKeysParser()Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;

    move-result-object v2

    .line 71
    .local v2, "p":Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<+Ljava/security/PublicKey;>;"
    if-eqz v2, :cond_3

    .line 72
    iget-object v3, p0, Lorg/apache/sshd/common/global/AbstractOpenSshHostKeysHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    .line 73
    .local v3, "debugEnabled":Z
    :goto_0
    invoke-virtual {p4}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v4

    if-lez v4, :cond_3

    .line 74
    invoke-virtual {p4, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getPublicKey(Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;)Ljava/security/PublicKey;

    move-result-object v4

    .line 75
    .local v4, "key":Ljava/security/PublicKey;
    if-eqz v3, :cond_1

    .line 76
    iget-object v5, p0, Lorg/apache/sshd/common/global/AbstractOpenSshHostKeysHandler;->log:Lorg/slf4j/Logger;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    .line 77
    invoke-static {v4}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v4}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 76
    const-string v7, "process({})[{}] key type={}, fingerprint={}"

    invoke-interface {v5, v7, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_1
    if-eqz v4, :cond_2

    .line 80
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v4    # "key":Ljava/security/PublicKey;
    :cond_2
    goto :goto_0

    .line 85
    .end local v3    # "debugEnabled":Z
    :cond_3
    invoke-interface {p1}, Lorg/apache/sshd/common/session/ConnectionService;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v3

    invoke-virtual {p0, v3, v1, p3, p4}, Lorg/apache/sshd/common/global/AbstractOpenSshHostKeysHandler;->handleHostKeys(Lorg/apache/sshd/common/session/Session;Ljava/util/Collection;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lorg/apache/sshd/common/global/AbstractOpenSshHostKeysHandler;->getRequestName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
