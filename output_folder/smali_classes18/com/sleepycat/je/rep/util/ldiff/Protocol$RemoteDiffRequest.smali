.class public Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/util/ldiff/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteDiffRequest"
.end annotation


# instance fields
.field final data:[B

.field final diffSize:J

.field final key:[B

.field final synthetic this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .param p2, "region"    # Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;

    .line 333
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    .line 334
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 335
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->getRemoteBeginKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->key:[B

    .line 336
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->getRemoteBeginData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->data:[B

    .line 337
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->getRemoteDiffSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->diffSize:J

    .line 338
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 340
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    .line 341
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 342
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->getByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->key:[B

    .line 343
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->getByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->data:[B

    .line 344
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->diffSize:J

    .line 345
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->data:[B

    return-object v0
.end method

.method public getDiffSize()J
    .locals 2

    .line 366
    iget-wide v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->diffSize:J

    return-wide v0
.end method

.method public getKey()[B
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->key:[B

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 354
    sget-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->REMOTE_DIFF_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 349
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->key:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->data:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->diffSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
