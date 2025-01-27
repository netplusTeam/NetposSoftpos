.class public Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;
.super Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileInfoResp"
.end annotation


# instance fields
.field private final digestSHA1:[B

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/lang/String;JJ[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileLength"    # J
    .param p5, "lastModifiedTime"    # J
    .param p7, "digestSHA1"    # [B

    .line 297
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    .line 298
    invoke-direct/range {p0 .. p6}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/lang/String;JJ)V

    .line 299
    iput-object p7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;->digestSHA1:[B

    .line 300
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 302
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    .line 303
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/nio/ByteBuffer;)V

    .line 304
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;->getByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;->digestSHA1:[B

    .line 305
    return-void
.end method


# virtual methods
.method public getDigestSHA1()[B
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;->digestSHA1:[B

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->FILE_INFO_RESP:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 314
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;->fileName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;->fileLength:J

    .line 315
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;->lastModifiedTime:J

    .line 316
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;->digestSHA1:[B

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 314
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
