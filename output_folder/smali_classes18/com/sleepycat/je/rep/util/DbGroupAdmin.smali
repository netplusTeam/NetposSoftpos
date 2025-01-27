.class public Lcom/sleepycat/je/rep/util/DbGroupAdmin;
.super Ljava/lang/Object;
.source "DbGroupAdmin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/util/DbGroupAdmin$Command;
    }
.end annotation


# static fields
.field private static final undocumentedUsageString:Ljava/lang/String; = "  -netProps <optional>   # name of a property file containing\n                            # properties needed for replication\n                            # service access\n"

.field private static final usageString:Ljava/lang/String;


# instance fields
.field private final actions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sleepycat/je/rep/util/DbGroupAdmin$Command;",
            ">;"
        }
    .end annotation
.end field

.field private channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

.field private forceFlag:Z

.field private groupAdmin:Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

.field private groupName:Ljava/lang/String;

.field private helperSockets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private newHostName:Ljava/lang/String;

.field private newPort:I

.field private nodeName:Ljava/lang/String;

.field private timeout:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/rep/util/DbGroupAdmin;

    .line 74
    invoke-static {v1}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  -groupName <group name>   # name of replication group\n  -helperHosts <host:port>  # identifier for one or more members\n                            # of the replication group which can\n                            # be contacted for group information,\n                            # in this format:\n                            # hostname[:port][,hostname[:port]]\n  -dumpGroup                # dump group information\n  -removeMember <node name> # node to be removed\n  -updateAddress <node name> <new host:port>\n                            # update the network address for a\n                            # specified node.  The node should not\n                            # be alive when updating the address\n  -transferMaster [-force] <node1,node2,...> <timeout>\n                            # transfer master role to one of the\n                            # specified nodes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->usageString:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->actions:Ljava/util/ArrayList;

    .line 319
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 335
    .local p2, "helperSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)V

    .line 336
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p3, "netConfig"    # Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Lcom/sleepycat/je/rep/ReplicationNetworkConfig;",
            ")V"
        }
    .end annotation

    .line 373
    .local p2, "helperSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->actions:Ljava/util/ArrayList;

    .line 374
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->groupName:Ljava/lang/String;

    .line 375
    iput-object p2, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->helperSockets:Ljava/util/Set;

    .line 376
    invoke-static {p3, p1}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->initializeFactory(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Ljava/lang/String;)Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    .line 378
    invoke-direct {p0}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->createGroupAdmin()V

    .line 379
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/io/File;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p3, "netPropsFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 356
    .local p2, "helperSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    invoke-static {p3}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->makeRepNetConfig(Ljava/io/File;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)V

    .line 357
    return-void
.end method

.method private createGroupAdmin()V
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->groupName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 384
    const-string v0, "Group name must be specified"

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->printUsage(Ljava/lang/String;)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->helperSockets:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 388
    :cond_1
    const-string v0, "Host and ports of helper nodes must be specified"

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->printUsage(Ljava/lang/String;)V

    .line 391
    :cond_2
    new-instance v0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->groupName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->helperSockets:Ljava/util/Set;

    iget-object v3, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->groupAdmin:Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

    .line 393
    return-void
.end method

