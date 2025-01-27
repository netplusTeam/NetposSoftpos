.class public Lcom/sleepycat/je/rep/elections/Protocol;
.super Lcom/sleepycat/je/rep/impl/TextProtocol;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/elections/Protocol$StringValue;,
        Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;,
        Lcom/sleepycat/je/rep/elections/Protocol$Value;,
        Lcom/sleepycat/je/rep/elections/Protocol$MasterQuery;,
        Lcom/sleepycat/je/rep/elections/Protocol$Result;,
        Lcom/sleepycat/je/rep/elections/Protocol$Accept;,
        Lcom/sleepycat/je/rep/elections/Protocol$Shutdown;,
        Lcom/sleepycat/je/rep/elections/Protocol$Propose;,
        Lcom/sleepycat/je/rep/elections/Protocol$Reject;,
        Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;,
        Lcom/sleepycat/je/rep/elections/Protocol$Accepted;,
        Lcom/sleepycat/je/rep/elections/Protocol$Promise;
    }
.end annotation


# static fields
.field private static final VERSION:Ljava/lang/String; = "2.0"


# instance fields
.field public final ACCEPT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final ACCEPTED:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final MASTER_QUERY:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final MASTER_QUERY_RESPONSE:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final PROMISE:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final PROPOSE:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final REJECT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final RESULT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final SHUTDOWN:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field private final proposalParser:Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;

.field private final valueParser:Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V
    .locals 12
    .param p1, "proposalParser"    # Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;
    .param p2, "valueParser"    # Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;
    .param p3, "groupName"    # Ljava/lang/String;
    .param p4, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p5, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p6, "channelFactory"    # Lcom/sleepycat/je/rep/net/DataChannelFactory;

    .line 90
    move-object v6, p0

    const-string v1, "2.0"

    move-object v0, p0

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/rep/impl/TextProtocol;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    .line 92
    new-instance v0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/elections/Protocol$Propose;

    const-string v2, "P"

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, v6, Lcom/sleepycat/je/rep/elections/Protocol;->PROPOSE:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 93
    new-instance v1, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v2, Lcom/sleepycat/je/rep/elections/Protocol$Accept;

    const-string v3, "A"

    invoke-direct {v1, v3, v2}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, v6, Lcom/sleepycat/je/rep/elections/Protocol;->ACCEPT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 94
    new-instance v2, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v3, Lcom/sleepycat/je/rep/elections/Protocol$Result;

    const-string v4, "RE"

    invoke-direct {v2, v4, v3}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v2, v6, Lcom/sleepycat/je/rep/elections/Protocol;->RESULT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 95
    new-instance v3, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v4, Lcom/sleepycat/je/rep/elections/Protocol$MasterQuery;

    const-string v5, "MQ"

    invoke-direct {v3, v5, v4}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v3, v6, Lcom/sleepycat/je/rep/elections/Protocol;->MASTER_QUERY:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 96
    new-instance v4, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v5, Lcom/sleepycat/je/rep/elections/Protocol$Shutdown;

    const-string v7, "X"

    invoke-direct {v4, v7, v5}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v4, v6, Lcom/sleepycat/je/rep/elections/Protocol;->SHUTDOWN:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 98
    new-instance v5, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v7, Lcom/sleepycat/je/rep/elections/Protocol$Reject;

    const-string v8, "R"

    invoke-direct {v5, v8, v7}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v5, v6, Lcom/sleepycat/je/rep/elections/Protocol;->REJECT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 99
    new-instance v7, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v8, Lcom/sleepycat/je/rep/elections/Protocol$Promise;

    const-string v9, "PR"

    invoke-direct {v7, v9, v8}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v7, v6, Lcom/sleepycat/je/rep/elections/Protocol;->PROMISE:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 100
    new-instance v8, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v9, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;

    const-string v10, "AD"

    invoke-direct {v8, v10, v9}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v8, v6, Lcom/sleepycat/je/rep/elections/Protocol;->ACCEPTED:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 101
    new-instance v9, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v10, Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;

    const-string v11, "MQR"

    invoke-direct {v9, v11, v10}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v9, v6, Lcom/sleepycat/je/rep/elections/Protocol;->MASTER_QUERY_RESPONSE:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 104
    const/16 v10, 0x9

    new-array v10, v10, [Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v7, v10, v0

    const/4 v0, 0x7

    aput-object v8, v10, v0

    const/16 v0, 0x8

    aput-object v9, v10, v0

    invoke-virtual {p0, v10}, Lcom/sleepycat/je/rep/elections/Protocol;->initializeMessageOps([Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;)V

    .line 116
    move-object v0, p1

    iput-object v0, v6, Lcom/sleepycat/je/rep/elections/Protocol;->proposalParser:Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;

    .line 117
    move-object v1, p2

    iput-object v1, v6, Lcom/sleepycat/je/rep/elections/Protocol;->valueParser:Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;

    .line 119
    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->ELECTIONS_OPEN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->ELECTIONS_READ_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    move-object/from16 v4, p5

    invoke-virtual {p0, v4, v2, v3}, Lcom/sleepycat/je/rep/elections/Protocol;->setTimeouts(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/config/DurationConfigParam;Lcom/sleepycat/je/config/DurationConfigParam;)V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/elections/Protocol;)Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Protocol;

    .line 49
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol;->proposalParser:Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/elections/Protocol;)Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/elections/Protocol;

    .line 49
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol;->valueParser:Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;

    return-object v0
.end method
