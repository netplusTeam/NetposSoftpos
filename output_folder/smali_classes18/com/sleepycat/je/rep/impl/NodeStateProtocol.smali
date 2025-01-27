.class public Lcom/sleepycat/je/rep/impl/NodeStateProtocol;
.super Lcom/sleepycat/je/rep/impl/TextProtocol;
.source "NodeStateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;,
        Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateRequest;
    }
.end annotation


# static fields
.field public static final VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field public final NODE_STATE_REQ:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final NODE_STATE_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V
    .locals 6
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p3, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p4, "channelFactory"    # Lcom/sleepycat/je/rep/net/DataChannelFactory;

    .line 42
    const-string v1, "1.0"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/rep/impl/TextProtocol;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    .line 32
    new-instance v0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateRequest;

    const-string v2, "STATEREQ"

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol;->NODE_STATE_REQ:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 34
    new-instance v1, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v2, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;

    const-string v3, "STATERESP"

    invoke-direct {v1, v3, v2}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol;->NODE_STATE_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 44
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0, v2}, Lcom/sleepycat/je/rep/impl/NodeStateProtocol;->initializeMessageOps([Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;)V

    .line 49
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REP_GROUP_OPEN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REP_GROUP_READ_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {p0, p3, v0, v1}, Lcom/sleepycat/je/rep/impl/NodeStateProtocol;->setTimeouts(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/config/DurationConfigParam;Lcom/sleepycat/je/config/DurationConfigParam;)V

    .line 52
    return-void
.end method
