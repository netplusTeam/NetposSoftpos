.class public Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileEnd;
.super Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileEnd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/lang/String;JJ[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileLength"    # J
    .param p5, "lastModifiedTime"    # J
    .param p7, "digestSHA1"    # [B

    .line 386
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileEnd;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    .line 387
    invoke-direct/range {p0 .. p7}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/lang/String;JJ[B)V

    .line 388
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 390
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileEnd;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    .line 391
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/nio/ByteBuffer;)V

    .line 392
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileEnd;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->FILE_END:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 1

    .line 401
    invoke-super {p0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;->wireFormat()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
