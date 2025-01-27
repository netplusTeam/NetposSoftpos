.class public Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FeederInfoResp"
.end annotation


# instance fields
.field private final activeFeeders:I

.field private final rangeFirst:Lcom/sleepycat/je/utilint/VLSN;

.field private final rangeLast:Lcom/sleepycat/je/utilint/VLSN;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;ILcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .param p2, "activeFeeders"    # I
    .param p3, "rangeFirst"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p4, "rangeLast"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 143
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    .line 144
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 145
    iput p2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->activeFeeders:I

    .line 146
    iput-object p3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->rangeFirst:Lcom/sleepycat/je/utilint/VLSN;

    .line 147
    iput-object p4, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->rangeLast:Lcom/sleepycat/je/utilint/VLSN;

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 150
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    .line 151
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 152
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->activeFeeders:I

    .line 153
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->getVLSN(Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->rangeFirst:Lcom/sleepycat/je/utilint/VLSN;

    .line 154
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->getVLSN(Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->rangeLast:Lcom/sleepycat/je/utilint/VLSN;

    .line 155
    return-void
.end method


# virtual methods
.method public getActiveFeeders()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->activeFeeders:I

    return v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->FEEDER_INFO_RESP:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public getRangeFirst()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->rangeFirst:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public getRangeLast()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->rangeLast:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 164
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->activeFeeders:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->rangeFirst:Lcom/sleepycat/je/utilint/VLSN;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->rangeLast:Lcom/sleepycat/je/utilint/VLSN;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
