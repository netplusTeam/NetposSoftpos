.class public Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;
.super Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;
.source "BaseProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/BaseProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Commit"
.end annotation


# instance fields
.field private final needsAck:Z

.field private final replicaSyncPolicy:Lcom/sleepycat/je/Durability$SyncPolicy;

.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 698
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->access$400(B)Z

    move-result v0

    .line 699
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->access$500(B)Lcom/sleepycat/je/Durability$SyncPolicy;

    move-result-object v1

    .line 698
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;ZLcom/sleepycat/je/Durability$SyncPolicy;Ljava/nio/ByteBuffer;)V

    .line 701
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;ZLcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/rep/stream/OutputWireRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "needsAck"    # Z
    .param p3, "replicaSyncPolicy"    # Lcom/sleepycat/je/Durability$SyncPolicy;
    .param p4, "wireRecord"    # Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    .line 670
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 671
    invoke-direct {p0, p1, p4}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/rep/stream/OutputWireRecord;)V

    .line 672
    iput-boolean p2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;->needsAck:Z

    .line 673
    iput-object p3, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;->replicaSyncPolicy:Lcom/sleepycat/je/Durability$SyncPolicy;

    .line 674
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;ZLcom/sleepycat/je/Durability$SyncPolicy;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "needsAck"    # Z
    .param p3, "replicaSyncPolicy"    # Lcom/sleepycat/je/Durability$SyncPolicy;
    .param p4, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 706
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 708
    invoke-direct {p0, p1, p4}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)V

    .line 709
    iput-boolean p2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;->needsAck:Z

    .line 710
    iput-object p3, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;->replicaSyncPolicy:Lcom/sleepycat/je/Durability$SyncPolicy;

    .line 711
    return-void
.end method


# virtual methods
.method public getNeedsAck()Z
    .locals 1

    .line 714
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;->needsAck:Z

    return v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 678
    sget-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->COMMIT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public getReplicaSyncPolicy()Lcom/sleepycat/je/Durability$SyncPolicy;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;->replicaSyncPolicy:Lcom/sleepycat/je/Durability$SyncPolicy;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 4

    .line 683
    invoke-super {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->getWireSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 686
    .local v0, "bodySize":I
    nop

    .line 687
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;->allocateInitializedBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 688
    .local v1, "messageBuffer":Ljava/nio/ByteBuffer;
    iget-boolean v2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;->needsAck:Z

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 689
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;->replicaSyncPolicy:Lcom/sleepycat/je/Durability$SyncPolicy;

    invoke-virtual {v2}, Lcom/sleepycat/je/Durability$SyncPolicy;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 690
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;->outputWireRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    invoke-virtual {v2, v3, v1}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->writeOutputWireRecord(Lcom/sleepycat/je/rep/stream/OutputWireRecord;Ljava/nio/ByteBuffer;)V

    .line 691
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 692
    return-object v1
.end method
