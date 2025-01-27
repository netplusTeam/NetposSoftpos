.class public Lorg/apache/sshd/common/BaseBuilder;
.super Ljava/lang/Object;
.source "BaseBuilder.java"

# interfaces
.implements Lorg/apache/sshd/common/util/ObjectBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/apache/sshd/common/helpers/AbstractFactoryManager;",
        "S:",
        "Lorg/apache/sshd/common/BaseBuilder<",
        "TT;TS;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/util/ObjectBuilder<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CIPHERS_PREFERENCE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/cipher/BuiltinCiphers;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_FILE_SYSTEM_FACTORY:Lorg/apache/sshd/common/file/FileSystemFactory;

.field public static final DEFAULT_FORWARDER_FACTORY:Lorg/apache/sshd/common/forward/ForwardingFilterFactory;

.field public static final DEFAULT_FORWARDING_FILTER:Lorg/apache/sshd/server/forward/ForwardingFilter;

.field public static final DEFAULT_KEX_PREFERENCE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/kex/BuiltinDHFactories;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MAC_PREFERENCE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/mac/BuiltinMacs;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_UNKNOWN_CHANNEL_REFERENCE_HANDLER:Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;


# instance fields
.field protected channelFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/ChannelFactory;",
            ">;"
        }
    .end annotation
.end field

.field protected channelStreamPacketWriterResolver:Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

.field protected cipherFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/cipher/Cipher;",
            ">;>;"
        }
    .end annotation
.end field

.field protected compressionFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/compression/Compression;",
            ">;>;"
        }
    .end annotation
.end field

.field protected factory:Lorg/apache/sshd/common/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/Factory<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected fileSystemFactory:Lorg/apache/sshd/common/file/FileSystemFactory;

.field protected forwarderFactory:Lorg/apache/sshd/common/forward/ForwardingFilterFactory;

.field protected forwardingFilter:Lorg/apache/sshd/server/forward/ForwardingFilter;

.field protected globalRequestHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/session/ConnectionService;",
            ">;>;"
        }
    .end annotation
.end field

.field protected keyExchangeFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/kex/KeyExchangeFactory;",
            ">;"
        }
    .end annotation
.end field

.field protected macFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/mac/Mac;",
            ">;>;"
        }
    .end annotation
.end field

.field protected randomFactory:Lorg/apache/sshd/common/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/common/random/Random;",
            ">;"
        }
    .end annotation
.end field

.field protected signatureFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation
.end field

