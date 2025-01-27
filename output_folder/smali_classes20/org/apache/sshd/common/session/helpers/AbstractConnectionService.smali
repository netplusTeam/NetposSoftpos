.class public abstract Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;
.super Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;
.source "AbstractConnectionService.java"

# interfaces
.implements Lorg/apache/sshd/common/session/ConnectionService;


# static fields
.field public static final DEFAULT_MAX_CHANNELS:I = 0x7fffffff

.field public static final DEFAULT_SESSION_IGNORE_HEARTBEAT_STRING:Ljava/lang/String; = "ignore@sshd.apache.org"

.field public static final MAX_CONCURRENT_CHANNELS_PROP:Ljava/lang/String; = "max-sshd-channels"

.field public static final RESPONSE_BUFFER_GROWTH_FACTOR:Ljava/util/function/IntUnaryOperator;


# instance fields
.field private final agentForwardHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/agent/common/AgentForwardSupport;",
            ">;"
        }
    .end annotation
.end field

.field private final allowMoreSessions:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final channels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/sshd/common/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private final forwarderHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/common/forward/ForwardingFilter;",
            ">;"
        }
    .end annotation
.end field

.field private heartBeat:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field protected final heartbeatCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final listenerProxy:Lorg/apache/sshd/common/forward/PortForwardingEventListener;

.field private final listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/forward/PortForwardingEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final managersHolder:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;",
            ">;"
        }
    .end annotation
.end field

.field protected final nextChannelId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionInstance:Lorg/apache/sshd/common/session/helpers/AbstractSession;

.field private unknownChannelReferenceHandler:Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

