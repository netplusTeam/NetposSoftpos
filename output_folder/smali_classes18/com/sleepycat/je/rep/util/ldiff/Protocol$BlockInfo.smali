.class public Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/util/ldiff/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlockInfo"
.end annotation


# instance fields
.field final block:Lcom/sleepycat/je/rep/util/ldiff/Block;

.field final synthetic this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Lcom/sleepycat/je/rep/util/ldiff/Block;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .param p2, "block"    # Lcom/sleepycat/je/rep/util/ldiff/Block;

    .line 242
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;->this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    .line 243
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 244
    iput-object p2, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;->block:Lcom/sleepycat/je/rep/util/ldiff/Block;

    .line 245
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 247
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;->this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    .line 248
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 249
    new-instance v0, Lcom/sleepycat/je/rep/util/ldiff/Block;

    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/util/ldiff/Block;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;->block:Lcom/sleepycat/je/rep/util/ldiff/Block;

    .line 250
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;->getByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/util/ldiff/Block;->setBeginKey([B)V

    .line 251
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;->getByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/util/ldiff/Block;->setBeginData([B)V

    .line 252
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;->getByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/util/ldiff/Block;->setMd5Hash([B)V

    .line 253
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/util/ldiff/Block;->setRollingChksum(J)V

    .line 254
    return-void
.end method


# virtual methods
.method public getBlock()Lcom/sleepycat/je/rep/util/ldiff/Block;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;->block:Lcom/sleepycat/je/rep/util/ldiff/Block;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 265
    sget-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->BLOCK_INFO:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 258
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;->block:Lcom/sleepycat/je/rep/util/ldiff/Block;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/util/ldiff/Block;->getBlockId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;->block:Lcom/sleepycat/je/rep/util/ldiff/Block;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/util/ldiff/Block;->getBeginKey()[B

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;->block:Lcom/sleepycat/je/rep/util/ldiff/Block;

    .line 259
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/util/ldiff/Block;->getBeginData()[B

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;->block:Lcom/sleepycat/je/rep/util/ldiff/Block;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/util/ldiff/Block;->getMd5Hash()[B

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;->block:Lcom/sleepycat/je/rep/util/ldiff/Block;

    .line 260
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/util/ldiff/Block;->getRollingChksum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 258
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
