.class public Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListResp;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileListResp"
.end annotation


# instance fields
.field private final fileNames:[Ljava/lang/String;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 207
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListResp;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 208
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListResp;->getStringArray(Ljava/nio/ByteBuffer;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListResp;->fileNames:[Ljava/lang/String;

    .line 209
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .param p2, "fileNames"    # [Ljava/lang/String;

    .line 202
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListResp;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    .line 203
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 204
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListResp;->fileNames:[Ljava/lang/String;

    .line 205
    return-void
.end method


# virtual methods
.method public getFileNames()[Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListResp;->fileNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListResp;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->FILE_LIST_RESP:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 218
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListResp;->fileNames:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListResp;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
