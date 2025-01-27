.class public Lcom/sleepycat/je/rep/subscription/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"


# instance fields
.field private final configuration:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

.field private final dummyRepEnv:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

.field private final logger:Ljava/util/logging/Logger;

.field private final statistics:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

.field private subscriptionThread:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;Ljava/util/logging/Logger;)V
    .locals 1
    .param p1, "configuration"    # Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;
    .param p2, "logger"    # Ljava/util/logging/Logger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->configuration:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 63
    iput-object p2, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->logger:Ljava/util/logging/Logger;

    .line 66
    invoke-static {p1, p2}, Lcom/sleepycat/je/rep/subscription/Subscription;->createDummyRepEnv(Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;Ljava/util/logging/Logger;)Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->dummyRepEnv:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->subscriptionThread:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    .line 68
    new-instance v0, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->statistics:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    .line 69
    return-void
.end method

.method private static createDummyRepEnv(Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;Ljava/util/logging/Logger;)Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    .locals 5
    .param p0, "conf"    # Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSubscriberHome()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "envHome":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    nop

    .line 265
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->createReplicationConfig()Lcom/sleepycat/je/rep/ReplicationConfig;

    move-result-object v1

    .line 266
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->createEnvConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v2

    .line 264
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/rep/RepInternal;->createInternalEnvHandle(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;)Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    move-result-object v1

    .line 272
    .local v1, "ret":Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    invoke-static {v1}, Lcom/sleepycat/je/rep/RepInternal;->getNonNullRepImpl(Lcom/sleepycat/je/rep/ReplicatedEnvironment;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    .line 273
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    .line 274
    .local v2, "pair":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getNodeType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->hasNullId()Z

    move-result v3

    if-nez v3, :cond_0

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Env has a non-null id, clear its id(name id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->revertToNull()V

    .line 279
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Env created with name id pair "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 280
    return-object v1

    .line 258
    .end local v1    # "ret":Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    .end local v2    # "pair":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Env directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private waitForSubscriptionInitDone(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;)Z
    .locals 8
    .param p1, "t"    # Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    .line 290
    new-instance v7, Lcom/sleepycat/je/rep/subscription/Subscription$1;

    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->configuration:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getPollIntervalMs()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->configuration:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 291
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getPollTimeoutMs()J

    move-result-wide v4

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/rep/subscription/Subscription$1;-><init>(Lcom/sleepycat/je/rep/subscription/Subscription;JJLcom/sleepycat/je/rep/subscription/SubscriptionThread;)V

    .line 297
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/subscription/Subscription$1;->await()Z

    move-result v0

    .line 290
    return v0
.end method


# virtual methods
.method getDummyRepEnv()Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->dummyRepEnv:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    return-object v0
.end method

.method public getStatistics()Lcom/sleepycat/je/rep/subscription/SubscriptionStat;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->statistics:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    return-object v0
.end method

.method public getStoredException()Ljava/lang/Exception;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->subscriptionThread:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    return-object v0

    .line 195
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->getStoredException()Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionStatus()Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->subscriptionThread:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    if-nez v0, :cond_0

    .line 206
    sget-object v0, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->INIT:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    return-object v0

    .line 208
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->getStatus()Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    move-result-object v0

    return-object v0
.end method

.method setExceptionHandlingTestHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/subscription/SubscriptionThread;",
            ">;)V"
        }
    .end annotation

    .line 236
    .local p1, "testHook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Lcom/sleepycat/je/rep/subscription/SubscriptionThread;>;"
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->subscriptionThread:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->setExceptionHandlingTestHook(Lcom/sleepycat/je/utilint/TestHook;)V

    .line 239
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->subscriptionThread:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->subscriptionThread:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->shutdown()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->dummyRepEnv:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->configuration:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getNodeType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    .line 174
    .local v0, "nodeType":Lcom/sleepycat/je/rep/NodeType;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->dummyRepEnv:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->dummyRepEnv:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    invoke-static {v1}, Lcom/sleepycat/je/rep/RepInternal;->getNonNullRepImpl(Lcom/sleepycat/je/rep/ReplicatedEnvironment;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->revertToNull()V

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->dummyRepEnv:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->close()V

    .line 180
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closed env "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->dummyRepEnv:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(forget transient id? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 182
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 184
    .end local v0    # "nodeType":Lcom/sleepycat/je/rep/NodeType;
    :cond_2
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/sleepycat/je/rep/InsufficientLogException;,
            Lcom/sleepycat/je/rep/GroupShutdownException;,
            Lcom/sleepycat/je/utilint/InternalException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->FIRST_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/subscription/Subscription;->start(Lcom/sleepycat/je/utilint/VLSN;)V

    .line 87
    return-void
.end method

.method public start(Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 7
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/sleepycat/je/rep/InsufficientLogException;,
            Lcom/sleepycat/je/rep/GroupShutdownException;,
            Lcom/sleepycat/je/utilint/InternalException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/sleepycat/je/rep/ReplicationSecurityException;
        }
    .end annotation

    .line 109
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->dummyRepEnv:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->configuration:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->statistics:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    iget-object v6, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->logger:Ljava/util/logging/Logger;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;-><init>(Lcom/sleepycat/je/rep/ReplicatedEnvironment;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;Lcom/sleepycat/je/rep/subscription/SubscriptionStat;Ljava/util/logging/Logger;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->subscriptionThread:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    .line 118
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->start()V

    .line 120
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->subscriptionThread:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/subscription/Subscription;->waitForSubscriptionInitDone(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->subscriptionThread:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->getStoredException()Ljava/lang/Exception;

    move-result-object v0

    .line 134
    .local v0, "exp":Ljava/lang/Exception;
    sget-object v1, Lcom/sleepycat/je/rep/subscription/Subscription$2;->$SwitchMap$com$sleepycat$je$rep$subscription$SubscriptionStatus:[I

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->subscriptionThread:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->getStatus()Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 156
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/Subscription;->shutdown()V

    .line 157
    new-instance v1, Lcom/sleepycat/je/utilint/InternalException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internal exception from subscription thread, err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/utilint/InternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 149
    :pswitch_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/Subscription;->shutdown()V

    .line 150
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/rep/ReplicationSecurityException;

    throw v1

    .line 145
    :pswitch_1
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/Subscription;->shutdown()V

    .line 146
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/rep/GroupShutdownException;

    throw v1

    .line 140
    :pswitch_2
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/Subscription;->shutdown()V

    .line 141
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/rep/InsufficientLogException;

    throw v1

    .line 136
    :pswitch_3
    nop

    .line 161
    return-void

    .line 121
    .end local v0    # "exp":Ljava/lang/Exception;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->dummyRepEnv:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    .line 122
    invoke-static {v1}, Lcom/sleepycat/je/rep/RepInternal;->getNonNullRepImpl(Lcom/sleepycat/je/rep/ReplicatedEnvironment;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    .line 121
    const-string v2, "Timeout in initialization, shut down subscription."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/Subscription;->shutdown()V

    .line 126
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscription initialization timeout after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/Subscription;->configuration:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 128
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getPollTimeoutMs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start VLSN cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
