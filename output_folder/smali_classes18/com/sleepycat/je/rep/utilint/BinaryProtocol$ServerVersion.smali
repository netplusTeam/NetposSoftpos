.class public Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ServerVersion;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolVersion;
.source "BinaryProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerVersion"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    .line 1085
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ServerVersion;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    .line 1086
    iget v0, p1, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->codeVersion:I

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolVersion;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;I)V

    .line 1087
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1089
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ServerVersion;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    .line 1090
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolVersion;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/nio/ByteBuffer;)V

    .line 1091
    return-void
.end method


# virtual methods
.method public bridge synthetic getNodeId()I
    .locals 1

    .line 1083
    invoke-super {p0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolVersion;->getNodeId()I

    move-result v0

    return v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ServerVersion;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->SERVER_VERSION:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public bridge synthetic getVersion()I
    .locals 1

    .line 1083
    invoke-super {p0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolVersion;->getVersion()I

    move-result v0

    return v0
.end method

.method public bridge synthetic wireFormat()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1083
    invoke-super {p0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolVersion;->wireFormat()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
