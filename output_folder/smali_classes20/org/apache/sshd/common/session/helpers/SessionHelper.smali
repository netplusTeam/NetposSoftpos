.class public abstract Lorg/apache/sshd/common/session/helpers/SessionHelper;
.super Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;
.source "SessionHelper.java"

# interfaces
.implements Lorg/apache/sshd/common/session/Session;


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected authNanoStart:J

.field private authTimeoutStart:J

.field private volatile authed:Z

.field private channelStreamPacketWriterResolver:Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

.field protected idleNanoStart:J

.field private idleTimeoutStart:J

.field private final ioSession:Lorg/apache/sshd/common/io/IoSession;

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

.field private reservedSessionMessagesHandler:Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;

.field private final serverSession:Z

.field private sessionDisconnectHandler:Lorg/apache/sshd/common/session/SessionDisconnectHandler;

.field protected final sessionLock:Ljava/lang/Object;

.field private final timeoutStatus:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;",
            ">;"
        }
    .end annotation
.end field

.field private unknownChannelReferenceHandler:Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

.field private volatile username:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ZLorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoSession;)V
    .locals 2
    .param p1, "serverSession"    # Z
    .param p2, "factoryManager"    # Lorg/apache/sshd/common/FactoryManager;
    .param p3, "ioSession"    # Lorg/apache/sshd/common/io/IoSession;

    .line 126
    const-string v0, "No factory manager provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/kex/KexFactoryManager;

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;-><init>(Lorg/apache/sshd/common/kex/KexFactoryManager;)V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->sessionLock:Ljava/lang/Object;

    .line 84
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->authNanoStart:J

    .line 85
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->idleNanoStart:J

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->properties:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->attributes:Ljava/util/Map;

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->authTimeoutStart:J

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->idleTimeoutStart:J

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;->NONE:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->timeoutStatus:Ljava/util/concurrent/atomic/AtomicReference;

    .line 127
    iput-boolean p1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->serverSession:Z

    .line 128
    const-string v0, "No IoSession provided"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/io/IoSession;

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->ioSession:Lorg/apache/sshd/common/io/IoSession;

    .line 129
    return-void
.end method

.method static synthetic lambda$writePacket$1(Ljava/util/concurrent/ScheduledFuture;Lorg/apache/sshd/common/io/IoWriteFuture;)V
    .locals 1
    .param p0, "sched"    # Ljava/util/concurrent/ScheduledFuture;
    .param p1, "f"    # Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 534
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void
.end method


# virtual methods
.method public attributeKeys()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "*>;>;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0
.end method

