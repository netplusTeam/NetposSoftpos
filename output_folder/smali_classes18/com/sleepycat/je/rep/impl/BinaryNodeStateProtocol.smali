.class public Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
.source "BinaryNodeStateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;,
        Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;
    }
.end annotation


# static fields
.field public static final BIN_NODE_STATE_REQ:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final BIN_NODE_STATE_RESP:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->BIN_NODE_STATE_REQ:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 45
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->BIN_NODE_STATE_RESP:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 4
    .param p1, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p2, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;IILcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 53
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    sget-object v2, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->BIN_NODE_STATE_REQ:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->BIN_NODE_STATE_RESP:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->initializeMessageOps([Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;)V

    .line 57
    return-void
.end method
