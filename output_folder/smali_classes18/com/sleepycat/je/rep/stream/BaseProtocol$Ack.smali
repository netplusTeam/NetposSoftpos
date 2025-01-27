.class public Lcom/sleepycat/je/rep/stream/BaseProtocol$Ack;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
.source "BaseProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/BaseProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

.field private final txnId:J


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "txnId"    # J

    .line 729
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Ack;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 730
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 731
    iput-wide p2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Ack;->txnId:J

    .line 732
    iget-object v0, p1, Lcom/sleepycat/je/rep/stream/BaseProtocol;->nAckMessages:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 733
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 749
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Ack;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 750
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Ack;->txnId:J

    .line 751
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 737
    sget-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->ACK:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public getTxnId()J
    .locals 2

    .line 754
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Ack;->txnId:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " txn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Ack;->txnId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 4

    .line 742
    const/16 v0, 0x8

    .line 743
    .local v0, "bodySize":I
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Ack;->allocateInitializedBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 744
    .local v1, "messageBuffer":Ljava/nio/ByteBuffer;
    iget-wide v2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Ack;->txnId:J

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/log/LogUtils;->writeLong(Ljava/nio/ByteBuffer;J)V

    .line 745
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 746
    return-object v1
.end method
