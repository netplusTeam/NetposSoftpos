.class public Lorg/apache/sshd/server/ServerBuilder;
.super Lorg/apache/sshd/common/BaseBuilder;
.source "ServerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/BaseBuilder<",
        "Lorg/apache/sshd/server/SshServer;",
        "Lorg/apache/sshd/server/ServerBuilder;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CHANNEL_FACTORIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/ChannelFactory;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPRESSION_FACTORIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/compression/CompressionFactory;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_GLOBAL_REQUEST_HANDLERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/session/ConnectionService;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INTERACTIVE_AUTHENTICATOR:Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

.field public static final DEFAULT_PUBLIC_KEY_AUTHENTICATOR:Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

.field public static final DEFAULT_SIGNATURE_PREFERENCE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/signature/BuiltinSignatures;",
            ">;"
        }
    .end annotation
.end field

.field public static final DH2KEX:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/apache/sshd/common/kex/DHFactory;",
            "Lorg/apache/sshd/common/kex/KeyExchangeFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected interactiveAuthenticator:Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

.field protected pubkeyAuthenticator:Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 59
    new-instance v0, Lorg/apache/sshd/server/ServerBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/server/ServerBuilder$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/ServerBuilder;->DH2KEX:Ljava/util/function/Function;

    .line 67
    const/4 v0, 0x2

    new-array v1, v0, [Lorg/apache/sshd/common/channel/ChannelFactory;

    sget-object v2, Lorg/apache/sshd/server/channel/ChannelSessionFactory;->INSTANCE:Lorg/apache/sshd/server/channel/ChannelSessionFactory;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/sshd/server/forward/DirectTcpipFactory;->INSTANCE:Lorg/apache/sshd/server/forward/DirectTcpipFactory;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 69
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 68
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/apache/sshd/server/ServerBuilder;->DEFAULT_CHANNEL_FACTORIES:Ljava/util/List;

    .line 74
    const/4 v1, 0x5

    new-array v2, v1, [Lorg/apache/sshd/common/channel/RequestHandler;

    sget-object v5, Lorg/apache/sshd/server/global/KeepAliveHandler;->INSTANCE:Lorg/apache/sshd/server/global/KeepAliveHandler;

    aput-object v5, v2, v3

    sget-object v5, Lorg/apache/sshd/server/global/NoMoreSessionsHandler;->INSTANCE:Lorg/apache/sshd/server/global/NoMoreSessionsHandler;

    aput-object v5, v2, v4

    sget-object v5, Lorg/apache/sshd/server/global/TcpipForwardHandler;->INSTANCE:Lorg/apache/sshd/server/global/TcpipForwardHandler;

    aput-object v5, v2, v0

    sget-object v5, Lorg/apache/sshd/server/global/CancelTcpipForwardHandler;->INSTANCE:Lorg/apache/sshd/server/global/CancelTcpipForwardHandler;

    const/4 v6, 0x3

    aput-object v5, v2, v6

    sget-object v5, Lorg/apache/sshd/server/global/OpenSshHostKeysHandler;->INSTANCE:Lorg/apache/sshd/server/global/OpenSshHostKeysHandler;

    const/4 v7, 0x4

    aput-object v5, v2, v7

    .line 76
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 75
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lorg/apache/sshd/server/ServerBuilder;->DEFAULT_GLOBAL_REQUEST_HANDLERS:Ljava/util/List;

    .line 84
    sget-object v2, Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;->INSTANCE:Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;

    sput-object v2, Lorg/apache/sshd/server/ServerBuilder;->DEFAULT_PUBLIC_KEY_AUTHENTICATOR:Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    .line 85
    sget-object v2, Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;->INSTANCE:Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;

    sput-object v2, Lorg/apache/sshd/server/ServerBuilder;->DEFAULT_INTERACTIVE_AUTHENTICATOR:Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

    .line 86
    new-array v2, v6, [Lorg/apache/sshd/common/compression/CompressionFactory;

    sget-object v5, Lorg/apache/sshd/common/compression/BuiltinCompressions;->none:Lorg/apache/sshd/common/compression/BuiltinCompressions;

    aput-object v5, v2, v3

    sget-object v5, Lorg/apache/sshd/common/compression/BuiltinCompressions;->zlib:Lorg/apache/sshd/common/compression/BuiltinCompressions;

    aput-object v5, v2, v4

    sget-object v5, Lorg/apache/sshd/common/compression/BuiltinCompressions;->delayedZlib:Lorg/apache/sshd/common/compression/BuiltinCompressions;

    aput-object v5, v2, v0

    .line 88
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 87
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lorg/apache/sshd/server/ServerBuilder;->DEFAULT_COMPRESSION_FACTORIES:Ljava/util/List;

    .line 98
    const/16 v2, 0x8

    new-array v2, v2, [Lorg/apache/sshd/common/signature/BuiltinSignatures;

    sget-object v5, Lorg/apache/sshd/common/signature/BuiltinSignatures;->nistp256:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    aput-object v5, v2, v3

    sget-object v3, Lorg/apache/sshd/common/signature/BuiltinSignatures;->nistp384:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    aput-object v3, v2, v4

    sget-object v3, Lorg/apache/sshd/common/signature/BuiltinSignatures;->nistp521:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    aput-object v3, v2, v0

    sget-object v0, Lorg/apache/sshd/common/signature/BuiltinSignatures;->ed25519:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    aput-object v0, v2, v6

    sget-object v0, Lorg/apache/sshd/common/signature/BuiltinSignatures;->rsaSHA512:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    aput-object v0, v2, v7

    sget-object v0, Lorg/apache/sshd/common/signature/BuiltinSignatures;->rsaSHA256:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    aput-object v0, v2, v1

    sget-object v0, Lorg/apache/sshd/common/signature/BuiltinSignatures;->rsa:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    const/4 v1, 0x6

    aput-object v0, v2, v1

    sget-object v0, Lorg/apache/sshd/common/signature/BuiltinSignatures;->dsa:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    const/4 v1, 0x7

    aput-object v0, v2, v1

    .line 100
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 99
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/server/ServerBuilder;->DEFAULT_SIGNATURE_PREFERENCE:Ljava/util/List;

    .line 98
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lorg/apache/sshd/common/BaseBuilder;-><init>()V

    .line 116
    return-void
.end method

.method public static builder()Lorg/apache/sshd/server/ServerBuilder;
    .locals 1

    .line 202
    new-instance v0, Lorg/apache/sshd/server/ServerBuilder;

    invoke-direct {v0}, Lorg/apache/sshd/server/ServerBuilder;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$0(Lorg/apache/sshd/common/kex/DHFactory;)Lorg/apache/sshd/common/kex/KeyExchangeFactory;
    .locals 1
    .param p0, "factory"    # Lorg/apache/sshd/common/kex/DHFactory;

    .line 61
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/common/kex/DHFactory;->isGroupExchange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-static {p0}, Lorg/apache/sshd/server/kex/DHGEXServer;->newFactory(Lorg/apache/sshd/common/kex/DHFactory;)Lorg/apache/sshd/common/kex/KeyExchangeFactory;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {p0}, Lorg/apache/sshd/server/kex/DHGServer;->newFactory(Lorg/apache/sshd/common/kex/DHFactory;)Lorg/apache/sshd/common/kex/KeyExchangeFactory;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0
.end method

.method public static setUpDefaultCompressionFactories(Z)Ljava/util/List;
    .locals 1
    .param p0, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/compression/Compression;",
            ">;>;"
        }
    .end annotation

    .line 182
    sget-object v0, Lorg/apache/sshd/server/ServerBuilder;->DEFAULT_COMPRESSION_FACTORIES:Ljava/util/List;

    invoke-static {p0, v0}, Lorg/apache/sshd/common/NamedFactory;->setUpBuiltinFactories(ZLjava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setUpDefaultKeyExchanges(Z)Ljava/util/List;
    .locals 2
    .param p0, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/kex/KeyExchangeFactory;",
            ">;"
        }
    .end annotation

    .line 198
    sget-object v0, Lorg/apache/sshd/server/ServerBuilder;->DEFAULT_KEX_PREFERENCE:Ljava/util/List;

    sget-object v1, Lorg/apache/sshd/server/ServerBuilder;->DH2KEX:Ljava/util/function/Function;

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/NamedFactory;->setUpTransformedFactories(ZLjava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setUpDefaultSignatureFactories(Z)Ljava/util/List;
    .locals 1
    .param p0, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation

    .line 177
    sget-object v0, Lorg/apache/sshd/server/ServerBuilder;->DEFAULT_SIGNATURE_PREFERENCE:Ljava/util/List;

    invoke-static {p0, v0}, Lorg/apache/sshd/common/NamedFactory;->setUpBuiltinFactories(ZLjava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build(Z)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/ServerBuilder;->build(Z)Lorg/apache/sshd/server/SshServer;

    move-result-object p1

    return-object p1
.end method

.method public build(Z)Lorg/apache/sshd/server/SshServer;
    .locals 2
    .param p1, "isFillWithDefaultValues"    # Z

    .line 169
    invoke-super {p0, p1}, Lorg/apache/sshd/common/BaseBuilder;->build(Z)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/SshServer;

    .line 170
    .local v0, "server":Lorg/apache/sshd/server/SshServer;
    iget-object v1, p0, Lorg/apache/sshd/server/ServerBuilder;->pubkeyAuthenticator:Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/server/SshServer;->setPublickeyAuthenticator(Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;)V

    .line 171
    iget-object v1, p0, Lorg/apache/sshd/server/ServerBuilder;->interactiveAuthenticator:Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/server/SshServer;->setKeyboardInteractiveAuthenticator(Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;)V

    .line 172
    return-object v0
.end method

.method protected bridge synthetic fillWithDefaultValues()Lorg/apache/sshd/common/BaseBuilder;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/sshd/server/ServerBuilder;->fillWithDefaultValues()Lorg/apache/sshd/server/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected fillWithDefaultValues()Lorg/apache/sshd/server/ServerBuilder;
    .locals 2

    .line 130
    invoke-super {p0}, Lorg/apache/sshd/common/BaseBuilder;->fillWithDefaultValues()Lorg/apache/sshd/common/BaseBuilder;

    .line 132
    iget-object v0, p0, Lorg/apache/sshd/server/ServerBuilder;->compressionFactories:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 133
    invoke-static {v1}, Lorg/apache/sshd/server/ServerBuilder;->setUpDefaultCompressionFactories(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/ServerBuilder;->compressionFactories:Ljava/util/List;

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/server/ServerBuilder;->signatureFactories:Ljava/util/List;

    if-nez v0, :cond_1

    .line 137
    invoke-static {v1}, Lorg/apache/sshd/server/ServerBuilder;->setUpDefaultSignatureFactories(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/ServerBuilder;->signatureFactories:Ljava/util/List;

    .line 140
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/server/ServerBuilder;->keyExchangeFactories:Ljava/util/List;

    if-nez v0, :cond_2

    .line 141
    invoke-static {v1}, Lorg/apache/sshd/server/ServerBuilder;->setUpDefaultKeyExchanges(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/ServerBuilder;->keyExchangeFactories:Ljava/util/List;

    .line 144
    :cond_2
    iget-object v0, p0, Lorg/apache/sshd/server/ServerBuilder;->channelFactories:Ljava/util/List;

    if-nez v0, :cond_3

    .line 145
    sget-object v0, Lorg/apache/sshd/server/ServerBuilder;->DEFAULT_CHANNEL_FACTORIES:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/sshd/server/ServerBuilder;->channelFactories:Ljava/util/List;

    .line 148
    :cond_3
    iget-object v0, p0, Lorg/apache/sshd/server/ServerBuilder;->globalRequestHandlers:Ljava/util/List;

    if-nez v0, :cond_4

    .line 149
    sget-object v0, Lorg/apache/sshd/server/ServerBuilder;->DEFAULT_GLOBAL_REQUEST_HANDLERS:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/sshd/server/ServerBuilder;->globalRequestHandlers:Ljava/util/List;

    .line 152
    :cond_4
    iget-object v0, p0, Lorg/apache/sshd/server/ServerBuilder;->pubkeyAuthenticator:Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    if-nez v0, :cond_5

    .line 153
    sget-object v0, Lorg/apache/sshd/server/ServerBuilder;->DEFAULT_PUBLIC_KEY_AUTHENTICATOR:Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    iput-object v0, p0, Lorg/apache/sshd/server/ServerBuilder;->pubkeyAuthenticator:Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    .line 156
    :cond_5
    iget-object v0, p0, Lorg/apache/sshd/server/ServerBuilder;->interactiveAuthenticator:Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

    if-nez v0, :cond_6

    .line 157
    sget-object v0, Lorg/apache/sshd/server/ServerBuilder;->DEFAULT_INTERACTIVE_AUTHENTICATOR:Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

    iput-object v0, p0, Lorg/apache/sshd/server/ServerBuilder;->interactiveAuthenticator:Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

    .line 160
    :cond_6
    iget-object v0, p0, Lorg/apache/sshd/server/ServerBuilder;->factory:Lorg/apache/sshd/common/Factory;

    if-nez v0, :cond_7

    .line 161
    sget-object v0, Lorg/apache/sshd/server/SshServer;->DEFAULT_SSH_SERVER_FACTORY:Lorg/apache/sshd/common/Factory;

    iput-object v0, p0, Lorg/apache/sshd/server/ServerBuilder;->factory:Lorg/apache/sshd/common/Factory;

    .line 164
    :cond_7
    invoke-virtual {p0}, Lorg/apache/sshd/server/ServerBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/ServerBuilder;

    return-object v0
.end method

.method public interactiveAuthenticator(Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;)Lorg/apache/sshd/server/ServerBuilder;
    .locals 0
    .param p1, "auth"    # Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

    .line 119
    iput-object p1, p0, Lorg/apache/sshd/server/ServerBuilder;->interactiveAuthenticator:Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

    .line 120
    return-object p0
.end method

.method public publickeyAuthenticator(Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;)Lorg/apache/sshd/server/ServerBuilder;
    .locals 0
    .param p1, "auth"    # Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    .line 124
    iput-object p1, p0, Lorg/apache/sshd/server/ServerBuilder;->pubkeyAuthenticator:Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    .line 125
    return-object p0
.end method