.method private getFormattedOutput()Ljava/lang/String;
    .locals 14

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->groupAdmin:Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->getGroup()Lcom/sleepycat/je/rep/ReplicationGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/ReplicationGroup;->getRepGroupImpl()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v1

    .line 521
    .local v1, "repGroupImpl":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->groupAdmin:Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->getMasterNodeName()Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, "masterName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nGroup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v3, "Electable Members:\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getElectableMembers()Ljava/util/Set;

    move-result-object v3

    .line 527
    .local v3, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    const-string v5, ", "

    const-string v6, ")\n"

    const-string v7, ":"

    const-string v8, " ("

    const-string v9, "    "

    if-nez v4, :cond_0

    .line 528
    const-string v4, "    No electable members\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 530
    :cond_0
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 531
    .local v10, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    nop

    .line 532
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "master, "

    goto :goto_1

    :cond_1
    const-string v11, ""

    .line 533
    .local v11, "type":Ljava/lang/String;
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 534
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getHostName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getPort()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 535
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getBarrierState()Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 533
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .end local v10    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local v11    # "type":Ljava/lang/String;
    goto :goto_0

    .line 540
    :cond_2
    :goto_2
    const-string v4, "\nMonitor Members:\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getMonitorMembers()Ljava/util/Set;

    move-result-object v3

    .line 542
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 543
    const-string v4, "    No monitors\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 545
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 546
    .restart local v10    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getHostName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 547
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getPort()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 546
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .end local v10    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    goto :goto_3

    .line 552
    :cond_4
    :goto_4
    const-string v4, "\nSecondary Members:\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getSecondaryMembers()Ljava/util/Set;

    move-result-object v3

    .line 554
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 555
    const-string v4, "    No secondary members\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 557
    :cond_5
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 558
    .restart local v10    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getHostName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 559
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getPort()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 560
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getBarrierState()Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 558
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .end local v10    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    goto :goto_5

    .line 565
    :cond_6
    :goto_6
    const-string v4, "\nExternal Members:\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getExternalMembers()Ljava/util/Set;

    move-result-object v3

    .line 567
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 568
    const-string v4, "    No external members\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 570
    :cond_7
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 571
    .restart local v10    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getHostName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 572
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getPort()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 573
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getBarrierState()Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 571
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .end local v10    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    goto :goto_7

    .line 577
    :cond_8
    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static initializeFactory(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Ljava/lang/String;)Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .locals 1
    .param p0, "repNetConfig"    # Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .param p1, "logContext"    # Ljava/lang/String;

    .line 594
    if-nez p0, :cond_0

    .line 596
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->createDefault()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object p0

    .line 599
    :cond_0
    invoke-static {p0, p1}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;->construct(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Ljava/lang/String;)Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v0

    return-object v0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;-><init>()V

    .line 126
    .local v0, "admin":Lcom/sleepycat/je/rep/util/DbGroupAdmin;
    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->parseArgs([Ljava/lang/String;)V

    .line 127
    invoke-direct {v0}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->run()V

    .line 128
    return-void
.end method

.method private static makeRepNetConfig(Ljava/io/File;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 1
    .param p0, "propFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 583
    if-nez p0, :cond_0

    .line 584
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->createDefault()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    return-object v0

    .line 587
    :cond_0
    invoke-static {p0}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->create(Ljava/io/File;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    return-object v0
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 10
    .param p1, "argv"    # [Ljava/lang/String;

    .line 151
    const-string v0, "The net properties file "

    const/4 v1, 0x0

    .line 152
    .local v1, "argc":I
    array-length v2, p1

    .line 153
    .local v2, "nArgs":I
    const/4 v3, 0x0

    .line 155
    .local v3, "netPropsName":Ljava/lang/String;
    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 156
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->printUsage(Ljava/lang/String;)V

    .line 157
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 160
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_14

    .line 161
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "argc":I
    .local v5, "argc":I
    aget-object v1, p1, v1

    .line 162
    .local v1, "thisArg":Ljava/lang/String;
    const-string v6, "-groupName"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 163
    if-ge v5, v2, :cond_1

    .line 164
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "argc":I
    .local v6, "argc":I
    aget-object v5, p1, v5

    iput-object v5, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->groupName:Ljava/lang/String;

    move v1, v6

    goto/16 :goto_4

    .line 166
    .end local v6    # "argc":I
    .restart local v5    # "argc":I
    :cond_1
    const-string v6, "-groupName requires an argument"

    invoke-direct {p0, v6}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 168
    :cond_2
    const-string v6, "-helperHosts"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 169
    if-ge v5, v2, :cond_3

    .line 170
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "argc":I
    .restart local v6    # "argc":I
    aget-object v5, p1, v5

    invoke-static {v5}, Lcom/sleepycat/je/rep/utilint/HostPortPair;->getSockets(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->helperSockets:Ljava/util/Set;

    move v1, v6

    goto/16 :goto_4

    .line 172
    .end local v6    # "argc":I
    .restart local v5    # "argc":I
    :cond_3
    const-string v6, "-helperHosts requires an argument"

    invoke-direct {p0, v6}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 174
    :cond_4
    const-string v6, "-dumpGroup"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 175
    iget-object v6, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->actions:Ljava/util/ArrayList;

    sget-object v7, Lcom/sleepycat/je/rep/util/DbGroupAdmin$Command;->DUMP:Lcom/sleepycat/je/rep/util/DbGroupAdmin$Command;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 176
    :cond_5
    const-string v6, "-removeMember"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 177
    if-ge v5, v2, :cond_6

    .line 178
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "argc":I
    .restart local v6    # "argc":I
    aget-object v5, p1, v5

    iput-object v5, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->nodeName:Ljava/lang/String;

    .line 179
    iget-object v5, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->actions:Ljava/util/ArrayList;

    sget-object v7, Lcom/sleepycat/je/rep/util/DbGroupAdmin$Command;->REMOVE:Lcom/sleepycat/je/rep/util/DbGroupAdmin$Command;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v6

    goto/16 :goto_4

    .line 181
    .end local v6    # "argc":I
    .restart local v5    # "argc":I
    :cond_6
    const-string v6, "-removeMember requires an argument"

    invoke-direct {p0, v6}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 183
    :cond_7
    const-string v6, "-updateAddress"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 184
    if-ge v5, v2, :cond_a

    .line 185
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "argc":I
    .restart local v6    # "argc":I
    aget-object v5, p1, v5

    iput-object v5, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->nodeName:Ljava/lang/String;

    .line 187
    if-ge v6, v2, :cond_9

    .line 188
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "argc":I
    .restart local v5    # "argc":I
    aget-object v6, p1, v6

    .line 189
    .local v6, "hostPort":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 190
    .local v7, "index":I
    if-gez v7, :cond_8

    .line 191
    const-string v8, "Host port pair format must be <host name>:<port number>"

    invoke-direct {p0, v8}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->printUsage(Ljava/lang/String;)V

    .line 195
    :cond_8
    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->newHostName:Ljava/lang/String;

    .line 196
    add-int/lit8 v8, v7, 0x1

    .line 197
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->newPort:I

    .line 198
    .end local v6    # "hostPort":Ljava/lang/String;
    .end local v7    # "index":I
    move v6, v5

    goto :goto_1

    .line 199
    .end local v5    # "argc":I
    .local v6, "argc":I
    :cond_9
    const-string v5, "-updateAddress requires a <host name>:<port number> argument"

    invoke-direct {p0, v5}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->printUsage(Ljava/lang/String;)V

    .line 203
    :goto_1
    iget-object v5, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->actions:Ljava/util/ArrayList;

    sget-object v7, Lcom/sleepycat/je/rep/util/DbGroupAdmin$Command;->UPDATE_ADDRESS:Lcom/sleepycat/je/rep/util/DbGroupAdmin$Command;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v6

    goto/16 :goto_4

    .line 205
    .end local v6    # "argc":I
    .restart local v5    # "argc":I
    :cond_a
    nop

    .line 206
    const-string v6, "-updateAddress requires the node name argument"

    invoke-direct {p0, v6}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 208
    :cond_b
    const-string v6, "-transferMaster"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 213
    if-ge v5, v2, :cond_c

    aget-object v6, p1, v5

    const-string v7, "-force"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 214
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->forceFlag:Z

    .line 215
    add-int/lit8 v5, v5, 0x1

    .line 217
    :cond_c
    add-int/lit8 v6, v5, 0x1

    if-ge v6, v2, :cond_e

    .line 218
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "argc":I
    .restart local v6    # "argc":I
    aget-object v5, p1, v5

    iput-object v5, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->nodeName:Ljava/lang/String;

    .line 226
    add-int/lit8 v5, v6, 0x1

    if-ge v5, v2, :cond_d

    add-int/lit8 v5, v6, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x2d

    if-eq v5, v7, :cond_d

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p1, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    aget-object v7, p1, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->timeout:Ljava/lang/String;

    .line 228
    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 230
    :cond_d
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "argc":I
    .restart local v5    # "argc":I
    aget-object v6, p1, v6

    iput-object v6, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->timeout:Ljava/lang/String;

    move v6, v5

    .line 233
    .end local v5    # "argc":I
    .restart local v6    # "argc":I
    :goto_2
    iget-object v5, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->actions:Ljava/util/ArrayList;

    sget-object v7, Lcom/sleepycat/je/rep/util/DbGroupAdmin$Command;->TRANSFER_MASTER:Lcom/sleepycat/je/rep/util/DbGroupAdmin$Command;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v6

    goto :goto_4

    .line 235
    .end local v6    # "argc":I
    .restart local v5    # "argc":I
    :cond_e
    nop

    .line 236
    const-string v6, "-transferMaster requires at least two arguments"

    invoke-direct {p0, v6}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->printUsage(Ljava/lang/String;)V

    move v1, v5

    goto :goto_4

    .line 238
    :cond_f
    const-string v6, "-netProps"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 239
    if-ge v5, v2, :cond_10

    .line 240
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "argc":I
    .restart local v6    # "argc":I
    aget-object v3, p1, v5

    move v1, v6

    goto :goto_4

    .line 242
    .end local v6    # "argc":I
    .restart local v5    # "argc":I
    :cond_10
    const-string v6, "-netProps requires an argument"

    invoke-direct {p0, v6}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->printUsage(Ljava/lang/String;)V

    goto :goto_3

    .line 244
    :cond_11
    const-string v6, "-deleteMember"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 245
    if-ge v5, v2, :cond_12

    .line 246
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "argc":I
    .restart local v6    # "argc":I
    aget-object v5, p1, v5

    iput-object v5, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->nodeName:Ljava/lang/String;

    .line 247
    iget-object v5, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->actions:Ljava/util/ArrayList;

    sget-object v7, Lcom/sleepycat/je/rep/util/DbGroupAdmin$Command;->DELETE:Lcom/sleepycat/je/rep/util/DbGroupAdmin$Command;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v6

    goto :goto_4

    .line 249
    .end local v6    # "argc":I
    .restart local v5    # "argc":I
    :cond_12
    const-string v6, "-deleteMember requires an argument"

    invoke-direct {p0, v6}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->printUsage(Ljava/lang/String;)V

    goto :goto_3

    .line 252
    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a valid argument"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->printUsage(Ljava/lang/String;)V

    .line 254
    .end local v1    # "thisArg":Ljava/lang/String;
    :goto_3
    move v1, v5

    .end local v5    # "argc":I
    .local v1, "argc":I
    :goto_4
    goto/16 :goto_0

    .line 257
    :cond_14
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->createDefault()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v4

    .line 258
    .local v4, "repNetConfig":Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    if-eqz v3, :cond_15

    .line 260
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-static {v5}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->create(Ljava/io/File;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 268
    :goto_5
    goto :goto_6

    .line 265
    :catch_0
    move-exception v5

    .line 266
    .local v5, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " is not valid: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 267
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->printUsage(Ljava/lang/String;)V

    goto :goto_6

    .line 262
    .end local v5    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v5

    .line 263
    .local v5, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " does not exist: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 264
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->printUsage(Ljava/lang/String;)V

    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    goto :goto_5

    .line 271
    :cond_15
    :goto_6
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->groupName:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->initializeFactory(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Ljava/lang/String;)Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    .line 272
    return-void
.end method

.method private parseNodes(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p1, "nodes"    # Ljava/lang/String;
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

    .line 501
    if-eqz p1, :cond_1

    .line 504
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .local v0, "st":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 506
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 509
    :cond_0
    return-object v1

    .line 502
    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "node list may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private printUsage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 136
    if-eqz p1, :cond_0

    .line 137
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->usageString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 142
    return-void
.end method

.method private run()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    invoke-direct {p0}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->createGroupAdmin()V

    .line 280
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 281
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/util/DbGroupAdmin$Command;

    .line 285
    .local v1, "action":Lcom/sleepycat/je/rep/util/DbGroupAdmin$Command;
    sget-object v2, Lcom/sleepycat/je/rep/util/DbGroupAdmin$1;->$SwitchMap$com$sleepycat$je$rep$util$DbGroupAdmin$Command:[I

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/util/DbGroupAdmin$Command;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 313
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 309
    :pswitch_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->nodeName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->deleteMember(Ljava/lang/String;)V

    .line 310
    goto :goto_1

    .line 304
    :pswitch_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->nodeName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->newHostName:Ljava/lang/String;

    iget v4, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->newPort:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->updateAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 305
    goto :goto_1

    .line 299
    :pswitch_2
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->nodeName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->timeout:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->transferMaster(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    goto :goto_1

    .line 294
    :pswitch_3
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->nodeName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->removeMember(Ljava/lang/String;)V

    .line 295
    goto :goto_1

    .line 289
    :pswitch_4
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->dumpGroup()V

    .line 290
    nop

    .line 315
    .end local v1    # "action":Lcom/sleepycat/je/rep/util/DbGroupAdmin$Command;
    :goto_1
    goto :goto_0

    .line 316
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public deleteMember(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 443
    if-nez p1, :cond_0

    .line 444
    const-string v0, "Node name must be specified"

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->printUsage(Ljava/lang/String;)V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->groupAdmin:Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->deleteMember(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public dumpGroup()V
    .locals 2

    .line 401
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->getFormattedOutput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public removeMember(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 421
    if-nez p1, :cond_0

    .line 422
    const-string v0, "Node name must be specified"

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->printUsage(Ljava/lang/String;)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->groupAdmin:Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->removeMember(Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public transferMaster(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "nodeList"    # Ljava/lang/String;
    .param p2, "timeout"    # Ljava/lang/String;

    .line 492
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->groupAdmin:Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

    .line 493
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->parseNodes(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 494
    invoke-static {p2}, Lcom/sleepycat/je/utilint/PropUtil;->parseDuration(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-boolean v4, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->forceFlag:Z

    .line 493
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->transferMaster(Ljava/util/Set;ILjava/util/concurrent/TimeUnit;Z)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The new master is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public updateAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "newHostName"    # Ljava/lang/String;
    .param p3, "newPort"    # I

    .line 469
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 470
    :cond_0
    const-string v0, "Node name and new host name must be specified"

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->printUsage(Ljava/lang/String;)V

    .line 473
    :cond_1
    if-gtz p3, :cond_2

    .line 474
    const-string v0, "Port of the new network address must be specified"

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->printUsage(Ljava/lang/String;)V

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/DbGroupAdmin;->groupAdmin:Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->updateAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 478
    return-void
.end method
