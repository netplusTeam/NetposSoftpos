.class public Lorg/apache/sshd/client/ClientBuilder;
.super Lorg/apache/sshd/common/BaseBuilder;
.source "ClientBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/BaseBuilder<",
        "Lorg/apache/sshd/client/SshClient;",
        "Lorg/apache/sshd/client/ClientBuilder;",
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

.field public static final DEFAULT_CLIENT_IDENTITY_LOADER:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

.field public static final DEFAULT_COMPRESSION_FACTORIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/compression/CompressionFactory;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_FILE_PASSWORD_PROVIDER:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

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

.field public static final DEFAULT_HOST_CONFIG_ENTRY_RESOLVER:Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

.field public static final DEFAULT_SERVER_KEY_VERIFIER:Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

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
.field protected clientIdentityLoader:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

.field protected filePasswordProvider:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

.field protected hostConfigEntryResolver:Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

.field protected serverKeyVerifier:Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/sshd/common/signature/BuiltinSignatures;

    sget-object v1, Lorg/apache/sshd/common/signature/BuiltinSignatures;->nistp256:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sshd/common/signature/BuiltinSignatures;->nistp384:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sshd/common/signature/BuiltinSignatures;->nistp521:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sshd/common/signature/BuiltinSignatures;->ed25519:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sshd/common/signature/BuiltinSignatures;->rsa:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sshd/common/signature/BuiltinSignatures;->dsa:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 78
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/client/ClientBuilder;->DEFAULT_SIGNATURE_PREFERENCE:Ljava/util/List;

    .line 88
    new-instance v0, Lorg/apache/sshd/client/ClientBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/client/ClientBuilder$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/sshd/client/ClientBuilder;->DH2KEX:Ljava/util/function/Function;

    .line 97
    sget-object v0, Lorg/apache/sshd/common/compression/BuiltinCompressions;->none:Lorg/apache/sshd/common/compression/BuiltinCompressions;

    .line 98
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/client/ClientBuilder;->DEFAULT_COMPRESSION_FACTORIES:Ljava/util/List;

    .line 100
    sget-object v0, Lorg/apache/sshd/server/forward/ForwardedTcpipFactory;->INSTANCE:Lorg/apache/sshd/server/forward/ForwardedTcpipFactory;

    .line 101
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/client/ClientBuilder;->DEFAULT_CHANNEL_FACTORIES:Ljava/util/List;

    .line 102
    sget-object v0, Lorg/apache/sshd/client/global/OpenSshHostKeysHandler;->INSTANCE:Lorg/apache/sshd/client/global/OpenSshHostKeysHandler;

    .line 103
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/client/ClientBuilder;->DEFAULT_GLOBAL_REQUEST_HANDLERS:Ljava/util/List;

    .line 105
    sget-object v0, Lorg/apache/sshd/client/keyverifier/AcceptAllServerKeyVerifier;->INSTANCE:Lorg/apache/sshd/client/keyverifier/AcceptAllServerKeyVerifier;

    sput-object v0, Lorg/apache/sshd/client/ClientBuilder;->DEFAULT_SERVER_KEY_VERIFIER:Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    .line 106
    sget-object v0, Lorg/apache/sshd/client/config/hosts/DefaultConfigFileHostEntryResolver;->INSTANCE:Lorg/apache/sshd/client/config/hosts/DefaultConfigFileHostEntryResolver;

    sput-object v0, Lorg/apache/sshd/client/ClientBuilder;->DEFAULT_HOST_CONFIG_ENTRY_RESOLVER:Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    .line 107
    sget-object v0, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;->DEFAULT:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    sput-object v0, Lorg/apache/sshd/client/ClientBuilder;->DEFAULT_CLIENT_IDENTITY_LOADER:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    .line 108
    sget-object v0, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;->EMPTY:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    sput-object v0, Lorg/apache/sshd/client/ClientBuilder;->DEFAULT_FILE_PASSWORD_PROVIDER:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Lorg/apache/sshd/common/BaseBuilder;-><init>()V

    .line 117
    return-void
.end method

