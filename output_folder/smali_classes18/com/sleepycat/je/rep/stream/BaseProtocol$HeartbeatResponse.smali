.class public Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
.source "BaseProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/BaseProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeartbeatResponse"
.end annotation


# instance fields
.field private final syncupVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

.field private final txnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "syncupVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "ackedVLSN"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 611
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 612
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 613
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;->syncupVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 614
    iput-object p3, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;->txnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 615
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 617
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 618
    new-instance v0, Lcom/sleepycat/je/utilint/VLSN;

    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;->syncupVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 619
    nop

    .line 620
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->getVersion()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/sleepycat/je/utilint/VLSN;

    .line 621
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;->txnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 623
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 627
    sget-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->HEARTBEAT_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public getSyncupVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;->syncupVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public getTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;->txnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " txnEndVLSN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;->txnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " syncupVLSN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;->syncupVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 5

    .line 632
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->getVersion()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 633
    .local v0, "includeTxnEndVLSN":Z
    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0x10

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 636
    .local v1, "bodySize":I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;->allocateInitializedBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 637
    .local v2, "messageBuffer":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;->syncupVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/log/LogUtils;->writeLong(Ljava/nio/ByteBuffer;J)V

    .line 638
    if-eqz v0, :cond_2

    .line 639
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;->txnEndVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/log/LogUtils;->writeLong(Ljava/nio/ByteBuffer;J)V

    .line 641
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 642
    return-object v2
.end method
