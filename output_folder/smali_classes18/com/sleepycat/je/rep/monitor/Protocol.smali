.class public Lcom/sleepycat/je/rep/monitor/Protocol;
.super Lcom/sleepycat/je/rep/impl/TextProtocol;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;,
        Lcom/sleepycat/je/rep/monitor/Protocol$JoinGroup;,
        Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;,
        Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;,
        Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;
    }
.end annotation


# static fields
.field static final REP_GROUP_V2_VERSION:Ljava/lang/String; = "1.0"

.field static final REP_GROUP_V3_VERSION:Ljava/lang/String; = "2.0"

.field public static final VERSION:Ljava/lang/String; = "2.0"


# instance fields
.field public final GROUP_CHANGE_REQ:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final JOIN_GROUP_REQ:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final LEAVE_GROUP_REQ:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V
    .locals 6
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p3, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p4, "channelFactory"    # Lcom/sleepycat/je/rep/net/DataChannelFactory;

    .line 64
    const-string v1, "2.0"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/rep/monitor/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    .line 65
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V
    .locals 5
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p4, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p5, "channelFactory"    # Lcom/sleepycat/je/rep/net/DataChannelFactory;

    .line 76
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/je/rep/impl/TextProtocol;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    .line 50
    new-instance v0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;

    const-string v2, "GCHG"

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/monitor/Protocol;->GROUP_CHANGE_REQ:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 53
    new-instance v1, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v2, Lcom/sleepycat/je/rep/monitor/Protocol$JoinGroup;

    const-string v3, "JG"

    invoke-direct {v1, v3, v2}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/monitor/Protocol;->JOIN_GROUP_REQ:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 56
    new-instance v2, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v3, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;

    const-string v4, "LG"

    invoke-direct {v2, v4, v3}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/monitor/Protocol;->LEAVE_GROUP_REQ:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 78
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-virtual {p0, v3}, Lcom/sleepycat/je/rep/monitor/Protocol;->initializeMessageOps([Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;)V

    .line 84
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->MONITOR_OPEN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->MONITOR_READ_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {p0, p4, v0, v1}, Lcom/sleepycat/je/rep/monitor/Protocol;->setTimeouts(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/config/DurationConfigParam;Lcom/sleepycat/je/config/DurationConfigParam;)V

    .line 87
    return-void
.end method
