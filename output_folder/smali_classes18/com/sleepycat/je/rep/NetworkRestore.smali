.class public Lcom/sleepycat/je/rep/NetworkRestore;
.super Ljava/lang/Object;
.source "NetworkRestore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/NetworkRestore$Server;
    }
.end annotation


# instance fields
.field private volatile backup:Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;

.field private interruptHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private logProvider:Lcom/sleepycat/je/rep/ReplicationNode;

.field private logger:Ljava/util/logging/Logger;

.field private maxLag:I

.field private minVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method private init(Lcom/sleepycat/je/rep/InsufficientLogException;Lcom/sleepycat/je/rep/NetworkRestoreConfig;)Ljava/util/List;
    .locals 7
    .param p1, "logException"    # Lcom/sleepycat/je/rep/InsufficientLogException;
    .param p2, "config"    # Lcom/sleepycat/je/rep/NetworkRestoreConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/InsufficientLogException;",
            "Lcom/sleepycat/je/rep/NetworkRestoreConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/rep/NetworkRestore$Server;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 171
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/InsufficientLogException;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/NetworkRestore;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/NetworkRestore;->logger:Ljava/util/logging/Logger;

    .line 175
    iget-object v0, p0, Lcom/sleepycat/je/rep/NetworkRestore;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NETWORKBACKUP_MAX_LAG:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/NetworkRestore;->maxLag:I

    .line 180
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/NetworkRestoreConfig;->getLogProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 181
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/NetworkRestoreConfig;->getLogProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 182
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 183
    .local v0, "memberNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/InsufficientLogException;->getLogProviders()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/ReplicationNode;

    .line 184
    .local v2, "node":Lcom/sleepycat/je/rep/ReplicationNode;
    invoke-interface {v2}, Lcom/sleepycat/je/rep/ReplicationNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v2    # "node":Lcom/sleepycat/je/rep/ReplicationNode;
    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/NetworkRestoreConfig;->getLogProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/ReplicationNode;

    .line 187
    .restart local v2    # "node":Lcom/sleepycat/je/rep/ReplicationNode;
    invoke-interface {v2}, Lcom/sleepycat/je/rep/ReplicationNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    .end local v2    # "node":Lcom/sleepycat/je/rep/ReplicationNode;
    goto :goto_1

    .line 188
    .restart local v2    # "node":Lcom/sleepycat/je/rep/ReplicationNode;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Node:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 189
    invoke-interface {v2}, Lcom/sleepycat/je/rep/ReplicationNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a suitable member for NetworkRestore. It\'s not a member of logException.getLogProviders(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 193
    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    .end local v2    # "node":Lcom/sleepycat/je/rep/ReplicationNode;
    :cond_2
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/NetworkRestoreConfig;->getLogProviders()Ljava/util/List;

    move-result-object v0

    .line 197
    .local v0, "logProviders":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/ReplicationNode;>;"
    goto :goto_2

    .line 198
    .end local v0    # "logProviders":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/ReplicationNode;>;"
    :cond_3
    new-instance v0, Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/InsufficientLogException;->getLogProviders()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 201
    .restart local v0    # "logProviders":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/ReplicationNode;>;"
    :goto_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/NetworkRestore;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/NetworkRestore;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v3, "Started network restore"

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 203
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 211
    .local v1, "serverList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/NetworkRestore$Server;>;"
    new-instance v2, Lcom/sleepycat/je/utilint/VLSN;

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    .line 212
    .local v2, "maxVLSN":Lcom/sleepycat/je/utilint/VLSN;
    const/4 v3, -0x1

    .line 214
    .local v3, "loadThreshold":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/rep/ReplicationNode;

    .line 215
    .local v5, "node":Lcom/sleepycat/je/rep/ReplicationNode;
    new-instance v6, Lcom/sleepycat/je/rep/NetworkRestore$Server;

    invoke-direct {v6, v5, v2, v3}, Lcom/sleepycat/je/rep/NetworkRestore$Server;-><init>(Lcom/sleepycat/je/rep/ReplicationNode;Lcom/sleepycat/je/utilint/VLSN;I)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v5    # "node":Lcom/sleepycat/je/rep/ReplicationNode;
    goto :goto_3

    .line 218
    :cond_4
    iput-object v2, p0, Lcom/sleepycat/je/rep/NetworkRestore;->minVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 220
    return-object v1
