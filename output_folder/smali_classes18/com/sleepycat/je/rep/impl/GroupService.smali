.class public Lcom/sleepycat/je/rep/impl/GroupService;
.super Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;
.source "GroupService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/GroupService$GroupServiceRunnable;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "Group"


# instance fields
.field private final activeChannels:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/rep/net/DataChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Ljava/util/logging/Logger;

.field final protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

.field final repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;Lcom/sleepycat/je/rep/impl/node/RepNode;)V
    .locals 6
    .param p1, "dispatcher"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
    .param p2, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 75
    const-string v0, "Group"

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/GroupService;->activeChannels:Ljava/util/Collection;

    .line 76
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/GroupService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 78
    nop

    .line 79
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    .line 80
    .local v0, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->GROUP_NAME:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "groupName":Ljava/lang/String;
    new-instance v2, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 83
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    .line 84
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    .line 85
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/GroupService;->logger:Ljava/util/logging/Logger;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/impl/GroupService;Lcom/sleepycat/je/rep/net/DataChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/GroupService;
    .param p1, "x1"    # Lcom/sleepycat/je/rep/net/DataChannel;

    .line 52
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/GroupService;->registerChannel(Lcom/sleepycat/je/rep/net/DataChannel;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/impl/GroupService;Lcom/sleepycat/je/rep/net/DataChannel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/GroupService;
    .param p1, "x1"    # Lcom/sleepycat/je/rep/net/DataChannel;

    .line 52
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/GroupService;->unregisterChannel(Lcom/sleepycat/je/rep/net/DataChannel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/rep/impl/GroupService;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/GroupService;

    .line 52
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/GroupService;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private ensureMaster()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/ReplicaStateException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/GroupService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isMaster()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    return-void

    .line 303
    :cond_0
    new-instance v0, Lcom/sleepycat/je/rep/ReplicaStateException;

    const-string v1, "GroupService operation can only be performed at master"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/ReplicaStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseNodeList(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p1, "list"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 294
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    :cond_0
    return-object v0
.end method

.method private declared-synchronized registerChannel(Lcom/sleepycat/je/rep/net/DataChannel;)V
    .locals 1
    .param p1, "dc"    # Lcom/sleepycat/je/rep/net/DataChannel;

    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/GroupService;->activeChannels:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    .line 308
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/GroupService;
    .end local p1    # "dc":Lcom/sleepycat/je/rep/net/DataChannel;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized unregisterChannel(Lcom/sleepycat/je/rep/net/DataChannel;)Z
    .locals 1
    .param p1, "dc"    # Lcom/sleepycat/je/rep/net/DataChannel;

    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/GroupService;->activeChannels:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 325
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/GroupService;
    .end local p1    # "dc":Lcom/sleepycat/je/rep/net/DataChannel;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected cancel()V
    .locals 8

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/GroupService;->activeChannels:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    .local v0, "channels":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/rep/net/DataChannel;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/GroupService;->activeChannels:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/GroupService;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/GroupService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 98
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    const-string v3, "In-flight GroupService request(s) canceled: node shutdown"

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/net/DataChannel;

    .line 103
    .local v2, "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    :try_start_1
    new-instance v3, Ljava/io/PrintWriter;

    .line 104
    invoke-static {v2}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 105
    .local v3, "out":Ljava/io/PrintWriter;
    new-instance v4, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->DEFAULT:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    const-string/jumbo v7, "shutting down"

    invoke-direct {v4, v5, v6, v7}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 107
    .local v4, "rm":Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->wireFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .end local v3    # "out":Ljava/io/PrintWriter;
    .end local v4    # "rm":Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    invoke-interface {v2}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    :try_start_2
    invoke-interface {v2}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 117
    :goto_1
    goto :goto_2

    .line 113
    :catch_0
    move-exception v3

    .line 114
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/GroupService;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/GroupService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 115
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error on channel close: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 116
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 120
    .end local v2    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    :cond_1
    :goto_2
    goto :goto_0

    .line 109
    .restart local v2    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    :catchall_0
    move-exception v1

    invoke-interface {v2}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    :try_start_3
    invoke-interface {v2}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 117
    goto :goto_3

    .line 113
    :catch_1
    move-exception v3

    .line 114
    .restart local v3    # "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/GroupService;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/GroupService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 115
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error on channel close: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 116
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 117
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v1

    .line 121
    .end local v2    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    :cond_3
    return-void

    .line 95
    .end local v0    # "channels":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/rep/net/DataChannel;>;"
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public getRunnable(Lcom/sleepycat/je/rep/net/DataChannel;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "dataChannel"    # Lcom/sleepycat/je/rep/net/DataChannel;

    .line 330
    new-instance v0, Lcom/sleepycat/je/rep/impl/GroupService$GroupServiceRunnable;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-direct {v0, p0, p1, v1}, Lcom/sleepycat/je/rep/impl/GroupService$GroupServiceRunnable;-><init>(Lcom/sleepycat/je/rep/impl/GroupService;Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/impl/RepGroupProtocol;)V

    return-object v0
.end method

.method public process(Lcom/sleepycat/je/rep/impl/RepGroupProtocol$DeleteMember;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .locals 6
    .param p1, "deleteMember"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol$DeleteMember;

    .line 204
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$DeleteMember;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "nodeName":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/GroupService;->ensureMaster()V

    .line 207
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/GroupService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->removeMember(Ljava/lang/String;Z)V

    .line 208
    new-instance v1, Lcom/sleepycat/je/rep/impl/TextProtocol$OK;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$OK;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/MemberNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sleepycat/je/rep/MasterStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sleepycat/je/rep/ReplicaStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/je/rep/MemberActiveException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v2, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->DEFAULT:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 223
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 222
    return-object v2

    .line 218
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    :catch_1
    move-exception v1

    .line 219
    .local v1, "e":Lcom/sleepycat/je/rep/MemberActiveException;
    new-instance v2, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->MEMBER_ACTIVE:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 220
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/MemberActiveException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 219
    return-object v2

    .line 215
    .end local v1    # "e":Lcom/sleepycat/je/rep/MemberActiveException;
    :catch_2
    move-exception v1

    .line 216
    .local v1, "e":Lcom/sleepycat/je/rep/ReplicaStateException;
    new-instance v2, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->IS_REPLICA:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 217
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/ReplicaStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 216
    return-object v2

    .line 212
    .end local v1    # "e":Lcom/sleepycat/je/rep/ReplicaStateException;
    :catch_3
    move-exception v1

    .line 213
    .local v1, "e":Lcom/sleepycat/je/rep/MasterStateException;
    new-instance v2, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->IS_MASTER:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 214
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/MasterStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 213
    return-object v2

    .line 209
    .end local v1    # "e":Lcom/sleepycat/je/rep/MasterStateException;
    :catch_4
    move-exception v1

    .line 210
    .local v1, "e":Lcom/sleepycat/je/rep/MemberNotFoundException;
    new-instance v2, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->MEMBER_NOT_FOUND:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 211
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/MemberNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 210
    return-object v2
.end method

.method public process(Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .locals 6
    .param p1, "ensureNode"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;

    .line 151
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;->getNode()Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v0

    .line 153
    .local v0, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/GroupService;->ensureMaster()V

    .line 154
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/GroupService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepGroupDB()Lcom/sleepycat/je/rep/impl/RepGroupDB;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->ensureMember(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V

    .line 155
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/GroupService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 156
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getMember(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v1

    .line 157
    .local v1, "enode":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    new-instance v2, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/ReplicaStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 161
    .end local v1    # "enode":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v2, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->DEFAULT:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 163
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 162
    return-object v2

    .line 158
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    :catch_1
    move-exception v1

    .line 159
    .local v1, "e":Lcom/sleepycat/je/rep/ReplicaStateException;
    new-instance v2, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->IS_REPLICA:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 160
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/ReplicaStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 159
    return-object v2
.end method

.method public process(Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupRequest;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .locals 5
    .param p1, "groupRequest"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupRequest;

    .line 131
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/GroupService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    .line 132
    .local v0, "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    if-nez v0, :cond_0

    .line 133
    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->DEFAULT:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    const-string v4, "no group info yet"

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    return-object v1

    .line 136
    :cond_0
    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1, v0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupRequest;Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    return-object v1
.end method

.method public process(Lcom/sleepycat/je/rep/impl/RepGroupProtocol$RemoveMember;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .locals 6
    .param p1, "removeMember"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol$RemoveMember;

    .line 175
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$RemoveMember;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "nodeName":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/GroupService;->ensureMaster()V

    .line 178
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/GroupService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->removeMember(Ljava/lang/String;)V

    .line 179
    new-instance v1, Lcom/sleepycat/je/rep/impl/TextProtocol$OK;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$OK;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/MemberNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sleepycat/je/rep/MasterStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/je/rep/ReplicaStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v2, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->DEFAULT:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 191
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 190
    return-object v2

    .line 186
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    :catch_1
    move-exception v1

    .line 187
    .local v1, "e":Lcom/sleepycat/je/rep/ReplicaStateException;
    new-instance v2, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->IS_REPLICA:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 188
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/ReplicaStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 187
    return-object v2

    .line 183
    .end local v1    # "e":Lcom/sleepycat/je/rep/ReplicaStateException;
    :catch_2
    move-exception v1

    .line 184
    .local v1, "e":Lcom/sleepycat/je/rep/MasterStateException;
    new-instance v2, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->IS_MASTER:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 185
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/MasterStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 184
    return-object v2

    .line 180
    .end local v1    # "e":Lcom/sleepycat/je/rep/MasterStateException;
    :catch_3
    move-exception v1

    .line 181
    .local v1, "e":Lcom/sleepycat/je/rep/MemberNotFoundException;
    new-instance v2, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->MEMBER_NOT_FOUND:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 182
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/MemberNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 181
    return-object v2
.end method

.method public process(Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .locals 8
    .param p1, "transferMaster"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;

    .line 267
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/GroupService;->ensureMaster()V

    .line 268
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->getNodeNameList()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "nodeList":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/impl/GroupService;->parseNodeList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 270
    .local v1, "replicas":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->getTimeout()J

    move-result-wide v2

    .line 271
    .local v2, "timeout":J
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->getForceFlag()Z

    move-result v4

    .line 272
    .local v4, "force":Z
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/GroupService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->transferMaster(Ljava/util/Set;JZ)Ljava/lang/String;

    move-result-object v5

    .line 273
    .local v5, "winner":Ljava/lang/String;
    new-instance v6, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferOK;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v7, p1, v5}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferOK;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/ReplicaStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sleepycat/je/rep/MasterTransferFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 286
    .end local v0    # "nodeList":Ljava/lang/String;
    .end local v1    # "replicas":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "timeout":J
    .end local v4    # "force":Z
    .end local v5    # "winner":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->DEFAULT:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 288
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 287
    return-object v1

    .line 283
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->DEFAULT:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 285
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 284
    return-object v1

    .line 280
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 281
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->DEFAULT:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 282
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 281
    return-object v1

    .line 277
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :catch_3
    move-exception v0

    .line 278
    .local v0, "e":Lcom/sleepycat/je/rep/MasterTransferFailureException;
    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->TRANSFER_FAIL:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 279
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/MasterTransferFailureException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 278
    return-object v1

    .line 274
    .end local v0    # "e":Lcom/sleepycat/je/rep/MasterTransferFailureException;
    :catch_4
    move-exception v0

    .line 275
    .local v0, "e":Lcom/sleepycat/je/rep/ReplicaStateException;
    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->IS_REPLICA:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 276
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicaStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 275
    return-object v1
.end method

.method public process(Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .locals 5
    .param p1, "updateAddress"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;

    .line 237
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/GroupService;->ensureMaster()V

    .line 238
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/GroupService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;->getNewHostName()Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;->getNewPort()I

    move-result v3

    .line 238
    invoke-virtual {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->updateAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 241
    new-instance v0, Lcom/sleepycat/je/rep/impl/TextProtocol$OK;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$OK;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/MemberNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sleepycat/je/rep/MasterStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/je/rep/ReplicaStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->DEFAULT:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 253
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 252
    return-object v1

    .line 248
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :catch_1
    move-exception v0

    .line 249
    .local v0, "e":Lcom/sleepycat/je/rep/ReplicaStateException;
    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->IS_REPLICA:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 250
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicaStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 249
    return-object v1

    .line 245
    .end local v0    # "e":Lcom/sleepycat/je/rep/ReplicaStateException;
    :catch_2
    move-exception v0

    .line 246
    .local v0, "e":Lcom/sleepycat/je/rep/MasterStateException;
    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->IS_MASTER:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 247
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/MasterStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 246
    return-object v1

    .line 242
    .end local v0    # "e":Lcom/sleepycat/je/rep/MasterStateException;
    :catch_3
    move-exception v0

    .line 243
    .local v0, "e":Lcom/sleepycat/je/rep/MemberNotFoundException;
    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/GroupService;->protocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->MEMBER_NOT_FOUND:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 244
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/MemberNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V

    .line 243
    return-object v1
.end method
