.class public Lorg/apache/sshd/client/SshClient;
.super Lorg/apache/sshd/common/helpers/AbstractFactoryManager;
.source "SshClient.java"

# interfaces
.implements Lorg/apache/sshd/client/ClientFactoryManager;
.implements Lorg/apache/sshd/client/session/ClientSessionCreator;
.implements Lorg/apache/sshd/common/Closeable;


# static fields
.field public static final DEFAULT_SERVICE_FACTORIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/ServiceFactory;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SSH_CLIENT_FACTORY:Lorg/apache/sshd/common/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/client/SshClient;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_USER_AUTH_FACTORIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/auth/UserAuthFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private clientIdentityLoader:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

.field protected connector:Lorg/apache/sshd/common/io/IoConnector;

.field private filePasswordProvider:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

.field private hostConfigEntryResolver:Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

.field private final identities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final identitiesProvider:Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;

.field private keyIdentityProvider:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

.field private passwordIdentityProvider:Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

.field private proxyConnector:Lorg/apache/sshd/client/session/ClientProxyConnector;

.field private serverKeyVerifier:Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

.field protected sessionFactory:Lorg/apache/sshd/client/session/SessionFactory;

.field private final started:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected userAuthFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/auth/UserAuthFactory;",
            ">;"
        }
    .end annotation
.end field

.field protected userInteraction:Lorg/apache/sshd/client/auth/keyboard/UserInteraction;


