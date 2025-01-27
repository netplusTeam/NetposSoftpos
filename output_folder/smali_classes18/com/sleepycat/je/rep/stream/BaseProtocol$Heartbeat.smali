.class public Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
.source "BaseProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/BaseProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Heartbeat"
.end annotation


# instance fields
.field private final currentTxnEndVLSN:J

.field private final masterNow:J

.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "masterNow"    # J
    .param p4, "currentTxnEndVLSN"    # J

    .line 555
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 556
    iput-wide p2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;->masterNow:J

    .line 557
    iput-wide p4, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;->currentTxnEndVLSN:J

    .line 558
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 575
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 576
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;->masterNow:J

    .line 577
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;->currentTxnEndVLSN:J

    .line 578
    return-void
.end method


# virtual methods
.method public getCurrentTxnEndVLSN()J
    .locals 2

    .line 585
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;->currentTxnEndVLSN:J

    return-wide v0
.end method

.method public getMasterNow()J
    .locals 2

    .line 581
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;->masterNow:J

    return-wide v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 562
    sget-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->HEARTBEAT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " masterNow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;->masterNow:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " currentCommit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;->currentTxnEndVLSN:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 4

    .line 567
    const/16 v0, 0x10

    .line 568
    .local v0, "bodySize":I
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;->allocateInitializedBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 569
    .local v1, "messageBuffer":Ljava/nio/ByteBuffer;
    iget-wide v2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;->masterNow:J

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/log/LogUtils;->writeLong(Ljava/nio/ByteBuffer;J)V

    .line 570
    iget-wide v2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;->currentTxnEndVLSN:J

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/log/LogUtils;->writeLong(Ljava/nio/ByteBuffer;J)V

    .line 571
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 572
    return-object v1
.end method
