.class public Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;
.super Ljava/lang/Object;
.source "ReplicationGroupAdmin.java"


# instance fields
.field private final channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

.field private final electionsProtocol:Lcom/sleepycat/je/rep/elections/Protocol;

.field private final formatter:Ljava/util/logging/Formatter;

.field private final groupName:Ljava/lang/String;

.field private final groupProtocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

.field private helperSockets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
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

    .line 90
    .local p2, "helperSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    nop

    .line 91
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->createDefault()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    .line 90
    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p3, "repNetConfig"    # Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
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

    .line 106
    .local p2, "helperSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    nop

    .line 107
    invoke-static {p3, p1}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->initializeFactory(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Ljava/lang/String;)Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v0

    .line 106
    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V
    .locals 8
    .param p1, "groupName"    # Ljava/lang/String;
    .param p3, "channelFactory"    # Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Lcom/sleepycat/je/rep/net/DataChannelFactory;",
            ")V"
        }
    .end annotation

    .line 121
    .local p2, "helperSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->groupName:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->helperSockets:Ljava/util/Set;

    .line 124
    iput-object p3, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    .line 126
    new-instance v7, Lcom/sleepycat/je/rep/elections/Protocol;

    .line 127
    invoke-static {}, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;->getParser()Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;

    move-result-object v1

    .line 128
    invoke-static {}, Lcom/sleepycat/je/rep/elections/MasterValue;->getParser()Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;

    move-result-object v2

    sget-object v4, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NOCHECK:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v3, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/rep/elections/Protocol;-><init>(Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    iput-object v7, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->electionsProtocol:Lcom/sleepycat/je/rep/elections/Protocol;

    .line 133
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NOCHECK:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p3}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->groupProtocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 136
    nop

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NOCHECK:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerFixedPrefix(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->logger:Ljava/util/logging/Logger;

    .line 138
    new-instance v0, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NOCHECK:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->formatter:Ljava/util/logging/Formatter;

    .line 139
    return-void
.end method

.method private checkMember(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .locals 5
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "masterErrorMessage"    # Ljava/lang/String;
    .param p3, "electableOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/MasterStateException;,
            Lcom/sleepycat/je/rep/MemberNotFoundException;
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->getGroup()Lcom/sleepycat/je/rep/ReplicationGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationGroup;->getRepGroupImpl()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    .line 562
    .local v0, "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getNode(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v1

    .line 565
    .local v1, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    const-string v2, "Node: "

    if-eqz v1, :cond_7

    .line 567
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isQuorumAck()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 573
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/NodeType;->isElectable()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 574
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " must have node type ELECTABLE, was "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 577
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 580
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isQuorumAck()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 581
    :cond_3
    new-instance v3, Lcom/sleepycat/je/rep/MemberNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is not currently a member of the group: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->groupName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", it has been removed."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/sleepycat/je/rep/MemberNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 588
    :cond_4
    :goto_1
    if-eqz p2, :cond_6

    .line 589
    invoke-direct {p0}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->getMasterSocket()Ljava/net/InetSocketAddress;

    move-result-object v2

    .line 590
    .local v2, "masterAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    .line 591
    :cond_5
    new-instance v3, Lcom/sleepycat/je/rep/MasterStateException;

    invoke-direct {v3, p2}, Lcom/sleepycat/je/rep/MasterStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 595
    .end local v2    # "masterAddress":Ljava/net/InetSocketAddress;
    :cond_6
    :goto_2
    return-object v1

    .line 568
    :cond_7
    new-instance v3, Lcom/sleepycat/je/rep/MemberNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is not a member of the group: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->groupName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/sleepycat/je/rep/MemberNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private commaJoin(Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 538
    .local p1, "words":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 539
    .local v0, "first":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 541
    .local v3, "w":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 542
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 544
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const/4 v0, 0x0

    .line 546
    .end local v3    # "w":Ljava/lang/String;
    goto :goto_0

    .line 547
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private doMessageExchange(Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Ljava/lang/Class;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .locals 6
    .param p1, "request"    # Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentFailureException;,
            Lcom/sleepycat/je/rep/MasterStateException;,
            Lcom/sleepycat/je/rep/MemberNotFoundException;,
            Lcom/sleepycat/je/rep/UnknownMasterException;
        }
    .end annotation

    .line 607
    .local p2, "respClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->getMasterSocket()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 608
    .local v0, "masterAddress":Ljava/net/InetSocketAddress;
    new-instance v1, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->groupProtocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "Group"

    invoke-direct {v1, v2, v0, v3, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/net/InetSocketAddress;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)V

    .line 610
    .local v1, "me":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->run()V

    .line 612
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->getResponseMessage()Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v2

    .line 614
    .local v2, "resp":Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    if-nez v2, :cond_1

    .line 615
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->getException()Ljava/lang/Exception;

    move-result-object v3

    if-nez v3, :cond_0

    .line 624
    const/4 v3, 0x0

    return-object v3

    .line 616
    :cond_0
    new-instance v3, Lcom/sleepycat/je/rep/UnknownMasterException;

    .line 617
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->getException()Ljava/lang/Exception;

    move-result-object v4

    const-string v5, "Problem communicating with master."

    invoke-direct {v3, v5, v4}, Lcom/sleepycat/je/rep/UnknownMasterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 627
    :cond_1
    if-nez p2, :cond_3

    instance-of v3, v2, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    if-nez v3, :cond_2

    goto :goto_0

    .line 628
    :cond_2
    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->getException(Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;)Lcom/sleepycat/je/DatabaseException;

    move-result-object v3

    throw v3

    .line 631
    :cond_3
    :goto_0
    if-eqz p2, :cond_5

    .line 632
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 633
    :cond_4
    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->getException(Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;)Lcom/sleepycat/je/DatabaseException;

    move-result-object v3

    throw v3

    .line 636
    :cond_5
    :goto_1
    return-object v2
.end method

.method private getException(Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;)Lcom/sleepycat/je/DatabaseException;
    .locals 3
    .param p1, "resp"    # Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    .line 643
    if-nez p1, :cond_0

    .line 644
    nop

    .line 645
    const-string v0, "No response to request"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .line 644
    return-object v0

    .line 648
    :cond_0
    instance-of v0, p1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    if-eqz v0, :cond_1

    .line 649
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    .line 650
    .local v0, "fail":Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;
    sget-object v1, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin$1;->$SwitchMap$com$sleepycat$je$rep$impl$RepGroupProtocol$FailReason:[I

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;->getReason()Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 663
    nop

    .line 664
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    .line 663
    return-object v1

    .line 660
    :pswitch_0
    new-instance v1, Lcom/sleepycat/je/rep/MasterTransferFailureException;

    .line 661
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/MasterTransferFailureException;-><init>(Ljava/lang/String;)V

    .line 660
    return-object v1

    .line 656
    :pswitch_1
    new-instance v1, Lcom/sleepycat/je/rep/ReplicaStateException;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/ReplicaStateException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 654
    :pswitch_2
    new-instance v1, Lcom/sleepycat/je/rep/MasterStateException;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/MasterStateException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 652
    :pswitch_3
    new-instance v1, Lcom/sleepycat/je/rep/MemberNotFoundException;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/MemberNotFoundException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 668
    .end local v0    # "fail":Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;
    :cond_1
    instance-of v0, p1, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;

    if-eqz v0, :cond_2

    .line 669
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;

    .line 670
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .line 669
    return-object v0

    .line 673
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response not recognized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 674
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .line 673
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMasterSocket()Ljava/net/InetSocketAddress;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/UnknownMasterException;,
            Lcom/sleepycat/je/EnvironmentFailureException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->electionsProtocol:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->helperSockets:Ljava/util/Set;

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->formatter:Ljava/util/logging/Formatter;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lcom/sleepycat/je/rep/elections/Learner;->findMaster(Lcom/sleepycat/je/rep/elections/Protocol;Ljava/util/Set;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)Lcom/sleepycat/je/rep/elections/MasterValue;

    move-result-object v0

    .line 191
    .local v0, "masterValue":Lcom/sleepycat/je/rep/elections/MasterValue;
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/MasterValue;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/MasterValue;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 191
    return-object v1
.end method

.method private static initializeFactory(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Ljava/lang/String;)Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .locals 1
    .param p0, "repNetConfig"    # Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .param p1, "logContext"    # Ljava/lang/String;

    .line 681
    invoke-static {p0, p1}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;->construct(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Ljava/lang/String;)Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteMember(Ljava/lang/String;)V
    .locals 6
    .param p1, "nodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/UnknownMasterException;,
            Lcom/sleepycat/je/rep/MemberActiveException;,
            Lcom/sleepycat/je/rep/MemberNotFoundException;,
            Lcom/sleepycat/je/rep/MasterStateException;,
            Lcom/sleepycat/je/rep/ReplicaStateException;,
            Lcom/sleepycat/je/EnvironmentFailureException;
        }
    .end annotation

    .line 377
    const-string v0, "Cannot delete an active master"

    .line 378
    .local v0, "masterErrorMessage":Ljava/lang/String;
    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$DeleteMember;

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->groupProtocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$DeleteMember;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Ljava/lang/String;)V

    .line 381
    .local v1, "request":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    const-string v2, "Cannot delete an active master"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->checkMember(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v2

    .line 383
    .local v2, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v3

    if-nez v3, :cond_0

    .line 388
    const-class v3, Lcom/sleepycat/je/rep/impl/TextProtocol$OK;

    invoke-direct {p0, v1, v3}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->doMessageExchange(Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Ljava/lang/Class;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    .line 389
    return-void

    .line 384
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot delete node with transient ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public ensureMonitor(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)Lcom/sleepycat/je/rep/ReplicationNode;
    .locals 10
    .param p1, "monitor"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/UnknownMasterException;,
            Lcom/sleepycat/je/EnvironmentFailureException;
        }
    .end annotation

    .line 236
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->isMonitor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->electionsProtocol:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->helperSockets:Ljava/util/Set;

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->logger:Ljava/util/logging/Logger;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->formatter:Ljava/util/logging/Formatter;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/rep/elections/Learner;->findMaster(Lcom/sleepycat/je/rep/elections/Protocol;Ljava/util/Set;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)Lcom/sleepycat/je/rep/elections/MasterValue;

    move-result-object v0

    .line 246
    .local v0, "masterValue":Lcom/sleepycat/je/rep/elections/MasterValue;
    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->groupProtocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V

    const-class v2, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;

    .line 247
    invoke-direct {p0, v1, v2}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->doMessageExchange(Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Ljava/lang/Class;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;

    .line 249
    .local v1, "okResp":Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->update(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 250
    new-instance v2, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    new-instance v5, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/MasterValue;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/sleepycat/je/rep/NodeType;->ELECTABLE:Lcom/sleepycat/je/rep/NodeType;

    .line 252
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/MasterValue;->getHostName()Ljava/lang/String;

    move-result-object v7

    .line 253
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/MasterValue;->getPort()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/NodeType;Ljava/lang/String;ILcom/sleepycat/je/JEVersion;)V

    .line 250
    return-object v2

    .line 237
    .end local v0    # "masterValue":Lcom/sleepycat/je/rep/elections/MasterValue;
    .end local v1    # "okResp":Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Node type must be Monitor not: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public getGroup()Lcom/sleepycat/je/rep/ReplicationGroup;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/UnknownMasterException;,
            Lcom/sleepycat/je/EnvironmentFailureException;
        }
    .end annotation

    .line 405
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupRequest;

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->groupProtocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupRequest;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;)V

    const-class v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;

    .line 406
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->doMessageExchange(Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Ljava/lang/Class;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;

    .line 408
    .local v0, "resp":Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;
    new-instance v1, Lcom/sleepycat/je/rep/ReplicationGroup;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/ReplicationGroup;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    return-object v1
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getHelperSockets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->helperSockets:Ljava/util/Set;

    return-object v0
.end method

.method public getMasterNodeName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/UnknownMasterException;,
            Lcom/sleepycat/je/EnvironmentFailureException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->electionsProtocol:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->helperSockets:Ljava/util/Set;

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->formatter:Ljava/util/logging/Formatter;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lcom/sleepycat/je/rep/elections/Learner;->findMaster(Lcom/sleepycat/je/rep/elections/Protocol;Ljava/util/Set;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)Lcom/sleepycat/je/rep/elections/MasterValue;

    move-result-object v0

    .line 213
    .local v0, "masterValue":Lcom/sleepycat/je/rep/elections/MasterValue;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/MasterValue;->getNodeName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNodeState(Lcom/sleepycat/je/rep/ReplicationNode;I)Lcom/sleepycat/je/rep/NodeState;
    .locals 3
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/ReplicationNode;
    .param p2, "socketConnectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;
        }
    .end annotation

    .line 432
    new-instance v0, Lcom/sleepycat/je/rep/util/DbPing;

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->groupName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/sleepycat/je/rep/util/DbPing;-><init>(Lcom/sleepycat/je/rep/ReplicationNode;Ljava/lang/String;ILcom/sleepycat/je/rep/net/DataChannelFactory;)V

    .line 435
    .local v0, "ping":Lcom/sleepycat/je/rep/util/DbPing;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/util/DbPing;->getNodeState()Lcom/sleepycat/je/rep/NodeState;

    move-result-object v1

    return-object v1
.end method

.method public removeMember(Ljava/lang/String;)V
    .locals 6
    .param p1, "nodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/UnknownMasterException;,
            Lcom/sleepycat/je/rep/MemberNotFoundException;,
            Lcom/sleepycat/je/rep/MasterStateException;,
            Lcom/sleepycat/je/EnvironmentFailureException;
        }
    .end annotation

    .line 311
    const-string v0, "Cannot remove an active master"

    .line 312
    .local v0, "masterErrorMessage":Ljava/lang/String;
    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$RemoveMember;

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->groupProtocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$RemoveMember;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Ljava/lang/String;)V

    .line 315
    .local v1, "request":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    const-string v2, "Cannot remove an active master"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->checkMember(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v2

    .line 317
    .local v2, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v3

    if-nez v3, :cond_0

    .line 322
    const-class v3, Lcom/sleepycat/je/rep/impl/TextProtocol$OK;

    invoke-direct {p0, v1, v3}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->doMessageExchange(Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Ljava/lang/Class;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    .line 323
    return-void

    .line 318
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot remove node with transient ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setHelperSockets(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p1, "helperSockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->helperSockets:Ljava/util/Set;

    .line 160
    return-void
.end method

.method public transferMaster(Ljava/util/Set;ILjava/util/concurrent/TimeUnit;Z)Ljava/lang/String;
    .locals 10
    .param p2, "timeout"    # I
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/MasterTransferFailureException;,
            Lcom/sleepycat/je/rep/UnknownMasterException;
        }
    .end annotation

    .line 524
    .local p1, "nodeNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 525
    .local v1, "node":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->checkMember(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 526
    .end local v1    # "node":Ljava/lang/String;
    goto :goto_0

    .line 527
    :cond_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->commaJoin(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "nodeNameList":Ljava/lang/String;
    int-to-long v1, p2

    invoke-virtual {p3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 529
    .local v1, "timeoutMillis":J
    new-instance v3, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;

    iget-object v5, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->groupProtocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v3

    move-object v6, v0

    move-wide v7, v1

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Ljava/lang/String;JZ)V

    .line 532
    .local v3, "transferMaster":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    const-class v4, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferOK;

    .line 533
    invoke-direct {p0, v3, v4}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->doMessageExchange(Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Ljava/lang/Class;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferOK;

    .line 534
    .local v4, "result":Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferOK;
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferOK;->getWinner()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public updateAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "newHostName"    # Ljava/lang/String;
    .param p3, "newPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentFailureException;,
            Lcom/sleepycat/je/rep/MasterStateException;,
            Lcom/sleepycat/je/rep/MemberNotFoundException;,
            Lcom/sleepycat/je/rep/ReplicaStateException;,
            Lcom/sleepycat/je/rep/UnknownMasterException;
        }
    .end annotation

    .line 493
    const-string v0, "Can\'t update address for the current master."

    .line 495
    .local v0, "masterErrorMessage":Ljava/lang/String;
    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->groupProtocol:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Ljava/lang/String;Ljava/lang/String;I)V

    .line 498
    .local v1, "request":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    const-string v2, "Can\'t update address for the current master."

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->checkMember(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 499
    const-class v2, Lcom/sleepycat/je/rep/impl/TextProtocol$OK;

    invoke-direct {p0, v1, v2}, Lcom/sleepycat/je/rep/util/ReplicationGroupAdmin;->doMessageExchange(Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Ljava/lang/Class;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    .line 500
    return-void
.end method
