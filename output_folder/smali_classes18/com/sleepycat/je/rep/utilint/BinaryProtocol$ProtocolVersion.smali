.class abstract Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolVersion;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "BinaryProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ProtocolVersion"
.end annotation


# instance fields
.field private final nodeId:I

.field final synthetic this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

.field private final version:I


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
    .param p2, "version"    # I

    .line 1034
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolVersion;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    .line 1035
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 1036
    iput p2, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolVersion;->version:I

    .line 1037
    iget-object v0, p1, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolVersion;->nodeId:I

    .line 1038
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1045
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolVersion;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 1046
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolVersion;->version:I

    .line 1047
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolVersion;->nodeId:I

    .line 1048
    return-void
.end method


# virtual methods
.method public getNodeId()I
    .locals 1

    .line 1063
    iget v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolVersion;->nodeId:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 1054
    iget v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolVersion;->version:I

    return v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1042
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolVersion;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolVersion;->nodeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolVersion;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