.field protected unknownChannelReferenceHandler:Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 60
    sget-object v0, Lorg/apache/sshd/common/file/nativefs/NativeFileSystemFactory;->INSTANCE:Lorg/apache/sshd/common/file/nativefs/NativeFileSystemFactory;

    sput-object v0, Lorg/apache/sshd/common/BaseBuilder;->DEFAULT_FILE_SYSTEM_FACTORY:Lorg/apache/sshd/common/file/FileSystemFactory;

    .line 62
    sget-object v0, Lorg/apache/sshd/server/forward/RejectAllForwardingFilter;->INSTANCE:Lorg/apache/sshd/server/forward/RejectAllForwardingFilter;

    sput-object v0, Lorg/apache/sshd/common/BaseBuilder;->DEFAULT_FORWARDING_FILTER:Lorg/apache/sshd/server/forward/ForwardingFilter;

    .line 64
    sget-object v0, Lorg/apache/sshd/common/forward/DefaultForwarderFactory;->INSTANCE:Lorg/apache/sshd/common/forward/DefaultForwarderFactory;

    sput-object v0, Lorg/apache/sshd/common/BaseBuilder;->DEFAULT_FORWARDER_FACTORY:Lorg/apache/sshd/common/forward/ForwardingFilterFactory;

    .line 70
    const/16 v0, 0xa

    new-array v1, v0, [Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    sget-object v2, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->aes128ctr:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->aes192ctr:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->aes256ctr:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->arcfour256:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->arcfour128:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->aes128cbc:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->tripledescbc:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->blowfishcbc:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->aes192cbc:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sget-object v2, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->aes256cbc:Lorg/apache/sshd/common/cipher/BuiltinCiphers;

    const/16 v12, 0x9

    aput-object v2, v1, v12

    .line 72
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 71
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/apache/sshd/common/BaseBuilder;->DEFAULT_CIPHERS_PREFERENCE:Ljava/util/List;

    .line 92
    const/16 v1, 0xc

    new-array v1, v1, [Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    sget-object v2, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->ecdhp521:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->ecdhp384:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->ecdhp256:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->dhgex256:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->dhgex:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->dhg18_512:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->dhg17_512:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    aput-object v2, v1, v9

    sget-object v2, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->dhg16_512:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    aput-object v2, v1, v10

    sget-object v2, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->dhg15_512:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    aput-object v2, v1, v11

    sget-object v2, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->dhg14_256:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    aput-object v2, v1, v12

    sget-object v2, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->dhg14:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    aput-object v2, v1, v0

    sget-object v0, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->dhg1:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    const/16 v2, 0xb

    aput-object v0, v1, v2

    .line 94
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 93
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/BaseBuilder;->DEFAULT_KEX_PREFERENCE:Ljava/util/List;

    .line 116
    new-array v0, v12, [Lorg/apache/sshd/common/mac/BuiltinMacs;

    sget-object v1, Lorg/apache/sshd/common/mac/BuiltinMacs;->hmacsha256etm:Lorg/apache/sshd/common/mac/BuiltinMacs;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/sshd/common/mac/BuiltinMacs;->hmacsha512etm:Lorg/apache/sshd/common/mac/BuiltinMacs;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/sshd/common/mac/BuiltinMacs;->hmacsha1etm:Lorg/apache/sshd/common/mac/BuiltinMacs;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/sshd/common/mac/BuiltinMacs;->hmacsha256:Lorg/apache/sshd/common/mac/BuiltinMacs;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/sshd/common/mac/BuiltinMacs;->hmacsha512:Lorg/apache/sshd/common/mac/BuiltinMacs;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/sshd/common/mac/BuiltinMacs;->hmacsha1:Lorg/apache/sshd/common/mac/BuiltinMacs;

    aput-object v1, v0, v8

    sget-object v1, Lorg/apache/sshd/common/mac/BuiltinMacs;->hmacmd5:Lorg/apache/sshd/common/mac/BuiltinMacs;

    aput-object v1, v0, v9

    sget-object v1, Lorg/apache/sshd/common/mac/BuiltinMacs;->hmacsha196:Lorg/apache/sshd/common/mac/BuiltinMacs;

    aput-object v1, v0, v10

    sget-object v1, Lorg/apache/sshd/common/mac/BuiltinMacs;->hmacmd596:Lorg/apache/sshd/common/mac/BuiltinMacs;

    aput-object v1, v0, v11

    .line 118
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 117
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/BaseBuilder;->DEFAULT_MAC_PREFERENCE:Ljava/util/List;

    .line 130
    sget-object v0, Lorg/apache/sshd/common/session/helpers/DefaultUnknownChannelReferenceHandler;->INSTANCE:Lorg/apache/sshd/common/session/helpers/DefaultUnknownChannelReferenceHandler;

    sput-object v0, Lorg/apache/sshd/common/BaseBuilder;->DEFAULT_UNKNOWN_CHANNEL_REFERENCE_HANDLER:Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 149
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method public static setUpDefaultCiphers(Z)Ljava/util/List;
    .locals 1
    .param p0, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/cipher/Cipher;",
            ">;>;"
        }
    .end annotation

    .line 301
    sget-object v0, Lorg/apache/sshd/common/BaseBuilder;->DEFAULT_CIPHERS_PREFERENCE:Ljava/util/List;

    invoke-static {p0, v0}, Lorg/apache/sshd/common/NamedFactory;->setUpBuiltinFactories(ZLjava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setUpDefaultMacs(Z)Ljava/util/List;
    .locals 1
    .param p0, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/mac/Mac;",
            ">;>;"
        }
    .end annotation

    .line 317
    sget-object v0, Lorg/apache/sshd/common/BaseBuilder;->DEFAULT_MAC_PREFERENCE:Ljava/util/List;

    invoke-static {p0, v0}, Lorg/apache/sshd/common/NamedFactory;->setUpBuiltinFactories(ZLjava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 59
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/BaseBuilder;->build()Lorg/apache/sshd/common/helpers/AbstractFactoryManager;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/sshd/common/helpers/AbstractFactoryManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 279
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/BaseBuilder;->build(Z)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;

    move-result-object v0

    return-object v0
.end method

.method public build(Z)Lorg/apache/sshd/common/helpers/AbstractFactoryManager;
    .locals 2
    .param p1, "isFillWithDefaultValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p0}, Lorg/apache/sshd/common/BaseBuilder;->fillWithDefaultValues()Lorg/apache/sshd/common/BaseBuilder;

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/BaseBuilder;->factory:Lorg/apache/sshd/common/Factory;

    invoke-interface {v0}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;

    .line 261
    .local v0, "ssh":Lorg/apache/sshd/common/helpers/AbstractFactoryManager;, "TT;"
    iget-object v1, p0, Lorg/apache/sshd/common/BaseBuilder;->keyExchangeFactories:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setKeyExchangeFactories(Ljava/util/List;)V

    .line 262
    iget-object v1, p0, Lorg/apache/sshd/common/BaseBuilder;->signatureFactories:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setSignatureFactories(Ljava/util/List;)V

    .line 263
    iget-object v1, p0, Lorg/apache/sshd/common/BaseBuilder;->randomFactory:Lorg/apache/sshd/common/Factory;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setRandomFactory(Lorg/apache/sshd/common/Factory;)V

    .line 264
    iget-object v1, p0, Lorg/apache/sshd/common/BaseBuilder;->cipherFactories:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setCipherFactories(Ljava/util/List;)V

    .line 265
    iget-object v1, p0, Lorg/apache/sshd/common/BaseBuilder;->compressionFactories:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setCompressionFactories(Ljava/util/List;)V

    .line 266
    iget-object v1, p0, Lorg/apache/sshd/common/BaseBuilder;->macFactories:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setMacFactories(Ljava/util/List;)V

    .line 267
    iget-object v1, p0, Lorg/apache/sshd/common/BaseBuilder;->channelFactories:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setChannelFactories(Ljava/util/List;)V

    .line 268
    iget-object v1, p0, Lorg/apache/sshd/common/BaseBuilder;->fileSystemFactory:Lorg/apache/sshd/common/file/FileSystemFactory;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setFileSystemFactory(Lorg/apache/sshd/common/file/FileSystemFactory;)V

    .line 269
    iget-object v1, p0, Lorg/apache/sshd/common/BaseBuilder;->forwardingFilter:Lorg/apache/sshd/server/forward/ForwardingFilter;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setForwardingFilter(Lorg/apache/sshd/server/forward/ForwardingFilter;)V

    .line 270
    iget-object v1, p0, Lorg/apache/sshd/common/BaseBuilder;->forwarderFactory:Lorg/apache/sshd/common/forward/ForwardingFilterFactory;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setForwarderFactory(Lorg/apache/sshd/common/forward/ForwardingFilterFactory;)V

    .line 271
    iget-object v1, p0, Lorg/apache/sshd/common/BaseBuilder;->globalRequestHandlers:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setGlobalRequestHandlers(Ljava/util/List;)V

    .line 272
    iget-object v1, p0, Lorg/apache/sshd/common/BaseBuilder;->channelStreamPacketWriterResolver:Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setChannelStreamPacketWriterResolver(Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;)V

    .line 273
    iget-object v1, p0, Lorg/apache/sshd/common/BaseBuilder;->unknownChannelReferenceHandler:Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setUnknownChannelReferenceHandler(Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;)V

    .line 274
    return-object v0
.end method

.method public channelFactories(Ljava/util/List;)Lorg/apache/sshd/common/BaseBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/ChannelFactory;",
            ">;)TS;"
        }
    .end annotation

    .line 215
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    .local p1, "channelFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/channel/ChannelFactory;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/BaseBuilder;->channelFactories:Ljava/util/List;

    .line 216
    invoke-virtual {p0}, Lorg/apache/sshd/common/BaseBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public channelStreamPacketWriterResolver(Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;)Lorg/apache/sshd/common/BaseBuilder;
    .locals 1
    .param p1, "resolver"    # Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;",
            ")TS;"
        }
    .end annotation

    .line 245
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/BaseBuilder;->channelStreamPacketWriterResolver:Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

    .line 246
    invoke-virtual {p0}, Lorg/apache/sshd/common/BaseBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public cipherFactories(Ljava/util/List;)Lorg/apache/sshd/common/BaseBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/cipher/Cipher;",
            ">;>;)TS;"
        }
    .end annotation

    .line 200
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    .local p1, "cipherFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/cipher/Cipher;>;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/BaseBuilder;->cipherFactories:Ljava/util/List;

    .line 201
    invoke-virtual {p0}, Lorg/apache/sshd/common/BaseBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public compressionFactories(Ljava/util/List;)Lorg/apache/sshd/common/BaseBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/compression/Compression;",
            ">;>;)TS;"
        }
    .end annotation

    .line 205
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    .local p1, "compressionFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/compression/Compression;>;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/BaseBuilder;->compressionFactories:Ljava/util/List;

    .line 206
    invoke-virtual {p0}, Lorg/apache/sshd/common/BaseBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public factory(Lorg/apache/sshd/common/Factory;)Lorg/apache/sshd/common/BaseBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/Factory<",
            "TT;>;)TS;"
        }
    .end annotation

    .line 240
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    .local p1, "factory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<TT;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/BaseBuilder;->factory:Lorg/apache/sshd/common/Factory;

    .line 241
    invoke-virtual {p0}, Lorg/apache/sshd/common/BaseBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fileSystemFactory(Lorg/apache/sshd/common/file/FileSystemFactory;)Lorg/apache/sshd/common/BaseBuilder;
    .locals 1
    .param p1, "fileSystemFactory"    # Lorg/apache/sshd/common/file/FileSystemFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/file/FileSystemFactory;",
            ")TS;"
        }
    .end annotation

    .line 220
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/BaseBuilder;->fileSystemFactory:Lorg/apache/sshd/common/file/FileSystemFactory;

    .line 221
    invoke-virtual {p0}, Lorg/apache/sshd/common/BaseBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected fillWithDefaultValues()Lorg/apache/sshd/common/BaseBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 153
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/BaseBuilder;->randomFactory:Lorg/apache/sshd/common/Factory;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lorg/apache/sshd/common/random/SingletonRandomFactory;

    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getRandomFactory()Lorg/apache/sshd/common/random/RandomFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/random/SingletonRandomFactory;-><init>(Lorg/apache/sshd/common/NamedFactory;)V

    iput-object v0, p0, Lorg/apache/sshd/common/BaseBuilder;->randomFactory:Lorg/apache/sshd/common/Factory;

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/BaseBuilder;->cipherFactories:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 158
    invoke-static {v1}, Lorg/apache/sshd/common/BaseBuilder;->setUpDefaultCiphers(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/BaseBuilder;->cipherFactories:Ljava/util/List;

    .line 161
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/BaseBuilder;->macFactories:Ljava/util/List;

    if-nez v0, :cond_2

    .line 162
    invoke-static {v1}, Lorg/apache/sshd/common/BaseBuilder;->setUpDefaultMacs(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/BaseBuilder;->macFactories:Ljava/util/List;

    .line 165
    :cond_2
    iget-object v0, p0, Lorg/apache/sshd/common/BaseBuilder;->fileSystemFactory:Lorg/apache/sshd/common/file/FileSystemFactory;

    if-nez v0, :cond_3

    .line 166
    sget-object v0, Lorg/apache/sshd/common/BaseBuilder;->DEFAULT_FILE_SYSTEM_FACTORY:Lorg/apache/sshd/common/file/FileSystemFactory;

    iput-object v0, p0, Lorg/apache/sshd/common/BaseBuilder;->fileSystemFactory:Lorg/apache/sshd/common/file/FileSystemFactory;

    .line 169
    :cond_3
    iget-object v0, p0, Lorg/apache/sshd/common/BaseBuilder;->forwardingFilter:Lorg/apache/sshd/server/forward/ForwardingFilter;

    if-nez v0, :cond_4

    .line 170
    sget-object v0, Lorg/apache/sshd/common/BaseBuilder;->DEFAULT_FORWARDING_FILTER:Lorg/apache/sshd/server/forward/ForwardingFilter;

    iput-object v0, p0, Lorg/apache/sshd/common/BaseBuilder;->forwardingFilter:Lorg/apache/sshd/server/forward/ForwardingFilter;

    .line 173
    :cond_4
    iget-object v0, p0, Lorg/apache/sshd/common/BaseBuilder;->forwarderFactory:Lorg/apache/sshd/common/forward/ForwardingFilterFactory;

    if-nez v0, :cond_5

    .line 174
    sget-object v0, Lorg/apache/sshd/common/BaseBuilder;->DEFAULT_FORWARDER_FACTORY:Lorg/apache/sshd/common/forward/ForwardingFilterFactory;

    iput-object v0, p0, Lorg/apache/sshd/common/BaseBuilder;->forwarderFactory:Lorg/apache/sshd/common/forward/ForwardingFilterFactory;

    .line 177
    :cond_5
    iget-object v0, p0, Lorg/apache/sshd/common/BaseBuilder;->unknownChannelReferenceHandler:Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    if-nez v0, :cond_6

    .line 178
    sget-object v0, Lorg/apache/sshd/common/BaseBuilder;->DEFAULT_UNKNOWN_CHANNEL_REFERENCE_HANDLER:Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    iput-object v0, p0, Lorg/apache/sshd/common/BaseBuilder;->unknownChannelReferenceHandler:Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    .line 181
    :cond_6
    invoke-virtual {p0}, Lorg/apache/sshd/common/BaseBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public forwarderFactory(Lorg/apache/sshd/common/forward/ForwardingFilterFactory;)Lorg/apache/sshd/common/BaseBuilder;
    .locals 1
    .param p1, "forwarderFactory"    # Lorg/apache/sshd/common/forward/ForwardingFilterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/forward/ForwardingFilterFactory;",
            ")TS;"
        }
    .end annotation

    .line 230
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/BaseBuilder;->forwarderFactory:Lorg/apache/sshd/common/forward/ForwardingFilterFactory;

    .line 231
    invoke-virtual {p0}, Lorg/apache/sshd/common/BaseBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public forwardingFilter(Lorg/apache/sshd/server/forward/ForwardingFilter;)Lorg/apache/sshd/common/BaseBuilder;
    .locals 1
    .param p1, "filter"    # Lorg/apache/sshd/server/forward/ForwardingFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/server/forward/ForwardingFilter;",
            ")TS;"
        }
    .end annotation

    .line 225
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/BaseBuilder;->forwardingFilter:Lorg/apache/sshd/server/forward/ForwardingFilter;

    .line 226
    invoke-virtual {p0}, Lorg/apache/sshd/common/BaseBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public globalRequestHandlers(Ljava/util/List;)Lorg/apache/sshd/common/BaseBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/session/ConnectionService;",
            ">;>;)TS;"
        }
    .end annotation

    .line 235
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    .local p1, "globalRequestHandlers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/session/ConnectionService;>;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/BaseBuilder;->globalRequestHandlers:Ljava/util/List;

    .line 236
    invoke-virtual {p0}, Lorg/apache/sshd/common/BaseBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public keyExchangeFactories(Ljava/util/List;)Lorg/apache/sshd/common/BaseBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/kex/KeyExchangeFactory;",
            ">;)TS;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    .local p1, "keyExchangeFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/kex/KeyExchangeFactory;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/BaseBuilder;->keyExchangeFactories:Ljava/util/List;

    .line 186
    invoke-virtual {p0}, Lorg/apache/sshd/common/BaseBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public macFactories(Ljava/util/List;)Lorg/apache/sshd/common/BaseBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/mac/Mac;",
            ">;>;)TS;"
        }
    .end annotation

    .line 210
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    .local p1, "macFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/mac/Mac;>;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/BaseBuilder;->macFactories:Ljava/util/List;

    .line 211
    invoke-virtual {p0}, Lorg/apache/sshd/common/BaseBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected me()Lorg/apache/sshd/common/BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 284
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    return-object p0
.end method

