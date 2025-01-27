.class public abstract Lorg/apache/sshd/common/session/helpers/AbstractSession;
.super Lorg/apache/sshd/common/session/helpers/SessionHelper;
.source "AbstractSession.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final SESSION:Ljava/lang/String; = "org.apache.sshd.session"


# instance fields
.field protected final channelListenerProxy:Lorg/apache/sshd/common/channel/ChannelListener;

.field protected final channelListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/channel/ChannelListener;",
            ">;"
        }
    .end annotation
.end field

.field private clientKexData:[B

.field protected final clientProposal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected clientVersion:Ljava/lang/String;

.field protected currentService:Lorg/apache/sshd/common/Service;

.field protected final decodeLock:Ljava/lang/Object;

.field protected final decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

.field protected decoderLength:I

.field protected decoderState:I

.field protected final encodeLock:Ljava/lang/Object;

.field protected firstKexPacketFollows:Ljava/lang/Boolean;

.field protected ignorePacketDataLength:I

.field protected final ignorePacketsCount:Ljava/util/concurrent/atomic/AtomicLong;

.field protected ignorePacketsFrequency:J

.field protected ignorePacketsVariance:I

.field protected final inBlocksCount:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final inBytesCount:Ljava/util/concurrent/atomic/AtomicLong;

.field protected inCipher:Lorg/apache/sshd/common/cipher/Cipher;

.field protected inCipherSize:I

.field protected inCompression:Lorg/apache/sshd/common/compression/Compression;

.field protected inMac:Lorg/apache/sshd/common/mac/Mac;

.field protected inMacResult:[B

.field protected inMacSize:I

.field protected final inPacketsCount:Ljava/util/concurrent/atomic/AtomicLong;

.field protected kex:Lorg/apache/sshd/common/kex/KeyExchange;

.field protected final kexFutureHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;",
            ">;"
        }
    .end annotation
.end field

.field protected final kexState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/common/kex/KexState;",
            ">;"
        }
    .end annotation
.end field

.field protected final lastKeyTimeValue:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final maxRekeyBlocks:Ljava/util/concurrent/atomic/AtomicLong;

.field protected maxRekeyBytes:J

.field protected maxRekeyInterval:J

.field protected maxRekyPackets:J

.field protected final negotiationResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final outBlocksCount:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final outBytesCount:Ljava/util/concurrent/atomic/AtomicLong;

.field protected outCipher:Lorg/apache/sshd/common/cipher/Cipher;

.field protected outCipherSize:I

.field protected outCompression:Lorg/apache/sshd/common/compression/Compression;

.field protected outMac:Lorg/apache/sshd/common/mac/Mac;

.field protected outMacSize:I

.field protected final outPacketsCount:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final pendingPackets:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;",
            ">;"
        }
    .end annotation
.end field

.field protected final random:Lorg/apache/sshd/common/random/Random;

.field protected final requestLock:Ljava/lang/Object;

.field private final requestResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected seqi:J

.field protected seqo:J