# direct methods
.method public static synthetic $r8$lambda$lvp_Q9vKJl3dj64EdLazue44kGU(Ljava/nio/file/Path;)Lorg/apache/sshd/common/util/io/resource/PathResource;
    .locals 1

    new-instance v0, Lorg/apache/sshd/common/util/io/resource/PathResource;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/io/resource/PathResource;-><init>(Ljava/nio/file/Path;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 151
    new-instance v0, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lorg/apache/sshd/client/SshClient;->DEFAULT_SSH_CLIENT_FACTORY:Lorg/apache/sshd/common/Factory;

    .line 157
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/sshd/client/auth/AbstractUserAuthFactory;

    sget-object v1, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory;->INSTANCE:Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractiveFactory;->INSTANCE:Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractiveFactory;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/sshd/client/auth/password/UserAuthPasswordFactory;->INSTANCE:Lorg/apache/sshd/client/auth/password/UserAuthPasswordFactory;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 159
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 158
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/client/SshClient;->DEFAULT_USER_AUTH_FACTORIES:Ljava/util/List;

    .line 164
    new-array v0, v4, [Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;

    sget-object v1, Lorg/apache/sshd/client/session/ClientUserAuthServiceFactory;->INSTANCE:Lorg/apache/sshd/client/session/ClientUserAuthServiceFactory;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sshd/client/session/ClientConnectionServiceFactory;->INSTANCE:Lorg/apache/sshd/client/session/ClientConnectionServiceFactory;

    aput-object v1, v0, v3

    .line 166
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 165
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/client/SshClient;->DEFAULT_SERVICE_FACTORIES:Ljava/util/List;

    .line 164
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 188
    invoke-direct {p0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;-><init>()V

    .line 184
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/client/SshClient;->identities:Ljava/util/List;

    .line 186
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lorg/apache/sshd/client/SshClient;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 189
    invoke-static {v0}, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;->wrapIdentities(Ljava/lang/Iterable;)Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/SshClient;->identitiesProvider:Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;

    .line 190
    return-void
.end method

.method static synthetic access$000(Lorg/apache/sshd/client/SshClient;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/client/SshClient;

    .line 150
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/sshd/client/SshClient;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/client/SshClient;

    .line 150
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/sshd/client/SshClient;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/client/SshClient;

    .line 150
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/sshd/client/SshClient;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/client/SshClient;

    .line 150
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/sshd/client/SshClient;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/client/SshClient;

    .line 150
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic lambda$connect$2(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "x$0"    # Ljava/lang/String;

    .line 562
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$connect$3(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "hostIds"    # Ljava/util/Collection;

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static varargs setKeyPairProvider(Lorg/apache/sshd/client/SshClient;Ljava/nio/file/Path;ZZLorg/apache/sshd/common/config/keys/FilePasswordProvider;[Ljava/nio/file/LinkOption;)Lorg/apache/sshd/client/SshClient;
    .locals 1
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p2, "strict"    # Z
    .param p3, "supportedOnly"    # Z
    .param p4, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p5, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lorg/apache/sshd/client/SshClient;",
            ">(TC;",
            "Ljava/nio/file/Path;",
            "ZZ",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")TC;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 849
    .local p0, "client":Lorg/apache/sshd/client/SshClient;, "TC;"
    nop

    .line 850
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/sshd/client/config/keys/ClientIdentity;->loadDefaultKeyPairProvider(Ljava/nio/file/Path;ZZLorg/apache/sshd/common/config/keys/FilePasswordProvider;[Ljava/nio/file/LinkOption;)Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    move-result-object v0

    .line 851
    .local v0, "kpp":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    if-eqz v0, :cond_0

    .line 852
    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/SshClient;->setKeyIdentityProvider(Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)V

    .line 855
    :cond_0
    return-object p0
.end method

.method public static varargs setKeyPairProvider(Lorg/apache/sshd/client/SshClient;ZZLorg/apache/sshd/common/config/keys/FilePasswordProvider;[Ljava/nio/file/LinkOption;)Lorg/apache/sshd/client/SshClient;
    .locals 6
    .param p1, "strict"    # Z
    .param p2, "supportedOnly"    # Z
    .param p3, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p4, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lorg/apache/sshd/client/SshClient;",
            ">(TC;ZZ",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")TC;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 822
    .local p0, "client":Lorg/apache/sshd/client/SshClient;, "TC;"
    nop

    .line 823
    invoke-static {}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getDefaultKeysFolderPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 822
    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/sshd/client/SshClient;->setKeyPairProvider(Lorg/apache/sshd/client/SshClient;Ljava/nio/file/Path;ZZLorg/apache/sshd/common/config/keys/FilePasswordProvider;[Ljava/nio/file/LinkOption;)Lorg/apache/sshd/client/SshClient;

    move-result-object v0

    return-object v0
.end method

.method public static setUpDefaultClient()Lorg/apache/sshd/client/SshClient;
    .locals 2

    .line 796
    invoke-static {}, Lorg/apache/sshd/client/ClientBuilder;->builder()Lorg/apache/sshd/client/ClientBuilder;

    move-result-object v0

    .line 797
    .local v0, "builder":Lorg/apache/sshd/client/ClientBuilder;
    invoke-virtual {v0}, Lorg/apache/sshd/client/ClientBuilder;->build()Lorg/apache/sshd/common/helpers/AbstractFactoryManager;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/client/SshClient;

    return-object v1
.end method

.method public static setUpDefaultSimpleClient()Lorg/apache/sshd/client/simple/SimpleClient;
    .locals 2

    .line 740
    invoke-static {}, Lorg/apache/sshd/client/SshClient;->setUpDefaultClient()Lorg/apache/sshd/client/SshClient;

    move-result-object v0

    .line 741
    .local v0, "client":Lorg/apache/sshd/client/SshClient;
    invoke-virtual {v0}, Lorg/apache/sshd/client/SshClient;->start()V

    .line 742
    invoke-static {v0}, Lorg/apache/sshd/client/SshClient;->wrapAsSimpleClient(Lorg/apache/sshd/client/SshClient;)Lorg/apache/sshd/client/simple/SimpleClient;

    move-result-object v1

    return-object v1
.end method

.method public static wrapAsSimpleClient(Lorg/apache/sshd/client/SshClient;)Lorg/apache/sshd/client/simple/SimpleClient;
    .locals 2
    .param p0, "client"    # Lorg/apache/sshd/client/SshClient;

    .line 754
    const-string v0, "No client instance"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 756
    new-instance v0, Lorg/apache/sshd/client/SshClient$2;

    invoke-direct {v0, p0}, Lorg/apache/sshd/client/SshClient$2;-><init>(Lorg/apache/sshd/client/SshClient;)V

    .line 787
    .local v0, "channel":Ljava/nio/channels/Channel;
    invoke-static {p0, v0}, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;->wrap(Lorg/apache/sshd/client/session/ClientSessionCreator;Ljava/nio/channels/Channel;)Lorg/apache/sshd/client/simple/SimpleClient;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addPasswordIdentity(Ljava/lang/String;)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .line 293
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "No password provided"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 294
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->identities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    invoke-static {p1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addPasswordIdentity({}) {}"

    invoke-interface {v0, v2, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 298
    :cond_1
    return-void
.end method

.method public addPublicKeyIdentity(Ljava/security/KeyPair;)V
    .locals 3
    .param p1, "kp"    # Ljava/security/KeyPair;

    .line 317
    const-string v0, "No key-pair to add"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    const-string v1, "No public key"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    const-string v1, "No private key"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->identities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    .line 325
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v1

    .line 324
    const-string v2, "addPublicKeyIdentity({}) {}"

    invoke-interface {v0, v2, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 327
    :cond_0
    return-void
.end method

.method protected checkConfig()V
    .locals 7

    .line 356
    invoke-super {p0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->checkConfig()V

    .line 358
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->getForwarderFactory()Lorg/apache/sshd/common/forward/ForwardingFilterFactory;

    move-result-object v0

    const-string v1, "ForwarderFactory not set"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 359
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->getServerKeyVerifier()Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    move-result-object v0

    const-string v1, "ServerKeyVerifier not set"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 360
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->getHostConfigEntryResolver()Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    move-result-object v0

    const-string v1, "HostConfigEntryResolver not set"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 361
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->getClientIdentityLoader()Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    move-result-object v0

    const-string v1, "ClientIdentityLoader not set"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->getFilePasswordProvider()Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    move-result-object v0

    const-string v1, "FilePasswordProvider not set"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 365
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->getKeyIdentityProvider()Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    move-result-object v0

    .line 366
    .local v0, "defaultIdentities":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    if-nez v0, :cond_0

    .line 367
    new-instance v1, Lorg/apache/sshd/client/config/keys/DefaultClientIdentitiesWatcher;

    new-instance v2, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda2;-><init>(Lorg/apache/sshd/client/SshClient;)V

    new-instance v3, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda3;-><init>(Lorg/apache/sshd/client/SshClient;)V

    invoke-direct {v1, v2, v3}, Lorg/apache/sshd/client/config/keys/DefaultClientIdentitiesWatcher;-><init>(Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;)V

    .line 370
    .local v1, "idsWatcher":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    invoke-virtual {p0, v1}, Lorg/apache/sshd/client/SshClient;->setKeyIdentityProvider(Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)V

    .line 374
    .end local v1    # "idsWatcher":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->getAgentFactory()Lorg/apache/sshd/agent/SshAgentFactory;

    move-result-object v1

    .line 375
    .local v1, "agentFactory":Lorg/apache/sshd/agent/SshAgentFactory;
    if-eqz v1, :cond_2

    .line 376
    nop

    .line 378
    invoke-interface {v1, p0}, Lorg/apache/sshd/agent/SshAgentFactory;->getChannelForwardingFactories(Lorg/apache/sshd/common/FactoryManager;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 377
    const-string v4, "No agent channel forwarding factories for %s"

    invoke-static {v2, v4, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 381
    .local v2, "forwarders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/channel/ChannelFactory;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->getChannelFactories()Ljava/util/List;

    move-result-object v3

    .line 382
    .local v3, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/channel/ChannelFactory;>;"
    invoke-static {v3}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 383
    move-object v3, v2

    goto :goto_0

    .line 386
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 387
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 388
    .local v4, "factories2":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/channel/ChannelFactory;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 389
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 390
    move-object v3, v4

    .line 393
    .end local v4    # "factories2":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/channel/ChannelFactory;>;"
    :goto_0
    invoke-virtual {p0, v3}, Lorg/apache/sshd/client/SshClient;->setChannelFactories(Ljava/util/List;)V

    .line 396
    .end local v2    # "forwarders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/channel/ChannelFactory;>;"
    .end local v3    # "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/channel/ChannelFactory;>;"
    :cond_2
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->getServiceFactories()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 397
    sget-object v2, Lorg/apache/sshd/client/SshClient;->DEFAULT_SERVICE_FACTORIES:Ljava/util/List;

    invoke-virtual {p0, v2}, Lorg/apache/sshd/client/SshClient;->setServiceFactories(Ljava/util/List;)V

    .line 400
    :cond_3
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->getUserAuthFactories()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 401
    sget-object v2, Lorg/apache/sshd/client/SshClient;->DEFAULT_USER_AUTH_FACTORIES:Ljava/util/List;

    invoke-virtual {p0, v2}, Lorg/apache/sshd/client/SshClient;->setUserAuthFactories(Ljava/util/List;)V

    .line 403
    :cond_4
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;ILorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 8
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "context"    # Lorg/apache/sshd/common/AttributeRepository;
    .param p5, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->getHostConfigEntryResolver()Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    move-result-object v6

    .line 487
    .local v6, "resolver":Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;
    nop

    .line 488
    move-object v0, v6

    move-object v1, p2

    move v2, p3

    move-object v3, p5

    move-object v4, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;->resolveEffectiveHost(Ljava/lang/String;ILjava/net/SocketAddress;Ljava/lang/String;Lorg/apache/sshd/common/AttributeRepository;)Lorg/apache/sshd/client/config/hosts/HostConfigEntry;

    move-result-object v0

    .line 489
    .local v0, "entry":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_2

    .line 491
    iget-object v5, p0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 492
    iget-object v5, p0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "connect({}@{}:{}) no overrides"

    invoke-interface {v5, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    :cond_0
    invoke-static {p2}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    new-instance v1, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;

    const-string v2, ""

    invoke-direct {v1, v2, p2, p3, p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 500
    :cond_1
    new-instance v1, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;

    invoke-direct {v1, p2, p2, p3, p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 503
    :cond_2
    iget-object v5, p0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 504
    iget-object v5, p0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v4

    aput-object p2, v7, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    aput-object v0, v7, v1

    const-string v1, "connect({}@{}:{}) effective: {}"

    invoke-interface {v5, v1, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    :cond_3
    :goto_0
    invoke-virtual {p0, v0, p4, p5}, Lorg/apache/sshd/client/SshClient;->connect(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v1

    return-object v1
.end method

.method public connect(Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 16
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "targetAddress"    # Ljava/net/SocketAddress;
    .param p3, "context"    # Lorg/apache/sshd/common/AttributeRepository;
    .param p4, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const-string v0, "No target address"

    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 516
    instance-of v0, v8, Ljava/net/InetSocketAddress;

    const/4 v6, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_4

    .line 517
    move-object v12, v8

    check-cast v12, Ljava/net/InetSocketAddress;

    .line 518
    .local v12, "inetAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v12}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No host"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 519
    .local v13, "host":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v14

    .line 520
    .local v14, "port":I
    if-lez v14, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    int-to-long v1, v14

    const-string v3, "Invalid port: %d"

    invoke-static {v0, v3, v1, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 522
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/client/SshClient;->getHostConfigEntryResolver()Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    move-result-object v15

    .line 523
    .local v15, "resolver":Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;
    nop

    .line 524
    move-object v0, v15

    move-object v1, v13

    move v2, v14

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;->resolveEffectiveHost(Ljava/lang/String;ILjava/net/SocketAddress;Ljava/lang/String;Lorg/apache/sshd/common/AttributeRepository;)Lorg/apache/sshd/client/config/hosts/HostConfigEntry;

    move-result-object v5

    .line 525
    .local v5, "entry":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    if-nez v5, :cond_2

    .line 526
    iget-object v0, v7, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, v7, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    new-array v1, v9, [Ljava/lang/Object;

    aput-object p1, v1, v11

    aput-object v13, v1, v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "connect({}@{}:{}) no overrides"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    :cond_1
    sget-object v6, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->EMPTY_KEYS_PROVIDER:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v10, v5

    .end local v5    # "entry":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .local v10, "entry":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    move-object v5, v6

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lorg/apache/sshd/client/SshClient;->doConnect(Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;Z)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    return-object v0

    .line 533
    .end local v10    # "entry":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .restart local v5    # "entry":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    :cond_2
    move-object v0, v5

    .end local v5    # "entry":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .local v0, "entry":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    iget-object v1, v7, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 534
    iget-object v1, v7, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v11

    aput-object v13, v2, v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v0, v2, v9

    const-string v3, "connect({}@{}:{}) effective: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    :cond_3
    move-object/from16 v5, p3

    move-object/from16 v4, p4

    invoke-virtual {v7, v0, v5, v4}, Lorg/apache/sshd/client/SshClient;->connect(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v1

    return-object v1

    .line 540
    .end local v0    # "entry":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .end local v12    # "inetAddress":Ljava/net/InetSocketAddress;
    .end local v13    # "host":Ljava/lang/String;
    .end local v14    # "port":I
    .end local v15    # "resolver":Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;
    :cond_4
    move-object/from16 v5, p3

    move-object/from16 v4, p4

    iget-object v0, v7, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 541
    iget-object v0, v7, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    new-array v1, v9, [Ljava/lang/Object;

    aput-object p1, v1, v11

    aput-object v8, v1, v10

    .line 542
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 541
    const-string v2, "connect({}@{}) not an InetSocketAddress: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    :cond_5
    sget-object v6, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->EMPTY_KEYS_PROVIDER:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v6

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lorg/apache/sshd/client/SshClient;->doConnect(Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;Z)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 15
    .param p1, "hostConfig"    # Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .param p2, "context"    # Lorg/apache/sshd/common/AttributeRepository;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    const-string v0, "No host configuration"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 554
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getHostName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No target host"

    invoke-static {v0, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "host":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getPort()I

    move-result v2

    .line 556
    .local v2, "port":I
    const/4 v3, 0x1

    if-lez v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    int-to-long v5, v2

    const-string v7, "Invalid port: %d"

    invoke-static {v4, v7, v5, v6}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 558
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getIdentities()Ljava/util/Collection;

    move-result-object v4

    .line 559
    .local v4, "hostIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {v4}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 560
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 561
    :cond_1
    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda5;-><init>()V

    .line 562
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda6;

    invoke-direct {v6}, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda6;-><init>()V

    .line 563
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda7;

    invoke-direct {v6, v4}, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda7;-><init>(Ljava/util/Collection;)V

    .line 564
    invoke-static {v6}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    :goto_1
    nop

    .line 565
    .local v5, "idFiles":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/util/io/resource/PathResource;>;"
    move-object v13, p0

    invoke-virtual {p0, v5}, Lorg/apache/sshd/client/SshClient;->preloadClientIdentities(Ljava/util/Collection;)Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    move-result-object v14

    .line 566
    .local v14, "keys":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getUsername()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-direct {v8, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 567
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->isIdentitiesOnly()Z

    move-result v6

    .line 566
    xor-int/lit8 v12, v6, 0x1

    move-object v6, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object v11, v14

    invoke-virtual/range {v6 .. v12}, Lorg/apache/sshd/client/SshClient;->doConnect(Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;Z)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v3

    return-object v3
.end method

.method protected createConnectCompletionListener(Lorg/apache/sshd/client/future/ConnectFuture;Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;Z)Lorg/apache/sshd/common/future/SshFutureListener;
    .locals 8
    .param p1, "connectFuture"    # Lorg/apache/sshd/client/future/ConnectFuture;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/net/SocketAddress;
    .param p4, "identities"    # Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .param p5, "useDefaultIdentities"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/future/ConnectFuture;",
            "Ljava/lang/String;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;",
            "Z)",
            "Lorg/apache/sshd/common/future/SshFutureListener<",
            "Lorg/apache/sshd/common/io/IoConnectFuture;",
            ">;"
        }
    .end annotation

    .line 604
    new-instance v7, Lorg/apache/sshd/client/SshClient$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/sshd/client/SshClient$1;-><init>(Lorg/apache/sshd/client/SshClient;Lorg/apache/sshd/client/future/ConnectFuture;Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;Z)V

    return-object v7
.end method

.method protected createConnector()Lorg/apache/sshd/common/io/IoConnector;
    .locals 2

    .line 719
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->getIoServiceFactory()Lorg/apache/sshd/common/io/IoServiceFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->getSessionFactory()Lorg/apache/sshd/client/session/SessionFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/io/IoServiceFactory;->createConnector(Lorg/apache/sshd/common/io/IoHandler;)Lorg/apache/sshd/common/io/IoConnector;

    move-result-object v0

    return-object v0
.end method

.method protected createSessionFactory()Lorg/apache/sshd/client/session/SessionFactory;
    .locals 1

    .line 723
    new-instance v0, Lorg/apache/sshd/client/session/SessionFactory;

    invoke-direct {v0, p0}, Lorg/apache/sshd/client/session/SessionFactory;-><init>(Lorg/apache/sshd/client/ClientFactoryManager;)V

    return-object v0
.end method

.method protected doConnect(Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;Z)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 9
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "targetAddress"    # Ljava/net/SocketAddress;
    .param p3, "context"    # Lorg/apache/sshd/common/AttributeRepository;
    .param p4, "localAddress"    # Ljava/net/SocketAddress;
    .param p5, "identities"    # Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .param p6, "useDefaultIdentities"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->connector:Lorg/apache/sshd/common/io/IoConnector;

    if-eqz v0, :cond_0

    .line 591
    new-instance v0, Lorg/apache/sshd/client/future/DefaultConnectFuture;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/client/future/DefaultConnectFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 592
    .local v0, "connectFuture":Lorg/apache/sshd/client/future/ConnectFuture;
    nop

    .line 593
    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p5

    move v8, p6

    invoke-virtual/range {v3 .. v8}, Lorg/apache/sshd/client/SshClient;->createConnectCompletionListener(Lorg/apache/sshd/client/future/ConnectFuture;Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;Z)Lorg/apache/sshd/common/future/SshFutureListener;

    move-result-object v1

    .line 595
    .local v1, "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/io/IoConnectFuture;>;"
    iget-object v2, p0, Lorg/apache/sshd/client/SshClient;->connector:Lorg/apache/sshd/common/io/IoConnector;

    .line 596
    invoke-interface {v2, p2, p3, p4}, Lorg/apache/sshd/common/io/IoConnector;->connect(Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/common/io/IoConnectFuture;

    move-result-object v2

    .line 597
    .local v2, "connectingFuture":Lorg/apache/sshd/common/io/IoConnectFuture;
    invoke-interface {v2, v1}, Lorg/apache/sshd/common/io/IoConnectFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 598
    return-object v0

    .line 587
    .end local v0    # "connectFuture":Lorg/apache/sshd/client/future/ConnectFuture;
    .end local v1    # "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/io/IoConnectFuture;>;"
    .end local v2    # "connectingFuture":Lorg/apache/sshd/common/io/IoConnectFuture;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SshClient not started. Please call start() method before connecting to a server"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClientIdentityLoader()Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->clientIdentityLoader:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    return-object v0
.end method

.method public getClientProxyConnector()Lorg/apache/sshd/client/session/ClientProxyConnector;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->proxyConnector:Lorg/apache/sshd/client/session/ClientProxyConnector;

    return-object v0
.end method

.method public getFilePasswordProvider()Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->filePasswordProvider:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    return-object v0
.end method

.method public getHostConfigEntryResolver()Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->hostConfigEntryResolver:Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    return-object v0
.end method

.method protected getInnerCloseable()Lorg/apache/sshd/common/Closeable;
    .locals 5

    .line 464
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "closeId":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/client/SshClient;)V

    .line 466
    invoke-virtual {v1, v0, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->run(Ljava/lang/Object;Ljava/lang/Runnable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/sshd/common/Closeable;

    iget-object v3, p0, Lorg/apache/sshd/client/SshClient;->connector:Lorg/apache/sshd/common/io/IoConnector;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/apache/sshd/client/SshClient;->ioServiceFactory:Lorg/apache/sshd/common/io/IoServiceFactory;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 467
    invoke-virtual {v1, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->sequential([Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/client/SshClient;)V

    .line 468
    invoke-virtual {v1, v0, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->run(Ljava/lang/Object;Ljava/lang/Runnable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v1

    .line 479
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v1

    .line 465
    return-object v1
.end method

.method public getKeyIdentityProvider()Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->keyIdentityProvider:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    return-object v0
.end method

.method public getPasswordIdentityProvider()Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->passwordIdentityProvider:Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    return-object v0
.end method

.method public getRegisteredIdentities()Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->identitiesProvider:Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;

    return-object v0
.end method

.method public getServerKeyVerifier()Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->serverKeyVerifier:Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    return-object v0
.end method

.method public getSessionFactory()Lorg/apache/sshd/client/session/SessionFactory;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->sessionFactory:Lorg/apache/sshd/client/session/SessionFactory;

    return-object v0
.end method

.method public getUserAuthFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/auth/UserAuthFactory;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->userAuthFactories:Ljava/util/List;

    return-object v0
.end method

.method public getUserInteraction()Lorg/apache/sshd/client/auth/keyboard/UserInteraction;
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->userInteraction:Lorg/apache/sshd/client/auth/keyboard/UserInteraction;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 406
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$getInnerCloseable$0$org-apache-sshd-client-SshClient()V
    .locals 1

    .line 466
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->sessionFactory:Lorg/apache/sshd/client/session/SessionFactory;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/SshClient;->removeSessionTimeout(Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;)V

    return-void
.end method

.method synthetic lambda$getInnerCloseable$1$org-apache-sshd-client-SshClient()V
    .locals 2

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/sshd/client/SshClient;->connector:Lorg/apache/sshd/common/io/IoConnector;

    .line 470
    iput-object v0, p0, Lorg/apache/sshd/client/SshClient;->ioServiceFactory:Lorg/apache/sshd/common/io/IoServiceFactory;

    .line 471
    iget-boolean v1, p0, Lorg/apache/sshd/client/SshClient;->shutdownExecutor:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/sshd/client/SshClient;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/sshd/client/SshClient;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/client/SshClient;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    iput-object v0, p0, Lorg/apache/sshd/client/SshClient;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 476
    goto :goto_0

    .line 475
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/apache/sshd/client/SshClient;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 476
    throw v1

    .line 478
    :cond_0
    :goto_0
    return-void
.end method

.method protected onConnectOperationComplete(Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/client/future/ConnectFuture;Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;Z)V
    .locals 2
    .param p1, "ioSession"    # Lorg/apache/sshd/common/io/IoSession;
    .param p2, "connectFuture"    # Lorg/apache/sshd/client/future/ConnectFuture;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/net/SocketAddress;
    .param p5, "identities"    # Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .param p6, "useDefaultIdentities"    # Z

    .line 647
    invoke-static {p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getSession(Lorg/apache/sshd/common/io/IoSession;)Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/session/AbstractClientSession;

    .line 648
    .local v0, "session":Lorg/apache/sshd/client/session/AbstractClientSession;
    invoke-virtual {v0, p3}, Lorg/apache/sshd/client/session/AbstractClientSession;->setUsername(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v0, p4}, Lorg/apache/sshd/client/session/AbstractClientSession;->setConnectAddress(Ljava/net/SocketAddress;)V

    .line 651
    if-eqz p6, :cond_0

    .line 652
    invoke-virtual {p0, v0, p5}, Lorg/apache/sshd/client/SshClient;->setupDefaultSessionIdentities(Lorg/apache/sshd/client/session/ClientSession;Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)V

    goto :goto_1

    .line 654
    :cond_0
    if-nez p5, :cond_1

    sget-object v1, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->EMPTY_KEYS_PROVIDER:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    goto :goto_0

    :cond_1
    move-object v1, p5

    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/sshd/client/session/AbstractClientSession;->setKeyIdentityProvider(Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)V

    .line 660
    :goto_1
    invoke-interface {p2, v0}, Lorg/apache/sshd/client/future/ConnectFuture;->setSession(Lorg/apache/sshd/client/session/ClientSession;)V

    .line 661
    return-void
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->start()V

    .line 460
    return-void
.end method

.method protected preloadClientIdentities(Ljava/util/Collection;)Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/NamedResource;",
            ">;)",
            "Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    .local p1, "locations":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/NamedResource;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->EMPTY_KEYS_PROVIDER:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    goto :goto_0

    .line 576
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->getClientIdentityLoader()Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    move-result-object v0

    const-string v1, "No ClientIdentityLoader"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    .line 577
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->getFilePasswordProvider()Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    move-result-object v1

    const/4 v2, 0x1

    .line 578
    const-string v3, "ignore-invalid-identities"

    invoke-virtual {p0, v3, v2}, Lorg/apache/sshd/client/SshClient;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    .line 575
    invoke-static {v0, p1, v1, v2}, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;->asKeyIdentityProvider(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;Ljava/util/Collection;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Z)Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    move-result-object v0

    .line 573
    :goto_0
    return-object v0
.end method

.method public removePasswordIdentity(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .line 302
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 303
    return-object v1

    .line 306
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->identities:Ljava/util/List;

    sget-object v2, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;->PASSWORD_IDENTITY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v2, p1}, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;->findIdentityIndex(Ljava/util/List;Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v0

    .line 308
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 309
    iget-object v1, p0, Lorg/apache/sshd/client/SshClient;->identities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 311
    :cond_1
    return-object v1
.end method

.method public removePublicKeyIdentity(Ljava/security/KeyPair;)Ljava/security/KeyPair;
    .locals 3
    .param p1, "kp"    # Ljava/security/KeyPair;

    .line 331
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 332
    return-object v0

    .line 335
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/client/SshClient;->identities:Ljava/util/List;

    sget-object v2, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;->KEYPAIR_IDENTITY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2, p1}, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;->findIdentityIndex(Ljava/util/List;Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v1

    .line 337
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 338
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->identities:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPair;

    return-object v0

    .line 340
    :cond_1
    return-object v0
.end method

.method public setClientIdentityLoader(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;)V
    .locals 1
    .param p1, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    .line 250
    nop

    .line 251
    const-string v0, "No client identity loader"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    iput-object v0, p0, Lorg/apache/sshd/client/SshClient;->clientIdentityLoader:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    .line 252
    return-void
.end method

.method public setClientProxyConnector(Lorg/apache/sshd/client/session/ClientProxyConnector;)V
    .locals 0
    .param p1, "proxyConnector"    # Lorg/apache/sshd/client/session/ClientProxyConnector;

    .line 207
    iput-object p1, p0, Lorg/apache/sshd/client/SshClient;->proxyConnector:Lorg/apache/sshd/client/session/ClientProxyConnector;

    .line 208
    return-void
.end method

.method public setFilePasswordProvider(Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)V
    .locals 1
    .param p1, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    .line 239
    nop

    .line 240
    const-string v0, "No file password provider"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    iput-object v0, p0, Lorg/apache/sshd/client/SshClient;->filePasswordProvider:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    .line 241
    return-void
.end method

.method public setHostConfigEntryResolver(Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;)V
    .locals 1
    .param p1, "resolver"    # Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    .line 228
    nop

    .line 229
    const-string v0, "No host configuration entry resolver"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    iput-object v0, p0, Lorg/apache/sshd/client/SshClient;->hostConfigEntryResolver:Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    .line 230
    return-void
.end method

.method public setKeyIdentityProvider(Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)V
    .locals 0
    .param p1, "keyIdentityProvider"    # Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    .line 351
    iput-object p1, p0, Lorg/apache/sshd/client/SshClient;->keyIdentityProvider:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    .line 352
    return-void
.end method

.method public setPasswordIdentityProvider(Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;)V
    .locals 0
    .param p1, "provider"    # Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    .line 287
    iput-object p1, p0, Lorg/apache/sshd/client/SshClient;->passwordIdentityProvider:Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    .line 288
    return-void
.end method

.method public setServerKeyVerifier(Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;)V
    .locals 1
    .param p1, "serverKeyVerifier"    # Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    .line 217
    nop

    .line 218
    const-string v0, "No server key verifier"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    iput-object v0, p0, Lorg/apache/sshd/client/SshClient;->serverKeyVerifier:Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    .line 219
    return-void
.end method

.method public setSessionFactory(Lorg/apache/sshd/client/session/SessionFactory;)V
    .locals 0
    .param p1, "sessionFactory"    # Lorg/apache/sshd/client/session/SessionFactory;

    .line 197
    iput-object p1, p0, Lorg/apache/sshd/client/SshClient;->sessionFactory:Lorg/apache/sshd/client/session/SessionFactory;

    .line 198
    return-void
.end method

.method public setUserAuthFactories(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/auth/UserAuthFactory;",
            ">;)V"
        }
    .end annotation

    .line 271
    .local p1, "userAuthFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/client/auth/UserAuthFactory;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 272
    const-string v1, "No user auth factories"

    invoke-static {p1, v1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/apache/sshd/client/SshClient;->userAuthFactories:Ljava/util/List;

    .line 273
    return-void
.end method

.method public setUserInteraction(Lorg/apache/sshd/client/auth/keyboard/UserInteraction;)V
    .locals 0
    .param p1, "userInteraction"    # Lorg/apache/sshd/client/auth/keyboard/UserInteraction;

    .line 261
    iput-object p1, p0, Lorg/apache/sshd/client/SshClient;->userInteraction:Lorg/apache/sshd/client/auth/keyboard/UserInteraction;

    .line 262
    return-void
.end method

.method protected setupDefaultSessionIdentities(Lorg/apache/sshd/client/session/ClientSession;Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)V
    .locals 18
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "extraIdentities"    # Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    .line 665
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    .line 667
    .local v2, "debugEnabled":Z
    invoke-interface/range {p1 .. p1}, Lorg/apache/sshd/client/session/ClientSession;->getKeyIdentityProvider()Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    move-result-object v3

    .line 668
    .local v3, "kpSession":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/client/SshClient;->getKeyIdentityProvider()Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    move-result-object v4

    .line 669
    .local v4, "kpClient":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    invoke-static {v3, v4}, Lorg/apache/sshd/common/util/GenericUtils;->isSameReference(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 670
    if-eqz v2, :cond_0

    .line 671
    iget-object v5, v0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    const-string v6, "setupDefaultSessionIdentities({}) key identity provider override in session listener"

    invoke-interface {v5, v6, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 676
    :cond_0
    nop

    .line 677
    move-object/from16 v5, p2

    invoke-static {v5, v3}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->resolveKeyIdentityProvider(Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    move-result-object v6

    .line 678
    .local v6, "kpEffective":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    invoke-static {v3, v6}, Lorg/apache/sshd/common/util/GenericUtils;->isSameReference(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 679
    if-eqz v2, :cond_1

    .line 680
    iget-object v7, v0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    const-string v8, "setupDefaultSessionIdentities({}) key identity provider enhanced"

    invoke-interface {v7, v8, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    :cond_1
    invoke-interface {v1, v6}, Lorg/apache/sshd/client/session/ClientSession;->setKeyIdentityProvider(Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)V

    .line 685
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/apache/sshd/client/session/ClientSession;->getPasswordIdentityProvider()Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    move-result-object v7

    .line 686
    .local v7, "passSession":Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/client/SshClient;->getPasswordIdentityProvider()Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    move-result-object v8

    .line 687
    .local v8, "passClient":Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;
    invoke-static {v7, v8}, Lorg/apache/sshd/common/util/GenericUtils;->isSameReference(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 688
    if-eqz v2, :cond_3

    .line 689
    iget-object v9, v0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    const-string v10, "setupDefaultSessionIdentities({}) password provider override"

    invoke-interface {v9, v10, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 693
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/client/SshClient;->getRegisteredIdentities()Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;

    move-result-object v9

    .line 694
    .local v9, "idsClient":Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;
    iget-object v10, v0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v10}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v10

    .line 695
    .local v10, "traceEnabled":Z
    if-nez v9, :cond_4

    const/4 v11, 0x0

    goto :goto_0

    :cond_4
    invoke-interface {v9}, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;->loadIdentities()Ljava/lang/Iterable;

    move-result-object v11

    :goto_0
    invoke-static {v11}, Lorg/apache/sshd/common/util/GenericUtils;->iteratorOf(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v11

    .local v11, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 696
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 697
    .local v12, "id":Ljava/lang/Object;
    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_6

    .line 698
    if-eqz v10, :cond_5

    .line 699
    iget-object v13, v0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    .line 700
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 699
    const-string v15, "setupDefaultSessionIdentities({}) add password fingerprint={}"

    invoke-interface {v13, v15, v1, v14}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 702
    :cond_5
    move-object v13, v12

    check-cast v13, Ljava/lang/String;

    invoke-interface {v1, v13}, Lorg/apache/sshd/client/session/ClientSession;->addPasswordIdentity(Ljava/lang/String;)V

    move-object/from16 v16, v3

    goto :goto_3

    .line 703
    :cond_6
    instance-of v13, v12, Ljava/security/KeyPair;

    if-eqz v13, :cond_8

    .line 704
    move-object v13, v12

    check-cast v13, Ljava/security/KeyPair;

    .line 705
    .local v13, "kp":Ljava/security/KeyPair;
    if-eqz v10, :cond_7

    .line 706
    iget-object v14, v0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    const/16 v16, 0x1

    .line 707
    invoke-static {v13}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-virtual {v13}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 706
    move-object/from16 v16, v3

    .end local v3    # "kpSession":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .local v16, "kpSession":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    const-string v3, "setupDefaultSessionIdentities({}) add identity type={}, fingerprint={}"

    invoke-interface {v14, v3, v15}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 705
    .end local v16    # "kpSession":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .restart local v3    # "kpSession":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    :cond_7
    move-object/from16 v16, v3

    .line 709
    .end local v3    # "kpSession":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .restart local v16    # "kpSession":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    :goto_2
    invoke-interface {v1, v13}, Lorg/apache/sshd/client/session/ClientSession;->addPublicKeyIdentity(Ljava/security/KeyPair;)V

    .line 710
    .end local v13    # "kp":Ljava/security/KeyPair;
    goto :goto_3

    .line 711
    .end local v16    # "kpSession":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .restart local v3    # "kpSession":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    :cond_8
    move-object/from16 v16, v3

    .end local v3    # "kpSession":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .restart local v16    # "kpSession":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    if-eqz v2, :cond_9

    .line 712
    iget-object v3, v0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    const-string v13, "setupDefaultSessionIdentities({}) ignored identity={}"

    invoke-interface {v3, v13, v1, v12}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 715
    .end local v12    # "id":Ljava/lang/Object;
    :cond_9
    :goto_3
    move-object/from16 v3, v16

    goto :goto_1

    .line 716
    .end local v11    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v16    # "kpSession":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .restart local v3    # "kpSession":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    :cond_a
    return-void
.end method

.method public start()V
    .locals 2

    .line 414
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 417
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    return-void

    .line 421
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->checkConfig()V

    .line 422
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->sessionFactory:Lorg/apache/sshd/client/session/SessionFactory;

    if-nez v0, :cond_1

    .line 423
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->createSessionFactory()Lorg/apache/sshd/client/session/SessionFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/SshClient;->sessionFactory:Lorg/apache/sshd/client/session/SessionFactory;

    .line 426
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->sessionFactory:Lorg/apache/sshd/client/session/SessionFactory;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/SshClient;->setupSessionTimeout(Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;)V

    .line 428
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->createConnector()Lorg/apache/sshd/common/io/IoConnector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/SshClient;->connector:Lorg/apache/sshd/common/io/IoConnector;

    .line 429
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 430
    return-void

    .line 415
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not start the client again"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 6

    .line 433
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    return-void

    .line 438
    :cond_0
    :try_start_0
    const-string v0, "stop-wait-time"

    sget-wide v1, Lorg/apache/sshd/client/SshClient;->DEFAULT_STOP_WAIT_TIME:J

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/sshd/client/SshClient;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v0

    .line 439
    .local v0, "maxWait":J
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/sshd/client/SshClient;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lorg/apache/sshd/common/future/CloseFuture;->await(J)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    .local v2, "successful":Z
    if-eqz v2, :cond_2

    .line 454
    .end local v0    # "maxWait":J
    .end local v2    # "successful":Z
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->clearAttributes()V

    .line 455
    goto :goto_1

    .line 441
    .restart local v0    # "maxWait":J
    .restart local v2    # "successful":Z
    :cond_2
    :try_start_1
    new-instance v3, Ljava/net/SocketTimeoutException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to receive closure confirmation within "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " millis"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    .end local v0    # "maxWait":J
    .end local v2    # "successful":Z
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v1, p0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 446
    iget-object v1, p0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while stopping client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 449
    :cond_3
    iget-object v1, p0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Lorg/apache/sshd/client/SshClient;->log:Lorg/slf4j/Logger;

    const-string v2, "Stop exception details"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 456
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 454
    :goto_2
    invoke-virtual {p0}, Lorg/apache/sshd/client/SshClient;->clearAttributes()V

    .line 455
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

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