.method public randomFactory(Lorg/apache/sshd/common/Factory;)Lorg/apache/sshd/common/BaseBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/common/random/Random;",
            ">;)TS;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    .local p1, "randomFactory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<Lorg/apache/sshd/common/random/Random;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/BaseBuilder;->randomFactory:Lorg/apache/sshd/common/Factory;

    .line 196
    invoke-virtual {p0}, Lorg/apache/sshd/common/BaseBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public signatureFactories(Ljava/util/List;)Lorg/apache/sshd/common/BaseBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;)TS;"
        }
    .end annotation

    .line 190
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    .local p1, "signatureFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/BaseBuilder;->signatureFactories:Ljava/util/List;

    .line 191
    invoke-virtual {p0}, Lorg/apache/sshd/common/BaseBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public unknownChannelReferenceHandler(Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;)Lorg/apache/sshd/common/BaseBuilder;
    .locals 1
    .param p1, "handler"    # Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;",
            ")TS;"
        }
    .end annotation

    .line 250
    .local p0, "this":Lorg/apache/sshd/common/BaseBuilder;, "Lorg/apache/sshd/common/BaseBuilder<TT;TS;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/BaseBuilder;->unknownChannelReferenceHandler:Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    .line 251
    invoke-virtual {p0}, Lorg/apache/sshd/common/BaseBuilder;->me()Lorg/apache/sshd/common/BaseBuilder;

    move-result-object v0

    return-object v0
.end method
