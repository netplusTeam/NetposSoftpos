.class public Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "BinaryNodeStateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinaryNodeStateRequest"
.end annotation


# instance fields
.field private final groupName:Ljava/lang/String;

.field private final nodeName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "groupName"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;

    .line 67
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 68
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;->nodeName:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;->groupName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 72
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;

    .line 73
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 74
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;->nodeName:Ljava/lang/String;

    .line 75
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;->groupName:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;->nodeName:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 88
    sget-object v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->BIN_NODE_STATE_REQ:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;->nodeName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;->groupName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
