.class public Lcom/sleepycat/je/rep/stream/BaseProtocol$GroupAck;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
.source "BaseProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/BaseProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupAck"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

.field private final txnIds:[J


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1142
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$GroupAck;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 1143
    invoke-static {p1, p2}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->access$700(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$GroupAck;->txnIds:[J

    .line 1144
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;[J)V
    .locals 3
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "txnIds"    # [J

    .line 1116
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$GroupAck;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 1117
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 1118
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$GroupAck;->txnIds:[J

    .line 1119
    iget-object v0, p1, Lcom/sleepycat/je/rep/stream/BaseProtocol;->nGroupAckMessages:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 1120
    iget-object v0, p1, Lcom/sleepycat/je/rep/stream/BaseProtocol;->nGroupedAcks:Lcom/sleepycat/je/utilint/LongStat;

    array-length v1, p2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 1121
    iget-object v0, p1, Lcom/sleepycat/je/rep/stream/BaseProtocol;->nMaxGroupedAcks:Lcom/sleepycat/je/utilint/LongMaxStat;

    array-length v1, p2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongMaxStat;->setMax(J)Z

    .line 1122
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 1126
    sget-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->GROUP_ACK:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public getTxnIds()[J
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$GroupAck;->txnIds:[J

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " txn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$GroupAck;->txnIds:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 4

    .line 1132
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$GroupAck;->txnIds:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x4

    .line 1133
    .local v0, "bodySize":I
    nop

    .line 1134
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$GroupAck;->allocateInitializedBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1136
    .local v1, "messageBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$GroupAck;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$GroupAck;->txnIds:[J

    invoke-static {v2, v1, v3}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->access$600(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;[J)V

    .line 1137
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1139
    return-object v1
.end method