.field private final x11ForwardHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/server/x11/X11ForwardSupport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/sshd/common/util/Int2IntFunction;->add(I)Ljava/util/function/IntUnaryOperator;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->RESPONSE_BUFFER_GROWTH_FACTOR:Ljava/util/function/IntUnaryOperator;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/sshd/common/session/helpers/AbstractSession;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/sshd/common/session/helpers/AbstractSession;

    .line 121
    invoke-direct {p0}, Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;-><init>()V

    .line 102
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channels:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->nextChannelId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 107
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->heartbeatCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->agentForwardHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->x11ForwardHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->forwarderHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->allowMoreSessions:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 114
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->listeners:Ljava/util/Collection;

    .line 115
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->managersHolder:Ljava/util/Collection;

    .line 116
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->properties:Ljava/util/Map;

    .line 122
    const-string v1, "No session"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/session/helpers/AbstractSession;

    iput-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->sessionInstance:Lorg/apache/sshd/common/session/helpers/AbstractSession;

    .line 123
    const-class v1, Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 123
    invoke-static {v1, v2, v0}, Lorg/apache/sshd/common/util/EventListenerUtils;->proxyWrapper(Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/SshdEventListener;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->listenerProxy:Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 125
    return-void
.end method


# virtual methods
.method public addPortForwardingEventListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 139
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->listeners:Ljava/util/Collection;

    invoke-static {p1}, Lorg/apache/sshd/common/forward/PortForwardingEventListener;->validateListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public addPortForwardingEventListenerManager(Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;)Z
    .locals 2
    .param p1, "manager"    # Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;

    .line 168
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->managersHolder:Ljava/util/Collection;

    const-string v1, "No manager"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public channelClose(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    const/16 v0, 0x61

    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getChannel(BLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/Channel;

    move-result-object v0

    .line 656
    .local v0, "channel":Lorg/apache/sshd/common/channel/Channel;
    if-nez v0, :cond_0

    .line 657
    return-void

    .line 660
    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/channel/Channel;->handleClose()V

    .line 661
    return-void
.end method

.method public channelData(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 595
    const/16 v0, 0x5e

    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getChannel(BLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/Channel;

    move-result-object v0

    .line 596
    .local v0, "channel":Lorg/apache/sshd/common/channel/Channel;
    if-nez v0, :cond_0

    .line 597
    return-void

    .line 600
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/sshd/common/channel/Channel;->handleData(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 601
    return-void
.end method

.method public channelEof(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 640
    const/16 v0, 0x60

    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getChannel(BLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/Channel;

    move-result-object v0

    .line 641
    .local v0, "channel":Lorg/apache/sshd/common/channel/Channel;
    if-nez v0, :cond_0

    .line 642
    return-void

    .line 645
    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/channel/Channel;->handleEof()V

    .line 646
    return-void
.end method

.method public channelExtendedData(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    const/16 v0, 0x5f

    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getChannel(BLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/Channel;

    move-result-object v0

    .line 611
    .local v0, "channel":Lorg/apache/sshd/common/channel/Channel;
    if-nez v0, :cond_0

    .line 612
    return-void

    .line 615
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/sshd/common/channel/Channel;->handleExtendedData(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 616
    return-void
.end method

.method public channelFailure(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    const/16 v0, 0x64

    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getChannel(BLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/Channel;

    move-result-object v0

    .line 686
    .local v0, "channel":Lorg/apache/sshd/common/channel/Channel;
    if-nez v0, :cond_0

    .line 687
    return-void

    .line 690
    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/channel/Channel;->handleFailure()V

    .line 691
    return-void
.end method

.method protected channelOpen(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 20
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 749
    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v8

    .line 750
    .local v8, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v9

    .line 751
    .local v9, "sender":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUInt()J

    move-result-wide v10

    .line 752
    .local v10, "rwsize":J
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUInt()J

    move-result-wide v12

    .line 756
    .local v12, "rmpsize":J
    iget-object v0, v7, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v14

    .line 757
    .local v14, "debugEnabled":Z
    if-eqz v14, :cond_0

    .line 758
    iget-object v0, v7, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const/4 v2, 0x1

    .line 759
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v8, v1, v2

    const/4 v2, 0x3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 758
    const-string v2, "channelOpen({}) SSH_MSG_CHANNEL_OPEN sender={}, type={}, window-size={}, packet-size={}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 762
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    const/4 v3, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server is shutting down while attempting to open channel type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->sendChannelOpenFailure(Lorg/apache/sshd/common/util/buffer/Buffer;IILjava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 766
    return-void

    .line 769
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->isAllowMoreSessions()Z

    move-result v0

    if-nez v0, :cond_2

    .line 771
    const/4 v3, 0x2

    const-string v4, "additional sessions disabled"

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->sendChannelOpenFailure(Lorg/apache/sshd/common/util/buffer/Buffer;IILjava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 772
    return-void

    .line 775
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v15

    .line 776
    .local v15, "session":Lorg/apache/sshd/common/session/Session;
    invoke-interface {v15}, Lorg/apache/sshd/common/session/Session;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v0

    const-string v1, "No factory manager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lorg/apache/sshd/common/FactoryManager;

    .line 777
    .local v16, "manager":Lorg/apache/sshd/common/FactoryManager;
    invoke-interface/range {v16 .. v16}, Lorg/apache/sshd/common/FactoryManager;->getChannelFactories()Ljava/util/List;

    move-result-object v0

    invoke-static {v15, v0, v8}, Lorg/apache/sshd/common/channel/ChannelFactory;->createChannel(Lorg/apache/sshd/common/session/Session;Ljava/util/Collection;Ljava/lang/String;)Lorg/apache/sshd/common/channel/Channel;

    move-result-object v6

    .line 778
    .local v6, "channel":Lorg/apache/sshd/common/channel/Channel;
    if-nez v6, :cond_3

    .line 780
    const/4 v3, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported channel type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->sendChannelOpenFailure(Lorg/apache/sshd/common/util/buffer/Buffer;IILjava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 782
    return-void

    .line 785
    :cond_3
    invoke-virtual {v7, v6}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->registerChannel(Lorg/apache/sshd/common/channel/Channel;)I

    move-result v17

    .line 786
    .local v17, "channelId":I
    move-object v0, v6

    move v1, v9

    move-wide v2, v10

    move-wide v4, v12

    move-object/from16 v18, v6

    .end local v6    # "channel":Lorg/apache/sshd/common/channel/Channel;
    .local v18, "channel":Lorg/apache/sshd/common/channel/Channel;
    move-object/from16 v6, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/sshd/common/channel/Channel;->open(IJJLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/client/future/OpenFuture;

    move-result-object v6

    .line 787
    .local v6, "openFuture":Lorg/apache/sshd/client/future/OpenFuture;
    new-instance v5, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$$ExternalSyntheticLambda2;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move v3, v14

    move v4, v9

    move-object v7, v5

    move/from16 v5, v17

    move-object/from16 v19, v8

    move-object v8, v6

    .end local v6    # "openFuture":Lorg/apache/sshd/client/future/OpenFuture;
    .local v8, "openFuture":Lorg/apache/sshd/client/future/OpenFuture;
    .local v19, "type":Ljava/lang/String;
    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$$ExternalSyntheticLambda2;-><init>(Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;Lorg/apache/sshd/common/channel/Channel;ZIILorg/apache/sshd/common/session/Session;)V

    invoke-interface {v8, v7}, Lorg/apache/sshd/client/future/OpenFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 829
    return-void
.end method

.method public channelOpenConfirmation(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 13
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    const/16 v0, 0x5b

    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getChannel(BLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/Channel;

    move-result-object v0

    .line 541
    .local v0, "channel":Lorg/apache/sshd/common/channel/Channel;
    if-nez v0, :cond_0

    .line 542
    return-void

    .line 545
    :cond_0
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v8

    .line 546
    .local v8, "sender":I
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUInt()J

    move-result-wide v9

    .line 547
    .local v9, "rwsize":J
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUInt()J

    move-result-wide v11

    .line 548
    .local v11, "rmpsize":J
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 549
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    .line 550
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 549
    const-string v3, "channelOpenConfirmation({}) SSH_MSG_CHANNEL_OPEN_CONFIRMATION sender={}, window-size={}, packet-size={}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    :cond_1
    move-object v1, v0

    move v2, v8

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/sshd/common/channel/Channel;->handleOpenSuccess(IJJLorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 561
    return-void
.end method

.method public channelOpenFailure(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 6
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    nop

    .line 565
    const/16 v0, 0x5c

    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getChannel(BLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/channel/AbstractClientChannel;

    .line 566
    .local v0, "channel":Lorg/apache/sshd/client/channel/AbstractClientChannel;
    if-nez v0, :cond_0

    .line 567
    return-void

    .line 570
    :cond_0
    invoke-virtual {v0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->getId()I

    move-result v1

    .line 571
    .local v1, "id":I
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    .line 572
    .local v2, "debugEnabled":Z
    if-eqz v2, :cond_1

    .line 573
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    const-string v4, "channelOpenFailure({}) Received SSH_MSG_CHANNEL_OPEN_FAILURE"

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 577
    :cond_1
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channels:Ljava/util/Map;

    monitor-enter v3

    .line 578
    :try_start_0
    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channels:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sshd/common/channel/Channel;

    .line 579
    .local v4, "removed":Lorg/apache/sshd/common/channel/Channel;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    if-eqz v2, :cond_2

    .line 582
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    const-string v5, "channelOpenFailure({}) unregistered {}"

    invoke-interface {v3, v5, v0, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 585
    :cond_2
    invoke-virtual {v0, p1}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->handleOpenFailure(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 586
    return-void

    .line 579
    .end local v4    # "removed":Lorg/apache/sshd/common/channel/Channel;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public channelRequest(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 670
    const/16 v0, 0x62

    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getChannel(BLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/Channel;

    move-result-object v0

    .line 671
    .local v0, "channel":Lorg/apache/sshd/common/channel/Channel;
    if-nez v0, :cond_0

    .line 672
    return-void

    .line 675
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/sshd/common/channel/Channel;->handleRequest(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 676
    return-void
.end method

.method public channelSuccess(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 700
    const/16 v0, 0x63

    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getChannel(BLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/Channel;

    move-result-object v0

    .line 701
    .local v0, "channel":Lorg/apache/sshd/common/channel/Channel;
    if-nez v0, :cond_0

    .line 702
    return-void

    .line 705
    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/channel/Channel;->handleSuccess()V

    .line 706
    return-void
.end method

.method public channelWindowAdjust(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 625
    const/16 v0, 0x5d

    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getChannel(BLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/Channel;

    move-result-object v0

    .line 626
    .local v0, "channel":Lorg/apache/sshd/common/channel/Channel;
    if-nez v0, :cond_0

    .line 627
    return-void

    .line 630
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/sshd/common/channel/Channel;->handleWindowAdjust(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 631
    return-void
.end method

.method protected createAgentForwardSupport(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/agent/common/AgentForwardSupport;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 391
    new-instance v0, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;

    invoke-direct {v0, p0}, Lorg/apache/sshd/agent/common/DefaultAgentForwardSupport;-><init>(Lorg/apache/sshd/common/session/ConnectionService;)V

    return-object v0
.end method

.method protected createForwardingFilter(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/common/forward/ForwardingFilter;
    .locals 3
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 334
    nop

    .line 335
    invoke-interface {p1}, Lorg/apache/sshd/common/session/Session;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v0

    const-string v1, "No factory manager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/FactoryManager;

    .line 336
    .local v0, "manager":Lorg/apache/sshd/common/FactoryManager;
    nop

    .line 337
    invoke-interface {v0}, Lorg/apache/sshd/common/FactoryManager;->getForwarderFactory()Lorg/apache/sshd/common/forward/ForwardingFilterFactory;

    move-result-object v1

    const-string v2, "No forwarder factory"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/forward/ForwardingFilterFactory;

    .line 338
    .local v1, "factory":Lorg/apache/sshd/common/forward/ForwardingFilterFactory;
    invoke-interface {v1, p0}, Lorg/apache/sshd/common/forward/ForwardingFilterFactory;->create(Lorg/apache/sshd/common/session/ConnectionService;)Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v2

    .line 339
    .local v2, "forwarder":Lorg/apache/sshd/common/forward/ForwardingFilter;
    invoke-interface {v2, p0}, Lorg/apache/sshd/common/forward/ForwardingFilter;->addPortForwardingEventListenerManager(Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;)Z

    .line 340
    return-object v2
.end method

.method protected createX11ForwardSupport(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/server/x11/X11ForwardSupport;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 365
    new-instance v0, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;

    invoke-direct {v0, p0}, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;-><init>(Lorg/apache/sshd/common/session/ConnectionService;)V

    return-object v0
.end method

.method protected futureDone(Lorg/apache/sshd/common/io/IoWriteFuture;)V
    .locals 2
    .param p1, "future"    # Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 272
    invoke-interface {p1}, Lorg/apache/sshd/common/io/IoWriteFuture;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 273
    .local v0, "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v1

    .line 275
    .local v1, "session":Lorg/apache/sshd/common/session/Session;
    invoke-interface {v1, v0}, Lorg/apache/sshd/common/session/Session;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 277
    .end local v1    # "session":Lorg/apache/sshd/common/session/Session;
    :cond_0
    return-void
.end method

.method public getAgentForwardSupport()Lorg/apache/sshd/agent/common/AgentForwardSupport;
    .locals 5

    .line 371
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v0

    .line 372
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->agentForwardHolder:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 373
    :try_start_0
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->agentForwardHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/agent/common/AgentForwardSupport;

    .line 374
    .local v2, "agentForward":Lorg/apache/sshd/agent/common/AgentForwardSupport;
    if-eqz v2, :cond_0

    .line 375
    monitor-exit v1

    return-object v2

    .line 378
    :cond_0
    nop

    .line 379
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->createAgentForwardSupport(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/agent/common/AgentForwardSupport;

    move-result-object v3

    const-string v4, "No agent forward created for %s"

    .line 378
    invoke-static {v3, v4, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/agent/common/AgentForwardSupport;

    move-object v2, v3

    .line 380
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->agentForwardHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 381
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    const-string v3, "getAgentForwardSupport({}) created instance"

    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    :cond_1
    return-object v2

    .line 381
    .end local v2    # "agentForward":Lorg/apache/sshd/agent/common/AgentForwardSupport;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected getChannel(BILorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/Channel;
    .locals 5
    .param p1, "cmd"    # B
    .param p2, "recipient"    # I
    .param p3, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 721
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channels:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/channel/Channel;

    .line 722
    .local v0, "channel":Lorg/apache/sshd/common/channel/Channel;
    if-eqz v0, :cond_0

    .line 723
    return-object v0

    .line 726
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->resolveUnknownChannelReferenceHandler()Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    move-result-object v1

    .line 727
    .local v1, "handler":Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;
    if-eqz v1, :cond_1

    .line 733
    invoke-interface {v1, p0, p1, p2, p3}, Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;->handleUnknownChannelCommand(Lorg/apache/sshd/common/session/ConnectionService;BILorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/Channel;

    move-result-object v0

    .line 734
    return-object v0

    .line 729
    :cond_1
    new-instance v2, Lorg/apache/sshd/common/channel/exception/SshChannelNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 730
    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on unknown channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Lorg/apache/sshd/common/channel/exception/SshChannelNotFoundException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method protected getChannel(BLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/Channel;
    .locals 1
    .param p1, "cmd"    # B
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 717
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getChannel(BILorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public getChannels()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/channel/Channel;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;
    .locals 5

    .line 307
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v0

    .line 308
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->forwarderHolder:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 309
    :try_start_0
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->forwarderHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/forward/ForwardingFilter;

    .line 310
    .local v2, "forwarder":Lorg/apache/sshd/common/forward/ForwardingFilter;
    if-eqz v2, :cond_0

    .line 311
    monitor-exit v1

    return-object v2

    .line 314
    :cond_0
    nop

    .line 315
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->createForwardingFilter(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v3

    const-string v4, "No forwarder created for %s"

    .line 314
    invoke-static {v3, v4, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-object v2, v3

    .line 316
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->forwarderHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 317
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    const-string v3, "getForwardingFilter({}) created instance"

    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    :cond_1
    return-object v2

    .line 317
    .end local v2    # "forwarder":Lorg/apache/sshd/common/forward/ForwardingFilter;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected getInnerCloseable()Lorg/apache/sshd/common/Closeable;
    .locals 4

    .line 396
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/sshd/common/Closeable;

    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->forwarderHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 397
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/Closeable;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->agentForwardHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/Closeable;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->x11ForwardHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/Closeable;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->sequential([Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 398
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channels:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->parallel(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    .line 396
    return-object v0
.end method

.method protected getNextChannelId()I
    .locals 1

    .line 403
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->nextChannelId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public getPortForwardingEventListenerProxy()Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->listenerProxy:Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getRegisteredManagers()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->managersHolder:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->managersHolder:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getSession()Lorg/apache/sshd/common/session/Session;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->sessionInstance:Lorg/apache/sshd/common/session/helpers/AbstractSession;

    return-object v0
.end method

.method public getUnknownChannelReferenceHandler()Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->unknownChannelReferenceHandler:Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    return-object v0
.end method

.method public getX11ForwardSupport()Lorg/apache/sshd/server/x11/X11ForwardSupport;
    .locals 5

    .line 346
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v0

    .line 347
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->x11ForwardHolder:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->x11ForwardHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/server/x11/X11ForwardSupport;

    .line 349
    .local v2, "x11Support":Lorg/apache/sshd/server/x11/X11ForwardSupport;
    if-eqz v2, :cond_0

    .line 350
    monitor-exit v1

    return-object v2

    .line 353
    :cond_0
    nop

    .line 354
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->createX11ForwardSupport(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/server/x11/X11ForwardSupport;

    move-result-object v3

    const-string v4, "No X11 forwarder created for %s"

    .line 353
    invoke-static {v3, v4, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/server/x11/X11ForwardSupport;

    move-object v2, v3

    .line 355
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->x11ForwardHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 356
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    const-string v3, "getX11ForwardSupport({}) created instance"

    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    :cond_1
    return-object v2

    .line 356
    .end local v2    # "x11Support":Lorg/apache/sshd/server/x11/X11ForwardSupport;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected globalRequest(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 21
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 859
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v3

    .line 860
    .local v3, "req":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBoolean()Z

    move-result v4

    .line 861
    .local v4, "wantReply":Z
    iget-object v0, v1, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    .line 862
    .local v5, "debugEnabled":Z
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-eqz v5, :cond_0

    .line 863
    iget-object v0, v1, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v1, v10, v8

    aput-object v3, v10, v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v6

    const-string v11, "globalRequest({}) received SSH_MSG_GLOBAL_REQUEST {} want-reply={}"

    invoke-interface {v0, v11, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 866
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v10

    .line 867
    .local v10, "session":Lorg/apache/sshd/common/session/Session;
    invoke-interface {v10}, Lorg/apache/sshd/common/session/Session;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v0

    const-string v11, "No factory manager"

    invoke-static {v0, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/apache/sshd/common/FactoryManager;

    .line 868
    .local v11, "manager":Lorg/apache/sshd/common/FactoryManager;
    invoke-interface {v11}, Lorg/apache/sshd/common/FactoryManager;->getGlobalRequestHandlers()Ljava/util/List;

    move-result-object v12

    .line 869
    .local v12, "handlers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/session/ConnectionService;>;>;"
    invoke-static {v12}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v0

    if-lez v0, :cond_5

    .line 870
    iget-object v0, v1, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v13

    .line 871
    .local v13, "traceEnabled":Z
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lorg/apache/sshd/common/channel/RequestHandler;

    .line 874
    .local v15, "handler":Lorg/apache/sshd/common/channel/RequestHandler;, "Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/session/ConnectionService;>;"
    const/16 v16, 0x4

    const/4 v9, 0x5

    :try_start_0
    invoke-interface {v15, v1, v3, v4, v2}, Lorg/apache/sshd/common/channel/RequestHandler;->process(Ljava/lang/Object;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    .local v0, "result":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    move-object/from16 v19, v10

    goto :goto_1

    .line 875
    .end local v0    # "result":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    .line 876
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v6, v1, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    move-object/from16 v19, v10

    .end local v10    # "session":Lorg/apache/sshd/common/session/Session;
    .local v19, "session":Lorg/apache/sshd/common/session/Session;
    new-array v10, v9, [Ljava/lang/Object;

    aput-object v1, v10, v8

    aput-object v3, v10, v7

    .line 877
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const/16 v18, 0x2

    aput-object v20, v10, v18

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    const/16 v17, 0x3

    aput-object v20, v10, v17

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v10, v16

    .line 876
    const-string v7, "globalRequest({})[{}, want-reply={}] failed ({}) to process: {}"

    invoke-interface {v6, v7, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 878
    if-eqz v5, :cond_1

    .line 879
    iget-object v6, v1, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "globalRequest("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ")["

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", want-reply="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "] failure details"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 881
    :cond_1
    sget-object v6, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-object v0, v6

    .line 885
    .local v0, "result":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    :goto_1
    sget-object v6, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Unsupported:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    invoke-virtual {v6, v0}, Lorg/apache/sshd/common/channel/RequestHandler$Result;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 886
    if-eqz v13, :cond_2

    .line 887
    iget-object v6, v1, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v8

    .line 888
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v7, v10

    const/4 v9, 0x2

    aput-object v3, v7, v9

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const/16 v17, 0x3

    aput-object v18, v7, v17

    aput-object v0, v7, v16

    .line 887
    const-string v8, "globalRequest({}) {}#process({})[want-reply={}] : {}"

    invoke-interface {v6, v8, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 886
    :cond_2
    const/4 v9, 0x2

    const/4 v10, 0x1

    const/16 v17, 0x3

    .line 893
    .end local v0    # "result":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .end local v15    # "handler":Lorg/apache/sshd/common/channel/RequestHandler;, "Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/session/ConnectionService;>;"
    :goto_2
    move v6, v9

    move v7, v10

    move/from16 v9, v17

    move-object/from16 v10, v19

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 891
    .restart local v0    # "result":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .restart local v15    # "handler":Lorg/apache/sshd/common/channel/RequestHandler;, "Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/session/ConnectionService;>;"
    :cond_3
    invoke-virtual {v1, v2, v3, v0, v4}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->sendGlobalResponse(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/lang/String;Lorg/apache/sshd/common/channel/RequestHandler$Result;Z)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v6

    return-object v6

    .line 871
    .end local v0    # "result":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .end local v15    # "handler":Lorg/apache/sshd/common/channel/RequestHandler;, "Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/session/ConnectionService;>;"
    .end local v19    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v10    # "session":Lorg/apache/sshd/common/session/Session;
    :cond_4
    move-object/from16 v19, v10

    .end local v10    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v19    # "session":Lorg/apache/sshd/common/session/Session;
    goto :goto_3

    .line 869
    .end local v13    # "traceEnabled":Z
    .end local v19    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v10    # "session":Lorg/apache/sshd/common/session/Session;
    :cond_5
    move-object/from16 v19, v10

    .line 896
    .end local v10    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v19    # "session":Lorg/apache/sshd/common/session/Session;
    :goto_3
    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->handleUnknownRequest(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/lang/String;Z)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v0

    return-object v0
.end method

.method protected handleChannelRegistrationFailure(Lorg/apache/sshd/common/channel/Channel;I)V
    .locals 5
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "channelId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not registered because session is being closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 439
    .local v0, "reason":Ljava/lang/RuntimeException;
    const-class v1, Lorg/apache/sshd/common/channel/AbstractChannel;

    int-to-long v2, p2

    .line 440
    const-string v4, "Non abstract channel for id=%d"

    invoke-static {p1, v1, v4, v2, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkInstanceOf(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/channel/AbstractChannel;

    .line 441
    .local v1, "notifier":Lorg/apache/sshd/common/channel/AbstractChannel;
    invoke-virtual {v1, v0}, Lorg/apache/sshd/common/channel/AbstractChannel;->signalChannelClosed(Ljava/lang/Throwable;)V

    .line 442
    throw v0
.end method

.method protected handleUnknownRequest(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/lang/String;Z)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 2
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "req"    # Ljava/lang/String;
    .param p3, "wantReply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 900
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    const-string v1, "handleUnknownRequest({}) unknown global request: {}"

    invoke-interface {v0, v1, p0, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 901
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Unsupported:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->sendGlobalResponse(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/lang/String;Lorg/apache/sshd/common/channel/RequestHandler$Result;Z)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v0

    return-object v0
.end method

.method public isAllowMoreSessions()Z
    .locals 1

    .line 528
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->allowMoreSessions:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$channelOpen$0$org-apache-sshd-common-session-helpers-AbstractConnectionService(Lorg/apache/sshd/common/channel/Channel;ZIILorg/apache/sshd/common/session/Session;Lorg/apache/sshd/client/future/OpenFuture;)V
    .locals 18
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "debugEnabled"    # Z
    .param p3, "sender"    # I
    .param p4, "channelId"    # I
    .param p5, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p6, "future"    # Lorg/apache/sshd/client/future/OpenFuture;

    move-object/from16 v7, p0

    move/from16 v8, p4

    move-object/from16 v9, p5

    .line 789
    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x3

    :try_start_0
    invoke-interface/range {p6 .. p6}, Lorg/apache/sshd/client/future/OpenFuture;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    invoke-interface/range {p1 .. p1}, Lorg/apache/sshd/common/channel/Channel;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v0

    .line 791
    .local v0, "window":Lorg/apache/sshd/common/channel/Window;
    if-eqz p2, :cond_0

    .line 792
    iget-object v1, v7, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    const-string v2, "operationComplete({}) send SSH_MSG_CHANNEL_OPEN_CONFIRMATION recipient={}, sender={}, window-size={}, packet-size={}"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v12

    .line 793
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/Window;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v13

    const/4 v4, 0x4

    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/Window;->getPacketSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 792
    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 795
    :cond_0
    const/16 v1, 0x5b

    const/16 v2, 0x20

    .line 796
    invoke-interface {v9, v1, v2}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 797
    .local v1, "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    move/from16 v14, p3

    int-to-long v2, v14

    :try_start_1
    invoke-virtual {v1, v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 798
    int-to-long v2, v8

    invoke-virtual {v1, v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 799
    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/Window;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 800
    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/Window;->getPacketSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 801
    invoke-interface {v9, v1}, Lorg/apache/sshd/common/session/Session;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 802
    nop

    .end local v0    # "window":Lorg/apache/sshd/common/channel/Window;
    .end local v1    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    goto/16 :goto_1

    .line 803
    :cond_1
    move/from16 v14, p3

    const/4 v0, 0x0

    .line 804
    .local v0, "reasonCode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generic error while opening channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 805
    .local v1, "message":Ljava/lang/String;
    invoke-interface/range {p6 .. p6}, Lorg/apache/sshd/client/future/OpenFuture;->getException()Ljava/lang/Throwable;

    move-result-object v2

    move-object v15, v2

    .line 806
    .local v15, "exception":Ljava/lang/Throwable;
    if-eqz v15, :cond_3

    .line 807
    instance-of v2, v15, Lorg/apache/sshd/common/channel/exception/SshChannelOpenException;

    if-eqz v2, :cond_2

    .line 808
    move-object v2, v15

    check-cast v2, Lorg/apache/sshd/common/channel/exception/SshChannelOpenException;

    invoke-virtual {v2}, Lorg/apache/sshd/common/channel/exception/SshChannelOpenException;->getReasonCode()I

    move-result v2

    move v0, v2

    move-object/from16 v6, p6

    move-object/from16 v16, v1

    goto :goto_0

    .line 810
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while opening channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object/from16 v6, p6

    move-object/from16 v16, v1

    goto :goto_0

    .line 813
    :cond_3
    iget-object v2, v7, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    const-string v3, "operationComplete({}) no exception on closed future={}"

    move-object/from16 v6, p6

    invoke-interface {v2, v3, v7, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v1

    .line 817
    .end local v1    # "message":Ljava/lang/String;
    .local v16, "message":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x5c

    .line 818
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x40

    invoke-interface {v9, v1, v2}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v2

    .line 819
    .local v2, "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    const-string v17, ""

    move-object/from16 v1, p0

    move/from16 v3, p3

    move v4, v0

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->sendChannelOpenFailure(Lorg/apache/sshd/common/util/buffer/Buffer;IILjava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/common/io/IoWriteFuture;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 827
    .end local v0    # "reasonCode":I
    .end local v2    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v15    # "exception":Ljava/lang/Throwable;
    .end local v16    # "message":Ljava/lang/String;
    :goto_1
    goto :goto_3

    .line 821
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v14, p3

    .line 822
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    if-eqz p2, :cond_4

    .line 823
    iget-object v1, v7, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v7, v2, v12

    .line 824
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    .line 823
    const-string v3, "operationComplete({}) {}: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 826
    :cond_4
    invoke-interface {v9, v0}, Lorg/apache/sshd/common/session/Session;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 828
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method

.method protected preClose()V
    .locals 1

    .line 327
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->stopHeartBeat()V

    .line 328
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 329
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->managersHolder:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 330
    invoke-super {p0}, Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;->preClose()V

    .line 331
    return-void
.end method

.method public process(ILorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 465
    packed-switch p1, :pswitch_data_0

    .line 516
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v0

    .line 517
    .local v0, "session":Lorg/apache/sshd/common/session/helpers/AbstractSession;
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    .line 519
    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v2

    .line 518
    const-string v3, "process({}) Unsupported command: {}"

    invoke-interface {v1, v3, v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 485
    .end local v0    # "session":Lorg/apache/sshd/common/session/helpers/AbstractSession;
    :pswitch_1
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channelFailure(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 486
    goto :goto_1

    .line 488
    :pswitch_2
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channelSuccess(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 489
    goto :goto_1

    .line 476
    :pswitch_3
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channelRequest(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 477
    goto :goto_1

    .line 497
    :pswitch_4
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channelClose(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 498
    goto :goto_1

    .line 494
    :pswitch_5
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channelEof(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 495
    goto :goto_1

    .line 482
    :pswitch_6
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channelExtendedData(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 483
    goto :goto_1

    .line 479
    :pswitch_7
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channelData(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 480
    goto :goto_1

    .line 491
    :pswitch_8
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channelWindowAdjust(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 492
    goto :goto_1

    .line 473
    :pswitch_9
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channelOpenFailure(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 474
    goto :goto_1

    .line 470
    :pswitch_a
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channelOpenConfirmation(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 471
    goto :goto_1

    .line 467
    :pswitch_b
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channelOpen(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 468
    goto :goto_1

    .line 506
    :pswitch_c
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->requestFailure(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 507
    goto :goto_1

    .line 503
    :pswitch_d
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->requestSuccess(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 504
    goto :goto_1

    .line 500
    :pswitch_e
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->globalRequest(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 501
    goto :goto_1

    .line 521
    .restart local v0    # "session":Lorg/apache/sshd/common/session/helpers/AbstractSession;
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->notImplemented(ILorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 524
    .end local v0    # "session":Lorg/apache/sshd/common/session/helpers/AbstractSession;
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public registerChannel(Lorg/apache/sshd/common/channel/Channel;)I
    .locals 10
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v0

    .line 409
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    const-string v1, "max-sshd-channels"

    const v2, 0x7fffffff

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    .line 410
    .local v1, "maxChannels":I
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channels:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    .line 411
    .local v2, "curSize":I
    if-gt v2, v1, :cond_3

    .line 415
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getNextChannelId()I

    move-result v3

    .line 416
    .local v3, "channelId":I
    invoke-interface {p1, p0, v0, v3}, Lorg/apache/sshd/common/channel/Channel;->init(Lorg/apache/sshd/common/session/ConnectionService;Lorg/apache/sshd/common/session/Session;I)V

    .line 418
    const/4 v4, 0x0

    .line 419
    .local v4, "registered":Z
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channels:Ljava/util/Map;

    monitor-enter v5

    .line 420
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->isClosing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 421
    iget-object v6, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channels:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const/4 v4, 0x1

    .line 424
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    if-nez v4, :cond_1

    .line 427
    invoke-virtual {p0, p1, v3}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->handleChannelRegistrationFailure(Lorg/apache/sshd/common/channel/Channel;I)V

    .line 430
    :cond_1
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 431
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    const-string v6, "registerChannel({})[id={}] {}"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p1, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    :cond_2
    return v3

    .line 424
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 412
    .end local v3    # "channelId":I
    .end local v4    # "registered":Z
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Currently active channels ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") at max.: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public removePortForwardingEventListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 144
    if-nez p1, :cond_0

    .line 145
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->listeners:Ljava/util/Collection;

    invoke-static {p1}, Lorg/apache/sshd/common/forward/PortForwardingEventListener;->validateListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method public removePortForwardingEventListenerManager(Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;)Z
    .locals 1
    .param p1, "manager"    # Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;

    .line 173
    if-nez p1, :cond_0

    .line 174
    const/4 v0, 0x0

    return v0

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->managersHolder:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected requestFailure(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 933
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v0

    .line 934
    .local v0, "s":Lorg/apache/sshd/common/session/helpers/AbstractSession;
    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestFailure(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 935
    return-void
.end method

.method protected requestSuccess(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 928
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v0

    .line 929
    .local v0, "s":Lorg/apache/sshd/common/session/helpers/AbstractSession;
    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->requestSuccess(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 930
    return-void
.end method

.method public resolveUnknownChannelReferenceHandler()Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;
    .locals 3

    .line 739
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getUnknownChannelReferenceHandler()Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    move-result-object v0

    .line 740
    .local v0, "handler":Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;
    if-eqz v0, :cond_0

    .line 741
    return-object v0

    .line 744
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v1

    .line 745
    .local v1, "s":Lorg/apache/sshd/common/session/Session;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lorg/apache/sshd/common/session/Session;->resolveUnknownChannelReferenceHandler()Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method protected sendChannelOpenFailure(Lorg/apache/sshd/common/util/buffer/Buffer;IILjava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 4
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "sender"    # I
    .param p3, "reasonCode"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    .line 836
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Lorg/apache/sshd/common/SshConstants;->getOpenErrorCodeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    .line 835
    const-string v2, "sendChannelOpenFailure({}) sender={}, reason={}, lang={}, message=\'{}\'"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 839
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v0

    .line 840
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    const/16 v1, 0x5c

    .line 841
    invoke-static {p4}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v2

    add-int/lit8 v2, v2, 0x40

    invoke-static {p5}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v2, v3

    .line 840
    invoke-interface {v0, v1, v2}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v1

    .line 842
    .local v1, "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 843
    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 844
    invoke-virtual {v1, p4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 845
    invoke-virtual {v1, p5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 846
    invoke-interface {v0, v1}, Lorg/apache/sshd/common/session/Session;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v2

    return-object v2
.end method

.method protected sendGlobalResponse(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/lang/String;Lorg/apache/sshd/common/channel/RequestHandler$Result;Z)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 5
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "req"    # Ljava/lang/String;
    .param p3, "result"    # Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .param p4, "wantReply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 907
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    aput-object p3, v2, v1

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "sendGlobalResponse({})[{}] result={}, want-reply={}"

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 911
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Replied:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    invoke-virtual {v0, p3}, Lorg/apache/sshd/common/channel/RequestHandler$Result;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p4, :cond_1

    goto :goto_1

    .line 919
    :cond_1
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplySuccess:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    invoke-virtual {v0, p3}, Lorg/apache/sshd/common/channel/RequestHandler$Result;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x51

    goto :goto_0

    :cond_2
    const/16 v0, 0x52

    .line 922
    .local v0, "cmd":B
    :goto_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v2

    .line 923
    .local v2, "session":Lorg/apache/sshd/common/session/Session;
    invoke-interface {v2, v0, v1}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v1

    .line 924
    .local v1, "rsp":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-interface {v2, v1}, Lorg/apache/sshd/common/session/Session;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v3

    return-object v3

    .line 912
    .end local v0    # "cmd":B
    .end local v1    # "rsp":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v2    # "session":Lorg/apache/sshd/common/session/Session;
    :cond_3
    :goto_1
    new-instance v0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$1;-><init>(Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected sendHeartBeat()Z
    .locals 13

    .line 220
    const-string v0, "ignore@sshd.apache.org"

    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSessionHeartbeatType()Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    move-result-object v1

    .line 221
    .local v1, "heartbeatType":Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSessionHeartbeatInterval()J

    move-result-wide v2

    .line 222
    .local v2, "interval":J
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v4

    .line 223
    .local v4, "session":Lorg/apache/sshd/common/session/Session;
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v5

    .line 224
    .local v5, "traceEnabled":Z
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_0

    .line 225
    iget-object v10, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v4, v11, v9

    aput-object v1, v11, v8

    .line 226
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v7

    .line 225
    const-string v12, "sendHeartbeat({}) heartbeat type={}, interval={}"

    invoke-interface {v10, v12, v11}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    :cond_0
    if-eqz v1, :cond_4

    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_4

    iget-object v10, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->heartBeat:Ljava/util/concurrent/ScheduledFuture;

    if-nez v10, :cond_1

    goto/16 :goto_1

    .line 234
    :cond_1
    :try_start_0
    sget-object v10, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$2;->$SwitchMap$org$apache$sshd$common$session$SessionHeartbeatController$HeartbeatType:[I

    invoke-virtual {v1}, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    goto :goto_0

    .line 247
    :pswitch_0
    nop

    .line 249
    invoke-interface {v4}, Lorg/apache/sshd/common/session/Session;->getReservedSessionMessagesHandler()Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;

    move-result-object v0

    const-string v10, "No customized heartbeat handler registered"

    .line 248
    invoke-static {v0, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;

    .line 251
    .local v0, "handler":Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;
    invoke-interface {v0, p0}, Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;->sendReservedHeartbeat(Lorg/apache/sshd/common/session/ConnectionService;)Z

    move-result v6

    return v6

    .line 238
    .end local v0    # "handler":Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;
    :pswitch_1
    nop

    .line 239
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x8

    .line 238
    invoke-interface {v4, v7, v10}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v10

    .line 240
    .local v10, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v10, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 242
    invoke-interface {v4, v10}, Lorg/apache/sshd/common/session/Session;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v0

    .line 243
    .local v0, "future":Lorg/apache/sshd/common/io/IoWriteFuture;
    new-instance v11, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$$ExternalSyntheticLambda1;

    invoke-direct {v11, p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;)V

    invoke-interface {v0, v11}, Lorg/apache/sshd/common/io/IoWriteFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 244
    return v8

    .line 236
    .end local v0    # "future":Lorg/apache/sshd/common/io/IoWriteFuture;
    .end local v10    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :pswitch_2
    return v9

    .line 254
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported heartbeat type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v1    # "heartbeatType":Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;
    .end local v2    # "interval":J
    .end local v4    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v5    # "traceEnabled":Z
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    .restart local v1    # "heartbeatType":Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;
    .restart local v2    # "interval":J
    .restart local v4    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v5    # "traceEnabled":Z
    :catchall_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Throwable;
    invoke-interface {v4, v0}, Lorg/apache/sshd/common/session/Session;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 259
    iget-object v10, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v10}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 260
    iget-object v10, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v4, v11, v9

    .line 261
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    iget-object v8, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->heartbeatCount:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v8, v11, v7

    aput-object v1, v11, v6

    const/4 v6, 0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v6

    .line 260
    const-string v6, "sendHeartBeat({}) failed ({}) to send heartbeat #{} request={}: {}"

    invoke-interface {v10, v6, v11}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :cond_2
    iget-object v6, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 264
    iget-object v6, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendHeartBeat("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") exception details"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    :cond_3
    return v9

    .line 230
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_1
    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAllowMoreSessions(Z)V
    .locals 3
    .param p1, "allow"    # Z

    .line 533
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "setAllowMoreSessions({}): {}"

    invoke-interface {v0, v2, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 536
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->allowMoreSessions:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 537
    return-void
.end method

.method public setUnknownChannelReferenceHandler(Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    .line 158
    iput-object p1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->unknownChannelReferenceHandler:Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    .line 159
    return-void
.end method

.method public start()V
    .locals 1

    .line 191
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->startHeartBeat()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->heartBeat:Ljava/util/concurrent/ScheduledFuture;

    .line 192
    return-void
.end method

.method protected declared-synchronized startHeartBeat()Ljava/util/concurrent/ScheduledFuture;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 195
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->stopHeartBeat()V

    .line 197
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSessionHeartbeatType()Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    move-result-object v0

    .line 198
    .local v0, "heartbeatType":Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSessionHeartbeatInterval()J

    move-result-wide v1

    .line 199
    .local v1, "interval":J
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v3

    move-object v10, v3

    .line 200
    .local v10, "session":Lorg/apache/sshd/common/session/Session;
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    move v11, v3

    .line 201
    .local v11, "debugEnabled":Z
    if-eqz v11, :cond_0

    .line 202
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    const-string v4, "startHeartbeat({}) heartbeat type={}, interval={}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    .end local p0    # "this":Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;
    :cond_0
    if-eqz v0, :cond_2

    sget-object v3, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;->NONE:Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    if-eq v0, v3, :cond_2

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    goto :goto_0

    .line 209
    :cond_1
    invoke-interface {v10}, Lorg/apache/sshd/common/session/Session;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v3

    move-object v12, v3

    .line 210
    .local v12, "manager":Lorg/apache/sshd/common/FactoryManager;
    invoke-interface {v12}, Lorg/apache/sshd/common/FactoryManager;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    .line 211
    .local v3, "service":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v4, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;)V

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v5, v1

    move-wide v7, v1

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 206
    .end local v3    # "service":Ljava/util/concurrent/ScheduledExecutorService;
    .end local v12    # "manager":Lorg/apache/sshd/common/FactoryManager;
    :cond_2
    :goto_0
    const/4 v3, 0x0

    monitor-exit p0

    return-object v3

    .line 194
    .end local v0    # "heartbeatType":Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;
    .end local v1    # "interval":J
    .end local v10    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v11    # "debugEnabled":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized stopHeartBeat()V
    .locals 5

    monitor-enter p0

    .line 280
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 281
    .local v0, "debugEnabled":Z
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v1

    .line 282
    .local v1, "session":Lorg/apache/sshd/common/session/Session;
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->heartBeat:Ljava/util/concurrent/ScheduledFuture;

    if-nez v2, :cond_1

    .line 283
    if-eqz v0, :cond_0

    .line 284
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    const-string v3, "stopHeartBeat({}) no heartbeat to stop"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 286
    .end local p0    # "this":Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;
    :cond_0
    monitor-exit p0

    return-void

    .line 289
    :cond_1
    if-eqz v0, :cond_2

    .line 290
    :try_start_1
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    const-string v3, "stopHeartBeat({}) stopping"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 294
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->heartBeat:Ljava/util/concurrent/ScheduledFuture;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    :try_start_3
    iput-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->heartBeat:Ljava/util/concurrent/ScheduledFuture;

    .line 297
    nop

    .line 299
    if-eqz v0, :cond_3

    .line 300
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    const-string v3, "stopHeartBeat({}) stopped"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 302
    :cond_3
    monitor-exit p0

    return-void

    .line 296
    :catchall_0
    move-exception v3

    :try_start_4
    iput-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->heartBeat:Ljava/util/concurrent/ScheduledFuture;

    .line 297
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 279
    .end local v0    # "debugEnabled":Z
    .end local v1    # "session":Lorg/apache/sshd/common/session/Session;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 939
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

    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterChannel(Lorg/apache/sshd/common/channel/Channel;)V
    .locals 4
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;

    .line 452
    invoke-interface {p1}, Lorg/apache/sshd/common/channel/Channel;->getId()I

    move-result v0

    .line 454
    .local v0, "channelId":I
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channels:Ljava/util/Map;

    monitor-enter v1

    .line 455
    :try_start_0
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->channels:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/channel/Channel;

    .line 456
    .local v2, "result":Lorg/apache/sshd/common/channel/Channel;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->log:Lorg/slf4j/Logger;

    const-string/jumbo v3, "unregisterChannel({}) result={}"

    invoke-interface {v1, v3, p1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 461
    :cond_0
    return-void

    .line 456
    .end local v2    # "result":Lorg/apache/sshd/common/channel/Channel;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