.end method

.method static synthetic lambda$resetServerList$0(Lcom/sleepycat/je/rep/NetworkRestore$Server;)J
    .locals 2
    .param p0, "s"    # Lcom/sleepycat/je/rep/NetworkRestore$Server;

    .line 237
    invoke-static {p0}, Lcom/sleepycat/je/rep/NetworkRestore$Server;->access$000(Lcom/sleepycat/je/rep/NetworkRestore$Server;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    return-wide v0
.end method

.method private resetServerList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/rep/NetworkRestore$Server;",
            ">;)V"
        }
    .end annotation

    .line 228
    .local p1, "serverList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/NetworkRestore$Server;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    return-void

    .line 233
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 236
    new-instance v0, Lcom/sleepycat/je/rep/NetworkRestore$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/NetworkRestore$$ExternalSyntheticLambda0;-><init>()V

    .line 237
    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 236
    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/NetworkRestore$Server;

    .line 240
    .local v0, "maxVlsnServer":Lcom/sleepycat/je/rep/NetworkRestore$Server;
    new-instance v1, Lcom/sleepycat/je/utilint/VLSN;

    const-wide/16 v2, 0x0

    .line 241
    invoke-static {v0}, Lcom/sleepycat/je/rep/NetworkRestore$Server;->access$000(Lcom/sleepycat/je/rep/NetworkRestore$Server;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v4

    iget v6, p0, Lcom/sleepycat/je/rep/NetworkRestore;->maxLag:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/NetworkRestore;->minVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 242
    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Lcom/sleepycat/je/rep/InsufficientLogException;Lcom/sleepycat/je/rep/NetworkRestoreConfig;)V
    .locals 25
    .param p1, "logException"    # Lcom/sleepycat/je/rep/InsufficientLogException;
    .param p2, "config"    # Lcom/sleepycat/je/rep/NetworkRestoreConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentFailureException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 281
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/sleepycat/je/rep/NetworkRestore;->init(Lcom/sleepycat/je/rep/InsufficientLogException;Lcom/sleepycat/je/rep/NetworkRestoreConfig;)Ljava/util/List;

    move-result-object v0

    .line 282
    .local v0, "serverList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/NetworkRestore$Server;>;"
    iget-object v2, v1, Lcom/sleepycat/je/rep/NetworkRestore;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    .line 283
    .local v2, "clientNameId":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->hasNullId()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_0

    .line 288
    :try_start_1
    new-instance v3, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 289
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 290
    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    const/high16 v6, -0x80000000

    or-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    .line 291
    iget-object v3, v1, Lcom/sleepycat/je/rep/NetworkRestore;->logger:Ljava/util/logging/Logger;

    iget-object v4, v1, Lcom/sleepycat/je/rep/NetworkRestore;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network restore assigned name id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 397
    .end local v0    # "serverList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/NetworkRestore$Server;>;"
    .end local v2    # "clientNameId":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    :catchall_0
    move-exception v0

    goto/16 :goto_c

    .line 295
    .restart local v0    # "serverList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/NetworkRestore$Server;>;"
    .restart local v2    # "clientNameId":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    move v4, v3

    move-object v3, v0

    .line 304
    .end local v0    # "serverList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/NetworkRestore$Server;>;"
    .local v3, "serverList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/NetworkRestore$Server;>;"
    .local v4, "firstRound":Z
    :goto_1
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 305
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v5, v0

    .line 306
    .local v5, "newServerList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/NetworkRestore$Server;>;"
    iget-object v0, v1, Lcom/sleepycat/je/rep/NetworkRestore;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getEnvironmentHome()Ljava/io/File;

    move-result-object v9

    .line 308
    .local v9, "envHome":Ljava/io/File;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/NetworkRestore$Server;

    move-object/from16 v20, v0

    .line 309
    .local v20, "server":Lcom/sleepycat/je/rep/NetworkRestore$Server;
    nop

    .line 310
    invoke-static/range {v20 .. v20}, Lcom/sleepycat/je/rep/NetworkRestore$Server;->access$100(Lcom/sleepycat/je/rep/NetworkRestore$Server;)Lcom/sleepycat/je/rep/ReplicationNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sleepycat/je/rep/ReplicationNode;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    move-object v15, v0

    .line 311
    .local v15, "serverSocket":Ljava/net/InetSocketAddress;
    iget-object v0, v1, Lcom/sleepycat/je/rep/NetworkRestore;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getSocket()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    goto :goto_2

    .line 315
    :cond_1
    iget-object v0, v1, Lcom/sleepycat/je/rep/NetworkRestore;->logger:Ljava/util/logging/Logger;

    iget-object v6, v1, Lcom/sleepycat/je/rep/NetworkRestore;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Network restore candidate server: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 317
    invoke-static/range {v20 .. v20}, Lcom/sleepycat/je/rep/NetworkRestore$Server;->access$100(Lcom/sleepycat/je/rep/NetworkRestore$Server;)Lcom/sleepycat/je/rep/ReplicationNode;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 315
    invoke-static {v0, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 318
    invoke-static/range {v20 .. v20}, Lcom/sleepycat/je/rep/NetworkRestore$Server;->access$100(Lcom/sleepycat/je/rep/NetworkRestore$Server;)Lcom/sleepycat/je/rep/ReplicationNode;

    move-result-object v0

    iput-object v0, v1, Lcom/sleepycat/je/rep/NetworkRestore;->logProvider:Lcom/sleepycat/je/rep/ReplicationNode;

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide/from16 v21, v6

    .line 321
    .local v21, "startTime":J
    :try_start_3
    new-instance v0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;

    .line 323
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/rep/NetworkRestoreConfig;->getReceiveBufferSize()I

    move-result v8

    .line 326
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/rep/NetworkRestoreConfig;->getRetainLogFiles()Z

    move-result v11

    .line 327
    invoke-static/range {v20 .. v20}, Lcom/sleepycat/je/rep/NetworkRestore$Server;->access$200(Lcom/sleepycat/je/rep/NetworkRestore$Server;)I

    move-result v12

    iget-object v13, v1, Lcom/sleepycat/je/rep/NetworkRestore;->minVLSN:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v14, v1, Lcom/sleepycat/je/rep/NetworkRestore;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 330
    invoke-virtual {v14}, Lcom/sleepycat/je/rep/impl/RepImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v16

    iget-object v6, v1, Lcom/sleepycat/je/rep/NetworkRestore;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 331
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v17

    iget-object v6, v1, Lcom/sleepycat/je/rep/NetworkRestore;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 332
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v18

    .line 333
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/rep/InsufficientLogException;->getProperties()Ljava/util/Properties;

    move-result-object v23
    :try_end_3
    .catch Lcom/sleepycat/je/log/RestoreMarker$FileCreationException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$RejectedServerException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v6, v0

    move-object v7, v15

    move-object v10, v2

    move-object/from16 v24, v15

    .end local v15    # "serverSocket":Ljava/net/InetSocketAddress;
    .local v24, "serverSocket":Ljava/net/InetSocketAddress;
    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v23

    :try_start_4
    invoke-direct/range {v6 .. v18}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;-><init>(Ljava/net/InetSocketAddress;ILjava/io/File;Lcom/sleepycat/je/rep/impl/node/NameIdPair;ZILcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/log/FileManager;Lcom/sleepycat/je/log/LogManager;Lcom/sleepycat/je/rep/net/DataChannelFactory;Ljava/util/Properties;)V

    iput-object v0, v1, Lcom/sleepycat/je/rep/NetworkRestore;->backup:Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;

    .line 335
    iget-object v0, v1, Lcom/sleepycat/je/rep/NetworkRestore;->backup:Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;

    iget-object v6, v1, Lcom/sleepycat/je/rep/NetworkRestore;->interruptHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-virtual {v0, v6}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->setInterruptHook(Lcom/sleepycat/je/utilint/TestHook;)V

    .line 336
    iget-object v0, v1, Lcom/sleepycat/je/rep/NetworkRestore;->backup:Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->execute()[Ljava/lang/String;

    .line 337
    iget-object v0, v1, Lcom/sleepycat/je/rep/NetworkRestore;->logger:Ljava/util/logging/Logger;

    iget-object v6, v1, Lcom/sleepycat/je/rep/NetworkRestore;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v7, "Network restore completed from: %s. Elapsed time: %,d s."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 340
    invoke-static/range {v20 .. v20}, Lcom/sleepycat/je/rep/NetworkRestore$Server;->access$100(Lcom/sleepycat/je/rep/NetworkRestore$Server;)Lcom/sleepycat/je/rep/ReplicationNode;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v11, v11, v21

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v10

    .line 337
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/sleepycat/je/log/RestoreMarker$FileCreationException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$RejectedServerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 397
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/rep/InsufficientLogException;->releaseRepImpl()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 343
    monitor-exit p0

    return-void

    .line 386
    .end local p0    # "this":Lcom/sleepycat/je/rep/NetworkRestore;
    :catch_0
    move-exception v0

    goto :goto_3

    .line 366
    :catch_1
    move-exception v0

    goto :goto_4

    .line 360
    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_6

    .line 353
    :catch_4
    move-exception v0

    goto :goto_7

    .line 347
    :catch_5
    move-exception v0

    goto/16 :goto_8

    .line 344
    :catch_6
    move-exception v0

    goto/16 :goto_b

    .line 386
    .end local v24    # "serverSocket":Ljava/net/InetSocketAddress;
    .restart local v15    # "serverSocket":Ljava/net/InetSocketAddress;
    :catch_7
    move-exception v0

    move-object/from16 v24, v15

    .line 387
    .end local v15    # "serverSocket":Ljava/net/InetSocketAddress;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v24    # "serverSocket":Ljava/net/InetSocketAddress;
    :goto_3
    :try_start_6
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v6

    .end local p1    # "logException":Lcom/sleepycat/je/rep/InsufficientLogException;
    .end local p2    # "config":Lcom/sleepycat/je/rep/NetworkRestoreConfig;
    throw v6

    .line 366
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v24    # "serverSocket":Ljava/net/InetSocketAddress;
    .restart local v15    # "serverSocket":Ljava/net/InetSocketAddress;
    .restart local p1    # "logException":Lcom/sleepycat/je/rep/InsufficientLogException;
    .restart local p2    # "config":Lcom/sleepycat/je/rep/NetworkRestoreConfig;
    :catch_8
    move-exception v0

    move-object/from16 v24, v15

    .line 378
    .end local v15    # "serverSocket":Ljava/net/InetSocketAddress;
    .local v0, "e":Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$RejectedServerException;
    .restart local v24    # "serverSocket":Ljava/net/InetSocketAddress;
    :goto_4
    if-nez v4, :cond_2

    .line 379
    iget-object v6, v1, Lcom/sleepycat/je/rep/NetworkRestore;->logger:Ljava/util/logging/Logger;

    iget-object v7, v1, Lcom/sleepycat/je/rep/NetworkRestore;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$RejectedServerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 382
    :cond_2
    new-instance v6, Lcom/sleepycat/je/rep/NetworkRestore$Server;

    .line 383
    invoke-static/range {v20 .. v20}, Lcom/sleepycat/je/rep/NetworkRestore$Server;->access$100(Lcom/sleepycat/je/rep/NetworkRestore$Server;)Lcom/sleepycat/je/rep/ReplicationNode;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$RejectedServerException;->getRangeLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v8

    .line 384
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$RejectedServerException;->getActiveServers()I

    move-result v10

    invoke-direct {v6, v7, v8, v10}, Lcom/sleepycat/je/rep/NetworkRestore$Server;-><init>(Lcom/sleepycat/je/rep/ReplicationNode;Lcom/sleepycat/je/utilint/VLSN;I)V

    .line 382
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    nop

    .end local v0    # "e":Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$RejectedServerException;
    goto/16 :goto_a

    .line 360
    .end local v24    # "serverSocket":Ljava/net/InetSocketAddress;
    .restart local v15    # "serverSocket":Ljava/net/InetSocketAddress;
    :catch_9
    move-exception v0

    goto :goto_5

    :catch_a
    move-exception v0

    :goto_5
    move-object/from16 v24, v15

    .line 362
    .end local v15    # "serverSocket":Ljava/net/InetSocketAddress;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v24    # "serverSocket":Ljava/net/InetSocketAddress;
    :goto_6
    iget-object v6, v1, Lcom/sleepycat/je/rep/NetworkRestore;->logger:Ljava/util/logging/Logger;

    iget-object v7, v1, Lcom/sleepycat/je/rep/NetworkRestore;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Backup failed from node: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 364
    invoke-static/range {v20 .. v20}, Lcom/sleepycat/je/rep/NetworkRestore$Server;->access$100(Lcom/sleepycat/je/rep/NetworkRestore$Server;)Lcom/sleepycat/je/rep/ReplicationNode;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 365
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 362
    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_9

    .line 353
    .end local v24    # "serverSocket":Ljava/net/InetSocketAddress;
    .restart local v15    # "serverSocket":Ljava/net/InetSocketAddress;
    :catch_b
    move-exception v0

    move-object/from16 v24, v15

    .line 355
    .end local v15    # "serverSocket":Ljava/net/InetSocketAddress;
    .local v0, "e":Ljava/net/ConnectException;
    .restart local v24    # "serverSocket":Ljava/net/InetSocketAddress;
    :goto_7
    iget-object v6, v1, Lcom/sleepycat/je/rep/NetworkRestore;->logger:Ljava/util/logging/Logger;

    iget-object v7, v1, Lcom/sleepycat/je/rep/NetworkRestore;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Backup server node: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 356
    invoke-static/range {v20 .. v20}, Lcom/sleepycat/je/rep/NetworkRestore$Server;->access$100(Lcom/sleepycat/je/rep/NetworkRestore$Server;)Lcom/sleepycat/je/rep/ReplicationNode;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " is not available: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 358
    invoke-virtual {v0}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 355
    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/net/ConnectException;
    goto :goto_9

    .line 347
    .end local v24    # "serverSocket":Ljava/net/InetSocketAddress;
    .restart local v15    # "serverSocket":Ljava/net/InetSocketAddress;
    :catch_c
    move-exception v0

    move-object/from16 v24, v15

    .line 349
    .end local v15    # "serverSocket":Ljava/net/InetSocketAddress;
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    .restart local v24    # "serverSocket":Ljava/net/InetSocketAddress;
    :goto_8
    iget-object v6, v1, Lcom/sleepycat/je/rep/NetworkRestore;->logger:Ljava/util/logging/Logger;

    iget-object v7, v1, Lcom/sleepycat/je/rep/NetworkRestore;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Backup failed from node: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 351
    invoke-static/range {v20 .. v20}, Lcom/sleepycat/je/rep/NetworkRestore$Server;->access$100(Lcom/sleepycat/je/rep/NetworkRestore$Server;)Lcom/sleepycat/je/rep/ReplicationNode;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 352
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 349
    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 388
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :goto_9
    nop

    .line 389
    .end local v20    # "server":Lcom/sleepycat/je/rep/NetworkRestore$Server;
    .end local v21    # "startTime":J
    .end local v24    # "serverSocket":Ljava/net/InetSocketAddress;
    :goto_a
    goto/16 :goto_2

    .line 344
    .restart local v15    # "serverSocket":Ljava/net/InetSocketAddress;
    .restart local v20    # "server":Lcom/sleepycat/je/rep/NetworkRestore$Server;
    .restart local v21    # "startTime":J
    :catch_d
    move-exception v0

    move-object/from16 v24, v15

    .line 345
    .end local v15    # "serverSocket":Ljava/net/InetSocketAddress;
    .local v0, "e":Lcom/sleepycat/je/log/RestoreMarker$FileCreationException;
    .restart local v24    # "serverSocket":Ljava/net/InetSocketAddress;
    :goto_b
    nop

    .line 346
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v6

    .end local p1    # "logException":Lcom/sleepycat/je/rep/InsufficientLogException;
    .end local p2    # "config":Lcom/sleepycat/je/rep/NetworkRestoreConfig;
    throw v6

    .line 390
    .end local v0    # "e":Lcom/sleepycat/je/log/RestoreMarker$FileCreationException;
    .end local v20    # "server":Lcom/sleepycat/je/rep/NetworkRestore$Server;
    .end local v21    # "startTime":J
    .end local v24    # "serverSocket":Ljava/net/InetSocketAddress;
    .restart local p1    # "logException":Lcom/sleepycat/je/rep/InsufficientLogException;
    .restart local p2    # "config":Lcom/sleepycat/je/rep/NetworkRestoreConfig;
    :cond_3
    move-object v3, v5

    .line 391
    invoke-direct {v1, v3}, Lcom/sleepycat/je/rep/NetworkRestore;->resetServerList(Ljava/util/List;)V

    .line 392
    const/4 v4, 0x0

    .line 393
    .end local v5    # "newServerList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/NetworkRestore$Server;>;"
    .end local v9    # "envHome":Ljava/io/File;
    goto/16 :goto_1

    .line 394
    :cond_4
    const-string v0, "Tried and failed with every node"

    .line 395
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local p1    # "logException":Lcom/sleepycat/je/rep/InsufficientLogException;
    .end local p2    # "config":Lcom/sleepycat/je/rep/NetworkRestoreConfig;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 397
    .end local v2    # "clientNameId":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .end local v3    # "serverList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/NetworkRestore$Server;>;"
    .end local v4    # "firstRound":Z
    .restart local p1    # "logException":Lcom/sleepycat/je/rep/InsufficientLogException;
    .restart local p2    # "config":Lcom/sleepycat/je/rep/NetworkRestoreConfig;
    :catchall_1
    move-exception v0

    :goto_c
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/rep/InsufficientLogException;->releaseRepImpl()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 280
    .end local p1    # "logException":Lcom/sleepycat/je/rep/InsufficientLogException;
    .end local p2    # "config":Lcom/sleepycat/je/rep/NetworkRestoreConfig;
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBackup()Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/sleepycat/je/rep/NetworkRestore;->backup:Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;

    return-object v0
.end method

.method public getLogProvider()Lcom/sleepycat/je/rep/ReplicationNode;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/sleepycat/je/rep/NetworkRestore;->logProvider:Lcom/sleepycat/je/rep/ReplicationNode;

    return-object v0
.end method

.method public getNetworkBackupStats()Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStats;
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/sleepycat/je/rep/NetworkRestore;->backup:Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;

    .line 431
    .local v0, "currentBackup":Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->getStats()Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStats;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public setInterruptHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 470
    .local p1, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Ljava/io/File;>;"
    iput-object p1, p0, Lcom/sleepycat/je/rep/NetworkRestore;->interruptHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 471
    return-void
.end method