.field private serverKexData:[B

.field protected final serverProposal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected serverVersion:Ljava/lang/String;

.field protected sessionId:[B

.field protected final sessionListenerProxy:Lorg/apache/sshd/common/session/SessionListener;

.field protected final sessionListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/session/SessionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final tunnelListenerProxy:Lorg/apache/sshd/common/forward/PortForwardingEventListener;

.field protected final tunnelListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/forward/PortForwardingEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected uncompressBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

.field protected final unmodClientProposal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final unmodNegotiationResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final unmodServerProposal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 105
    return-void
.end method

.method protected constructor <init>(ZLorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoSession;)V
    .locals 8
    .param p1, "serverSession"    # Z
    .param p2, "factoryManager"    # Lorg/apache/sshd/common/FactoryManager;
    .param p3, "ioSession"    # Lorg/apache/sshd/common/io/IoSession;

    .line 224
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sshd/common/session/helpers/SessionHelper;-><init>(ZLorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoSession;)V

    .line 121
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sessionListeners:Ljava/util/Collection;

    .line 127
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->channelListeners:Ljava/util/Collection;

    .line 133
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->tunnelListeners:Ljava/util/Collection;

    .line 143
    new-instance v3, Ljava/util/EnumMap;

    const-class v4, Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->serverProposal:Ljava/util/Map;

    .line 144
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->unmodServerProposal:Ljava/util/Map;

    .line 145
    new-instance v3, Ljava/util/EnumMap;

    const-class v4, Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->clientProposal:Ljava/util/Map;

    .line 146
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->unmodClientProposal:Ljava/util/Map;

    .line 147
    new-instance v3, Ljava/util/EnumMap;

    const-class v4, Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->negotiationResult:Ljava/util/Map;

    .line 148
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->unmodNegotiationResult:Ljava/util/Map;

    .line 152
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lorg/apache/sshd/common/kex/KexState;->UNKNOWN:Lorg/apache/sshd/common/kex/KexState;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 153
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexFutureHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 160
    const/16 v3, 0x8

    iput v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outCipherSize:I

    .line 161
    iput v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCipherSize:I

    .line 175
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->encodeLock:Ljava/lang/Object;

    .line 176
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decodeLock:Ljava/lang/Object;

    .line 177
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestLock:Ljava/lang/Object;

    .line 182
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inPacketsCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 183
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outPacketsCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 184
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inBytesCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 185
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outBytesCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 186
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inBlocksCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 187
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outBlocksCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 188
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->lastKeyTimeValue:Ljava/util/concurrent/atomic/AtomicLong;

    .line 190
    const-wide v3, 0x80000000L

    iput-wide v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekyPackets:J

    .line 191
    const-wide/32 v3, 0x40000000

    iput-wide v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekeyBytes:J

    .line 192
    const-wide/32 v3, 0x36ee80

    iput-wide v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekeyInterval:J

    .line 193
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->pendingPackets:Ljava/util/Queue;

    .line 198
    const/16 v3, 0x10

    iput v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->ignorePacketDataLength:I

    .line 199
    const-wide/16 v3, 0x400

    iput-wide v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->ignorePacketsFrequency:J

    .line 200
    const/16 v5, 0x20

    iput v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->ignorePacketsVariance:I

    .line 202
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v6, 0x4000000

    invoke-direct {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekeyBlocks:Ljava/util/concurrent/atomic/AtomicLong;

    .line 204
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->ignorePacketsCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 210
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 226
    new-instance v3, Lorg/apache/sshd/common/session/SessionWorkBuffer;

    invoke-direct {v3, p0}, Lorg/apache/sshd/common/session/SessionWorkBuffer;-><init>(Lorg/apache/sshd/common/session/Session;)V

    iput-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    .line 228
    invoke-static {p3, p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->attachSession(Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/common/session/helpers/AbstractSession;)V

    .line 230
    nop

    .line 232
    invoke-interface {p2}, Lorg/apache/sshd/common/FactoryManager;->getRandomFactory()Lorg/apache/sshd/common/Factory;

    move-result-object v3

    .line 231
    const-string v4, "No random factory for %s"

    invoke-static {v3, v4, p3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/Factory;

    .line 233
    .local v3, "factory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<Lorg/apache/sshd/common/random/Random;>;"
    nop

    .line 234
    invoke-interface {v3}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v4

    .line 233
    const-string v5, "No randomizer instance for %s"

    invoke-static {v4, v5, p3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sshd/common/random/Random;

    iput-object v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->random:Lorg/apache/sshd/common/random/Random;

    .line 236
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->refreshConfiguration()V

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 239
    .local v4, "loader":Ljava/lang/ClassLoader;
    const-class v5, Lorg/apache/sshd/common/session/SessionListener;

    invoke-static {v5, v4, v0}, Lorg/apache/sshd/common/util/EventListenerUtils;->proxyWrapper(Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/SshdEventListener;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/SessionListener;

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sessionListenerProxy:Lorg/apache/sshd/common/session/SessionListener;

    .line 241
    const-class v0, Lorg/apache/sshd/common/channel/ChannelListener;

    invoke-static {v0, v4, v1}, Lorg/apache/sshd/common/util/EventListenerUtils;->proxyWrapper(Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/SshdEventListener;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/channel/ChannelListener;

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->channelListenerProxy:Lorg/apache/sshd/common/channel/ChannelListener;

    .line 243
    const-class v0, Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    invoke-static {v0, v4, v2}, Lorg/apache/sshd/common/util/EventListenerUtils;->proxyWrapper(Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/SshdEventListener;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->tunnelListenerProxy:Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 247
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->signalSessionEstablished(Lorg/apache/sshd/common/io/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    nop

    .line 255
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 250
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 252
    :cond_0
    new-instance v1, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v1, v0}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static attachSession(Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/common/session/helpers/AbstractSession;)V
    .locals 4
    .param p0, "ioSession"    # Lorg/apache/sshd/common/io/IoSession;
    .param p1, "session"    # Lorg/apache/sshd/common/session/helpers/AbstractSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sshd/common/session/helpers/MultipleAttachedSessionException;
        }
    .end annotation

    .line 2238
    const-string v0, "No I/O session"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2239
    const-string v0, "No SSH session"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2240
    const-string v0, "org.apache.sshd.session"

    invoke-interface {p0, v0, p1}, Lorg/apache/sshd/common/io/IoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2241
    .local v0, "prev":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 2244
    return-void

    .line 2242
    :cond_0
    new-instance v1, Lorg/apache/sshd/common/session/helpers/MultipleAttachedSessionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple attached session to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sshd/common/session/helpers/MultipleAttachedSessionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getSession(Lorg/apache/sshd/common/io/IoSession;)Lorg/apache/sshd/common/session/helpers/AbstractSession;
    .locals 1
    .param p0, "ioSession"    # Lorg/apache/sshd/common/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sshd/common/session/helpers/MissingAttachedSessionException;
        }
    .end annotation

    .line 2226
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getSession(Lorg/apache/sshd/common/io/IoSession;Z)Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v0

    return-object v0
.end method

.method public static getSession(Lorg/apache/sshd/common/io/IoSession;Z)Lorg/apache/sshd/common/session/helpers/AbstractSession;
    .locals 4
    .param p0, "ioSession"    # Lorg/apache/sshd/common/io/IoSession;
    .param p1, "allowNull"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sshd/common/session/helpers/MissingAttachedSessionException;
        }
    .end annotation

    .line 2259
    const-string v0, "org.apache.sshd.session"

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/io/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/helpers/AbstractSession;

    .line 2260
    .local v0, "session":Lorg/apache/sshd/common/session/helpers/AbstractSession;
    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2261
    :cond_0
    new-instance v1, Lorg/apache/sshd/common/session/helpers/MissingAttachedSessionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No session attached to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sshd/common/session/helpers/MissingAttachedSessionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2264
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public addChannelListener(Lorg/apache/sshd/common/channel/ChannelListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/channel/ChannelListener;

    .line 1847
    invoke-static {p1}, Lorg/apache/sshd/common/channel/ChannelListener;->validateListener(Lorg/apache/sshd/common/channel/ChannelListener;)Lorg/apache/sshd/common/channel/ChannelListener;

    .line 1849
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1850
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "addChannelListener({})[{}] ignore registration while session is closing"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1851
    return-void

    .line 1854
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->channelListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1855
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1856
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "addChannelListener({})[{}] registered"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1859
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1860
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "addChannelListener({})[{}] ignored duplicate"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1863
    :cond_2
    :goto_0
    return-void
.end method

.method public addPortForwardingEventListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 1895
    invoke-static {p1}, Lorg/apache/sshd/common/forward/PortForwardingEventListener;->validateListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 1897
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1898
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "addPortForwardingEventListener({})[{}] ignore registration while session is closing"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1899
    return-void

    .line 1902
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->tunnelListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1903
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1904
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "addPortForwardingEventListener({})[{}] registered"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1907
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1908
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "addPortForwardingEventListener({})[{}] ignored duplicate"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1911
    :cond_2
    :goto_0
    return-void
.end method

.method public addSessionListener(Lorg/apache/sshd/common/session/SessionListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/session/SessionListener;

    .line 1804
    invoke-static {p1}, Lorg/apache/sshd/common/session/SessionListener;->validateListener(Lorg/apache/sshd/common/session/SessionListener;)Lorg/apache/sshd/common/session/SessionListener;

    .line 1806
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1807
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "addSessionListener({})[{}] ignore registration while session is closing"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1808
    return-void

    .line 1811
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sessionListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1812
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1813
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "addSessionListener({})[{}] registered"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1816
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1817
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "addSessionListener({})[{}] ignored duplicate"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1820
    :cond_2
    :goto_0
    return-void
.end method

.method protected appendOutgoingMac(Lorg/apache/sshd/common/util/buffer/Buffer;II)V
    .locals 4
    .param p1, "buf"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1159
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outMac:Lorg/apache/sshd/common/mac/Mac;

    if-nez v0, :cond_0

    .line 1160
    return-void

    .line 1163
    :cond_0
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v0

    .line 1165
    .local v0, "l":I
    iget v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outMacSize:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 1167
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outMac:Lorg/apache/sshd/common/mac/Mac;

    iget-wide v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->seqo:J

    invoke-interface {v1, v2, v3}, Lorg/apache/sshd/common/mac/Mac;->updateUInt(J)V

    .line 1169
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outMac:Lorg/apache/sshd/common/mac/Mac;

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v2

    add-int/lit8 v3, p3, 0x4

    invoke-interface {v1, v2, p2, v3}, Lorg/apache/sshd/common/mac/Mac;->update([BII)V

    .line 1171
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outMac:Lorg/apache/sshd/common/mac/Mac;

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/sshd/common/mac/Mac;->doFinal([BI)V

    .line 1172
    return-void
.end method

.method protected abstract checkKeys()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected checkRekey()Lorg/apache/sshd/common/future/KeyExchangeFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1959
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->isRekeyRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestNewKeysExchange()Lorg/apache/sshd/common/future/KeyExchangeFuture;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected comparePreferredKexProposalOption(Lorg/apache/sshd/common/kex/KexProposalOption;)Ljava/util/Map$Entry;
    .locals 6
    .param p1, "option"    # Lorg/apache/sshd/common/kex/KexProposalOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->clientProposal:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "clientPreferences":[Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    aget-object v2, v0, v3

    .line 523
    .local v2, "clientValue":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->serverProposal:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v1}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "serverPreferences":[Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    aget-object v3, v1, v3

    .line 525
    .local v3, "serverValue":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 526
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 530
    :cond_2
    return-object v4

    .line 527
    :cond_3
    :goto_2
    new-instance v4, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v4, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method public createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 5
    .param p1, "cmd"    # B
    .param p2, "len"    # I

    .line 1012
    if-gtz p2, :cond_0

    .line 1013
    new-instance v0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->prepareBuffer(BLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    return-object v0

    .line 1019
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outMac:Lorg/apache/sshd/common/mac/Mac;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/apache/sshd/common/mac/Mac;->isEncryptThenMac()Z

    move-result v0

    .line 1020
    .local v0, "etmMode":Z
    :goto_0
    iget v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outCipherSize:I

    invoke-static {p2, v2, v0}, Lorg/apache/sshd/common/io/PacketWriter;->calculatePadLength(IIZ)I

    move-result v2

    .line 1021
    .local v2, "pad":I
    add-int/lit8 v3, p2, 0x5

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    .line 1022
    .end local p2    # "len":I
    .local v3, "len":I
    iget-object p2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outMac:Lorg/apache/sshd/common/mac/Mac;

    if-eqz p2, :cond_2

    .line 1023
    iget p2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outMacSize:I

    add-int/2addr v3, p2

    .line 1026
    :cond_2
    new-instance p2, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    add-int/lit8 v4, v3, 0x8

    new-array v4, v4, [B

    invoke-direct {p2, v4, v1}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([BZ)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->prepareBuffer(BLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object p2

    return-object p2
.end method

.method protected decode()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1192
    :goto_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inMac:Lorg/apache/sshd/common/mac/Mac;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/mac/Mac;->isEncryptThenMac()Z

    move-result v0

    .line 1194
    .local v0, "etmMode":Z
    :goto_1
    iget v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderState:I

    const-string v3, "decode("

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-nez v2, :cond_5

    .line 1196
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    invoke-virtual {v2}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->rpos()I

    move-result v2

    if-nez v2, :cond_4

    .line 1206
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCipherSize:I

    :goto_2
    move v2, v5

    .line 1208
    .local v2, "minBufLen":I
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    invoke-virtual {v5}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->available()I

    move-result v5

    if-le v5, v2, :cond_e

    .line 1210
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCipher:Lorg/apache/sshd/common/cipher/Cipher;

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    .line 1211
    iget-object v6, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    invoke-virtual {v6}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->array()[B

    move-result-object v6

    iget v7, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCipherSize:I

    invoke-interface {v5, v6, v1, v7}, Lorg/apache/sshd/common/cipher/Cipher;->update([BII)V

    .line 1213
    iget v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCipherSize:I

    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCipher:Lorg/apache/sshd/common/cipher/Cipher;

    invoke-interface {v5}, Lorg/apache/sshd/common/cipher/Cipher;->getCipherBlockSize()I

    move-result v5

    div-int/2addr v1, v5

    .line 1214
    .local v1, "blocksCount":I
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inBlocksCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1217
    .end local v1    # "blocksCount":I
    :cond_2
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    invoke-virtual {v1}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderLength:I

    .line 1222
    const/4 v5, 0x5

    if-lt v1, v5, :cond_3

    const/high16 v5, 0x40000

    if-gt v1, v5, :cond_3

    .line 1231
    iput v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderState:I

    .end local v2    # "minBufLen":I
    goto/16 :goto_7

    .line 1224
    .restart local v2    # "minBufLen":I
    :cond_3
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    iget v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "decode({}) Error decoding packet(invalid length): {}"

    invoke-interface {v1, v5, p0, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1225
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getSimplifiedLogger()Lorg/apache/sshd/common/util/logging/SimplifiedLog;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ") invalid length packet"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v5, v3, p0}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->dumpHex(Lorg/apache/sshd/common/util/logging/SimplifiedLog;Ljava/util/logging/Level;Ljava/lang/String;Lorg/apache/sshd/common/PropertyResolver;)V

    .line 1227
    new-instance v1, Lorg/apache/sshd/common/SshException;

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid packet length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1196
    .end local v2    # "minBufLen":I
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1237
    :cond_5
    if-ne v2, v4, :cond_10

    .line 1239
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    invoke-virtual {v2}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->rpos()I

    move-result v2

    if-ne v2, v5, :cond_f

    .line 1240
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inMac:Lorg/apache/sshd/common/mac/Mac;

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inMacSize:I

    goto :goto_3

    :cond_6
    move v2, v1

    .line 1242
    .local v2, "macSize":I
    :goto_3
    iget-object v6, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    invoke-virtual {v6}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->available()I

    move-result v6

    iget v7, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderLength:I

    add-int/2addr v7, v2

    if-lt v6, v7, :cond_e

    .line 1243
    iget-object v6, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    invoke-virtual {v6}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->array()[B

    move-result-object v6

    .line 1244
    .local v6, "data":[B
    if-eqz v0, :cond_7

    .line 1245
    iget v7, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderLength:I

    add-int/2addr v7, v5

    invoke-virtual {p0, v6, v1, v7}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->validateIncomingMac([BII)V

    .line 1247
    iget-object v7, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCipher:Lorg/apache/sshd/common/cipher/Cipher;

    if-eqz v7, :cond_9

    .line 1248
    iget v8, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderLength:I

    invoke-interface {v7, v6, v5, v8}, Lorg/apache/sshd/common/cipher/Cipher;->update([BII)V

    .line 1250
    iget v7, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderLength:I

    iget v8, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCipherSize:I

    div-int/2addr v7, v8

    .line 1251
    .local v7, "blocksCount":I
    iget-object v8, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inBlocksCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1252
    .end local v7    # "blocksCount":I
    goto :goto_4

    .line 1258
    :cond_7
    iget-object v7, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCipher:Lorg/apache/sshd/common/cipher/Cipher;

    if-eqz v7, :cond_8

    .line 1259
    iget v8, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderLength:I

    add-int/2addr v8, v5

    iget v9, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCipherSize:I

    sub-int/2addr v8, v9

    .line 1260
    .local v8, "updateLen":I
    invoke-interface {v7, v6, v9, v8}, Lorg/apache/sshd/common/cipher/Cipher;->update([BII)V

    .line 1262
    iget v7, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCipherSize:I

    div-int v7, v8, v7

    .line 1263
    .restart local v7    # "blocksCount":I
    iget-object v9, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inBlocksCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1266
    .end local v7    # "blocksCount":I
    .end local v8    # "updateLen":I
    :cond_8
    iget v7, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderLength:I

    add-int/2addr v7, v5

    invoke-virtual {p0, v6, v1, v7}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->validateIncomingMac([BII)V

    .line 1270
    :cond_9
    :goto_4
    iget-wide v7, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->seqi:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->seqi:J

    .line 1273
    iget-object v7, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    invoke-virtual {v7}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->getUByte()I

    move-result v7

    .line 1275
    .local v7, "pad":I
    iget-object v8, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    invoke-virtual {v8}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->wpos()I

    move-result v8

    .line 1277
    .local v8, "wpos":I
    iget-object v9, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCompression:Lorg/apache/sshd/common/compression/Compression;

    if-eqz v9, :cond_c

    .line 1278
    invoke-interface {v9}, Lorg/apache/sshd/common/compression/Compression;->isCompressionExecuted()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1279
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->isAuthenticated()Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCompression:Lorg/apache/sshd/common/compression/Compression;

    invoke-interface {v9}, Lorg/apache/sshd/common/compression/Compression;->isDelayed()Z

    move-result v9

    if-nez v9, :cond_c

    .line 1280
    :cond_a
    iget-object v9, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->uncompressBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    if-nez v9, :cond_b

    .line 1281
    new-instance v9, Lorg/apache/sshd/common/session/SessionWorkBuffer;

    invoke-direct {v9, p0}, Lorg/apache/sshd/common/session/SessionWorkBuffer;-><init>(Lorg/apache/sshd/common/session/Session;)V

    iput-object v9, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->uncompressBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    goto :goto_5

    .line 1283
    :cond_b
    invoke-virtual {v9, v4}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->forceClear(Z)V

    .line 1286
    :goto_5
    iget-object v9, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    invoke-virtual {v9}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->rpos()I

    move-result v10

    iget v11, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderLength:I

    add-int/2addr v10, v11

    sub-int/2addr v10, v4

    sub-int/2addr v10, v7

    invoke-virtual {v9, v10}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->wpos(I)V

    .line 1287
    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCompression:Lorg/apache/sshd/common/compression/Compression;

    iget-object v9, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    iget-object v10, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->uncompressBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    invoke-interface {v4, v9, v10}, Lorg/apache/sshd/common/compression/Compression;->uncompress(Lorg/apache/sshd/common/util/buffer/Buffer;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 1288
    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->uncompressBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    .local v4, "packet":Lorg/apache/sshd/common/util/buffer/Buffer;
    goto :goto_6

    .line 1290
    .end local v4    # "packet":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_c
    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    iget v9, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderLength:I

    add-int/2addr v9, v5

    sub-int/2addr v9, v7

    invoke-virtual {v4, v9}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->wpos(I)V

    .line 1291
    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    .line 1294
    .restart local v4    # "packet":Lorg/apache/sshd/common/util/buffer/Buffer;
    :goto_6
    iget-object v9, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v9}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1295
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getSimplifiedLogger()Lorg/apache/sshd/common/util/logging/SimplifiedLog;

    move-result-object v9

    sget-object v10, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ") packet #"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v11, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->seqi:J

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v9, v10, v3, p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->dumpHex(Lorg/apache/sshd/common/util/logging/SimplifiedLog;Ljava/util/logging/Level;Ljava/lang/String;Lorg/apache/sshd/common/PropertyResolver;)V

    .line 1300
    :cond_d
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inPacketsCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1301
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inBytesCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v3, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1304
    invoke-virtual {p0, v4}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->handleMessage(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 1307
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    iget v9, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderLength:I

    add-int/2addr v9, v5

    add-int/2addr v9, v2

    invoke-virtual {v3, v9}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->rpos(I)V

    .line 1308
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    invoke-virtual {v3, v8}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->wpos(I)V

    .line 1309
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    invoke-virtual {v3}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->compact()V

    .line 1310
    iput v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderState:I

    goto :goto_8

    .line 1317
    .end local v0    # "etmMode":Z
    .end local v2    # "macSize":I
    .end local v4    # "packet":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v6    # "data":[B
    .end local v7    # "pad":I
    .end local v8    # "wpos":I
    :cond_e
    return-void

    .line 1239
    .restart local v0    # "etmMode":Z
    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1237
    :cond_10
    :goto_7
    nop

    .line 1316
    .end local v0    # "etmMode":Z
    :goto_8
    goto/16 :goto_0
.end method

.method protected doHandleMessage(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 4
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 415
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v0

    .line 416
    .local v0, "cmd":I
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    .line 418
    invoke-static {v0}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v2

    .line 417
    const-string v3, "doHandleMessage({}) process {}"

    invoke-interface {v1, v3, p0, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 421
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 453
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    const/16 v1, 0x31

    if-gt v0, v1, :cond_3

    .line 454
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->firstKexPacketFollows:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 456
    goto :goto_0

    .line 444
    :sswitch_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->handleNewKeys(ILorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 445
    goto :goto_2

    .line 441
    :sswitch_1
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->handleKexInit(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 442
    goto :goto_2

    .line 450
    :sswitch_2
    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->handleNewCompression(ILorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 451
    goto :goto_2

    .line 447
    :sswitch_3
    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->handleKexExtension(ILorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 448
    goto :goto_2

    .line 438
    :sswitch_4
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->handleServiceAccept(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 439
    goto :goto_2

    .line 435
    :sswitch_5
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->handleServiceRequest(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 436
    goto :goto_2

    .line 432
    :sswitch_6
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->handleDebug(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 433
    goto :goto_2

    .line 429
    :sswitch_7
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->handleUnimplemented(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 430
    goto :goto_2

    .line 426
    :sswitch_8
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->handleIgnore(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 427
    goto :goto_2

    .line 423
    :sswitch_9
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->handleDisconnect(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 424
    goto :goto_2

    .line 456
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->handleFirstKexPacketFollows(ILorg/apache/sshd/common/util/buffer/Buffer;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 460
    iput-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->firstKexPacketFollows:Ljava/lang/Boolean;

    goto :goto_2

    :cond_1
    iput-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->firstKexPacketFollows:Ljava/lang/Boolean;

    .line 461
    goto :goto_1

    .line 460
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->firstKexPacketFollows:Ljava/lang/Boolean;

    .line 461
    throw v1

    .line 464
    :cond_2
    :goto_1
    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->handleKexMessage(ILorg/apache/sshd/common/util/buffer/Buffer;)V

    goto :goto_2

    .line 465
    :cond_3
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->currentService:Lorg/apache/sshd/common/Service;

    if-eqz v1, :cond_4

    .line 466
    invoke-interface {v1, v0, p1}, Lorg/apache/sshd/common/Service;->process(ILorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 467
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->resetIdleTimeout()J

    goto :goto_2

    .line 476
    :cond_4
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 477
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    .line 478
    invoke-static {v0}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v2

    .line 477
    const-string v3, "process({}) Unsupported command: {}"

    invoke-interface {v1, v3, p0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 480
    :cond_5
    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->notImplemented(ILorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 484
    :goto_2
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->checkRekey()Lorg/apache/sshd/common/future/KeyExchangeFuture;

    .line 485
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x5 -> :sswitch_5
        0x6 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0x14 -> :sswitch_1
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method protected doKexNegotiation()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 669
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/sshd/common/kex/KexState;->DONE:Lorg/apache/sshd/common/kex/KexState;

    sget-object v2, Lorg/apache/sshd/common/kex/KexState;->RUN:Lorg/apache/sshd/common/kex/KexState;

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sendKexInit()[B

    goto :goto_0

    .line 671
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/sshd/common/kex/KexState;->INIT:Lorg/apache/sshd/common/kex/KexState;

    sget-object v2, Lorg/apache/sshd/common/kex/KexState;->RUN:Lorg/apache/sshd/common/kex/KexState;

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    :goto_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->negotiate()Ljava/util/Map;

    move-result-object v0

    .line 676
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    sget-object v1, Lorg/apache/sshd/common/kex/KexProposalOption;->ALGORITHMS:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 677
    .local v1, "kexAlgorithm":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getKeyExchangeFactories()Ljava/util/List;

    move-result-object v2

    .line 678
    .local v2, "kexFactories":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/kex/KeyExchangeFactory;>;"
    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v1, v3, v2}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/kex/KeyExchangeFactory;

    .line 680
    .local v3, "kexFactory":Lorg/apache/sshd/common/kex/KeyExchangeFactory;
    const-string v4, "Unknown negotiated KEX algorithm: %s"

    invoke-static {v3, v4, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->pendingPackets:Ljava/util/Queue;

    monitor-enter v4

    .line 682
    :try_start_0
    invoke-interface {v3, p0}, Lorg/apache/sshd/common/kex/KeyExchangeFactory;->createKeyExchange(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/common/kex/KeyExchange;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kex:Lorg/apache/sshd/common/kex/KeyExchange;

    .line 683
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 685
    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->serverVersion:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 686
    .local v5, "v_s":[B
    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->clientVersion:Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 689
    .local v6, "v_c":[B
    iget-object v7, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v7

    .line 690
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getServerKexData()[B

    move-result-object v4

    .line 691
    .local v4, "i_s":[B
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getClientKexData()[B

    move-result-object v8

    .line 692
    .local v8, "i_c":[B
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    iget-object v7, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kex:Lorg/apache/sshd/common/kex/KeyExchange;

    invoke-interface {v7, v5, v6, v4, v8}, Lorg/apache/sshd/common/kex/KeyExchange;->init([B[B[B[B)V

    .line 695
    sget-object v7, Lorg/apache/sshd/common/session/SessionListener$Event;->KexCompleted:Lorg/apache/sshd/common/session/SessionListener$Event;

    invoke-virtual {p0, v7}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->signalSessionEvent(Lorg/apache/sshd/common/session/SessionListener$Event;)V

    .line 696
    return-void

    .line 692
    .end local v4    # "i_s":[B
    .end local v8    # "i_c":[B
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 683
    .end local v5    # "v_s":[B
    .end local v6    # "v_c":[B
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 672
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .end local v1    # "kexAlgorithm":Ljava/lang/String;
    .end local v2    # "kexFactories":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/kex/KeyExchangeFactory;>;"
    .end local v3    # "kexFactory":Lorg/apache/sshd/common/kex/KeyExchangeFactory;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received SSH_MSG_KEXINIT while key exchange is running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doWritePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 4
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 916
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->encodeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 917
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->resolveOutputPacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v1

    .line 918
    .local v1, "packet":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getIoSession()Lorg/apache/sshd/common/io/IoSession;

    move-result-object v2

    .line 919
    .local v2, "networkSession":Lorg/apache/sshd/common/io/IoSession;
    invoke-interface {v2, v1}, Lorg/apache/sshd/common/io/IoSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 920
    .end local v1    # "packet":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v2    # "networkSession":Lorg/apache/sshd/common/io/IoSession;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected encode(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 18
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1070
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v0

    .line 1071
    .local v0, "curPos":I
    invoke-virtual {v2, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->rawByte(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 1072
    .local v3, "cmd":I
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x5

    if-ge v0, v9, :cond_0

    .line 1073
    iget-object v10, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v11, "encode({}) command={}[{}] performance cost: available buffer packet header length ({}) below min. required ({})"

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v1, v12, v8

    .line 1074
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {v3}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    .line 1075
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v7

    .line 1073
    invoke-interface {v10, v11, v12}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1076
    new-instance v10, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v11

    add-int/lit8 v11, v11, 0x40

    invoke-direct {v10, v11, v8}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    .line 1077
    .local v10, "nb":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v10, v9}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 1078
    invoke-virtual {v10, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBuffer(Lorg/apache/sshd/common/util/Readable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1079
    move-object v2, v10

    .line 1080
    .end local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v2, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v11

    move v0, v11

    move v10, v0

    goto :goto_0

    .line 1072
    .end local v2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v10    # "nb":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_0
    move v10, v0

    .line 1084
    .end local v0    # "curPos":I
    .end local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v10, "curPos":I
    :goto_0
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v0

    .line 1085
    .local v0, "len":I
    iget-object v11, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v11}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1086
    iget-object v11, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v12, "encode({}) packet #{} sending command={}[{}] len={}"

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v1, v13, v8

    iget-wide v14, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->seqo:J

    .line 1087
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-static {v3}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v7

    .line 1086
    invoke-interface {v11, v12, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1090
    :cond_1
    add-int/lit8 v11, v10, -0x5

    .line 1092
    .local v11, "off":I
    iget-object v12, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v12}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v12

    .line 1093
    .local v12, "traceEnabled":Z
    if-eqz v12, :cond_2

    .line 1094
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getSimplifiedLogger()Lorg/apache/sshd/common/util/logging/SimplifiedLog;

    move-result-object v13

    sget-object v14, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "encode("

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, ") packet #"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v4, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->seqo:J

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v13, v14, v4, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->dumpHex(Lorg/apache/sshd/common/util/logging/SimplifiedLog;Ljava/util/logging/Level;Ljava/lang/String;Lorg/apache/sshd/common/PropertyResolver;)V

    .line 1099
    :cond_2
    iget-object v4, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outCompression:Lorg/apache/sshd/common/compression/Compression;

    const/4 v5, 0x6

    if-eqz v4, :cond_4

    .line 1100
    invoke-interface {v4}, Lorg/apache/sshd/common/compression/Compression;->isCompressionExecuted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1101
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->isAuthenticated()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outCompression:Lorg/apache/sshd/common/compression/Compression;

    invoke-interface {v4}, Lorg/apache/sshd/common/compression/Compression;->isDelayed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1102
    :cond_3
    move v4, v0

    .line 1103
    .local v4, "oldLen":I
    iget-object v9, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outCompression:Lorg/apache/sshd/common/compression/Compression;

    invoke-interface {v9, v2}, Lorg/apache/sshd/common/compression/Compression;->compress(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 1104
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v9

    move v0, v9

    .line 1105
    if-eqz v12, :cond_4

    .line 1106
    iget-object v9, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v13, "encode({}) packet #{} command={}[{}] compressed {} -> {}"

    new-array v14, v5, [Ljava/lang/Object;

    aput-object v1, v14, v8

    move-object/from16 p1, v9

    iget-wide v8, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->seqo:J

    .line 1107
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v14, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v14, v9

    invoke-static {v3}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v14, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v14, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v14, v9

    .line 1106
    move-object/from16 v8, p1

    invoke-interface {v8, v13, v14}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1112
    .end local v4    # "oldLen":I
    :cond_4
    iget-object v4, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outMac:Lorg/apache/sshd/common/mac/Mac;

    if-nez v4, :cond_5

    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    invoke-interface {v4}, Lorg/apache/sshd/common/mac/Mac;->isEncryptThenMac()Z

    move-result v4

    .line 1113
    .local v4, "etmMode":Z
    :goto_1
    iget v8, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outCipherSize:I

    invoke-static {v0, v8, v4}, Lorg/apache/sshd/common/io/PacketWriter;->calculatePadLength(IIZ)I

    move-result v8

    .line 1114
    .local v8, "pad":I
    move v9, v0

    .line 1115
    .local v9, "oldLen":I
    add-int v13, v0, v8

    add-int/2addr v13, v6

    .line 1117
    .end local v0    # "len":I
    .local v13, "len":I
    if-eqz v12, :cond_6

    .line 1118
    iget-object v0, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v14, "encode({}) packet #{} command={}[{}] len={}, pad={}, mac={}"

    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    move/from16 v17, v8

    .end local v8    # "pad":I
    .local v17, "pad":I
    iget-wide v7, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->seqo:J

    .line 1119
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v15, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v15, v7

    invoke-static {v3}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v15, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v15, v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v15, v7

    iget-object v6, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outMac:Lorg/apache/sshd/common/mac/Mac;

    aput-object v6, v15, v5

    .line 1118
    invoke-interface {v0, v14, v15}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1117
    .end local v17    # "pad":I
    .restart local v8    # "pad":I
    :cond_6
    move/from16 v17, v8

    .line 1123
    .end local v8    # "pad":I
    .restart local v17    # "pad":I
    :goto_2
    invoke-virtual {v2, v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 1124
    int-to-long v5, v13

    invoke-virtual {v2, v5, v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 1125
    move/from16 v5, v17

    .end local v17    # "pad":I
    .local v5, "pad":I
    int-to-byte v0, v5

    invoke-virtual {v2, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 1127
    add-int v0, v11, v9

    const/4 v6, 0x5

    add-int/2addr v0, v6

    add-int/2addr v0, v5

    invoke-virtual {v2, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 1128
    iget-object v6, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->random:Lorg/apache/sshd/common/random/Random;

    monitor-enter v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1129
    :try_start_2
    iget-object v0, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->random:Lorg/apache/sshd/common/random/Random;

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-interface {v0, v7, v8, v5}, Lorg/apache/sshd/common/random/Random;->fill([BII)V

    .line 1130
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1132
    if-eqz v4, :cond_7

    .line 1134
    add-int/lit8 v0, v11, 0x4

    :try_start_3
    invoke-virtual {v1, v2, v0, v13}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->encryptOutgoingBuffer(Lorg/apache/sshd/common/util/buffer/Buffer;II)V

    .line 1135
    invoke-virtual {v1, v2, v11, v13}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->appendOutgoingMac(Lorg/apache/sshd/common/util/buffer/Buffer;II)V

    goto :goto_3

    .line 1137
    :cond_7
    invoke-virtual {v1, v2, v11, v13}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->appendOutgoingMac(Lorg/apache/sshd/common/util/buffer/Buffer;II)V

    .line 1138
    add-int/lit8 v0, v13, 0x4

    invoke-virtual {v1, v2, v11, v0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->encryptOutgoingBuffer(Lorg/apache/sshd/common/util/buffer/Buffer;II)V

    .line 1142
    :goto_3
    iget-wide v6, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->seqo:J

    const-wide/16 v14, 0x1

    add-long/2addr v6, v14

    const-wide v14, 0xffffffffL

    and-long/2addr v6, v14

    iput-wide v6, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->seqo:J

    .line 1145
    iget-object v0, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outPacketsCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1146
    iget-object v0, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outBytesCount:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v6, v13

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1149
    invoke-virtual {v2, v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1150
    return-object v2

    .line 1130
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1153
    .end local v3    # "cmd":I
    .end local v4    # "etmMode":Z
    .end local v5    # "pad":I
    .end local v9    # "oldLen":I
    .end local v10    # "curPos":I
    .end local v11    # "off":I
    .end local v12    # "traceEnabled":Z
    .end local v13    # "len":I
    .restart local v2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1151
    :catch_1
    move-exception v0

    goto :goto_5

    .line 1153
    .end local v2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :catch_2
    move-exception v0

    .line 1154
    .end local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :goto_4
    new-instance v3, Lorg/apache/sshd/common/SshException;

    invoke-direct {v3, v0}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1151
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :catch_3
    move-exception v0

    .line 1152
    .end local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :goto_5
    throw v0
.end method

.method protected encryptOutgoingBuffer(Lorg/apache/sshd/common/util/buffer/Buffer;II)V
    .locals 4
    .param p1, "buf"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1175
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outCipher:Lorg/apache/sshd/common/cipher/Cipher;

    if-nez v0, :cond_0

    .line 1176
    return-void

    .line 1178
    :cond_0
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lorg/apache/sshd/common/cipher/Cipher;->update([BII)V

    .line 1180
    iget v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outCipherSize:I

    div-int v0, p3, v0

    .line 1181
    .local v0, "blocksCount":I
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outBlocksCount:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1182
    return-void
.end method

.method public getChannelListenerProxy()Lorg/apache/sshd/common/channel/ChannelListener;
    .locals 1

    .line 1885
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->channelListenerProxy:Lorg/apache/sshd/common/channel/ChannelListener;

    return-object v0
.end method

.method public getCipherInformation(Z)Lorg/apache/sshd/common/cipher/CipherInformation;
    .locals 1
    .param p1, "incoming"    # Z

    .line 311
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCipher:Lorg/apache/sshd/common/cipher/Cipher;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outCipher:Lorg/apache/sshd/common/cipher/Cipher;

    :goto_0
    return-object v0
.end method

.method protected getClientKexData()[B
    .locals 2

    .line 2132
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 2133
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->clientKexData:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_0
    monitor-exit v0

    return-object v1

    .line 2134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getClientKexProposals()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->unmodClientProposal:Ljava/util/Map;

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressionInformation(Z)Lorg/apache/sshd/common/compression/CompressionInformation;
    .locals 1
    .param p1, "incoming"    # Z

    .line 316
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCompression:Lorg/apache/sshd/common/compression/Compression;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outCompression:Lorg/apache/sshd/common/compression/Compression;

    :goto_0
    return-object v0
.end method

.method protected getInnerCloseable()Lorg/apache/sshd/common/Closeable;
    .locals 3

    .line 778
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 779
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->parallel(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 780
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getIoSession()Lorg/apache/sshd/common/io/IoSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->close(Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 781
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    .line 782
    .local v0, "closer":Lorg/apache/sshd/common/Closeable;
    new-instance v1, Lorg/apache/sshd/common/session/helpers/AbstractSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/session/helpers/AbstractSession;)V

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/Closeable;->addCloseFutureListener(Lorg/apache/sshd/common/future/SshFutureListener;)V

    .line 783
    return-object v0
.end method

.method public getKex()Lorg/apache/sshd/common/kex/KeyExchange;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kex:Lorg/apache/sshd/common/kex/KeyExchange;

    return-object v0
.end method

.method public getKexNegotiationResult()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->unmodNegotiationResult:Ljava/util/Map;

    return-object v0
.end method

.method public getKexState()Lorg/apache/sshd/common/kex/KexState;
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/kex/KexState;

    return-object v0
.end method

.method public getMacInformation(Z)Lorg/apache/sshd/common/mac/MacInformation;
    .locals 1
    .param p1, "incoming"    # Z

    .line 321
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inMac:Lorg/apache/sshd/common/mac/Mac;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outMac:Lorg/apache/sshd/common/mac/Mac;

    :goto_0
    return-object v0
.end method

.method public getNegotiatedKexParameter(Lorg/apache/sshd/common/kex/KexProposalOption;)Ljava/lang/String;
    .locals 2
    .param p1, "paramType"    # Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 300
    if-nez p1, :cond_0

    .line 301
    const/4 v0, 0x0

    return-object v0

    .line 304
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->negotiationResult:Ljava/util/Map;

    monitor-enter v0

    .line 305
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->negotiationResult:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 306
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPortForwardingEventListenerProxy()Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .locals 1

    .line 1890
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->tunnelListenerProxy:Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    return-object v0
.end method

.method protected getServerKexData()[B
    .locals 2

    .line 2145
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 2146
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->serverKexData:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_0
    monitor-exit v0

    return-object v1

    .line 2147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServerKexProposals()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->unmodServerProposal:Ljava/util/Map;

    return-object v0
.end method

.method public getServerVersion()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->serverVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getService(Ljava/lang/Class;)Lorg/apache/sshd/common/Service;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/sshd/common/Service;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 826
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getServices()Ljava/util/List;

    move-result-object v0

    .line 827
    .local v0, "registeredServices":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/Service;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    .line 828
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 827
    const-string v3, "No registered services to look for %s"

    invoke-static {v1, v3, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 830
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/Service;

    .line 831
    .local v2, "s":Lorg/apache/sshd/common/Service;
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 832
    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/Service;

    return-object v1

    .line 834
    .end local v2    # "s":Lorg/apache/sshd/common/Service;
    :cond_0
    goto :goto_0

    .line 836
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to access unknown service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/Service;",
            ">;"
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->currentService:Lorg/apache/sshd/common/Service;

    if-eqz v0, :cond_0

    .line 820
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 821
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 819
    :goto_0
    return-object v0
.end method

.method public getSessionId()[B
    .locals 1

    .line 290
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sessionId:[B

    invoke-static {v0}, Lorg/apache/sshd/common/util/NumberUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sessionId:[B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sessionId:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0
.end method

.method public getSessionListenerProxy()Lorg/apache/sshd/common/session/SessionListener;
    .locals 1

    .line 1842
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sessionListenerProxy:Lorg/apache/sshd/common/session/SessionListener;

    return-object v0
.end method

.method protected handleFirstKexPacketFollows(ILorg/apache/sshd/common/util/buffer/Buffer;Z)Z
    .locals 8
    .param p1, "cmd"    # I
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p3, "followFlag"    # Z

    .line 488
    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 489
    return v0

    .line 498
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    .line 499
    .local v1, "debugEnabled":Z
    sget-object v2, Lorg/apache/sshd/common/kex/KexProposalOption;->FIRST_KEX_PACKET_GUESS_MATCHES:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 500
    .local v3, "option":Lorg/apache/sshd/common/kex/KexProposalOption;
    invoke-virtual {p0, v3}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->comparePreferredKexProposalOption(Lorg/apache/sshd/common/kex/KexProposalOption;)Ljava/util/Map$Entry;

    move-result-object v4

    .line 501
    .local v4, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 502
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 503
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v2

    .line 504
    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v0

    .line 503
    const-string v0, "handleFirstKexPacketFollows({})[{}] 1st follow KEX packet {} option mismatch: client={}, server={}"

    invoke-interface {v5, v0, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    :cond_1
    return v2

    .line 508
    .end local v3    # "option":Lorg/apache/sshd/common/kex/KexProposalOption;
    .end local v4    # "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    goto :goto_0

    .line 510
    :cond_3
    return v0
.end method

.method protected handleKexExtension(ILorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 590
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getKexExtensionHandler()Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;

    move-result-object v0

    .line 591
    .local v0, "extHandler":Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v1

    .line 592
    .local v1, "startPos":I
    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p2}, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;->handleKexExtensionsMessage(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/buffer/Buffer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 593
    return-void

    .line 596
    :cond_0
    invoke-virtual {p2, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V

    .line 597
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->notImplemented(ILorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 598
    return-void
.end method

.method protected handleKexInit(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 2
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "handleKexInit({}) SSH_MSG_KEXINIT"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 664
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->receiveKexInit(Lorg/apache/sshd/common/util/buffer/Buffer;)[B

    .line 665
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->doKexNegotiation()V

    .line 666
    return-void
.end method

.method protected handleKexMessage(ILorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 6
    .param p1, "cmd"    # I
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 570
    sget-object v0, Lorg/apache/sshd/common/kex/KexState;->RUN:Lorg/apache/sshd/common/kex/KexState;

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->validateKexState(ILorg/apache/sshd/common/kex/KexState;)V

    .line 572
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 573
    .local v0, "debugEnabled":Z
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kex:Lorg/apache/sshd/common/kex/KeyExchange;

    invoke-interface {v1, p1, p2}, Lorg/apache/sshd/common/kex/KeyExchange;->next(ILorg/apache/sshd/common/util/buffer/Buffer;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v1, :cond_1

    .line 574
    if-eqz v0, :cond_0

    .line 575
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kex:Lorg/apache/sshd/common/kex/KeyExchange;

    .line 576
    invoke-interface {v4}, Lorg/apache/sshd/common/kex/KeyExchange;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    .line 575
    const-string v2, "handleKexMessage({})[{}] KEX processing complete after cmd={}"

    invoke-interface {v1, v2, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->checkKeys()V

    .line 579
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sendNewKeys()Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 580
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/sshd/common/kex/KexState;->KEYS:Lorg/apache/sshd/common/kex/KexState;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 582
    :cond_1
    if-eqz v0, :cond_2

    .line 583
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kex:Lorg/apache/sshd/common/kex/KeyExchange;

    .line 584
    invoke-interface {v4}, Lorg/apache/sshd/common/kex/KeyExchange;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    .line 583
    const-string v2, "handleKexMessage({})[{}] more KEX packets expected after cmd={}"

    invoke-interface {v1, v2, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    :cond_2
    :goto_0
    return-void
.end method

.method protected handleMessage(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 3
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 391
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sessionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 392
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->doHandleMessage(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 393
    monitor-exit v0

    .line 411
    nop

    .line 412
    return-void

    .line 393
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 394
    .restart local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :catchall_1
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexFutureHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;

    .line 397
    .local v1, "kexFuture":Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;
    if-eqz v1, :cond_1

    .line 398
    monitor-enter v1

    .line 399
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 400
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 401
    invoke-virtual {v1, v0}, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;->setValue(Ljava/lang/Object;)V

    .line 403
    .end local v2    # "value":Ljava/lang/Object;
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    .line 406
    :cond_1
    :goto_0
    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_2

    .line 407
    move-object v2, v0

    check-cast v2, Ljava/lang/Exception;

    throw v2

    .line 409
    :cond_2
    new-instance v2, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v2, v0}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected handleNewCompression(ILorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 601
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getKexExtensionHandler()Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;

    move-result-object v0

    .line 602
    .local v0, "extHandler":Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v1

    .line 603
    .local v1, "startPos":I
    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p2}, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;->handleKexCompressionMessage(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/buffer/Buffer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    return-void

    .line 607
    :cond_0
    invoke-virtual {p2, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V

    .line 608
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->notImplemented(ILorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 609
    return-void
.end method

.method protected handleNewKeys(ILorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 8
    .param p1, "cmd"    # I
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 700
    .local v0, "debugEnabled":Z
    if-eqz v0, :cond_0

    .line 701
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v2, "handleNewKeys({}) SSH_MSG_NEWKEYS command={}"

    .line 702
    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v3

    .line 701
    invoke-interface {v1, v2, p0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 704
    :cond_0
    sget-object v1, Lorg/apache/sshd/common/kex/KexState;->KEYS:Lorg/apache/sshd/common/kex/KexState;

    invoke-virtual {p0, p1, v1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->validateKexState(ILorg/apache/sshd/common/kex/KexState;)V

    .line 705
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->receiveNewKeys()V

    .line 707
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexFutureHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;

    .line 708
    .local v1, "kexFuture":Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;
    if-eqz v1, :cond_2

    .line 709
    monitor-enter v1

    .line 710
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 711
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 712
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;->setValue(Ljava/lang/Object;)V

    .line 714
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 717
    :cond_2
    :goto_0
    sget-object v2, Lorg/apache/sshd/common/session/SessionListener$Event;->KeyEstablished:Lorg/apache/sshd/common/session/SessionListener$Event;

    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->signalSessionEvent(Lorg/apache/sshd/common/session/SessionListener$Event;)V

    .line 720
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->pendingPackets:Ljava/util/Queue;

    monitor-enter v2

    .line 721
    :try_start_1
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->pendingPackets:Ljava/util/Queue;

    invoke-virtual {p0, v3}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sendPendingPackets(Ljava/util/Queue;)Ljava/util/List;

    move-result-object v3

    .line 722
    .local v3, "pendingWrites":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<+Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/io/IoWriteFuture;>;Lorg/apache/sshd/common/io/IoWriteFuture;>;>;"
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kex:Lorg/apache/sshd/common/kex/KeyExchange;

    .line 723
    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v5, Lorg/apache/sshd/common/kex/KexState;->DONE:Lorg/apache/sshd/common/kex/KexState;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 724
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 726
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    .line 727
    .local v4, "pendingCount":I
    if-lez v4, :cond_5

    .line 728
    if-eqz v0, :cond_3

    .line 729
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v5, "handleNewKeys({}) sent {} pending packets"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, p0, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 732
    :cond_3
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 733
    .local v5, "pe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/io/IoWriteFuture;>;Lorg/apache/sshd/common/io/IoWriteFuture;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/sshd/common/future/SshFutureListener;

    .line 734
    .local v6, "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/io/IoWriteFuture;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 735
    .local v7, "future":Lorg/apache/sshd/common/io/IoWriteFuture;
    if-eqz v6, :cond_4

    .line 736
    invoke-interface {v7, v6}, Lorg/apache/sshd/common/io/IoWriteFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 738
    .end local v5    # "pe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/io/IoWriteFuture;>;Lorg/apache/sshd/common/io/IoWriteFuture;>;"
    .end local v6    # "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/io/IoWriteFuture;>;"
    .end local v7    # "future":Lorg/apache/sshd/common/io/IoWriteFuture;
    :cond_4
    goto :goto_1

    .line 741
    :cond_5
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->futureLock:Ljava/lang/Object;

    monitor-enter v5

    .line 742
    :try_start_2
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->futureLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 743
    monitor-exit v5

    .line 744
    return-void

    .line 743
    :catchall_1
    move-exception v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 724
    .end local v3    # "pendingWrites":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<+Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/io/IoWriteFuture;>;Lorg/apache/sshd/common/io/IoWriteFuture;>;>;"
    .end local v4    # "pendingCount":I
    :catchall_2
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v3
.end method

.method protected handleServiceAccept(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 654
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "handleServiceAccept({}) SSH_MSG_SERVICE_ACCEPT service={}"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 657
    :cond_0
    const/4 v0, 0x6

    sget-object v1, Lorg/apache/sshd/common/kex/KexState;->DONE:Lorg/apache/sshd/common/kex/KexState;

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->validateKexState(ILorg/apache/sshd/common/kex/KexState;)V

    .line 658
    return-void
.end method

.method protected handleServiceAccept(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 650
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->handleServiceAccept(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 651
    return-void
.end method

.method protected handleServiceRequest(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 612
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "serviceName":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->handleServiceRequest(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Z

    .line 614
    return-void
.end method

.method protected handleServiceRequest(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Z
    .locals 7
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 618
    .local v0, "debugEnabled":Z
    if-eqz v0, :cond_0

    .line 619
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v2, "handleServiceRequest({}) SSH_MSG_SERVICE_REQUEST \'{}\'"

    invoke-interface {v1, v2, p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 621
    :cond_0
    const/4 v1, 0x5

    sget-object v2, Lorg/apache/sshd/common/kex/KexState;->DONE:Lorg/apache/sshd/common/kex/KexState;

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->validateKexState(ILorg/apache/sshd/common/kex/KexState;)V

    .line 624
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->startService(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    nop

    .line 638
    if-eqz v0, :cond_1

    .line 639
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v3, "handleServiceRequest({}) Accepted service {}"

    invoke-interface {v2, v3, p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 642
    :cond_1
    const/4 v2, 0x6

    .line 643
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    .line 642
    invoke-virtual {p0, v2, v3}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v2

    .line 644
    .local v2, "response":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v2, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 646
    return v1

    .line 625
    .end local v2    # "response":Lorg/apache/sshd/common/util/buffer/Buffer;
    :catchall_0
    move-exception v2

    .line 626
    .local v2, "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 627
    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object p1, v5, v1

    const/4 v1, 0x2

    .line 628
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 627
    const-string v1, "handleServiceRequest({}) Service {} rejected: {} = {}"

    invoke-interface {v4, v1, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    :cond_2
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 632
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleServiceRequest("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rejection details"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 634
    :cond_3
    const/4 v1, 0x7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad service request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->disconnect(ILjava/lang/String;)V

    .line 635
    return v3
.end method

.method protected isRekeyBlocksCountExceeded()Z
    .locals 7

    .line 2064
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekeyBlocks:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 2065
    .local v0, "maxBlocks":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    .line 2066
    return v3

    .line 2069
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inBlocksCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v2, v4, v0

    const/4 v4, 0x1

    if-gtz v2, :cond_2

    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outBlocksCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    cmp-long v2, v5, v0

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    .line 2070
    .local v2, "rekey":Z
    :goto_1
    if-eqz v2, :cond_3

    .line 2071
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2072
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v3

    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inBlocksCount:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v3, v6, v4

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outBlocksCount:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v4, v6, v3

    const/4 v3, 0x3

    .line 2073
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v3

    .line 2072
    const-string v3, "isRekeyBlocksCountExceeded({}) re-keying: in={}, out={}, max={}"

    invoke-interface {v5, v3, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2077
    :cond_3
    return v2
.end method

.method protected isRekeyDataSizeExceeded()Z
    .locals 7

    .line 2048
    iget-wide v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekeyBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 2049
    return v1

    .line 2052
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inBytesCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekeyBytes:J

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outBytesCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekeyBytes:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 2053
    .local v0, "rekey":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 2054
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2055
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inBytesCount:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v1, v4, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outBytesCount:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v2, v4, v1

    const/4 v1, 0x3

    iget-wide v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekeyBytes:J

    .line 2056
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    .line 2055
    const-string v1, "isRekeyDataSizeExceeded({}) re-keying: in={}, out={}, max={}"

    invoke-interface {v3, v1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2060
    :cond_3
    return v0
.end method

.method protected isRekeyPacketCountsExceeded()Z
    .locals 7

    .line 2031
    iget-wide v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekyPackets:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 2032
    return v1

    .line 2035
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inPacketsCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekyPackets:J

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outPacketsCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2036
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekyPackets:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 2037
    .local v0, "rekey":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 2038
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2039
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inPacketsCount:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v1, v4, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outPacketsCount:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v2, v4, v1

    const/4 v1, 0x3

    iget-wide v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekyPackets:J

    .line 2040
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    .line 2039
    const-string v1, "isRekeyPacketCountsExceeded({}) re-keying: in={}, out={}, max={}"

    invoke-interface {v3, v1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2044
    :cond_3
    return v0
.end method

.method protected isRekeyRequired()Z
    .locals 3

    .line 1997
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->isClosing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2001
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/kex/KexState;

    .line 2002
    .local v0, "curState":Lorg/apache/sshd/common/kex/KexState;
    sget-object v2, Lorg/apache/sshd/common/kex/KexState;->DONE:Lorg/apache/sshd/common/kex/KexState;

    invoke-virtual {v2, v0}, Lorg/apache/sshd/common/kex/KexState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2003
    return v1

    .line 2006
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->isRekeyTimeIntervalExceeded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2007
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->isRekeyPacketCountsExceeded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2008
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->isRekeyBlocksCountExceeded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2009
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->isRekeyDataSizeExceeded()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 2006
    :cond_3
    return v1

    .line 1998
    .end local v0    # "curState":Lorg/apache/sshd/common/kex/KexState;
    :cond_4
    :goto_0
    return v1
.end method

.method protected isRekeyTimeIntervalExceeded()Z
    .locals 11

    .line 2013
    iget-wide v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekeyInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 2014
    return v1

    .line 2017
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2018
    .local v2, "now":J
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->lastKeyTimeValue:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 2019
    .local v4, "rekeyDiff":J
    iget-wide v6, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekeyInterval:J

    cmp-long v0, v4, v6

    const/4 v6, 0x1

    if-lez v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2020
    .local v0, "rekey":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 2021
    iget-object v7, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2022
    iget-object v7, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v1

    new-instance v1, Ljava/util/Date;

    iget-object v9, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->lastKeyTimeValue:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2023
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    invoke-direct {v1, v9, v10}, Ljava/util/Date;-><init>(J)V

    aput-object v1, v8, v6

    const/4 v1, 0x2

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    aput-object v6, v8, v1

    const/4 v1, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v1

    const/4 v1, 0x4

    iget-wide v9, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekeyInterval:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v1

    .line 2022
    const-string v1, "isRekeyTimeIntervalExceeded({}) re-keying: last={}, now={}, diff={}, max={}"

    invoke-interface {v7, v1, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2027
    :cond_2
    return v0
.end method

.method synthetic lambda$getInnerCloseable$0$org-apache-sshd-common-session-helpers-AbstractSession(Lorg/apache/sshd/common/future/CloseFuture;)V
    .locals 0
    .param p1, "future"    # Lorg/apache/sshd/common/future/CloseFuture;

    .line 782
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->clearAttributes()V

    return-void
.end method

.method public messageReceived(Lorg/apache/sshd/common/util/Readable;)V
    .locals 2
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decodeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    invoke-virtual {v1, p1}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->putBuffer(Lorg/apache/sshd/common/util/Readable;)V

    .line 341
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->clientVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->serverVersion:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 342
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->readIdentification(Lorg/apache/sshd/common/util/buffer/Buffer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    invoke-virtual {v1}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->compact()V

    .line 348
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decode()V

    .line 349
    monitor-exit v0

    .line 350
    return-void

    .line 345
    :cond_2
    monitor-exit v0

    return-void

    .line 349
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected negotiate()Ljava/util/Map;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1641
    move-object/from16 v9, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getClientKexProposals()Ljava/util/Map;

    move-result-object v10

    .line 1642
    .local v10, "c2sOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getServerKexProposals()Ljava/util/Map;

    move-result-object v11

    .line 1643
    .local v11, "s2cOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    invoke-virtual {v9, v10, v11}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->signalNegotiationStart(Ljava/util/Map;Ljava/util/Map;)V

    .line 1645
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v12, v0

    .line 1646
    .local v12, "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    .line 1648
    .local v13, "negotiatedGuess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, v9, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    move v14, v0

    .line 1649
    .local v14, "debugEnabled":Z
    iget-object v0, v9, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    move v15, v0

    .line 1650
    .local v15, "traceEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getSessionDisconnectHandler()Lorg/apache/sshd/common/session/SessionDisconnectHandler;

    move-result-object v0

    move-object/from16 v16, v0

    .line 1651
    .local v16, "discHandler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getKexExtensionHandler()Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;

    move-result-object v0

    move-object/from16 v17, v0

    .line 1652
    .local v17, "extHandler":Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
    sget-object v0, Lorg/apache/sshd/common/kex/KexProposalOption;->VALUES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_13

    const/16 v19, 0x2

    const/16 v20, 0x1

    const/16 v21, 0x0

    if-eqz v0, :cond_e

    :try_start_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/kex/KexProposalOption;

    move-object v7, v0

    .line 1653
    .local v7, "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 1654
    .local v6, "clientParamValue":Ljava/lang/String;
    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 1655
    .local v5, "serverParamValue":Ljava/lang/String;
    const/16 v0, 0x2c

    invoke-static {v6, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 1656
    .local v4, "c":[Ljava/lang/String;
    invoke-static {v5, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1664
    .local v3, "s":[Ljava/lang/String;
    array-length v0, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_a

    move/from16 v1, v21

    :goto_1
    if-ge v1, v0, :cond_3

    :try_start_2
    aget-object v2, v4, v1

    .line 1665
    .local v2, "ci":Ljava/lang/String;
    array-length v8, v3

    move/from16 v23, v0

    move/from16 v0, v21

    :goto_2
    if-ge v0, v8, :cond_1

    aget-object v24, v3, v0

    move-object/from16 v25, v24

    .line 1666
    .local v25, "si":Ljava/lang/String;
    move-object/from16 v24, v3

    move-object/from16 v3, v25

    .end local v25    # "si":Ljava/lang/String;
    .local v3, "si":Ljava/lang/String;
    .local v24, "s":[Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 1667
    invoke-interface {v12, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    goto :goto_3

    .line 1665
    .end local v3    # "si":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v24

    goto :goto_2

    .end local v24    # "s":[Ljava/lang/String;
    .local v3, "s":[Ljava/lang/String;
    :cond_1
    move-object/from16 v24, v3

    .line 1672
    .end local v3    # "s":[Ljava/lang/String;
    .restart local v24    # "s":[Ljava/lang/String;
    :goto_3
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    .line 1673
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1674
    goto :goto_5

    .line 1664
    .end local v0    # "value":Ljava/lang/String;
    .end local v2    # "ci":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v23

    move-object/from16 v3, v24

    goto :goto_1

    .line 1741
    .end local v4    # "c":[Ljava/lang/String;
    .end local v5    # "serverParamValue":Ljava/lang/String;
    .end local v6    # "clientParamValue":Ljava/lang/String;
    .end local v7    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    .end local v14    # "debugEnabled":Z
    .end local v15    # "traceEnabled":Z
    .end local v16    # "discHandler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    .end local v17    # "extHandler":Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
    .end local v24    # "s":[Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_4
    move-object v7, v12

    goto/16 :goto_12

    .line 1664
    .restart local v3    # "s":[Ljava/lang/String;
    .restart local v4    # "c":[Ljava/lang/String;
    .restart local v5    # "serverParamValue":Ljava/lang/String;
    .restart local v6    # "clientParamValue":Ljava/lang/String;
    .restart local v7    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    .restart local v14    # "debugEnabled":Z
    .restart local v15    # "traceEnabled":Z
    .restart local v16    # "discHandler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    .restart local v17    # "extHandler":Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
    :cond_3
    move-object/from16 v24, v3

    .line 1679
    .end local v3    # "s":[Ljava/lang/String;
    .restart local v24    # "s":[Ljava/lang/String;
    :goto_5
    :try_start_3
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_a

    move-object/from16 v23, v0

    .line 1680
    .local v23, "value":Ljava/lang/String;
    if-eqz v17, :cond_4

    .line 1681
    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object v3, v7

    move-object/from16 v25, v4

    .end local v4    # "c":[Ljava/lang/String;
    .local v25, "c":[Ljava/lang/String;
    move-object/from16 v4, v23

    move-object/from16 v26, v5

    .end local v5    # "serverParamValue":Ljava/lang/String;
    .local v26, "serverParamValue":Ljava/lang/String;
    move-object v5, v10

    move-object v8, v6

    .end local v6    # "clientParamValue":Ljava/lang/String;
    .local v8, "clientParamValue":Ljava/lang/String;
    move-object/from16 v27, v7

    .end local v7    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    .local v27, "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    move-object v7, v11

    move-object/from16 v28, v12

    move/from16 v22, v14

    const/4 v14, 0x3

    move-object v12, v8

    .end local v8    # "clientParamValue":Ljava/lang/String;
    .end local v14    # "debugEnabled":Z
    .local v12, "clientParamValue":Ljava/lang/String;
    .local v22, "debugEnabled":Z
    .local v28, "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    move-object/from16 v8, v26

    :try_start_4
    invoke-interface/range {v1 .. v8}, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;->handleKexExtensionNegotiation(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_7

    .line 1741
    .end local v12    # "clientParamValue":Ljava/lang/String;
    .end local v15    # "traceEnabled":Z
    .end local v16    # "discHandler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    .end local v17    # "extHandler":Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
    .end local v22    # "debugEnabled":Z
    .end local v23    # "value":Ljava/lang/String;
    .end local v24    # "s":[Ljava/lang/String;
    .end local v25    # "c":[Ljava/lang/String;
    .end local v26    # "serverParamValue":Ljava/lang/String;
    .end local v27    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    :goto_6
    move-object/from16 v7, v28

    goto/16 :goto_12

    .line 1680
    .end local v28    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .restart local v4    # "c":[Ljava/lang/String;
    .restart local v5    # "serverParamValue":Ljava/lang/String;
    .restart local v6    # "clientParamValue":Ljava/lang/String;
    .restart local v7    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    .local v12, "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .restart local v14    # "debugEnabled":Z
    .restart local v15    # "traceEnabled":Z
    .restart local v16    # "discHandler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    .restart local v17    # "extHandler":Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
    .restart local v23    # "value":Ljava/lang/String;
    .restart local v24    # "s":[Ljava/lang/String;
    :cond_4
    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move-object/from16 v28, v12

    move/from16 v22, v14

    const/4 v14, 0x3

    move-object v12, v6

    .line 1685
    .end local v4    # "c":[Ljava/lang/String;
    .end local v5    # "serverParamValue":Ljava/lang/String;
    .end local v6    # "clientParamValue":Ljava/lang/String;
    .end local v7    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    .end local v14    # "debugEnabled":Z
    .local v12, "clientParamValue":Ljava/lang/String;
    .restart local v22    # "debugEnabled":Z
    .restart local v25    # "c":[Ljava/lang/String;
    .restart local v26    # "serverParamValue":Ljava/lang/String;
    .restart local v27    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    .restart local v28    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    :goto_7
    const/4 v7, 0x4

    if-eqz v23, :cond_6

    .line 1686
    if-eqz v15, :cond_5

    .line 1687
    iget-object v0, v9, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "negotiate({})[{}] guess={} (client={} / server={})"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v9, v2, v21

    .line 1688
    invoke-virtual/range {v27 .. v27}, Lorg/apache/sshd/common/kex/KexProposalOption;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v20

    aput-object v23, v2, v19

    aput-object v12, v2, v14

    move-object/from16 v8, v26

    .end local v26    # "serverParamValue":Ljava/lang/String;
    .local v8, "serverParamValue":Ljava/lang/String;
    aput-object v8, v2, v7

    .line 1687
    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3

    move/from16 v14, v22

    move-object/from16 v12, v28

    goto/16 :goto_0

    .line 1686
    .end local v8    # "serverParamValue":Ljava/lang/String;
    .restart local v26    # "serverParamValue":Ljava/lang/String;
    :cond_5
    move-object/from16 v8, v26

    .end local v26    # "serverParamValue":Ljava/lang/String;
    .restart local v8    # "serverParamValue":Ljava/lang/String;
    move/from16 v14, v22

    move-object/from16 v12, v28

    goto/16 :goto_0

    .line 1694
    .end local v8    # "serverParamValue":Ljava/lang/String;
    .restart local v26    # "serverParamValue":Ljava/lang/String;
    :cond_6
    move-object/from16 v8, v26

    .end local v26    # "serverParamValue":Ljava/lang/String;
    .restart local v8    # "serverParamValue":Ljava/lang/String;
    if-eqz v16, :cond_9

    .line 1695
    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v3, v10

    move-object v4, v11

    move-object v5, v13

    move-object/from16 v6, v27

    :try_start_5
    invoke-interface/range {v1 .. v6}, Lorg/apache/sshd/common/session/SessionDisconnectHandler;->handleKexDisconnectReason(Lorg/apache/sshd/common/session/Session;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lorg/apache/sshd/common/kex/KexProposalOption;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1697
    if-eqz v22, :cond_7

    .line 1698
    iget-object v0, v9, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "negotiate({}) ignore missing value for KEX option={}"
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v2, v27

    .end local v27    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    .local v2, "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    :try_start_6
    invoke-interface {v0, v1, v9, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    .line 1702
    :catch_6
    move-exception v0

    goto :goto_a

    :catch_7
    move-exception v0

    goto :goto_a

    .line 1697
    .end local v2    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    .restart local v27    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    :cond_7
    move-object/from16 v2, v27

    .line 1700
    .end local v27    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    .restart local v2    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    :goto_8
    move/from16 v14, v22

    move-object/from16 v12, v28

    goto/16 :goto_0

    .line 1695
    .end local v2    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    .restart local v27    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    :cond_8
    move-object/from16 v2, v27

    .end local v27    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    .restart local v2    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    goto :goto_b

    .line 1702
    .end local v2    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    .restart local v27    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    :catch_8
    move-exception v0

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    move-object/from16 v2, v27

    .line 1704
    .end local v27    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    :goto_a
    :try_start_7
    iget-object v1, v9, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v3, "negotiate({}) failed ({}) to invoke disconnect handler due to mismatched KEX option={}: {}"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v9, v4, v21

    .line 1705
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v20

    aput-object v2, v4, v19

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v14

    .line 1704
    invoke-interface {v1, v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1706
    if-eqz v22, :cond_a

    .line 1707
    iget-object v1, v9, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "negotiate("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") handler invocation exception details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 1694
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    .restart local v27    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    :cond_9
    move-object/from16 v2, v27

    .line 1709
    .end local v27    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    .restart local v2    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    :goto_b
    nop

    .line 1711
    :cond_a
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to negotiate key exchange for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/apache/sshd/common/kex/KexProposalOption;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / server: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1714
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lorg/apache/sshd/common/kex/KexProposalOption;->S2CLANG:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-virtual {v1, v2}, Lorg/apache/sshd/common/kex/KexProposalOption;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lorg/apache/sshd/common/kex/KexProposalOption;->C2SLANG:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-virtual {v1, v2}, Lorg/apache/sshd/common/kex/KexProposalOption;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_d

    .line 1719
    :cond_b
    new-instance v1, Lorg/apache/sshd/common/SshException;

    invoke-direct {v1, v14, v0}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    .end local v10    # "c2sOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .end local v11    # "s2cOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .end local v13    # "negotiatedGuess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .end local v28    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    throw v1

    .line 1715
    .restart local v10    # "c2sOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .restart local v11    # "s2cOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .restart local v13    # "negotiatedGuess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .restart local v28    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    :cond_c
    :goto_d
    if-eqz v15, :cond_d

    .line 1716
    iget-object v1, v9, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v3, "negotiate({}) {}"

    invoke-interface {v1, v3, v9, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_3

    .line 1721
    .end local v0    # "message":Ljava/lang/String;
    .end local v2    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    .end local v8    # "serverParamValue":Ljava/lang/String;
    .end local v12    # "clientParamValue":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/String;
    .end local v24    # "s":[Ljava/lang/String;
    .end local v25    # "c":[Ljava/lang/String;
    :cond_d
    move/from16 v14, v22

    move-object/from16 v12, v28

    goto/16 :goto_0

    .line 1741
    .end local v15    # "traceEnabled":Z
    .end local v16    # "discHandler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    .end local v17    # "extHandler":Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
    .end local v22    # "debugEnabled":Z
    .end local v28    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .local v12, "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    :catch_a
    move-exception v0

    goto :goto_e

    :catch_b
    move-exception v0

    goto :goto_e

    :catch_c
    move-exception v0

    :goto_e
    move-object v7, v12

    .end local v12    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .restart local v28    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    goto/16 :goto_12

    .line 1729
    .end local v28    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .restart local v12    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .restart local v14    # "debugEnabled":Z
    .restart local v15    # "traceEnabled":Z
    .restart local v16    # "discHandler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    .restart local v17    # "extHandler":Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
    :cond_e
    move-object/from16 v28, v12

    move/from16 v22, v14

    const/4 v14, 0x3

    .end local v12    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .end local v14    # "debugEnabled":Z
    .restart local v22    # "debugEnabled":Z
    .restart local v28    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    :try_start_8
    sget-object v0, Lorg/apache/sshd/common/kex/KexProposalOption;->ALGORITHMS:Lorg/apache/sshd/common/kex/KexProposalOption;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_10

    move-object/from16 v7, v28

    .end local v28    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .local v7, "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    :try_start_9
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1730
    .local v0, "kexOption":Ljava/lang/String;
    sget-object v1, Lorg/apache/sshd/common/kex/extension/KexExtensions;->IS_KEX_EXTENSION_SIGNAL:Ljava/util/function/Predicate;

    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1731
    if-eqz v16, :cond_f

    sget-object v6, Lorg/apache/sshd/common/kex/KexProposalOption;->ALGORITHMS:Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 1732
    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v3, v10

    move-object v4, v11

    move-object v5, v13

    invoke-interface/range {v1 .. v6}, Lorg/apache/sshd/common/session/SessionDisconnectHandler;->handleKexDisconnectReason(Lorg/apache/sshd/common/session/Session;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lorg/apache/sshd/common/kex/KexProposalOption;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1734
    if-eqz v22, :cond_10

    .line 1735
    iget-object v1, v9, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v2, "negotiate({}) ignore violating {} KEX option={}"

    new-array v3, v14, [Ljava/lang/Object;

    aput-object v9, v3, v21

    sget-object v4, Lorg/apache/sshd/common/kex/KexProposalOption;->ALGORITHMS:Lorg/apache/sshd/common/kex/KexProposalOption;

    aput-object v4, v3, v20

    aput-object v0, v3, v19

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 1738
    :cond_f
    new-instance v1, Lorg/apache/sshd/common/SshException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal KEX option negotiated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v14, v2}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    .end local v7    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .end local v10    # "c2sOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .end local v11    # "s2cOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .end local v13    # "negotiatedGuess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_d

    .line 1744
    .end local v0    # "kexOption":Ljava/lang/String;
    .end local v15    # "traceEnabled":Z
    .end local v16    # "discHandler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    .end local v17    # "extHandler":Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
    .end local v22    # "debugEnabled":Z
    .restart local v7    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .restart local v10    # "c2sOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .restart local v11    # "s2cOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .restart local v13    # "negotiatedGuess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    :cond_10
    :goto_f
    nop

    .line 1746
    const/4 v0, 0x0

    invoke-virtual {v9, v10, v11, v13, v0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->signalNegotiationEnd(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 1747
    invoke-virtual {v9, v7}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->setNegotiationResult(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1741
    :catch_d
    move-exception v0

    goto :goto_12

    :catch_e
    move-exception v0

    goto :goto_12

    :catch_f
    move-exception v0

    goto :goto_12

    .end local v7    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .restart local v28    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    :catch_10
    move-exception v0

    goto :goto_10

    :catch_11
    move-exception v0

    goto :goto_10

    :catch_12
    move-exception v0

    :goto_10
    move-object/from16 v7, v28

    .end local v28    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .restart local v7    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    goto :goto_12

    .end local v7    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .restart local v12    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    :catch_13
    move-exception v0

    goto :goto_11

    :catch_14
    move-exception v0

    goto :goto_11

    :catch_15
    move-exception v0

    :goto_11
    move-object v7, v12

    .line 1742
    .end local v12    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v7    # "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    :goto_12
    invoke-virtual {v9, v10, v11, v13, v0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->signalNegotiationEnd(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 1743
    throw v0
.end method

.method protected notImplemented(ILorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 5
    .param p1, "cmd"    # I
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1624
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->resolveReservedSessionMessagesHandler()Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;

    move-result-object v0

    .line 1625
    .local v0, "handler":Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;
    invoke-interface {v0, p0, p1, p2}, Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;->handleUnimplementedMessage(Lorg/apache/sshd/common/session/Session;ILorg/apache/sshd/common/util/buffer/Buffer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1626
    const/4 v1, 0x0

    return-object v1

    .line 1629
    :cond_0
    iget-wide v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->seqi:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sendNotImplemented(J)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v1

    return-object v1
.end method

.method protected preClose()V
    .locals 4

    .line 788
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexFutureHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;

    .line 789
    .local v0, "kexFuture":Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;
    if-eqz v0, :cond_1

    .line 791
    monitor-enter v0

    .line 792
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 793
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 794
    new-instance v2, Lorg/apache/sshd/common/SshException;

    const-string v3, "Session closing while KEX in progress"

    invoke-direct {v2, v3}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;->setValue(Ljava/lang/Object;)V

    .line 796
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 800
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestResult:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 801
    :try_start_1
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestResult:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lorg/apache/sshd/common/util/GenericUtils;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 802
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 803
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 807
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->signalSessionClosed()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 810
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sessionListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 811
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->channelListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 812
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->tunnelListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 813
    nop

    .line 815
    invoke-super {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->preClose()V

    .line 816
    return-void

    .line 810
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sessionListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 811
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->channelListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 812
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->tunnelListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 813
    throw v1

    .line 803
    :catchall_2
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2
.end method

.method public prepareBuffer(BLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 1
    .param p1, "cmd"    # B
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 1031
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0, p2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->validateTargetBuffer(ILorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object p2

    .line 1032
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V

    .line 1033
    invoke-virtual {p2, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 1034
    invoke-virtual {p2, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 1035
    return-object p2
.end method

.method public reExchangeKeys()Lorg/apache/sshd/common/future/KeyExchangeFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1934
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestNewKeysExchange()Lorg/apache/sshd/common/future/KeyExchangeFuture;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1942
    nop

    .line 1944
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexFutureHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1945
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1944
    const-string v2, "No current KEX future on state=%s"

    invoke-static {v0, v2, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/future/KeyExchangeFuture;

    return-object v0

    .line 1935
    :catch_0
    move-exception v0

    .line 1936
    .local v0, "e":Ljava/security/GeneralSecurityException;
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1937
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reExchangeKeys("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") security exception details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1939
    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1940
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to generate keys for exchange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1941
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 1939
    invoke-static {v1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->initializeExceptionCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/net/ProtocolException;

    throw v1
.end method

.method protected abstract readIdentification(Lorg/apache/sshd/common/util/buffer/Buffer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract receiveKexInit(Ljava/util/Map;[B)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected receiveKexInit(Lorg/apache/sshd/common/util/buffer/Buffer;)[B
    .locals 7
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2195
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2198
    .local v0, "proposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 2199
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->receiveKexInit(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/util/Map;)[B

    move-result-object v2

    .line 2200
    .local v2, "seed":[B
    invoke-virtual {p0, v0, v2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->receiveKexInit(Ljava/util/Map;[B)V

    .line 2201
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2203
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2204
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v3, "receiveKexInit({}) proposal={} seed: {}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3a

    .line 2205
    invoke-static {v6, v2}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex(C[B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2204
    invoke-interface {v1, v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2208
    :cond_0
    return-object v2

    .line 2201
    .end local v2    # "seed":[B
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected receiveKexInit(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/util/Map;)[B
    .locals 17
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1403
    .local p2, "proposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v2

    .line 1404
    .local v2, "d":[B
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 1405
    .local v3, "data":[B
    const/16 v5, 0x14

    const/4 v6, 0x0

    aput-byte v5, v3, v6

    .line 1407
    const/4 v5, 0x6

    .line 1408
    .local v5, "size":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v7

    .line 1409
    .local v7, "cookieStartPos":I
    array-length v8, v3

    sub-int/2addr v8, v4

    invoke-static {v2, v7, v3, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1411
    add-int/lit8 v8, v7, 0x10

    move-object/from16 v9, p1

    invoke-virtual {v9, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V

    .line 1412
    const/16 v8, 0x10

    add-int/2addr v5, v8

    .line 1414
    iget-object v10, v0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v10}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v10

    .line 1415
    .local v10, "traceEnabled":Z
    if-eqz v10, :cond_0

    .line 1416
    iget-object v11, v0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const/16 v12, 0x3a

    .line 1417
    invoke-static {v2, v7, v8, v12}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([BIIC)Ljava/lang/String;

    move-result-object v8

    .line 1416
    const-string v12, "receiveKexInit({}) cookie={}"

    invoke-interface {v11, v12, v0, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1421
    :cond_0
    sget-object v8, Lorg/apache/sshd/common/kex/KexProposalOption;->VALUES:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 1422
    .local v11, "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v12

    .line 1423
    .local v12, "lastPos":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v13

    .line 1424
    .local v13, "value":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 1425
    iget-object v14, v0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v0, v15, v6

    invoke-virtual {v11}, Lorg/apache/sshd/common/kex/KexProposalOption;->getDescription()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v4

    const/16 v16, 0x2

    aput-object v13, v15, v16

    const-string v4, "receiveKexInit({})[{}] {}"

    invoke-interface {v14, v4, v15}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1427
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v4

    .line 1428
    .local v4, "curPos":I
    sub-int v14, v4, v12

    .line 1429
    .local v14, "readLen":I
    invoke-interface {v1, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    add-int/2addr v5, v14

    .line 1431
    .end local v4    # "curPos":I
    .end local v11    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    .end local v12    # "lastPos":I
    .end local v13    # "value":Ljava/lang/String;
    .end local v14    # "readLen":I
    const/4 v4, 0x1

    goto :goto_0

    .line 1433
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getKexExtensionHandler()Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;

    move-result-object v4

    .line 1434
    .local v4, "extHandler":Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
    if-eqz v4, :cond_4

    .line 1435
    if-eqz v10, :cond_3

    .line 1436
    iget-object v8, v0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v11, "receiveKexInit({}) options before handler: {}"

    invoke-interface {v8, v11, v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1439
    :cond_3
    invoke-interface {v4, v0, v6, v1}, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;->handleKexInitProposal(Lorg/apache/sshd/common/session/Session;ZLjava/util/Map;)V

    .line 1441
    if-eqz v10, :cond_4

    .line 1442
    iget-object v8, v0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v11, "receiveKexInit({}) options after handler: {}"

    invoke-interface {v8, v11, v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1446
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBoolean()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->firstKexPacketFollows:Ljava/lang/Boolean;

    .line 1447
    if-eqz v10, :cond_5

    .line 1448
    iget-object v8, v0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    iget-object v11, v0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->firstKexPacketFollows:Ljava/lang/Boolean;

    const-string v12, "receiveKexInit({}) first kex packet follows: {}"

    invoke-interface {v8, v12, v0, v11}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1451
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUInt()J

    move-result-wide v11

    .line 1452
    .local v11, "reserved":J
    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    if-eqz v8, :cond_6

    .line 1453
    if-eqz v10, :cond_6

    .line 1454
    iget-object v8, v0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v14, "receiveKexInit({}) non-zero reserved value: {}"

    invoke-interface {v8, v14, v0, v13}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1459
    :cond_6
    new-array v8, v5, [B

    .line 1460
    .local v8, "dataShrinked":[B
    invoke-static {v3, v6, v8, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1461
    return-object v8
.end method

.method protected receiveNewKeys()V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1473
    move-object/from16 v6, p0

    iget-object v0, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kex:Lorg/apache/sshd/common/kex/KeyExchange;

    invoke-interface {v0}, Lorg/apache/sshd/common/kex/KeyExchange;->getK()[B

    move-result-object v7

    .line 1474
    .local v7, "k":[B
    iget-object v0, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kex:Lorg/apache/sshd/common/kex/KeyExchange;

    invoke-interface {v0}, Lorg/apache/sshd/common/kex/KeyExchange;->getH()[B

    move-result-object v8

    .line 1475
    .local v8, "h":[B
    iget-object v0, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kex:Lorg/apache/sshd/common/kex/KeyExchange;

    invoke-interface {v0}, Lorg/apache/sshd/common/kex/KeyExchange;->getHash()Lorg/apache/sshd/common/digest/Digest;

    move-result-object v9

    .line 1477
    .local v9, "hash":Lorg/apache/sshd/common/digest/Digest;
    iget-object v0, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v10

    .line 1478
    .local v10, "debugEnabled":Z
    iget-object v0, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sessionId:[B

    if-nez v0, :cond_0

    .line 1479
    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sessionId:[B

    .line 1480
    if-eqz v10, :cond_0

    .line 1481
    iget-object v0, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const/16 v1, 0x3a

    iget-object v2, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sessionId:[B

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex(C[B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "receiveNewKeys({}) session ID={}"

    invoke-interface {v0, v2, v6, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1485
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>()V

    move-object v11, v0

    .line 1486
    .local v11, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v11, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt([B)V

    .line 1487
    invoke-virtual {v11, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([B)V

    .line 1488
    const/16 v0, 0x41

    invoke-virtual {v11, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 1489
    iget-object v0, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sessionId:[B

    invoke-virtual {v11, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([B)V

    .line 1491
    invoke-virtual {v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v12

    .line 1492
    .local v12, "pos":I
    invoke-virtual {v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v13

    .line 1493
    .local v13, "buf":[B
    const/4 v14, 0x0

    invoke-interface {v9, v13, v14, v12}, Lorg/apache/sshd/common/digest/Digest;->update([BII)V

    .line 1495
    invoke-interface {v9}, Lorg/apache/sshd/common/digest/Digest;->digest()[B

    move-result-object v15

    .line 1496
    .local v15, "iv_c2s":[B
    iget-object v0, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sessionId:[B

    array-length v0, v0

    sub-int v0, v12, v0

    const/16 v16, 0x1

    add-int/lit8 v17, v0, -0x1

    .line 1498
    .local v17, "j":I
    aget-byte v0, v13, v17

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v13, v17

    .line 1499
    invoke-interface {v9, v13, v14, v12}, Lorg/apache/sshd/common/digest/Digest;->update([BII)V

    .line 1500
    invoke-interface {v9}, Lorg/apache/sshd/common/digest/Digest;->digest()[B

    move-result-object v5

    .line 1502
    .local v5, "iv_s2c":[B
    aget-byte v0, v13, v17

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v13, v17

    .line 1503
    invoke-interface {v9, v13, v14, v12}, Lorg/apache/sshd/common/digest/Digest;->update([BII)V

    .line 1504
    invoke-interface {v9}, Lorg/apache/sshd/common/digest/Digest;->digest()[B

    move-result-object v18

    .line 1506
    .local v18, "e_c2s":[B
    aget-byte v0, v13, v17

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v13, v17

    .line 1507
    invoke-interface {v9, v13, v14, v12}, Lorg/apache/sshd/common/digest/Digest;->update([BII)V

    .line 1508
    invoke-interface {v9}, Lorg/apache/sshd/common/digest/Digest;->digest()[B

    move-result-object v19

    .line 1510
    .local v19, "e_s2c":[B
    aget-byte v0, v13, v17

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v13, v17

    .line 1511
    invoke-interface {v9, v13, v14, v12}, Lorg/apache/sshd/common/digest/Digest;->update([BII)V

    .line 1512
    invoke-interface {v9}, Lorg/apache/sshd/common/digest/Digest;->digest()[B

    move-result-object v20

    .line 1514
    .local v20, "mac_c2s":[B
    aget-byte v0, v13, v17

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v13, v17

    .line 1515
    invoke-interface {v9, v13, v14, v12}, Lorg/apache/sshd/common/digest/Digest;->update([BII)V

    .line 1516
    invoke-interface {v9}, Lorg/apache/sshd/common/digest/Digest;->digest()[B

    move-result-object v21

    .line 1518
    .local v21, "mac_s2c":[B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->isServerSession()Z

    move-result v22

    .line 1519
    .local v22, "serverSession":Z
    sget-object v0, Lorg/apache/sshd/common/kex/KexProposalOption;->S2CENC:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-virtual {v6, v0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getNegotiatedKexParameter(Lorg/apache/sshd/common/kex/KexProposalOption;)Ljava/lang/String;

    move-result-object v4

    .line 1520
    .local v4, "value":Ljava/lang/String;
    nop

    .line 1521
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getCipherFactories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v4}, Lorg/apache/sshd/common/NamedFactory;->create(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1520
    const-string v1, "Unknown s2c cipher: %s"

    invoke-static {v0, v1, v4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/apache/sshd/common/cipher/Cipher;

    .line 1522
    .local v3, "s2ccipher":Lorg/apache/sshd/common/cipher/Cipher;
    invoke-interface {v3}, Lorg/apache/sshd/common/cipher/Cipher;->getKdfSize()I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v14, v3

    .end local v3    # "s2ccipher":Lorg/apache/sshd/common/cipher/Cipher;
    .local v14, "s2ccipher":Lorg/apache/sshd/common/cipher/Cipher;
    move-object v3, v9

    move-object/from16 v23, v4

    .end local v4    # "value":Ljava/lang/String;
    .local v23, "value":Ljava/lang/String;
    move-object v4, v7

    move-object/from16 v24, v11

    move-object v11, v5

    .end local v5    # "iv_s2c":[B
    .local v11, "iv_s2c":[B
    .local v24, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->resizeKey([BILorg/apache/sshd/common/digest/Digest;[B[B)[B

    move-result-object v5

    .line 1523
    .end local v19    # "e_s2c":[B
    .local v5, "e_s2c":[B
    if-eqz v22, :cond_1

    sget-object v0, Lorg/apache/sshd/common/cipher/Cipher$Mode;->Encrypt:Lorg/apache/sshd/common/cipher/Cipher$Mode;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/sshd/common/cipher/Cipher$Mode;->Decrypt:Lorg/apache/sshd/common/cipher/Cipher$Mode;

    :goto_0
    invoke-interface {v14, v0, v5, v11}, Lorg/apache/sshd/common/cipher/Cipher;->init(Lorg/apache/sshd/common/cipher/Cipher$Mode;[B[B)V

    .line 1525
    sget-object v0, Lorg/apache/sshd/common/kex/KexProposalOption;->S2CMAC:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-virtual {v6, v0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getNegotiatedKexParameter(Lorg/apache/sshd/common/kex/KexProposalOption;)Ljava/lang/String;

    move-result-object v4

    .line 1526
    .end local v23    # "value":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getMacFactories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v4}, Lorg/apache/sshd/common/NamedFactory;->create(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/apache/sshd/common/mac/Mac;

    .line 1527
    .local v3, "s2cmac":Lorg/apache/sshd/common/mac/Mac;
    const/4 v2, 0x5

    if-eqz v3, :cond_8

    .line 1530
    invoke-interface {v3}, Lorg/apache/sshd/common/mac/Mac;->getBlockSize()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v23, v11

    move v11, v2

    .end local v11    # "iv_s2c":[B
    .local v23, "iv_s2c":[B
    move/from16 v2, v19

    move-object v11, v3

    .end local v3    # "s2cmac":Lorg/apache/sshd/common/mac/Mac;
    .local v11, "s2cmac":Lorg/apache/sshd/common/mac/Mac;
    move-object v3, v9

    move/from16 v25, v12

    move-object v12, v4

    .end local v4    # "value":Ljava/lang/String;
    .local v12, "value":Ljava/lang/String;
    .local v25, "pos":I
    move-object v4, v7

    move-object/from16 v26, v5

    .end local v5    # "e_s2c":[B
    .local v26, "e_s2c":[B
    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->resizeKey([BILorg/apache/sshd/common/digest/Digest;[B[B)[B

    move-result-object v5

    .line 1531
    .end local v21    # "mac_s2c":[B
    .local v5, "mac_s2c":[B
    invoke-interface {v11, v5}, Lorg/apache/sshd/common/mac/Mac;->init([B)V

    .line 1533
    sget-object v0, Lorg/apache/sshd/common/kex/KexProposalOption;->S2CCOMP:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-virtual {v6, v0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getNegotiatedKexParameter(Lorg/apache/sshd/common/kex/KexProposalOption;)Ljava/lang/String;

    move-result-object v0

    .line 1534
    .end local v12    # "value":Ljava/lang/String;
    .local v0, "value":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getCompressionFactories()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/sshd/common/NamedFactory;->create(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lorg/apache/sshd/common/compression/Compression;

    .line 1535
    .local v12, "s2ccomp":Lorg/apache/sshd/common/compression/Compression;
    const/4 v4, 0x6

    if-eqz v12, :cond_7

    .line 1539
    sget-object v1, Lorg/apache/sshd/common/kex/KexProposalOption;->C2SENC:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-virtual {v6, v1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getNegotiatedKexParameter(Lorg/apache/sshd/common/kex/KexProposalOption;)Ljava/lang/String;

    move-result-object v3

    .line 1540
    .end local v0    # "value":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    nop

    .line 1541
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getCipherFactories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/apache/sshd/common/NamedFactory;->create(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1540
    const-string v1, "Unknown c2s cipher: %s"

    invoke-static {v0, v1, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/apache/sshd/common/cipher/Cipher;

    .line 1542
    .local v2, "c2scipher":Lorg/apache/sshd/common/cipher/Cipher;
    invoke-interface {v2}, Lorg/apache/sshd/common/cipher/Cipher;->getKdfSize()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v27, v13

    move-object v13, v2

    .end local v2    # "c2scipher":Lorg/apache/sshd/common/cipher/Cipher;
    .local v13, "c2scipher":Lorg/apache/sshd/common/cipher/Cipher;
    .local v27, "buf":[B
    move/from16 v2, v21

    move-object/from16 v21, v3

    .end local v3    # "value":Ljava/lang/String;
    .local v21, "value":Ljava/lang/String;
    move-object v3, v9

    move-object v4, v7

    move-object/from16 v29, v5

    .end local v5    # "mac_s2c":[B
    .local v29, "mac_s2c":[B
    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->resizeKey([BILorg/apache/sshd/common/digest/Digest;[B[B)[B

    move-result-object v5

    .line 1543
    .end local v18    # "e_c2s":[B
    .local v5, "e_c2s":[B
    if-eqz v22, :cond_2

    sget-object v0, Lorg/apache/sshd/common/cipher/Cipher$Mode;->Decrypt:Lorg/apache/sshd/common/cipher/Cipher$Mode;

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/apache/sshd/common/cipher/Cipher$Mode;->Encrypt:Lorg/apache/sshd/common/cipher/Cipher$Mode;

    :goto_1
    invoke-interface {v13, v0, v5, v15}, Lorg/apache/sshd/common/cipher/Cipher;->init(Lorg/apache/sshd/common/cipher/Cipher$Mode;[B[B)V

    .line 1545
    sget-object v0, Lorg/apache/sshd/common/kex/KexProposalOption;->C2SMAC:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-virtual {v6, v0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getNegotiatedKexParameter(Lorg/apache/sshd/common/kex/KexProposalOption;)Ljava/lang/String;

    move-result-object v4

    .line 1546
    .end local v21    # "value":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getMacFactories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v4}, Lorg/apache/sshd/common/NamedFactory;->create(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/apache/sshd/common/mac/Mac;

    .line 1547
    .local v3, "c2smac":Lorg/apache/sshd/common/mac/Mac;
    if-eqz v3, :cond_6

    .line 1550
    invoke-interface {v3}, Lorg/apache/sshd/common/mac/Mac;->getBlockSize()I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v30, v15

    move-object v15, v3

    .end local v3    # "c2smac":Lorg/apache/sshd/common/mac/Mac;
    .local v15, "c2smac":Lorg/apache/sshd/common/mac/Mac;
    .local v30, "iv_c2s":[B
    move-object v3, v9

    move-object/from16 v31, v9

    move-object v9, v4

    .end local v4    # "value":Ljava/lang/String;
    .local v9, "value":Ljava/lang/String;
    .local v31, "hash":Lorg/apache/sshd/common/digest/Digest;
    move-object v4, v7

    move-object/from16 v18, v5

    .end local v5    # "e_c2s":[B
    .restart local v18    # "e_c2s":[B
    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->resizeKey([BILorg/apache/sshd/common/digest/Digest;[B[B)[B

    move-result-object v0

    .line 1551
    .end local v20    # "mac_c2s":[B
    .local v0, "mac_c2s":[B
    invoke-interface {v15, v0}, Lorg/apache/sshd/common/mac/Mac;->init([B)V

    .line 1553
    sget-object v1, Lorg/apache/sshd/common/kex/KexProposalOption;->C2SCOMP:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-virtual {v6, v1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getNegotiatedKexParameter(Lorg/apache/sshd/common/kex/KexProposalOption;)Ljava/lang/String;

    move-result-object v1

    .line 1554
    .end local v9    # "value":Ljava/lang/String;
    .local v1, "value":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getCompressionFactories()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/sshd/common/NamedFactory;->create(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/compression/Compression;

    .line 1555
    .local v2, "c2scomp":Lorg/apache/sshd/common/compression/Compression;
    if-eqz v2, :cond_5

    .line 1559
    if-eqz v22, :cond_3

    .line 1560
    iput-object v14, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outCipher:Lorg/apache/sshd/common/cipher/Cipher;

    .line 1561
    iput-object v11, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outMac:Lorg/apache/sshd/common/mac/Mac;

    .line 1562
    iput-object v12, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outCompression:Lorg/apache/sshd/common/compression/Compression;

    .line 1563
    iput-object v13, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCipher:Lorg/apache/sshd/common/cipher/Cipher;

    .line 1564
    iput-object v15, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inMac:Lorg/apache/sshd/common/mac/Mac;

    .line 1565
    iput-object v2, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCompression:Lorg/apache/sshd/common/compression/Compression;

    goto :goto_2

    .line 1567
    :cond_3
    iput-object v13, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outCipher:Lorg/apache/sshd/common/cipher/Cipher;

    .line 1568
    iput-object v15, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outMac:Lorg/apache/sshd/common/mac/Mac;

    .line 1569
    iput-object v2, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outCompression:Lorg/apache/sshd/common/compression/Compression;

    .line 1570
    iput-object v14, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCipher:Lorg/apache/sshd/common/cipher/Cipher;

    .line 1571
    iput-object v11, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inMac:Lorg/apache/sshd/common/mac/Mac;

    .line 1572
    iput-object v12, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCompression:Lorg/apache/sshd/common/compression/Compression;

    .line 1575
    :goto_2
    iget-object v3, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outCipher:Lorg/apache/sshd/common/cipher/Cipher;

    invoke-interface {v3}, Lorg/apache/sshd/common/cipher/Cipher;->getCipherBlockSize()I

    move-result v3

    iput v3, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outCipherSize:I

    .line 1576
    iget-object v3, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outMac:Lorg/apache/sshd/common/mac/Mac;

    invoke-interface {v3}, Lorg/apache/sshd/common/mac/Mac;->getBlockSize()I

    move-result v3

    iput v3, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outMacSize:I

    .line 1578
    iget-object v3, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outCompression:Lorg/apache/sshd/common/compression/Compression;

    sget-object v4, Lorg/apache/sshd/common/compression/Compression$Type;->Deflater:Lorg/apache/sshd/common/compression/Compression$Type;

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Lorg/apache/sshd/common/compression/Compression;->init(Lorg/apache/sshd/common/compression/Compression$Type;I)V

    .line 1580
    iget-object v3, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCipher:Lorg/apache/sshd/common/cipher/Cipher;

    invoke-interface {v3}, Lorg/apache/sshd/common/cipher/Cipher;->getCipherBlockSize()I

    move-result v3

    iput v3, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCipherSize:I

    .line 1581
    iget-object v3, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inMac:Lorg/apache/sshd/common/mac/Mac;

    invoke-interface {v3}, Lorg/apache/sshd/common/mac/Mac;->getBlockSize()I

    move-result v3

    iput v3, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inMacSize:I

    .line 1582
    new-array v3, v3, [B

    iput-object v3, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inMacResult:[B

    .line 1584
    iget-object v3, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCompression:Lorg/apache/sshd/common/compression/Compression;

    sget-object v4, Lorg/apache/sshd/common/compression/Compression$Type;->Inflater:Lorg/apache/sshd/common/compression/Compression$Type;

    invoke-interface {v3, v4, v5}, Lorg/apache/sshd/common/compression/Compression;->init(Lorg/apache/sshd/common/compression/Compression$Type;I)V

    .line 1588
    iget v3, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCipherSize:I

    iget v4, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outCipherSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1589
    .local v3, "avgCipherBlockSize":I
    mul-int/lit8 v9, v3, 0x8

    const/16 v20, 0x4

    div-int/lit8 v9, v9, 0x4

    const/16 v4, 0x3f

    .line 1590
    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const-wide/16 v32, 0x1

    shl-long v4, v32, v4

    .line 1591
    .local v4, "recommendedByteRekeyBlocks":J
    nop

    .line 1592
    const-string v9, "rekey-blocks-limit"

    move-object/from16 v21, v2

    move/from16 v28, v3

    .end local v2    # "c2scomp":Lorg/apache/sshd/common/compression/Compression;
    .end local v3    # "avgCipherBlockSize":I
    .local v21, "c2scomp":Lorg/apache/sshd/common/compression/Compression;
    .local v28, "avgCipherBlockSize":I
    invoke-virtual {v6, v9, v4, v5}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1593
    .local v2, "effectiveRekyBlocksCount":J
    iget-object v9, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekeyBlocks:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1594
    if-eqz v10, :cond_4

    .line 1595
    iget-object v9, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    move-object/from16 v32, v0

    const/4 v0, 0x5

    .end local v0    # "mac_c2s":[B
    .local v32, "mac_c2s":[B
    new-array v0, v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v6, v0, v19

    move-wide/from16 v33, v2

    .end local v2    # "effectiveRekyBlocksCount":J
    .local v33, "effectiveRekyBlocksCount":J
    iget-object v2, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inCipher:Lorg/apache/sshd/common/cipher/Cipher;

    aput-object v2, v0, v16

    const/4 v2, 0x2

    iget-object v3, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outCipher:Lorg/apache/sshd/common/cipher/Cipher;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    .line 1596
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekeyBlocks:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v2, v0, v20

    .line 1595
    const-string v2, "receiveNewKeys({}) inCipher={}, outCipher={}, recommended blocks limit={}, actual={}"

    invoke-interface {v9, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 1594
    .end local v32    # "mac_c2s":[B
    .end local v33    # "effectiveRekyBlocksCount":J
    .restart local v0    # "mac_c2s":[B
    .restart local v2    # "effectiveRekyBlocksCount":J
    :cond_4
    move-object/from16 v32, v0

    move-wide/from16 v33, v2

    .line 1599
    .end local v0    # "mac_c2s":[B
    .end local v2    # "effectiveRekyBlocksCount":J
    .restart local v32    # "mac_c2s":[B
    .restart local v33    # "effectiveRekyBlocksCount":J
    :goto_3
    iget-object v0, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inBytesCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1600
    iget-object v0, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outBytesCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1601
    iget-object v0, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inPacketsCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1602
    iget-object v0, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outPacketsCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1603
    iget-object v0, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inBlocksCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1604
    iget-object v0, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->outBlocksCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1605
    iget-object v0, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->lastKeyTimeValue:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1606
    const/4 v0, 0x0

    iput-object v0, v6, Lorg/apache/sshd/common/session/helpers/AbstractSession;->firstKexPacketFollows:Ljava/lang/Boolean;

    .line 1607
    return-void

    .line 1556
    .end local v4    # "recommendedByteRekeyBlocks":J
    .end local v21    # "c2scomp":Lorg/apache/sshd/common/compression/Compression;
    .end local v28    # "avgCipherBlockSize":I
    .end local v32    # "mac_c2s":[B
    .end local v33    # "effectiveRekyBlocksCount":J
    .restart local v0    # "mac_c2s":[B
    .local v2, "c2scomp":Lorg/apache/sshd/common/compression/Compression;
    :cond_5
    move-object/from16 v32, v0

    move-object/from16 v21, v2

    .end local v0    # "mac_c2s":[B
    .end local v2    # "c2scomp":Lorg/apache/sshd/common/compression/Compression;
    .restart local v21    # "c2scomp":Lorg/apache/sshd/common/compression/Compression;
    .restart local v32    # "mac_c2s":[B
    new-instance v0, Lorg/apache/sshd/common/SshException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown c2s compression: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v0, v3, v2}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1548
    .end local v1    # "value":Ljava/lang/String;
    .end local v18    # "e_c2s":[B
    .end local v21    # "c2scomp":Lorg/apache/sshd/common/compression/Compression;
    .end local v30    # "iv_c2s":[B
    .end local v31    # "hash":Lorg/apache/sshd/common/digest/Digest;
    .end local v32    # "mac_c2s":[B
    .local v3, "c2smac":Lorg/apache/sshd/common/mac/Mac;
    .local v4, "value":Ljava/lang/String;
    .restart local v5    # "e_c2s":[B
    .local v9, "hash":Lorg/apache/sshd/common/digest/Digest;
    .local v15, "iv_c2s":[B
    .restart local v20    # "mac_c2s":[B
    :cond_6
    move-object/from16 v31, v9

    move-object v9, v4

    .end local v4    # "value":Ljava/lang/String;
    .local v9, "value":Ljava/lang/String;
    .restart local v31    # "hash":Lorg/apache/sshd/common/digest/Digest;
    new-instance v0, Lorg/apache/sshd/common/SshException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown c2s MAC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1536
    .end local v3    # "c2smac":Lorg/apache/sshd/common/mac/Mac;
    .end local v27    # "buf":[B
    .end local v29    # "mac_s2c":[B
    .end local v31    # "hash":Lorg/apache/sshd/common/digest/Digest;
    .local v0, "value":Ljava/lang/String;
    .local v5, "mac_s2c":[B
    .local v9, "hash":Lorg/apache/sshd/common/digest/Digest;
    .local v13, "buf":[B
    .restart local v18    # "e_c2s":[B
    :cond_7
    move v3, v4

    new-instance v1, Lorg/apache/sshd/common/SshException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown s2c compression: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1528
    .end local v0    # "value":Ljava/lang/String;
    .end local v23    # "iv_s2c":[B
    .end local v25    # "pos":I
    .end local v26    # "e_s2c":[B
    .local v3, "s2cmac":Lorg/apache/sshd/common/mac/Mac;
    .restart local v4    # "value":Ljava/lang/String;
    .local v5, "e_s2c":[B
    .local v11, "iv_s2c":[B
    .local v12, "pos":I
    .local v21, "mac_s2c":[B
    :cond_8
    move/from16 v25, v12

    move-object v12, v4

    .end local v4    # "value":Ljava/lang/String;
    .local v12, "value":Ljava/lang/String;
    .restart local v25    # "pos":I
    new-instance v0, Lorg/apache/sshd/common/SshException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown s2c MAC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method protected refreshConfiguration()V
    .locals 5

    .line 356
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->random:Lorg/apache/sshd/common/random/Random;

    monitor-enter v0

    .line 358
    :try_start_0
    const-string v1, "rekey-bytes-limit"

    iget-wide v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekeyBytes:J

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekeyBytes:J

    .line 359
    const-string v1, "rekey-time-limit"

    iget-wide v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekeyInterval:J

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekeyInterval:J

    .line 360
    const-string v1, "rekey-packets-limit"

    iget-wide v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekyPackets:J

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->maxRekyPackets:J

    .line 363
    const-string v1, "ignore-message-size"

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->ignorePacketDataLength:I

    .line 365
    const-string v1, "ignore-message-frequency"

    const-wide/16 v2, 0x400

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->ignorePacketsFrequency:J

    .line 367
    const-string v1, "ignore-message-variance"

    const/16 v2, 0x20

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->ignorePacketsVariance:I

    .line 369
    int-to-long v1, v1

    iget-wide v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->ignorePacketsFrequency:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 370
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->ignorePacketsVariance:I

    .line 373
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->random:Lorg/apache/sshd/common/random/Random;

    iget v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->ignorePacketsVariance:I

    invoke-virtual {p0, v1, v3, v4, v2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->calculateNextIgnorePacketCount(Lorg/apache/sshd/common/random/Random;JI)J

    move-result-wide v1

    .line 375
    .local v1, "countValue":J
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->ignorePacketsCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 376
    .end local v1    # "countValue":J
    monitor-exit v0

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeChannelListener(Lorg/apache/sshd/common/channel/ChannelListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/channel/ChannelListener;

    .line 1867
    if-nez p1, :cond_0

    .line 1868
    return-void

    .line 1871
    :cond_0
    invoke-static {p1}, Lorg/apache/sshd/common/channel/ChannelListener;->validateListener(Lorg/apache/sshd/common/channel/ChannelListener;)Lorg/apache/sshd/common/channel/ChannelListener;

    .line 1872
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->channelListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1873
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1874
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "removeChannelListener({})[{}] removed"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1877
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1878
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "removeChannelListener({})[{}] not registered"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1881
    :cond_2
    :goto_0
    return-void
.end method

.method public removePortForwardingEventListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 1915
    if-nez p1, :cond_0

    .line 1916
    return-void

    .line 1919
    :cond_0
    invoke-static {p1}, Lorg/apache/sshd/common/forward/PortForwardingEventListener;->validateListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 1920
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->tunnelListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1921
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1922
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "removePortForwardingEventListener({})[{}] removed"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1925
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1926
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "removePortForwardingEventListener({})[{}] not registered"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1929
    :cond_2
    :goto_0
    return-void
.end method

.method public removeSessionListener(Lorg/apache/sshd/common/session/SessionListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/session/SessionListener;

    .line 1824
    if-nez p1, :cond_0

    .line 1825
    return-void

    .line 1828
    :cond_0
    invoke-static {p1}, Lorg/apache/sshd/common/session/SessionListener;->validateListener(Lorg/apache/sshd/common/session/SessionListener;)Lorg/apache/sshd/common/session/SessionListener;

    .line 1829
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sessionListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1830
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1831
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "removeSessionListener({})[{}] removed"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1834
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1835
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "removeSessionListener({})[{}] not registered"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1838
    :cond_2
    :goto_0
    return-void
.end method

.method public request(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;JLjava/util/concurrent/TimeUnit;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 29
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p3, "timeout"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 945
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    const-wide/16 v6, 0x0

    cmp-long v0, v3, v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v0, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    const-string v10, "Non-positive timeout requested: %d"

    invoke-static {v0, v10, v3, v4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 947
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    .line 948
    .local v10, "maxWaitMillis":J
    cmp-long v0, v10, v6

    if-lez v0, :cond_a

    .line 953
    iget-object v0, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v12

    .line 954
    .local v12, "debugEnabled":Z
    const/4 v0, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eqz v12, :cond_1

    .line 955
    iget-object v15, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v6, "request({}) request={}, timeout={} {}"

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v1, v7, v9

    aput-object v2, v7, v8

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v7, v14

    aput-object v5, v7, v13

    invoke-interface {v15, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 959
    :cond_1
    iget-object v6, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v6

    .line 960
    .local v6, "traceEnabled":Z
    iget-object v7, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestLock:Ljava/lang/Object;

    monitor-enter v7

    .line 962
    move-object/from16 v15, p2

    :try_start_0
    invoke-virtual {v1, v15}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 964
    iget-object v14, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestResult:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v14
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 965
    :goto_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->isOpen()Z

    move-result v19

    if-eqz v19, :cond_4

    const-wide/16 v16, 0x0

    cmp-long v19, v10, v16

    if-lez v19, :cond_4

    iget-object v0, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 966
    if-eqz v6, :cond_2

    .line 967
    iget-object v0, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v8, "request({})[{}] remaining wait={}"

    new-array v9, v13, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v1, v9, v21

    const/16 v20, 0x1

    aput-object v2, v9, v20

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const/16 v18, 0x2

    aput-object v22, v9, v18

    invoke-interface {v0, v8, v9}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 970
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 971
    .local v8, "waitStart":J
    iget-object v0, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v10, v11}, Ljava/lang/Object;->wait(J)V

    .line 972
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 973
    .local v22, "waitEnd":J
    move-object/from16 v24, v14

    sub-long v13, v22, v8

    .line 974
    .local v13, "waitDuration":J
    :try_start_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v25

    .line 975
    .local v25, "waitMillis":J
    const-wide/16 v16, 0x0

    cmp-long v0, v25, v16

    if-lez v0, :cond_3

    .line 976
    sub-long v10, v10, v25

    goto :goto_2

    .line 978
    :cond_3
    const-wide/16 v27, 0x1

    sub-long v10, v10, v27

    .line 980
    .end local v8    # "waitStart":J
    .end local v13    # "waitDuration":J
    .end local v22    # "waitEnd":J
    .end local v25    # "waitMillis":J
    :goto_2
    move-object/from16 v14, v24

    const/4 v0, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x3

    goto :goto_1

    .line 965
    :cond_4
    move-object/from16 v24, v14

    .line 982
    iget-object v0, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestResult:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 983
    .local v0, "result":Ljava/lang/Object;
    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 987
    nop

    .line 988
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 990
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 994
    if-eqz v12, :cond_6

    .line 995
    iget-object v7, v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v9, "request({}) request={}, timeout={} {}, result received={}"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    const/16 v16, 0x1

    aput-object v2, v13, v16

    .line 996
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v18, 0x2

    aput-object v17, v13, v18

    const/16 v17, 0x3

    aput-object v5, v13, v17

    if-eqz v0, :cond_5

    move/from16 v14, v16

    :cond_5
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/16 v16, 0x4

    aput-object v14, v13, v16

    .line 995
    invoke-interface {v7, v9, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 999
    :cond_6
    if-eqz v0, :cond_8

    .line 1003
    instance-of v7, v0, Lorg/apache/sshd/common/util/buffer/Buffer;

    if-eqz v7, :cond_7

    .line 1004
    move-object v7, v0

    check-cast v7, Lorg/apache/sshd/common/util/buffer/Buffer;

    return-object v7

    .line 1007
    :cond_7
    return-object v8

    .line 1000
    :cond_8
    new-instance v7, Ljava/net/SocketTimeoutException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No response received after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for request="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 991
    :cond_9
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Session is closed or closing while awaiting reply for request="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 983
    .end local v0    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    move-object/from16 v24, v14

    :goto_3
    :try_start_4
    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v6    # "traceEnabled":Z
    .end local v10    # "maxWaitMillis":J
    .end local v12    # "debugEnabled":Z
    .end local p1    # "request":Ljava/lang/String;
    .end local p2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local p3    # "timeout":J
    .end local p5    # "unit":Ljava/util/concurrent/TimeUnit;
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .restart local v6    # "traceEnabled":Z
    .restart local v10    # "maxWaitMillis":J
    .restart local v12    # "debugEnabled":Z
    .restart local p1    # "request":Ljava/lang/String;
    .restart local p2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local p3    # "timeout":J
    .restart local p5    # "unit":Ljava/util/concurrent/TimeUnit;
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 988
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_6
    new-instance v8, Ljava/io/InterruptedIOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Interrupted while waiting for request="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " result"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 986
    invoke-virtual {v8, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    check-cast v8, Ljava/io/InterruptedIOException;

    .end local v6    # "traceEnabled":Z
    .end local v10    # "maxWaitMillis":J
    .end local v12    # "debugEnabled":Z
    .end local p1    # "request":Ljava/lang/String;
    .end local p2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local p3    # "timeout":J
    .end local p5    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v8

    .line 988
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v6    # "traceEnabled":Z
    .restart local v10    # "maxWaitMillis":J
    .restart local v12    # "debugEnabled":Z
    .restart local p1    # "request":Ljava/lang/String;
    .restart local p2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local p3    # "timeout":J
    .restart local p5    # "unit":Ljava/util/concurrent/TimeUnit;
    :goto_4
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 949
    .end local v6    # "traceEnabled":Z
    .end local v12    # "debugEnabled":Z
    :cond_a
    move-object/from16 v15, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requested timeout for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " below 1 msec: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected requestFailure(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 3
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1795
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestResult:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 1796
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestResult:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/sshd/common/util/GenericUtils;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1797
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->resetIdleTimeout()J

    .line 1798
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1799
    monitor-exit v0

    .line 1800
    return-void

    .line 1799
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected requestNewKeysExchange()Lorg/apache/sshd/common/future/KeyExchangeFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1971
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/sshd/common/kex/KexState;->DONE:Lorg/apache/sshd/common/kex/KexState;

    sget-object v2, Lorg/apache/sshd/common/kex/KexState;->INIT:Lorg/apache/sshd/common/kex/KexState;

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1972
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1973
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v2, "requestNewKeysExchange({}) KEX state not DONE: {}"

    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, p0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1976
    :cond_0
    return-object v1

    .line 1979
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v2, "requestNewKeysExchange({}) Initiating key re-exchange"

    invoke-interface {v0, v2, p0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1980
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sendKexInit()[B

    .line 1982
    new-instance v0, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;

    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1983
    .local v0, "newFuture":Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexFutureHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;

    .line 1984
    .local v1, "kexFuture":Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;
    if-eqz v1, :cond_3

    .line 1985
    monitor-enter v1

    .line 1986
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1987
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 1988
    new-instance v3, Lorg/apache/sshd/common/SshException;

    const-string v4, "New KEX started while previous one still ongoing"

    invoke-direct {v3, v4}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;->setValue(Ljava/lang/Object;)V

    .line 1990
    .end local v2    # "value":Ljava/lang/Object;
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1993
    :cond_3
    :goto_0
    return-object v0
.end method

.method protected requestSuccess(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 3
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1780
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->getCompactClone([BII)Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    move-result-object v0

    .line 1781
    .local v0, "resultBuf":Lorg/apache/sshd/common/util/buffer/Buffer;
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestResult:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 1782
    :try_start_0
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1783
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->resetIdleTimeout()J

    .line 1784
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1785
    monitor-exit v1

    .line 1786
    return-void

    .line 1785
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected resolveAvailableSignaturesProposal()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2173
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->resolveAvailableSignaturesProposal(Lorg/apache/sshd/common/FactoryManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract resolveAvailableSignaturesProposal(Lorg/apache/sshd/common/FactoryManager;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method protected resolveIgnoreBufferDataLength()I
    .locals 7

    .line 924
    iget v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->ignorePacketDataLength:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget-wide v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->ignorePacketsFrequency:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    iget v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->ignorePacketsVariance:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 930
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->ignorePacketsCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v2

    .line 931
    .local v2, "count":J
    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 932
    return v1

    .line 935
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->random:Lorg/apache/sshd/common/random/Random;

    monitor-enter v0

    .line 936
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->random:Lorg/apache/sshd/common/random/Random;

    iget-wide v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->ignorePacketsFrequency:J

    iget v6, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->ignorePacketsVariance:I

    invoke-virtual {p0, v1, v4, v5, v6}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->calculateNextIgnorePacketCount(Lorg/apache/sshd/common/random/Random;JI)J

    move-result-wide v4

    move-wide v2, v4

    .line 938
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->ignorePacketsCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 939
    iget v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->ignorePacketDataLength:I

    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->random:Lorg/apache/sshd/common/random/Random;

    invoke-interface {v4, v1}, Lorg/apache/sshd/common/random/Random;->random(I)I

    move-result v4

    add-int/2addr v1, v4

    monitor-exit v0

    return v1

    .line 940
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 927
    .end local v2    # "count":J
    :cond_2
    :goto_0
    return v1
.end method

.method protected resolveOutputPacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 6
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 880
    const/4 v0, 0x0

    .line 881
    .local v0, "ignoreBuf":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->resolveIgnoreBufferDataLength()I

    move-result v1

    .line 882
    .local v1, "ignoreDataLen":I
    if-lez v1, :cond_1

    .line 883
    const/4 v2, 0x2

    add-int/lit8 v3, v1, 0x8

    invoke-virtual {p0, v2, v3}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v2

    .line 884
    .end local v0    # "ignoreBuf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v2, "ignoreBuf":Lorg/apache/sshd/common/util/buffer/Buffer;
    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 886
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v3

    .line 887
    .local v3, "wpos":I
    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->random:Lorg/apache/sshd/common/random/Random;

    monitor-enter v4

    .line 888
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->random:Lorg/apache/sshd/common/random/Random;

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v5

    invoke-interface {v0, v5, v3, v1}, Lorg/apache/sshd/common/random/Random;->fill([BII)V

    .line 889
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    add-int v0, v3, v1

    invoke-virtual {v2, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 892
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v4, "resolveOutputPacket({}) append SSH_MSG_IGNORE message"

    invoke-interface {v0, v4, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 897
    .end local v3    # "wpos":I
    :cond_0
    move-object v0, v2

    goto :goto_0

    .line 889
    .restart local v3    # "wpos":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 897
    .end local v2    # "ignoreBuf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v3    # "wpos":I
    .restart local v0    # "ignoreBuf":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v2

    .line 898
    .local v2, "curPos":I
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v3

    .line 899
    .local v3, "data":[B
    aget-byte v4, v3, v2

    and-int/lit16 v4, v4, 0xff

    .line 900
    .local v4, "cmd":I
    invoke-virtual {p0, v4, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->validateTargetBuffer(ILorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object p1

    .line 902
    if-eqz v0, :cond_2

    .line 903
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->encode(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    .line 905
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getIoSession()Lorg/apache/sshd/common/io/IoSession;

    move-result-object v5

    .line 906
    .local v5, "networkSession":Lorg/apache/sshd/common/io/IoSession;
    invoke-interface {v5, v0}, Lorg/apache/sshd/common/io/IoSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 909
    .end local v5    # "networkSession":Lorg/apache/sshd/common/io/IoSession;
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->encode(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v5

    return-object v5
.end method

.method protected resolveSessionKexProposal(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "hostKeyTypes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2082
    invoke-super {p0, p1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->resolveSessionKexProposal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2084
    .local v0, "proposal":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getKexExtensionHandler()Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;

    move-result-object v1

    .line 2085
    .local v1, "extHandler":Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
    if-eqz v1, :cond_3

    sget-object v2, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;->PROPOSAL:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

    invoke-interface {v1, p0, v2}, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;->isKexExtensionsAvailable(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 2089
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->isServerSession()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ext-info-s"

    goto :goto_0

    :cond_1
    const-string v2, "ext-info-c"

    .line 2090
    .local v2, "extType":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2091
    return-object v2

    .line 2093
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2086
    .end local v2    # "extType":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v0
.end method

.method protected sendKexInit()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2098
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->resolveAvailableSignaturesProposal()Ljava/lang/String;

    move-result-object v0

    .line 2099
    .local v0, "resolvedAlgorithms":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2104
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->createProposal(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 2105
    .local v1, "proposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getKexExtensionHandler()Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;

    move-result-object v2

    .line 2106
    .local v2, "extHandler":Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    .line 2107
    .local v3, "traceEnabled":Z
    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 2108
    if-eqz v3, :cond_0

    .line 2109
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v6, "sendKexInit({}) options before handler: {}"

    invoke-interface {v5, v6, p0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2112
    :cond_0
    invoke-interface {v2, p0, v4, v1}, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;->handleKexInitProposal(Lorg/apache/sshd/common/session/Session;ZLjava/util/Map;)V

    .line 2114
    if-eqz v3, :cond_1

    .line 2115
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v6, "sendKexInit({}) options after handler: {}"

    invoke-interface {v5, v6, p0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2120
    :cond_1
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v5

    .line 2121
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->sendKexInit(Ljava/util/Map;)[B

    move-result-object v6

    .line 2122
    .local v6, "seed":[B
    invoke-virtual {p0, v6}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->setKexSeed([B)V

    .line 2123
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2125
    if-eqz v3, :cond_2

    .line 2126
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v7, "sendKexInit({}) proposal={} seed: {}"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    aput-object v1, v8, v4

    const/4 v4, 0x2

    const/16 v9, 0x3a

    invoke-static {v9, v6}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex(C[B)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-interface {v5, v7, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2128
    :cond_2
    return-object v6

    .line 2123
    .end local v6    # "seed":[B
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 2100
    .end local v1    # "proposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .end local v2    # "extHandler":Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
    .end local v3    # "traceEnabled":Z
    :cond_3
    new-instance v1, Lorg/apache/sshd/common/SshException;

    const/16 v2, 0x9

    const-string v3, "sendKexInit() no resolved signatures available"

    invoke-direct {v1, v2, v3}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method protected sendKexInit(Ljava/util/Map;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1361
    .local p1, "proposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "sendKexInit({}) Send SSH_MSG_KEXINIT"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1364
    :cond_0
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->createBuffer(B)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    .line 1365
    .local v0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v1

    .line 1366
    .local v1, "p":I
    add-int/lit8 v2, v1, 0x10

    invoke-virtual {v0, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 1367
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->random:Lorg/apache/sshd/common/random/Random;

    monitor-enter v2

    .line 1368
    :try_start_0
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->random:Lorg/apache/sshd/common/random/Random;

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v4

    const/16 v5, 0x10

    invoke-interface {v3, v4, v1, v5}, Lorg/apache/sshd/common/random/Random;->fill([BII)V

    .line 1369
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1371
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    .line 1372
    .local v2, "traceEnabled":Z
    if-eqz v2, :cond_1

    .line 1373
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v4, "sendKexInit({}) cookie={}"

    .line 1374
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v6

    const/16 v7, 0x3a

    invoke-static {v6, v1, v5, v7}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([BIIC)Ljava/lang/String;

    move-result-object v5

    .line 1373
    invoke-interface {v3, v4, p0, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1377
    :cond_1
    sget-object v3, Lorg/apache/sshd/common/kex/KexProposalOption;->VALUES:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 1378
    .local v4, "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1379
    .local v6, "s":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1380
    iget-object v7, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v8, "sendKexInit({})[{}] {}"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p0, v9, v5

    const/4 v5, 0x1

    invoke-virtual {v4}, Lorg/apache/sshd/common/kex/KexProposalOption;->getDescription()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    const/4 v5, 0x2

    aput-object v6, v9, v5

    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1382
    :cond_2
    invoke-static {v6}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 1383
    .end local v4    # "paramType":Lorg/apache/sshd/common/kex/KexProposalOption;
    .end local v6    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1385
    :cond_3
    invoke-virtual {v0, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 1386
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 1387
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getCompactData()[B

    move-result-object v3

    .line 1388
    .local v3, "data":[B
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 1389
    return-object v3

    .line 1369
    .end local v2    # "traceEnabled":Z
    .end local v3    # "data":[B
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected sendNewKeys()Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "sendNewKeys({}) Send SSH_MSG_NEWKEYS"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 545
    :cond_0
    const/16 v0, 0x15

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    .line 546
    .local v0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v1

    .line 559
    .local v1, "future":Lorg/apache/sshd/common/io/IoWriteFuture;
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getKexExtensionHandler()Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;

    move-result-object v2

    .line 560
    .local v2, "extHandler":Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
    if-eqz v2, :cond_2

    sget-object v3, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;->NEWKEYS:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

    .line 561
    invoke-interface {v2, p0, v3}, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;->isKexExtensionsAvailable(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 565
    :cond_1
    sget-object v3, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;->NEWKEYS:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;

    invoke-interface {v2, p0, v3}, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;->sendKexExtensions(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;)V

    .line 566
    return-object v1

    .line 562
    :cond_2
    :goto_0
    return-object v1
.end method

.method protected sendPendingPackets(Ljava/util/Queue;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/AbstractMap$SimpleImmutableEntry<",
            "Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;",
            "Lorg/apache/sshd/common/io/IoWriteFuture;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    .local p1, "packetsQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 753
    :cond_0
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v0

    .line 754
    .local v0, "numPending":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 755
    .local v1, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Ljava/util/AbstractMap$SimpleImmutableEntry<Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;Lorg/apache/sshd/common/io/IoWriteFuture;>;>;"
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->encodeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 756
    :try_start_0
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->pendingPackets:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;

    .line 757
    .local v3, "future":Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;
    :goto_0
    if-eqz v3, :cond_1

    .line 759
    invoke-virtual {v3}, Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;->getBuffer()Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->doWritePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v4

    .line 760
    .local v4, "writeFuture":Lorg/apache/sshd/common/io/IoWriteFuture;
    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v5, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    nop

    .end local v4    # "writeFuture":Lorg/apache/sshd/common/io/IoWriteFuture;
    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->pendingPackets:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;

    move-object v3, v4

    goto :goto_0

    .line 762
    .end local v3    # "future":Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;
    :cond_1
    monitor-exit v2

    .line 764
    return-object v1

    .line 762
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected setClientKexData([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 2138
    const-string v0, "No client KEX seed"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty([BLjava/lang/String;)[B

    .line 2139
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 2140
    :try_start_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->clientKexData:[B

    .line 2141
    monitor-exit v0

    .line 2142
    return-void

    .line 2141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected varargs abstract setKexSeed([B)V
.end method

.method protected setNegotiationResult(Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1751
    .local p1, "guess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->negotiationResult:Ljava/util/Map;

    monitor-enter v0

    .line 1752
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->negotiationResult:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1753
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->negotiationResult:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1755
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->negotiationResult:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1756
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1758
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1759
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "setNegotiationResult({}) Kex: server->client {} {} {}"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    sget-object v5, Lorg/apache/sshd/common/kex/KexProposalOption;->S2CENC:Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 1760
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    sget-object v5, Lorg/apache/sshd/common/kex/KexProposalOption;->S2CMAC:Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 1761
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v3, v7

    sget-object v5, Lorg/apache/sshd/common/kex/KexProposalOption;->S2CCOMP:Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 1762
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v3, v8

    .line 1759
    invoke-interface {v0, v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1763
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string v1, "setNegotiationResult({}) Kex: client->server {} {} {}"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    sget-object v3, Lorg/apache/sshd/common/kex/KexProposalOption;->C2SENC:Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 1764
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Lorg/apache/sshd/common/kex/KexProposalOption;->C2SMAC:Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 1765
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Lorg/apache/sshd/common/kex/KexProposalOption;->C2SCOMP:Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 1766
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v8

    .line 1763
    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1769
    :cond_1
    return-object p1

    .line 1756
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected setServerKexData([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 2151
    const-string v0, "No server KEX seed"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty([BLjava/lang/String;)[B

    .line 2152
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 2153
    :try_start_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->serverKexData:[B

    .line 2154
    monitor-exit v0

    .line 2155
    return-void

    .line 2154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected validateIncomingMac([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1320
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inMac:Lorg/apache/sshd/common/mac/Mac;

    if-nez v0, :cond_0

    .line 1321
    return-void

    .line 1325
    :cond_0
    iget-wide v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->seqi:J

    invoke-interface {v0, v1, v2}, Lorg/apache/sshd/common/mac/Mac;->updateUInt(J)V

    .line 1327
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inMac:Lorg/apache/sshd/common/mac/Mac;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/sshd/common/mac/Mac;->update([BII)V

    .line 1329
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inMac:Lorg/apache/sshd/common/mac/Mac;

    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inMacResult:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/sshd/common/mac/Mac;->doFinal([BI)V

    .line 1332
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inMacResult:[B

    add-int v1, p2, p3

    iget v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->inMacSize:I

    invoke-static {v0, v2, p1, v1, v3}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->equals([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1335
    return-void

    .line 1333
    :cond_1
    new-instance v0, Lorg/apache/sshd/common/SshException;

    const/4 v1, 0x5

    const-string v2, "MAC Error"

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method protected validateKexState(ILorg/apache/sshd/common/kex/KexState;)V
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "expected"    # Lorg/apache/sshd/common/kex/KexState;

    .line 768
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/kex/KexState;

    .line 769
    .local v0, "actual":Lorg/apache/sshd/common/kex/KexState;
    invoke-virtual {p2, v0}, Lorg/apache/sshd/common/kex/KexState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    return-void

    .line 770
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received KEX command="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 771
    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while in state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected validateTargetBuffer(ILorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 6
    .param p1, "cmd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ">(ITB;)TB;"
        }
    .end annotation

    .line 1049
    .local p2, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;, "TB;"
    int-to-long v0, p1

    const-string v2, "No target buffer to examine for command=%d"

    invoke-static {p2, v2, v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    .line 1050
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->decoderBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    int-to-long v3, p1

    const-string v5, "Not allowed to use the internal decoder buffer for command=%d"

    invoke-static {v0, v5, v3, v4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 1052
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->uncompressBuffer:Lorg/apache/sshd/common/session/SessionWorkBuffer;

    if-eq p2, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    int-to-long v2, p1

    const-string v0, "Not allowed to use the internal uncompress buffer for command=%d"

    invoke-static {v1, v0, v2, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 1054
    return-object p2
.end method

.method public writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 7
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 842
    sget-object v0, Lorg/apache/sshd/common/kex/KexState;->DONE:Lorg/apache/sshd/common/kex/KexState;

    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/kex/KexState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 843
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v0

    .line 844
    .local v0, "bufData":[B
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 845
    .local v1, "cmd":I
    const/16 v2, 0x31

    if-le v1, v2, :cond_2

    .line 846
    invoke-static {v1}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v2

    .line 847
    .local v2, "cmdName":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    .line 848
    .local v3, "debugEnabled":Z
    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->pendingPackets:Ljava/util/Queue;

    monitor-enter v4

    .line 849
    :try_start_0
    sget-object v5, Lorg/apache/sshd/common/kex/KexState;->DONE:Lorg/apache/sshd/common/kex/KexState;

    iget-object v6, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/sshd/common/kex/KexState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 850
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->pendingPackets:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    .line 851
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    const-string/jumbo v6, "writePacket({})[{}] Start flagging packets as pending until key exchange is done"

    invoke-interface {v5, v6, p0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 853
    :cond_0
    new-instance v5, Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;

    invoke-direct {v5, v2, p1}, Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;-><init>(Ljava/lang/Object;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 854
    .local v5, "future":Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;
    iget-object v6, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->pendingPackets:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 855
    monitor-exit v4

    return-object v5

    .line 857
    .end local v5    # "future":Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;
    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 862
    .end local v0    # "bufData":[B
    .end local v1    # "cmd":I
    .end local v2    # "cmdName":Ljava/lang/String;
    .end local v3    # "debugEnabled":Z
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->doWritePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 864
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->resetIdleTimeout()J

    .line 866
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->checkRekey()Lorg/apache/sshd/common/future/KeyExchangeFuture;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 874
    nop

    .line 862
    return-object v0

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, "e":Ljava/security/GeneralSecurityException;
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 869
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writePacket("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") rekey security exception details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 871
    :cond_3
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 872
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to check re-key necessity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 873
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 871
    invoke-static {v1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->initializeExceptionCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/net/ProtocolException;

    throw v1

    .line 864
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->resetIdleTimeout()J

    .line 866
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->checkRekey()Lorg/apache/sshd/common/future/KeyExchangeFuture;
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 874
    nop

    .line 875
    throw v0

    .line 867
    :catch_1
    move-exception v0

    .line 868
    .restart local v0    # "e":Ljava/security/GeneralSecurityException;
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 869
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractSession;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writePacket("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") rekey security exception details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 871
    :cond_4
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 872
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to check re-key necessity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 873
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 871
    invoke-static {v1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->initializeExceptionCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/net/ProtocolException;

    throw v1
.end method