.method public static builder()Lorg/apache/sshd/client/ClientBuilder;
    .locals 1

    .line 223
    new-instance v0, Lorg/apache/sshd/client/ClientBuilder;

    invoke-direct {v0}, Lorg/apache/sshd/client/ClientBuilder;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$0(Lorg/apache/sshd/common/kex/DHFactory;)Lorg/apache/sshd/common/kex/KeyExchangeFactory;
    .locals 1
    .param p0, "factory"    # Lorg/apache/sshd/common/kex/DHFactory;

    .line 90
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/common/kex/DHFactory;->isGroupExchange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-static {p0}, Lorg/apache/sshd/client/kex/DHGEXClient;->newFactory(Lorg/apache/sshd/common/kex/DHFactory;)Lorg/apache/sshd/common/kex/KeyExchangeFactory;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {p0}, Lorg/apache/sshd/client/kex/DHGClient;->newFactory(Lorg/apache/sshd/common/kex/DHFactory;)Lorg/apache/sshd/common/kex/KeyExchangeFactory;

    move-result-object v0

    .line 90
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

    .line 203
    sget-object v0, Lorg/apache/sshd/client/ClientBuilder;->DEFAULT_COMPRESSION_FACTORIES:Ljava/util/List;

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

    .line 219
    sget-object v0, Lorg/apache/sshd/client/ClientBuilder;->DEFAULT_KEX_PREFERENCE:Ljava/util/List;

    sget-object v1, Lorg/apache/sshd/client/ClientBuilder;->DH2KEX:Ljava/util/function/Function;

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

    .line 198
    sget-object v0, Lorg/apache/sshd/client/ClientBuilder;->DEFAULT_SIGNATURE_PREFERENCE:Ljava/util/List;

    invoke-static {p0, v0}, Lorg/apache/sshd/common/NamedFactory;->setUpBuiltinFactories(ZLjava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build(Z)Lorg/apache/sshd/client/SshClient;
    .locals 2
    .param p1, "isFillWithDefaultValues"    # Z

    .line 188
    invoke-super {p0, p1}, Lorg/apache/sshd/common/BaseBuilder;->build(Z)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/SshClient;

    .line 189
    .local v0, "client":Lorg/apache/sshd/client/SshClient;
    iget-object v1, p0, Lorg/apache/sshd/client/ClientBuilder;->serverKeyVerifier:Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/client/SshClient;->setServerKeyVerifier(Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;)V

    .line 190
    iget-object v1, p0, Lorg/apache/sshd/client/ClientBuilder;->hostConfigEntryResolver:Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/client/SshClient;->setHostConfigEntryResolver(Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;)V

    .line 191
    iget-object v1, p0, Lorg/apache/sshd/client/ClientBuilder;->clientIdentityLoader:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/client/SshClient;->setClientIdentityLoader(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;)V

    .line 192
    iget-object v1, p0, Lorg/apache/sshd/client/ClientBuilder;->filePasswordProvider:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/client/SshClient;->setFilePasswordProvider(Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)V

    .line 193
    return-object v0
.end method

.method public bridge synthetic build(Z)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/ClientBuilder;->build(Z)Lorg/apache/sshd/client/SshClient;

    move-result-object p1

    return-object p1
.end method

.method public clientIdentityLoader(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;)Lorg/apache/sshd/client/ClientBuilder;
    .locals 1
    .param p1, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    .line 130
    iput-object p1, p0, Lorg/apache/sshd/client/ClientBuilder;->clientIdentityLoader:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    .line 131
    invoke-virtual {p0}, Lorg/apache/sshd/client/ClientBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/ClientBuilder;

    return-object v0
.end method

.method public filePasswordProvider(Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Lorg/apache/sshd/client/ClientBuilder;
    .locals 1
    .param p1, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    .line 135
    iput-object p1, p0, Lorg/apache/sshd/client/ClientBuilder;->filePasswordProvider:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    .line 136
    invoke-virtual {p0}, Lorg/apache/sshd/client/ClientBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/ClientBuilder;

    return-object v0
.end method

.method protected fillWithDefaultValues()Lorg/apache/sshd/client/ClientBuilder;
    .locals 2

    .line 141
    invoke-super {p0}, Lorg/apache/sshd/common/BaseBuilder;->fillWithDefaultValues()Lorg/apache/sshd/common/BaseBuilder;

    .line 143
    iget-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->signatureFactories:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 144
    invoke-static {v1}, Lorg/apache/sshd/client/ClientBuilder;->setUpDefaultSignatureFactories(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->signatureFactories:Ljava/util/List;

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->compressionFactories:Ljava/util/List;

    if-nez v0, :cond_1

    .line 148
    invoke-static {v1}, Lorg/apache/sshd/client/ClientBuilder;->setUpDefaultCompressionFactories(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->compressionFactories:Ljava/util/List;

    .line 151
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->keyExchangeFactories:Ljava/util/List;

    if-nez v0, :cond_2

    .line 152
    invoke-static {v1}, Lorg/apache/sshd/client/ClientBuilder;->setUpDefaultKeyExchanges(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->keyExchangeFactories:Ljava/util/List;

    .line 155
    :cond_2
    iget-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->channelFactories:Ljava/util/List;

    if-nez v0, :cond_3

    .line 156
    sget-object v0, Lorg/apache/sshd/client/ClientBuilder;->DEFAULT_CHANNEL_FACTORIES:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->channelFactories:Ljava/util/List;

    .line 159
    :cond_3
    iget-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->globalRequestHandlers:Ljava/util/List;

    if-nez v0, :cond_4

    .line 160
    sget-object v0, Lorg/apache/sshd/client/ClientBuilder;->DEFAULT_GLOBAL_REQUEST_HANDLERS:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->globalRequestHandlers:Ljava/util/List;

    .line 163
    :cond_4
    iget-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->serverKeyVerifier:Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    if-nez v0, :cond_5

    .line 164
    sget-object v0, Lorg/apache/sshd/client/ClientBuilder;->DEFAULT_SERVER_KEY_VERIFIER:Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    iput-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->serverKeyVerifier:Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    .line 167
    :cond_5
    iget-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->hostConfigEntryResolver:Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    if-nez v0, :cond_6

    .line 168
    sget-object v0, Lorg/apache/sshd/client/ClientBuilder;->DEFAULT_HOST_CONFIG_ENTRY_RESOLVER:Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    iput-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->hostConfigEntryResolver:Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    .line 171
    :cond_6
    iget-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->clientIdentityLoader:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    if-nez v0, :cond_7

    .line 172
    sget-object v0, Lorg/apache/sshd/client/ClientBuilder;->DEFAULT_CLIENT_IDENTITY_LOADER:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    iput-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->clientIdentityLoader:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    .line 175
    :cond_7
    iget-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->filePasswordProvider:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    if-nez v0, :cond_8

    .line 176
    sget-object v0, Lorg/apache/sshd/client/ClientBuilder;->DEFAULT_FILE_PASSWORD_PROVIDER:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    iput-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->filePasswordProvider:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    .line 179
    :cond_8
    iget-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->factory:Lorg/apache/sshd/common/Factory;

    if-nez v0, :cond_9

    .line 180
    sget-object v0, Lorg/apache/sshd/client/SshClient;->DEFAULT_SSH_CLIENT_FACTORY:Lorg/apache/sshd/common/Factory;

    iput-object v0, p0, Lorg/apache/sshd/client/ClientBuilder;->factory:Lorg/apache/sshd/common/Factory;

    .line 183
    :cond_9
    invoke-virtual {p0}, Lorg/apache/sshd/client/ClientBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/ClientBuilder;

    return-object v0
.end method

.method protected bridge synthetic fillWithDefaultValues()Lorg/apache/sshd/common/BaseBuilder;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/apache/sshd/client/ClientBuilder;->fillWithDefaultValues()Lorg/apache/sshd/client/ClientBuilder;

    move-result-object v0

    return-object v0
.end method

.method public hostConfigEntryResolver(Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;)Lorg/apache/sshd/client/ClientBuilder;
    .locals 1
    .param p1, "resolver"    # Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    .line 125
    iput-object p1, p0, Lorg/apache/sshd/client/ClientBuilder;->hostConfigEntryResolver:Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    .line 126
    invoke-virtual {p0}, Lorg/apache/sshd/client/ClientBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/ClientBuilder;

    return-object v0
.end method

.method public serverKeyVerifier(Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;)Lorg/apache/sshd/client/ClientBuilder;
    .locals 1
    .param p1, "serverKeyVerifier"    # Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    .line 120
    iput-object p1, p0, Lorg/apache/sshd/client/ClientBuilder;->serverKeyVerifier:Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    .line 121
    invoke-virtual {p0}, Lorg/apache/sshd/client/ClientBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/ClientBuilder;

    return-object v0
.end method
