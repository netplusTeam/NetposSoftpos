.class public Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoReq;
.super Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileInfoReq"
.end annotation


# instance fields
.field private final needSHA1:Z

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "needSHA1"    # Z

    .line 263
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoReq;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/lang/String;)V

    .line 265
    iput-boolean p3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoReq;->needSHA1:Z

    .line 266
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 268
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoReq;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/nio/ByteBuffer;)V

    .line 270
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoReq;->getBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoReq;->needSHA1:Z

    .line 271
    return-void
.end method


# virtual methods
.method public getNeedSHA1()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoReq;->needSHA1:Z

    return v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoReq;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->FILE_INFO_REQ:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 280
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoReq;->fileName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoReq;->needSHA1:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-super {p0, v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