.method protected calculateNextIgnorePacketCount(Lorg/apache/sshd/common/random/Random;JI)J
    .locals 6
    .param p1, "r"    # Lorg/apache/sshd/common/random/Random;
    .param p2, "freq"    # J
    .param p4, "variance"    # I

    .line 744
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_5

    if-gez p4, :cond_0

    goto :goto_2

    .line 748
    :cond_0
    if-nez p4, :cond_1

    .line 749
    return-wide p2

    .line 752
    :cond_1
    if-gez p4, :cond_2

    rsub-int/lit8 v0, p4, 0x0

    goto :goto_0

    :cond_2
    move v0, p4

    :goto_0
    invoke-interface {p1, v0}, Lorg/apache/sshd/common/random/Random;->random(I)I

    move-result v0

    .line 753
    .local v0, "extra":I
    int-to-long v1, v0

    if-gez p4, :cond_3

    sub-long v1, p2, v1

    goto :goto_1

    :cond_3
    add-long/2addr v1, p2

    .line 754
    .local v1, "count":J
    :goto_1
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 755
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "calculateNextIgnorePacketCount({}) count={}"

    invoke-interface {v3, v5, p0, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 758
    :cond_4
    return-wide v1

    .line 745
    .end local v0    # "extra":I
    .end local v1    # "count":J
    :cond_5
    :goto_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected checkAuthenticationTimeout(JJJ)Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;
    .locals 12
    .param p1, "now"    # J
    .param p3, "nanoTime"    # J
    .param p5, "authTimeoutMs"    # J

    .line 328
    move-object v6, p0

    iget-wide v0, v6, Lorg/apache/sshd/common/session/helpers/SessionHelper;->authNanoStart:J

    sub-long v7, p3, v0

    .line 329
    .local v7, "authDiffNano":J
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    .line 330
    .local v9, "authDiffMs":J
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_0

    cmp-long v0, v9, p5

    if-lez v0, :cond_0

    .line 331
    new-instance v11, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;

    sget-object v1, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;->AuthTimeout:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    move-object v0, v11

    move-wide/from16 v2, p5

    move-wide v4, v9

    invoke-direct/range {v0 .. v5}, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;-><init>(Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;JJ)V

    return-object v11

    .line 333
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected checkForTimeouts()Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->isClosing()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->timeoutStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;

    .line 238
    .local v0, "result":Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;
    if-nez v0, :cond_1

    sget-object v1, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;->NoTimeout:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {v0}, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;->getStatus()Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    move-result-object v1

    :goto_0
    nop

    .line 240
    .local v1, "status":Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;
    if-eqz v1, :cond_3

    sget-object v2, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;->NoTimeout:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    if-eq v1, v2, :cond_3

    .line 241
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 242
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    const-string v3, "checkForTimeouts({}) already detected {}"

    invoke-interface {v2, v3, p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 244
    :cond_2
    return-object v0

    .line 247
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 248
    .local v2, "now":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 249
    .local v11, "nanoTime":J
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getAuthTimeout()J

    move-result-wide v9

    move-object v4, p0

    move-wide v5, v2

    move-wide v7, v11

    invoke-virtual/range {v4 .. v10}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->checkAuthenticationTimeout(JJJ)Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;

    move-result-object v0

    .line 250
    if-nez v0, :cond_4

    .line 251
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getIdleTimeout()J

    move-result-wide v9

    move-object v4, p0

    move-wide v5, v2

    move-wide v7, v11

    invoke-virtual/range {v4 .. v10}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->checkIdleTimeout(JJJ)Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;

    move-result-object v0

    .line 254
    :cond_4
    if-nez v0, :cond_5

    sget-object v4, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;->NoTimeout:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;->getStatus()Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    move-result-object v4

    :goto_1
    move-object v1, v4

    .line 255
    if-eqz v1, :cond_c

    sget-object v4, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;->NoTimeout:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    invoke-virtual {v4, v1}, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_6

    .line 259
    :cond_6
    const/4 v4, 0x0

    .line 261
    .local v4, "resetTimeout":Z
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getSessionDisconnectHandler()Lorg/apache/sshd/common/session/SessionDisconnectHandler;

    move-result-object v8

    .line 262
    .local v8, "handler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    if-eqz v8, :cond_7

    invoke-interface {v8, p0, v0}, Lorg/apache/sshd/common/session/SessionDisconnectHandler;->handleTimeoutDisconnectReason(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_7

    goto :goto_2

    :cond_7
    move v6, v7

    :goto_2
    move v4, v6

    .line 270
    .end local v8    # "handler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    goto :goto_4

    .line 263
    :catch_0
    move-exception v8

    goto :goto_3

    :catch_1
    move-exception v8

    .line 265
    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    iget-object v9, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p0, v10, v7

    .line 266
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v6

    aput-object v0, v10, v5

    const/4 v6, 0x3

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v6

    .line 265
    const-string v6, "checkForTimeouts({}) failed ({}) to invoke disconnect handler to handle {}: {}"

    invoke-interface {v9, v6, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    iget-object v6, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 268
    iget-object v6, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkForTimeouts("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ") disconnect handler exception details"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_4
    if-eqz v4, :cond_a

    .line 273
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 274
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    const-string v6, "checkForTimeouts({}) cancel {} due to handler intervention"

    invoke-interface {v5, v6, p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    :cond_9
    sget-object v5, Lorg/apache/sshd/common/session/helpers/SessionHelper$1;->$SwitchMap$org$apache$sshd$common$session$helpers$TimeoutIndicator$TimeoutStatus:[I

    invoke-virtual {v1}, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_5

    .line 282
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->resetIdleTimeout()J

    .line 283
    goto :goto_5

    .line 279
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->resetAuthTimeout()J

    .line 280
    nop

    .line 288
    :goto_5
    sget-object v5, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;->NONE:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;

    return-object v5

    .line 291
    :cond_a
    iget-object v6, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 292
    iget-object v6, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    const-string v7, "checkForTimeouts({}) disconnect - reason={}"

    invoke-interface {v6, v7, p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 295
    :cond_b
    iget-object v6, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->timeoutStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Detected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 298
    invoke-virtual {v0}, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;->getExpiredValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 299
    invoke-virtual {v0}, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;->getThresholdValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 297
    invoke-virtual {p0, v5, v6}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->disconnect(ILjava/lang/String;)V

    .line 300
    return-object v0

    .line 256
    .end local v4    # "resetTimeout":Z
    :cond_c
    :goto_6
    sget-object v4, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;->NONE:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;

    return-object v4

    .line 230
    .end local v0    # "result":Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;
    .end local v1    # "status":Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;
    .end local v2    # "now":J
    .end local v11    # "nanoTime":J
    :cond_d
    :goto_7
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 231
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    const-string v1, "checkForTimeouts({}) session closing"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    :cond_e
    sget-object v0, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;->NONE:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected checkIdleTimeout(JJJ)Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;
    .locals 12
    .param p1, "now"    # J
    .param p3, "nanoTime"    # J
    .param p5, "idleTimeoutMs"    # J

    .line 354
    move-object v6, p0

    iget-wide v0, v6, Lorg/apache/sshd/common/session/helpers/SessionHelper;->idleNanoStart:J

    sub-long v7, p3, v0

    .line 355
    .local v7, "idleDiffNano":J
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    .line 356
    .local v9, "idleDiffMs":J
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_0

    cmp-long v0, v9, p5

    if-lez v0, :cond_0

    .line 357
    new-instance v11, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;

    sget-object v1, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;->IdleTimeout:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    move-object v0, v11

    move-wide/from16 v2, p5

    move-wide v4, v9

    invoke-direct/range {v0 .. v5}, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;-><init>(Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;JJ)V

    return-object v11

    .line 359
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearAttributes()V
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 196
    return-void
.end method

.method public computeAttributeIfAbsent(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "-",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;+TT;>;)TT;"
        }
    .end annotation

    .line 176
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    .local p2, "resolver":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;+TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->attributes:Ljava/util/Map;

    const-string v1, "No key"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected createProposal(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "hostKeyTypes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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

    .line 895
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 896
    .local v0, "proposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->resolveSessionKexProposal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 897
    .local v1, "kexProposal":Ljava/lang/String;
    sget-object v2, Lorg/apache/sshd/common/kex/KexProposalOption;->ALGORITHMS:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    sget-object v2, Lorg/apache/sshd/common/kex/KexProposalOption;->SERVERKEYS:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    nop

    .line 901
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getCipherFactories()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "No cipher factories"

    invoke-static {v2, v5, v4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    .line 900
    invoke-static {v2}, Lorg/apache/sshd/common/NamedResource;->getNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    .line 902
    .local v2, "ciphers":Ljava/lang/String;
    sget-object v4, Lorg/apache/sshd/common/kex/KexProposalOption;->S2CENC:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    sget-object v4, Lorg/apache/sshd/common/kex/KexProposalOption;->C2SENC:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    nop

    .line 906
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getMacFactories()Ljava/util/List;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "No MAC factories"

    invoke-static {v4, v6, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    .line 905
    invoke-static {v4}, Lorg/apache/sshd/common/NamedResource;->getNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    .line 907
    .local v4, "macs":Ljava/lang/String;
    sget-object v5, Lorg/apache/sshd/common/kex/KexProposalOption;->S2CMAC:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    sget-object v5, Lorg/apache/sshd/common/kex/KexProposalOption;->C2SMAC:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    nop

    .line 911
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getCompressionFactories()Ljava/util/List;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "No compression factories"

    invoke-static {v5, v6, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    .line 910
    invoke-static {v3}, Lorg/apache/sshd/common/NamedResource;->getNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    .line 912
    .local v3, "compressions":Ljava/lang/String;
    sget-object v5, Lorg/apache/sshd/common/kex/KexProposalOption;->S2CCOMP:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    sget-object v5, Lorg/apache/sshd/common/kex/KexProposalOption;->C2SCOMP:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    sget-object v5, Lorg/apache/sshd/common/kex/KexProposalOption;->S2CLANG:Lorg/apache/sshd/common/kex/KexProposalOption;

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    sget-object v5, Lorg/apache/sshd/common/kex/KexProposalOption;->C2SLANG:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    return-object v0
.end method

.method public disconnect(ILjava/lang/String;)V
    .locals 6
    .param p1, "reason"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1001
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getDisconnectReasonName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string v2, "Disconnecting({}): {} - {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1002
    const-string v0, ""

    .line 1003
    .local v0, "languageTag":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0, v3}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->signalDisconnect(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1005
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, v3, v1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v1

    .line 1006
    .local v1, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 1007
    invoke-virtual {v1, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 1008
    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 1012
    sget-wide v2, Lorg/apache/sshd/common/FactoryManager;->DEFAULT_DISCONNECT_TIMEOUT:J

    const-string v4, "disconnect-timeout"

    invoke-virtual {p0, v4, v2, v3}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1014
    .local v2, "disconnectTimeoutMs":J
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;JLjava/util/concurrent/TimeUnit;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v4

    .line 1015
    .local v4, "packetFuture":Lorg/apache/sshd/common/io/IoWriteFuture;
    new-instance v5, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1, p2}, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/session/helpers/SessionHelper;ILjava/lang/String;)V

    invoke-interface {v4, v5}, Lorg/apache/sshd/common/io/IoWriteFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 1038
    return-void
.end method

.method protected doReadIdentification(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Ljava/util/List;
    .locals 13
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "server"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 812
    const-string v0, "max-identification-size"

    const/16 v1, 0x4000

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/PropertyResolverUtils;->getIntProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;I)I

    move-result v0

    .line 814
    .local v0, "maxIdentSize":I
    const/4 v1, 0x0

    .line 815
    .local v1, "ident":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v2

    .line 816
    .local v2, "rpos":I
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    .line 817
    .local v3, "debugEnabled":Z
    const/16 v4, 0x100

    new-array v4, v4, [B

    .line 818
    .local v4, "data":[B
    :goto_0
    const/4 v5, 0x0

    .line 819
    .local v5, "pos":I
    const/4 v6, 0x0

    .line 820
    .local v6, "needLf":Z
    :goto_1
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v7

    if-nez v7, :cond_0

    .line 822
    invoke-virtual {p1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V

    .line 823
    const/4 v7, 0x0

    return-object v7

    .line 826
    :cond_0
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getByte()B

    move-result v7

    .line 832
    .local v7, "b":B
    const/4 v8, 0x0

    if-eqz v7, :cond_a

    .line 837
    const/16 v9, 0xd

    if-ne v7, v9, :cond_1

    .line 838
    const/4 v6, 0x1

    .line 839
    goto :goto_1

    .line 842
    :cond_1
    const/16 v9, 0xa

    if-ne v7, v9, :cond_7

    .line 843
    nop

    .line 861
    .end local v6    # "needLf":Z
    .end local v7    # "b":B
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v4, v8, v5, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 862
    .local v6, "str":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 863
    iget-object v7, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    const-string v8, "doReadIdentification({}) line=\'{}\'"

    invoke-interface {v7, v8, p0, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 866
    :cond_2
    if-nez v1, :cond_3

    .line 867
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v7

    .line 869
    :cond_3
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    if-nez p2, :cond_6

    const-string v7, "SSH-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    .line 876
    :cond_4
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v7

    if-gt v7, v0, :cond_5

    .line 879
    .end local v5    # "pos":I
    .end local v6    # "str":Ljava/lang/String;
    goto :goto_0

    .line 877
    .restart local v5    # "pos":I
    .restart local v6    # "str":Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/io/StreamCorruptedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect identification (too many header lines): size > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 873
    :cond_6
    :goto_2
    return-object v1

    .line 846
    .local v6, "needLf":Z
    .restart local v7    # "b":B
    :cond_7
    const-string v9, ": "

    if-nez v6, :cond_9

    .line 852
    array-length v10, v4

    if-ge v5, v10, :cond_8

    .line 858
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pos":I
    .local v8, "pos":I
    aput-byte v7, v4, v5

    .line 859
    .end local v7    # "b":B
    move v5, v8

    goto :goto_1

    .line 853
    .end local v8    # "pos":I
    .restart local v5    # "pos":I
    .restart local v7    # "b":B
    :cond_8
    new-instance v10, Ljava/io/StreamCorruptedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Incorrect identification (line too long):  at line "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 854
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v11, Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v4, v8, v5, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 847
    :cond_9
    new-instance v10, Ljava/io/StreamCorruptedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Incorrect identification (bad line ending)  at line "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 848
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v11, Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v4, v8, v5, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 833
    :cond_a
    new-instance v9, Ljava/io/StreamCorruptedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incorrect identification (null characters not allowed) -  at line "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 834
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " character #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " after \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v4, v8, v5, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public exceptionCaught(Ljava/lang/Throwable;)V
    .locals 12
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 1105
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;

    .line 1107
    .local v0, "curState":Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;
    sget-object v1, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->Opened:Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;

    invoke-virtual {v1, v0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ")[state="

    const-string v3, "exceptionCaught("

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-nez v1, :cond_2

    sget-object v1, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->Graceful:Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;

    invoke-virtual {v1, v0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1108
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1109
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v6

    .line 1110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v8

    aput-object v0, v7, v5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    .line 1109
    const-string v4, "exceptionCaught({}) ignore {} due to state={}, message=\'{}\'"

    invoke-interface {v1, v4, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1112
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1113
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ignored exception details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1115
    :cond_1
    return-void

    .line 1118
    :cond_2
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-array v9, v7, [Ljava/lang/Object;

    aput-object p0, v9, v6

    aput-object v0, v9, v8

    .line 1119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    .line 1118
    const-string v10, "exceptionCaught({})[state={}] {}: {}"

    invoke-interface {v1, v10, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1121
    .local v1, "cause":Ljava/lang/Throwable;
    if-eqz v1, :cond_3

    invoke-static {p1, v1}, Lorg/apache/sshd/common/util/GenericUtils;->isSameReference(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1122
    const/4 v1, 0x0

    .line 1124
    :cond_3
    if-eqz v1, :cond_4

    .line 1125
    iget-object v9, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-array v10, v7, [Ljava/lang/Object;

    aput-object p0, v10, v6

    aput-object v0, v10, v8

    .line 1126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    .line 1125
    const-string v11, "exceptionCaught({})[state={}] caused by {}: {}"

    invoke-interface {v9, v11, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1129
    :cond_4
    iget-object v9, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v9}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1130
    iget-object v9, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] details"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1131
    if-eqz v1, :cond_5

    .line 1132
    iget-object v9, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "] cause"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1136
    :cond_5
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->signalExceptionCaught(Ljava/lang/Throwable;)V

    .line 1138
    sget-object v2, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->Opened:Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;

    invoke-virtual {v2, v0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    instance-of v2, p1, Lorg/apache/sshd/common/SshException;

    if-eqz v2, :cond_8

    .line 1139
    move-object v2, p1

    check-cast v2, Lorg/apache/sshd/common/SshException;

    invoke-virtual {v2}, Lorg/apache/sshd/common/SshException;->getDisconnectCode()I

    move-result v2

    .line 1140
    .local v2, "code":I
    if-lez v2, :cond_8

    .line 1142
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v2, v9}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->disconnect(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    goto :goto_0

    .line 1143
    :catchall_0
    move-exception v9

    .line 1144
    .local v9, "t2":Ljava/lang/Throwable;
    iget-object v10, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v10}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1145
    iget-object v10, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v6

    .line 1146
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v8

    invoke-static {v2}, Lorg/apache/sshd/common/SshConstants;->getDisconnectReasonName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    .line 1145
    const-string v4, "exceptionCaught({}) {} while disconnect with code={}: {}"

    invoke-interface {v10, v4, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1148
    :cond_6
    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1149
    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")[code="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lorg/apache/sshd/common/SshConstants;->getDisconnectReasonName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] disconnect exception details"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v9}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1152
    .end local v9    # "t2":Ljava/lang/Throwable;
    :cond_7
    :goto_0
    return-void

    .line 1156
    .end local v2    # "code":I
    :cond_8
    invoke-virtual {p0, v8}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 1157
    return-void
.end method

.method public getAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 164
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->attributes:Ljava/util/Map;

    const-string v1, "No key"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributesCount()I
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getAuthTimeout()J
    .locals 3

    .line 1280
    sget-wide v0, Lorg/apache/sshd/common/FactoryManager;->DEFAULT_AUTH_TIMEOUT:J

    const-string v2, "auth-timeout"

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAuthTimeoutStart()J
    .locals 2

    .line 305
    iget-wide v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->authTimeoutStart:J

    return-wide v0
.end method

.method public getBoundLocalPortForward(I)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 2
    .param p1, "port"    # I

    .line 1250
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v0

    .line 1251
    .local v0, "filter":Lorg/apache/sshd/common/forward/ForwardingFilter;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/sshd/common/forward/ForwardingFilter;->getBoundLocalPortForward(I)Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getBoundRemotePortForward(I)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 2
    .param p1, "port"    # I

    .line 1274
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v0

    .line 1275
    .local v0, "filter":Lorg/apache/sshd/common/forward/ForwardingFilter;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/sshd/common/forward/ForwardingFilter;->getBoundRemotePortForward(I)Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getChannelStreamPacketWriterResolver()Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;
    .locals 1

    .line 493
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->channelStreamPacketWriterResolver:Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

    return-object v0
.end method

.method protected abstract getConnectionService()Lorg/apache/sshd/common/session/ConnectionService;
.end method

.method public getFactoryManager()Lorg/apache/sshd/common/FactoryManager;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getDelegate()Lorg/apache/sshd/common/kex/KexFactoryManager;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/FactoryManager;

    return-object v0
.end method

.method protected getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;
    .locals 2

    .line 1226
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getConnectionService()Lorg/apache/sshd/common/session/ConnectionService;

    move-result-object v0

    .line 1227
    .local v0, "service":Lorg/apache/sshd/common/session/ConnectionService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/session/ConnectionService;->getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getIdleTimeout()J
    .locals 3

    .line 1285
    sget-wide v0, Lorg/apache/sshd/common/FactoryManager;->DEFAULT_IDLE_TIMEOUT:J

    const-string v2, "idle-timeout"

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIdleTimeoutStart()J
    .locals 2

    .line 339
    iget-wide v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->idleTimeoutStart:J

    return-wide v0
.end method

.method public getIoSession()Lorg/apache/sshd/common/io/IoSession;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->ioSession:Lorg/apache/sshd/common/io/IoSession;

    return-object v0
.end method

.method public getLocalForwardsBindings()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lorg/apache/sshd/common/util/net/SshdSocketAddress;",
            ">;>;"
        }
    .end annotation

    .line 1232
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v0

    .line 1233
    .local v0, "filter":Lorg/apache/sshd/common/forward/ForwardingFilter;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/forward/ForwardingFilter;->getLocalForwardsBindings()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getParentPropertyResolver()Lorg/apache/sshd/common/PropertyResolver;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v0

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

    .line 153
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getRemoteForwardsBindings()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lorg/apache/sshd/common/util/net/SshdSocketAddress;",
            ">;>;"
        }
    .end annotation

    .line 1256
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v0

    .line 1257
    .local v0, "filter":Lorg/apache/sshd/common/forward/ForwardingFilter;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/forward/ForwardingFilter;->getRemoteForwardsBindings()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getReservedSessionMessagesHandler()Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;
    .locals 3

    .line 378
    const-class v0, Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;

    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->reservedSessionMessagesHandler:Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;

    .line 379
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/sshd/common/FactoryManager;->getReservedSessionMessagesHandler()Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;

    move-result-object v2

    .line 378
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->resolveEffectiveProvider(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;

    return-object v0
.end method

.method public getSessionDisconnectHandler()Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    .locals 3

    .line 389
    const-class v0, Lorg/apache/sshd/common/session/SessionDisconnectHandler;

    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->sessionDisconnectHandler:Lorg/apache/sshd/common/session/SessionDisconnectHandler;

    .line 390
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/sshd/common/FactoryManager;->getSessionDisconnectHandler()Lorg/apache/sshd/common/session/SessionDisconnectHandler;

    move-result-object v2

    .line 389
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->resolveEffectiveProvider(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/SessionDisconnectHandler;

    return-object v0
.end method

.method public getStartedLocalPortForwards()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1244
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v0

    .line 1245
    .local v0, "filter":Lorg/apache/sshd/common/forward/ForwardingFilter;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyNavigableSet()Ljava/util/NavigableSet;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/forward/ForwardingFilter;->getStartedLocalPortForwards()Ljava/util/NavigableSet;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getStartedRemotePortForwards()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1268
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v0

    .line 1269
    .local v0, "filter":Lorg/apache/sshd/common/forward/ForwardingFilter;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyNavigableSet()Ljava/util/NavigableSet;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/forward/ForwardingFilter;->getStartedRemotePortForwards()Ljava/util/NavigableSet;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getTimeoutStatus()Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->timeoutStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;

    return-object v0
.end method

.method public getUnknownChannelReferenceHandler()Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;
    .locals 1

    .line 472
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->unknownChannelReferenceHandler:Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->username:Ljava/lang/String;

    return-object v0
.end method

.method protected handleDebug(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 3
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 453
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->isValidMessageStructure([Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    const-string v1, "handleDebug({}) ignore malformed message"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 457
    :cond_0
    return-void

    .line 459
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->resetIdleTimeout()J

    .line 461
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->resolveReservedSessionMessagesHandler()Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;

    move-result-object v0

    .line 462
    .local v0, "handler":Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;
    invoke-interface {v0, p0, p1}, Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;->handleDebugMessage(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 463
    return-void
.end method

.method protected handleDisconnect(ILjava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "lang"    # Ljava/lang/String;
    .param p4, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1055
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    .line 1057
    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getDisconnectReasonName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    .line 1056
    const-string v4, "handleDisconnect({}) SSH_MSG_DISCONNECT reason={}, [lang={}] msg={}"

    invoke-interface {v0, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1060
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v2}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->signalDisconnect(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1061
    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 1062
    return-void
.end method

.method protected handleDisconnect(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 3
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1041
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v0

    .line 1042
    .local v0, "code":I
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v1

    .line 1046
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v2

    if-lez v2, :cond_0

    .line 1047
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v2

    .local v2, "languageTag":Ljava/lang/String;
    goto :goto_0

    .line 1049
    .end local v2    # "languageTag":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    .line 1051
    .restart local v2    # "languageTag":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->handleDisconnect(ILjava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 1052
    return-void
.end method

.method protected handleIgnore(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 3
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 400
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, [B

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->isValidMessageStructure([Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    const-string v1, "handleIgnore({}) ignore malformed message"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    :cond_0
    return-void

    .line 406
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->resetIdleTimeout()J

    .line 408
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->resolveReservedSessionMessagesHandler()Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;

    move-result-object v0

    .line 409
    .local v0, "handler":Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;
    invoke-interface {v0, p0, p1}, Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;->handleIgnoreMessage(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 410
    return-void
.end method

.method protected handleUnimplemented(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 3
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 426
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->isValidMessageStructure([Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 427
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    const-string v1, "handleUnimplemented({}) ignore malformed message"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 430
    :cond_0
    return-void

    .line 432
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->resetIdleTimeout()J

    .line 434
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->resolveReservedSessionMessagesHandler()Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;

    move-result-object v0

    .line 435
    .local v0, "handler":Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;
    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;->handleUnimplementedMessage(Lorg/apache/sshd/common/session/Session;ILorg/apache/sshd/common/util/buffer/Buffer;)Z

    .line 436
    return-void
.end method

.method protected invokeSessionSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/Invoker<",
            "Lorg/apache/sshd/common/session/SessionListener;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 670
    .local p1, "invoker":Lorg/apache/sshd/common/util/Invoker;, "Lorg/apache/sshd/common/util/Invoker<Lorg/apache/sshd/common/session/SessionListener;Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v0

    .line 671
    .local v0, "manager":Lorg/apache/sshd/common/FactoryManager;
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/sshd/common/session/SessionListener;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 672
    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/FactoryManager;->getSessionListenerProxy()Lorg/apache/sshd/common/session/SessionListener;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 673
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getSessionListenerProxy()Lorg/apache/sshd/common/session/SessionListener;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 676
    .local v1, "listeners":[Lorg/apache/sshd/common/session/SessionListener;
    const/4 v2, 0x0

    .line 677
    .local v2, "err":Ljava/lang/Throwable;
    array-length v4, v1

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    .line 678
    .local v5, "l":Lorg/apache/sshd/common/session/SessionListener;
    if-nez v5, :cond_1

    .line 679
    goto :goto_2

    .line 682
    :cond_1
    :try_start_0
    invoke-interface {p1, v5}, Lorg/apache/sshd/common/util/Invoker;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    goto :goto_2

    .line 683
    :catchall_0
    move-exception v6

    .line 684
    .local v6, "t":Ljava/lang/Throwable;
    invoke-static {v2, v6}, Lorg/apache/sshd/common/util/GenericUtils;->accumulateException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 677
    .end local v5    # "l":Lorg/apache/sshd/common/session/SessionListener;
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 688
    :cond_2
    if-nez v2, :cond_3

    .line 691
    return-void

    .line 689
    :cond_3
    throw v2
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->authed:Z

    return v0
.end method

.method public isLocalPortForwardingStartedForPort(I)Z
    .locals 2
    .param p1, "port"    # I

    .line 1238
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v0

    .line 1239
    .local v0, "filter":Lorg/apache/sshd/common/forward/ForwardingFilter;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/sshd/common/forward/ForwardingFilter;->isLocalPortForwardingStartedForPort(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRemotePortForwardingStartedForPort(I)Z
    .locals 2
    .param p1, "port"    # I

    .line 1262
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v0

    .line 1263
    .local v0, "filter":Lorg/apache/sshd/common/forward/ForwardingFilter;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/sshd/common/forward/ForwardingFilter;->isRemotePortForwardingStartedForPort(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isServerSession()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->serverSession:Z

    return v0
.end method

.method synthetic lambda$disconnect$8$org-apache-sshd-common-session-helpers-SessionHelper(ILjava/lang/String;Lorg/apache/sshd/common/io/IoWriteFuture;)V
    .locals 7
    .param p1, "reason"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "future"    # Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 1016
    invoke-interface {p3}, Lorg/apache/sshd/common/io/IoWriteFuture;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 1017
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1018
    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 1019
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    .line 1020
    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getDisconnectReasonName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object p2, v1, v3

    .line 1019
    const-string v3, "disconnect({}) operation successfully completed for reason={} [{}]"

    invoke-interface {v5, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1022
    :cond_0
    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v4

    .line 1023
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 1024
    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getDisconnectReasonName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    aput-object p2, v6, v1

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    .line 1022
    const-string v1, "disconnect({}) operation failed ({}) for reason={} [{}]: {}"

    invoke-interface {v5, v1, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1028
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1029
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1030
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1031
    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getDisconnectReasonName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failure details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1030
    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1036
    :cond_2
    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 1037
    return-void
.end method

.method synthetic lambda$signalDisconnect$9$org-apache-sshd-common-session-helpers-SessionHelper(ILjava/lang/String;Ljava/lang/String;ZLorg/apache/sshd/common/session/SessionListener;)Ljava/lang/Void;
    .locals 6
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "lang"    # Ljava/lang/String;
    .param p4, "initiator"    # Z
    .param p5, "l"    # Lorg/apache/sshd/common/session/SessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1067
    move-object v0, p0

    move-object v1, p5

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->signalDisconnect(Lorg/apache/sshd/common/session/SessionListener;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1068
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$signalExceptionCaught$10$org-apache-sshd-common-session-helpers-SessionHelper(Ljava/lang/Throwable;Lorg/apache/sshd/common/session/SessionListener;)Ljava/lang/Void;
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "l"    # Lorg/apache/sshd/common/session/SessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1162
    invoke-virtual {p0, p2, p1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->signalExceptionCaught(Lorg/apache/sshd/common/session/SessionListener;Ljava/lang/Throwable;)V

    .line 1163
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$signalNegotiationEnd$7$org-apache-sshd-common-session-helpers-SessionHelper(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Throwable;Lorg/apache/sshd/common/session/SessionListener;)Ljava/lang/Void;
    .locals 6
    .param p1, "c2sOptions"    # Ljava/util/Map;
    .param p2, "s2cOptions"    # Ljava/util/Map;
    .param p3, "negotiatedGuess"    # Ljava/util/Map;
    .param p4, "reason"    # Ljava/lang/Throwable;
    .param p5, "l"    # Lorg/apache/sshd/common/session/SessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 975
    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->signalNegotiationEnd(Lorg/apache/sshd/common/session/SessionListener;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 976
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$signalNegotiationStart$6$org-apache-sshd-common-session-helpers-SessionHelper(Ljava/util/Map;Ljava/util/Map;Lorg/apache/sshd/common/session/SessionListener;)Ljava/lang/Void;
    .locals 1
    .param p1, "c2sOptions"    # Ljava/util/Map;
    .param p2, "s2cOptions"    # Ljava/util/Map;
    .param p3, "l"    # Lorg/apache/sshd/common/session/SessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 947
    invoke-virtual {p0, p3, p1, p2}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->signalNegotiationStart(Lorg/apache/sshd/common/session/SessionListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 948
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$signalPeerIdentificationReceived$4$org-apache-sshd-common-session-helpers-SessionHelper(Ljava/lang/String;Ljava/util/List;Lorg/apache/sshd/common/session/SessionListener;)Ljava/lang/Void;
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "extraLines"    # Ljava/util/List;
    .param p3, "l"    # Lorg/apache/sshd/common/session/SessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 601
    invoke-virtual {p0, p3, p1, p2}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->signalPeerIdentificationReceived(Lorg/apache/sshd/common/session/SessionListener;Ljava/lang/String;Ljava/util/List;)V

    .line 602
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$signalSessionClosed$11$org-apache-sshd-common-session-helpers-SessionHelper(Lorg/apache/sshd/common/session/SessionListener;)Ljava/lang/Void;
    .locals 1
    .param p1, "l"    # Lorg/apache/sshd/common/session/SessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1193
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->signalSessionClosed(Lorg/apache/sshd/common/session/SessionListener;)V

    .line 1194
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$signalSessionCreated$3$org-apache-sshd-common-session-helpers-SessionHelper(Lorg/apache/sshd/common/session/SessionListener;)Ljava/lang/Void;
    .locals 1
    .param p1, "l"    # Lorg/apache/sshd/common/session/SessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 571
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->signalSessionCreated(Lorg/apache/sshd/common/session/SessionListener;)V

    .line 572
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$signalSessionEstablished$2$org-apache-sshd-common-session-helpers-SessionHelper(Lorg/apache/sshd/common/session/SessionListener;)Ljava/lang/Void;
    .locals 1
    .param p1, "l"    # Lorg/apache/sshd/common/session/SessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 541
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->signalSessionEstablished(Lorg/apache/sshd/common/session/SessionListener;)V

    .line 542
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$signalSessionEvent$5$org-apache-sshd-common-session-helpers-SessionHelper(Lorg/apache/sshd/common/session/SessionListener$Event;Lorg/apache/sshd/common/session/SessionListener;)Ljava/lang/Void;
    .locals 1
    .param p1, "event"    # Lorg/apache/sshd/common/session/SessionListener$Event;
    .param p2, "l"    # Lorg/apache/sshd/common/session/SessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 639
    invoke-virtual {p0, p2, p1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->signalSessionEvent(Lorg/apache/sshd/common/session/SessionListener;Lorg/apache/sshd/common/session/SessionListener$Event;)V

    .line 640
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$writePacket$0$org-apache-sshd-common-session-helpers-SessionHelper(JLjava/util/concurrent/TimeUnit;Lorg/apache/sshd/common/future/DefaultSshFuture;)V
    .locals 4
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "future"    # Lorg/apache/sshd/common/future/DefaultSshFuture;

    .line 528
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout writing packet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 529
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "writePacket({}): {}"

    invoke-interface {v1, v3, p0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 532
    :cond_0
    invoke-virtual {p4, v0}, Lorg/apache/sshd/common/future/DefaultSshFuture;->setValue(Ljava/lang/Object;)V

    .line 533
    return-void
.end method

.method protected mergeProposals(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;",
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

    .line 924
    .local p1, "current":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .local p2, "proposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    if-ne p1, p2, :cond_0

    .line 925
    return-object p2

    .line 928
    :cond_0
    monitor-enter p1

    .line 929
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 930
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 933
    :cond_1
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 934
    monitor-exit p1

    return-object p2

    .line 937
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 938
    monitor-exit p1

    .line 940
    return-object p2

    .line 938
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 190
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->attributes:Ljava/util/Map;

    const-string v1, "No key"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public resetAuthTimeout()J
    .locals 4

    .line 310
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getAuthTimeoutStart()J

    move-result-wide v0

    .line 311
    .local v0, "value":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->authTimeoutStart:J

    .line 312
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->authNanoStart:J

    .line 313
    return-wide v0
.end method

.method public resetIdleTimeout()J
    .locals 4

    .line 365
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getIdleTimeoutStart()J

    move-result-wide v0

    .line 366
    .local v0, "value":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->idleTimeoutStart:J

    .line 367
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->idleNanoStart:J

    .line 368
    return-wide v0
.end method

.method protected resizeKey([BILorg/apache/sshd/common/digest/Digest;[B[B)[B
    .locals 6
    .param p1, "e"    # [B
    .param p2, "kdfSize"    # I
    .param p3, "hash"    # Lorg/apache/sshd/common/digest/Digest;
    .param p4, "k"    # [B
    .param p5, "h"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 708
    const/4 v0, 0x0

    .local v0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :goto_0
    array-length v1, p1

    if-le p2, v1, :cond_1

    .line 709
    if-nez v0, :cond_0

    .line 710
    new-instance v1, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v1}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>()V

    move-object v0, v1

    .line 713
    :cond_0
    invoke-virtual {v0, p4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt([B)V

    .line 714
    invoke-virtual {v0, p5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([B)V

    .line 715
    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([B)V

    .line 716
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {p3, v1, v3, v2}, Lorg/apache/sshd/common/digest/Digest;->update([BII)V

    .line 718
    invoke-interface {p3}, Lorg/apache/sshd/common/digest/Digest;->digest()[B

    move-result-object v1

    .line 719
    .local v1, "foo":[B
    array-length v2, p1

    array-length v4, v1

    add-int/2addr v2, v4

    new-array v2, v2, [B

    .line 720
    .local v2, "bar":[B
    array-length v4, p1

    invoke-static {p1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 721
    array-length v4, p1

    array-length v5, v1

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 722
    move-object p1, v2

    .line 708
    .end local v1    # "foo":[B
    .end local v2    # "bar":[B
    invoke-static {v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->clear(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    goto :goto_0

    .line 725
    .end local v0    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_1
    return-object p1
.end method

.method public resolveChannelStreamPacketWriterResolver()Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;
    .locals 3

    .line 503
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getChannelStreamPacketWriterResolver()Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

    move-result-object v0

    .line 504
    .local v0, "resolver":Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;
    if-eqz v0, :cond_0

    .line 505
    return-object v0

    .line 508
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v1

    .line 509
    .local v1, "manager":Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolverManager;
    invoke-interface {v1}, Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolverManager;->resolveChannelStreamPacketWriterResolver()Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

    move-result-object v2

    return-object v2
.end method

.method protected resolveIdentificationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "configPropName"    # Ljava/lang/String;

    .line 773
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v0

    .line 774
    .local v0, "manager":Lorg/apache/sshd/common/FactoryManager;
    invoke-interface {v0, p1}, Lorg/apache/sshd/common/FactoryManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 775
    .local v1, "ident":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSH-2.0-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lorg/apache/sshd/common/FactoryManager;->getVersion()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected resolvePeerAddress(Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 2
    .param p1, "knownAddress"    # Ljava/net/SocketAddress;

    .line 735
    if-eqz p1, :cond_0

    .line 736
    return-object p1

    .line 739
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getIoSession()Lorg/apache/sshd/common/io/IoSession;

    move-result-object v0

    .line 740
    .local v0, "s":Lorg/apache/sshd/common/io/IoSession;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/apache/sshd/common/io/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method protected resolveReservedSessionMessagesHandler()Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;
    .locals 2

    .line 466
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getReservedSessionMessagesHandler()Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;

    move-result-object v0

    .line 467
    .local v0, "handler":Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;
    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/sshd/common/session/helpers/ReservedSessionMessagesHandlerAdapter;->DEFAULT:Lorg/apache/sshd/common/session/helpers/ReservedSessionMessagesHandlerAdapter;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method protected resolveSessionKexProposal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "hostKeyTypes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 883
    nop

    .line 884
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getKeyExchangeFactories()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "No KEX factories"

    invoke-static {v0, v2, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 883
    invoke-static {v0}, Lorg/apache/sshd/common/NamedResource;->getNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolveUnknownChannelReferenceHandler()Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;
    .locals 3

    .line 482
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getUnknownChannelReferenceHandler()Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    move-result-object v0

    .line 483
    .local v0, "handler":Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;
    if-eqz v0, :cond_0

    .line 484
    return-object v0

    .line 487
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v1

    .line 488
    .local v1, "mgr":Lorg/apache/sshd/common/FactoryManager;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lorg/apache/sshd/common/FactoryManager;->resolveUnknownChannelReferenceHandler()Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public sendDebugMessage(ZLjava/lang/Object;Ljava/lang/String;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 4
    .param p1, "display"    # Z
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    const-string v0, ""

    invoke-static {p2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "text":Ljava/lang/String;
    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    move-object p3, v0

    .line 443
    const/4 v0, 0x4

    .line 444
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x20

    .line 443
    invoke-virtual {p0, v0, v2}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    .line 445
    .local v0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 446
    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0, p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v2

    return-object v2
.end method

.method protected sendIdentification(Ljava/lang/String;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 4
    .param p1, "ident"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 787
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    const/16 v1, 0xd

    .line 789
    const/16 v2, 0x7c

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 788
    const-string v2, "sendIdentification({}): {}"

    invoke-interface {v0, v2, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 792
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getIoSession()Lorg/apache/sshd/common/io/IoSession;

    move-result-object v0

    .line 793
    .local v0, "networkSession":Lorg/apache/sshd/common/io/IoSession;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 794
    .local v1, "data":[B
    new-instance v2, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v2, v1}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([B)V

    invoke-interface {v0, v2}, Lorg/apache/sshd/common/io/IoSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v2

    return-object v2
.end method

.method public varargs sendIgnoreMessage([B)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    if-nez p1, :cond_0

    sget-object v0, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    move-object p1, v0

    .line 515
    const/4 v0, 0x2

    array-length v1, p1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    .line 516
    .local v0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 517
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v1

    return-object v1
.end method

.method protected sendNotImplemented(J)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 2
    .param p1, "seqNoValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    const/4 v0, 0x3

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    .line 421
    .local v0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v0, p1, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 422
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v1

    return-object v1
.end method

.method public setAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 182
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->attributes:Ljava/util/Map;

    .line 183
    const-string v1, "No key"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 184
    const-string v2, "No value"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 182
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setAuthenticated()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->authed:Z

    .line 216
    sget-object v0, Lorg/apache/sshd/common/session/SessionListener$Event;->Authenticated:Lorg/apache/sshd/common/session/SessionListener$Event;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->signalSessionEvent(Lorg/apache/sshd/common/session/SessionListener$Event;)V

    .line 217
    return-void
.end method

.method public setChannelStreamPacketWriterResolver(Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;)V
    .locals 0
    .param p1, "resolver"    # Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

    .line 498
    iput-object p1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->channelStreamPacketWriterResolver:Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

    .line 499
    return-void
.end method

.method public setReservedSessionMessagesHandler(Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;

    .line 384
    iput-object p1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->reservedSessionMessagesHandler:Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;

    .line 385
    return-void
.end method

.method public setSessionDisconnectHandler(Lorg/apache/sshd/common/session/SessionDisconnectHandler;)V
    .locals 0
    .param p1, "sessionDisconnectHandler"    # Lorg/apache/sshd/common/session/SessionDisconnectHandler;

    .line 395
    iput-object p1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->sessionDisconnectHandler:Lorg/apache/sshd/common/session/SessionDisconnectHandler;

    .line 396
    return-void
.end method

.method public setUnknownChannelReferenceHandler(Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;)V
    .locals 0
    .param p1, "unknownChannelReferenceHandler"    # Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    .line 477
    iput-object p1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->unknownChannelReferenceHandler:Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    .line 478
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->username:Ljava/lang/String;

    .line 206
    return-void
.end method

.method protected signalDisconnect(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "lang"    # Ljava/lang/String;
    .param p4, "initiator"    # Z

    .line 1066
    :try_start_0
    new-instance v6, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda8;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda8;-><init>(Lorg/apache/sshd/common/session/helpers/SessionHelper;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v6}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->invokeSessionSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    goto :goto_1

    .line 1070
    :catchall_0
    move-exception v0

    .line 1071
    .local v0, "err":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 1072
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    const-string v3, "signalDisconnect("

    if-eqz v2, :cond_0

    .line 1073
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") signal session disconnect details"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1076
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1077
    invoke-virtual {v1}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v2

    .line 1078
    .local v2, "suppressed":[Ljava/lang/Throwable;
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->length([Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    .line 1079
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .line 1080
    .local v6, "s":Ljava/lang/Throwable;
    iget-object v7, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") suppressed session disconnect signalling"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1079
    .end local v6    # "s":Ljava/lang/Throwable;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1085
    .end local v0    # "err":Ljava/lang/Throwable;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "suppressed":[Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void
.end method

.method protected signalDisconnect(Lorg/apache/sshd/common/session/SessionListener;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "listener"    # Lorg/apache/sshd/common/session/SessionListener;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "lang"    # Ljava/lang/String;
    .param p5, "initiator"    # Z

    .line 1089
    if-nez p1, :cond_0

    .line 1090
    return-void

    .line 1093
    :cond_0
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/sshd/common/session/SessionListener;->sessionDisconnect(Lorg/apache/sshd/common/session/Session;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1094
    return-void
.end method

.method protected signalExceptionCaught(Ljava/lang/Throwable;)V
    .locals 10
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 1161
    :try_start_0
    new-instance v0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda9;-><init>(Lorg/apache/sshd/common/session/helpers/SessionHelper;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->invokeSessionSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1179
    goto :goto_1

    .line 1165
    :catchall_0
    move-exception v0

    .line 1166
    .local v0, "err":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 1167
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    const-string v3, "signalExceptionCaught("

    if-eqz v2, :cond_0

    .line 1168
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") signal session exception details"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1171
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1172
    invoke-virtual {v1}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v2

    .line 1173
    .local v2, "suppressed":[Ljava/lang/Throwable;
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->length([Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    .line 1174
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .line 1175
    .local v6, "s":Ljava/lang/Throwable;
    iget-object v7, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") suppressed session exception signalling"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1174
    .end local v6    # "s":Ljava/lang/Throwable;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1180
    .end local v0    # "err":Ljava/lang/Throwable;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "suppressed":[Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void
.end method

.method protected signalExceptionCaught(Lorg/apache/sshd/common/session/SessionListener;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/sshd/common/session/SessionListener;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 1183
    if-nez p1, :cond_0

    .line 1184
    return-void

    .line 1187
    :cond_0
    invoke-interface {p1, p0, p2}, Lorg/apache/sshd/common/session/SessionListener;->sessionException(Lorg/apache/sshd/common/session/Session;Ljava/lang/Throwable;)V

    .line 1188
    return-void
.end method

.method protected signalNegotiationEnd(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 7
    .param p4, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 974
    .local p1, "c2sOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .local p2, "s2cOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .local p3, "negotiatedGuess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    :try_start_0
    new-instance v6, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda6;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda6;-><init>(Lorg/apache/sshd/common/session/helpers/SessionHelper;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v6}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->invokeSessionSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    nop

    .line 987
    return-void

    .line 978
    :catchall_0
    move-exception v0

    .line 979
    .local v0, "err":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_1

    .line 981
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 982
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 984
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 980
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method protected signalNegotiationEnd(Lorg/apache/sshd/common/session/SessionListener;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "listener"    # Lorg/apache/sshd/common/session/SessionListener;
    .param p5, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionListener;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 992
    .local p2, "c2sOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .local p3, "s2cOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .local p4, "negotiatedGuess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 993
    return-void

    .line 996
    :cond_0
    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/sshd/common/session/SessionListener;->sessionNegotiationEnd(Lorg/apache/sshd/common/session/Session;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 997
    return-void
.end method

.method protected signalNegotiationStart(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 946
    .local p1, "c2sOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .local p2, "s2cOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda10;-><init>(Lorg/apache/sshd/common/session/helpers/SessionHelper;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->invokeSessionSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    nop

    .line 959
    return-void

    .line 950
    :catchall_0
    move-exception v0

    .line 951
    .local v0, "err":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_1

    .line 953
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 954
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 956
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 952
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method protected signalNegotiationStart(Lorg/apache/sshd/common/session/SessionListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/sshd/common/session/SessionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionListener;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 963
    .local p2, "c2sOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .local p3, "s2cOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 964
    return-void

    .line 967
    :cond_0
    invoke-interface {p1, p0, p2, p3}, Lorg/apache/sshd/common/session/SessionListener;->sessionNegotiationStart(Lorg/apache/sshd/common/session/Session;Ljava/util/Map;Ljava/util/Map;)V

    .line 968
    return-void
.end method

.method protected signalPeerIdentificationReceived(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 600
    .local p2, "extraLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda5;-><init>(Lorg/apache/sshd/common/session/helpers/SessionHelper;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->invokeSessionSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    nop

    .line 620
    return-void

    .line 604
    :catchall_0
    move-exception v0

    .line 605
    .local v0, "err":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 606
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    .line 608
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 607
    const-string v4, "signalPeerIdentificationReceived({}) Failed ({}) to announce peer={}: {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 611
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signalPeerIdentificationReceived("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] failure details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 613
    :cond_1
    instance-of v2, v1, Ljava/lang/Exception;

    if-eqz v2, :cond_2

    .line 614
    move-object v2, v1

    check-cast v2, Ljava/lang/Exception;

    throw v2

    .line 616
    :cond_2
    new-instance v2, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v2, v1}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected signalPeerIdentificationReceived(Lorg/apache/sshd/common/session/SessionListener;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/sshd/common/session/SessionListener;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionListener;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 623
    .local p3, "extraLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 624
    return-void

    .line 627
    :cond_0
    invoke-interface {p1, p0, p2, p3}, Lorg/apache/sshd/common/session/SessionListener;->sessionPeerIdentificationReceived(Lorg/apache/sshd/common/session/Session;Ljava/lang/String;Ljava/util/List;)V

    .line 628
    return-void
.end method

.method protected signalSessionClosed()V
    .locals 10

    .line 1192
    :try_start_0
    new-instance v0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/common/session/helpers/SessionHelper;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->invokeSessionSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    goto/16 :goto_1

    .line 1196
    :catchall_0
    move-exception v0

    .line 1197
    .local v0, "err":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 1198
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 1199
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 1198
    const-string v5, "signalSessionClosed({}) {} while signal session closed: {}"

    invoke-interface {v2, v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1200
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    const-string v3, "signalSessionClosed("

    if-eqz v2, :cond_0

    .line 1201
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") signal session closed exception details"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1204
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1205
    invoke-virtual {v1}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v2

    .line 1206
    .local v2, "suppressed":[Ljava/lang/Throwable;
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->length([Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1

    .line 1207
    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v2, v4

    .line 1208
    .local v6, "s":Ljava/lang/Throwable;
    iget-object v7, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") suppressed session closed signalling"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1207
    .end local v6    # "s":Ljava/lang/Throwable;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1213
    .end local v0    # "err":Ljava/lang/Throwable;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "suppressed":[Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void
.end method

.method protected signalSessionClosed(Lorg/apache/sshd/common/session/SessionListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/sshd/common/session/SessionListener;

    .line 1216
    if-nez p1, :cond_0

    .line 1217
    return-void

    .line 1220
    :cond_0
    invoke-interface {p1, p0}, Lorg/apache/sshd/common/session/SessionListener;->sessionClosed(Lorg/apache/sshd/common/session/Session;)V

    .line 1221
    return-void
.end method

.method protected signalSessionCreated(Lorg/apache/sshd/common/io/IoSession;)V
    .locals 6
    .param p1, "ioSession"    # Lorg/apache/sshd/common/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 570
    :try_start_0
    new-instance v0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda2;-><init>(Lorg/apache/sshd/common/session/helpers/SessionHelper;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->invokeSessionSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    nop

    .line 589
    return-void

    .line 574
    :catchall_0
    move-exception v0

    .line 575
    .local v0, "err":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 576
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 578
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 577
    const-string v4, "Failed ({}) to announce session={} created: {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " creation failure details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 583
    :cond_1
    instance-of v2, v1, Ljava/lang/Exception;

    if-eqz v2, :cond_2

    .line 584
    move-object v2, v1

    check-cast v2, Ljava/lang/Exception;

    throw v2

    .line 586
    :cond_2
    new-instance v2, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v2, v1}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected signalSessionCreated(Lorg/apache/sshd/common/session/SessionListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/sshd/common/session/SessionListener;

    .line 592
    if-nez p1, :cond_0

    .line 593
    return-void

    .line 595
    :cond_0
    invoke-interface {p1, p0}, Lorg/apache/sshd/common/session/SessionListener;->sessionCreated(Lorg/apache/sshd/common/session/Session;)V

    .line 596
    return-void
.end method

.method protected signalSessionEstablished(Lorg/apache/sshd/common/io/IoSession;)V
    .locals 6
    .param p1, "ioSession"    # Lorg/apache/sshd/common/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 540
    :try_start_0
    new-instance v0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda7;-><init>(Lorg/apache/sshd/common/session/helpers/SessionHelper;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->invokeSessionSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    nop

    .line 559
    return-void

    .line 544
    :catchall_0
    move-exception v0

    .line 545
    .local v0, "err":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 546
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 548
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 547
    const-string v4, "Failed ({}) to announce session={} established: {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 551
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " establish failure details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 553
    :cond_1
    instance-of v2, v1, Ljava/lang/Exception;

    if-eqz v2, :cond_2

    .line 554
    move-object v2, v1

    check-cast v2, Ljava/lang/Exception;

    throw v2

    .line 556
    :cond_2
    new-instance v2, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v2, v1}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected signalSessionEstablished(Lorg/apache/sshd/common/session/SessionListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/sshd/common/session/SessionListener;

    .line 562
    if-nez p1, :cond_0

    .line 563
    return-void

    .line 565
    :cond_0
    invoke-interface {p1, p0}, Lorg/apache/sshd/common/session/SessionListener;->sessionEstablished(Lorg/apache/sshd/common/session/Session;)V

    .line 566
    return-void
.end method

.method protected signalSessionEvent(Lorg/apache/sshd/common/session/SessionListener$Event;)V
    .locals 6
    .param p1, "event"    # Lorg/apache/sshd/common/session/SessionListener$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    :try_start_0
    new-instance v0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda11;-><init>(Lorg/apache/sshd/common/session/helpers/SessionHelper;Lorg/apache/sshd/common/session/SessionListener$Event;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->invokeSessionSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    nop

    .line 659
    return-void

    .line 642
    :catchall_0
    move-exception v0

    .line 643
    .local v0, "err":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 644
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 645
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    .line 646
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 645
    const-string v4, "sendSessionEvent({})[{}] failed ({}) to inform listeners: {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 649
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSessionEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] listener inform details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 651
    :cond_1
    instance-of v2, v1, Ljava/io/IOException;

    if-nez v2, :cond_3

    .line 653
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    .line 654
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 656
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to send session event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 652
    :cond_3
    move-object v2, v1

    check-cast v2, Ljava/io/IOException;

    throw v2
.end method

.method protected signalSessionEvent(Lorg/apache/sshd/common/session/SessionListener;Lorg/apache/sshd/common/session/SessionListener$Event;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/sshd/common/session/SessionListener;
    .param p2, "event"    # Lorg/apache/sshd/common/session/SessionListener$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    if-nez p1, :cond_0

    .line 663
    return-void

    .line 666
    :cond_0
    invoke-interface {p1, p0, p2}, Lorg/apache/sshd/common/session/SessionListener;->sessionEvent(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/session/SessionListener$Event;)V

    .line 667
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1290
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getIoSession()Lorg/apache/sshd/common/io/IoSession;

    move-result-object v0

    .line 1291
    .local v0, "networkSession":Lorg/apache/sshd/common/io/IoSession;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/io/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 1292
    .local v1, "peerAddress":Ljava/net/SocketAddress;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;JLjava/util/concurrent/TimeUnit;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 11
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v0

    .line 524
    .local v0, "writeFuture":Lorg/apache/sshd/common/io/IoWriteFuture;
    move-object v7, v0

    check-cast v7, Lorg/apache/sshd/common/future/DefaultSshFuture;

    .line 525
    .local v7, "future":Lorg/apache/sshd/common/future/DefaultSshFuture;, "Lorg/apache/sshd/common/future/DefaultSshFuture<Lorg/apache/sshd/common/io/IoWriteFuture;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v8

    .line 526
    .local v8, "factoryManager":Lorg/apache/sshd/common/FactoryManager;
    invoke-interface {v8}, Lorg/apache/sshd/common/FactoryManager;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    .line 527
    .local v9, "executor":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v10, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda3;

    move-object v1, v10

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p4

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda3;-><init>(Lorg/apache/sshd/common/session/helpers/SessionHelper;JLjava/util/concurrent/TimeUnit;Lorg/apache/sshd/common/future/DefaultSshFuture;)V

    invoke-interface {v9, v10, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 534
    .local v1, "sched":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    new-instance v2, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/ScheduledFuture;)V

    invoke-virtual {v7, v2}, Lorg/apache/sshd/common/future/DefaultSshFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 535
    return-object v0
.end method
