.class public Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;
.super Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;
.source "BaseProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/BaseProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntryRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

.field private final type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "matchpoint"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 770
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 771
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;)V

    .line 772
    sget-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->DEFAULT:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    .line 773
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "matchpoint"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "type"    # Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    .line 775
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 776
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;)V

    .line 777
    iput-object p3, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    .line 778
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 780
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 781
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)V

    .line 784
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->getVersion()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 785
    sget-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->DEFAULT:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    .line 786
    return-void

    .line 789
    :cond_0
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 790
    .local v0, "i":I
    invoke-static {}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->values()[Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    .line 791
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 829
    sget-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->ENTRY_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public getType()Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entry request vlsn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 4

    .line 801
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->getVersion()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 802
    invoke-super {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;->wireFormat()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 806
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;->wireFormatSize()I

    move-result v0

    .line 807
    .local v0, "bodySize":I
    nop

    .line 808
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;->allocateInitializedBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 810
    .local v1, "messageBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/log/LogUtils;->writeLong(Ljava/nio/ByteBuffer;J)V

    .line 812
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->ordinal()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 813
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 814
    return-object v1
.end method

.method public wireFormatSize()I
    .locals 2

    .line 820
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->getVersion()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 821
    invoke-super {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;->wireFormatSize()I

    move-result v0

    return v0

    .line 824
    :cond_0
    invoke-super {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;->wireFormatSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method
