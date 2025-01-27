.class public Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileReq"
.end annotation


# instance fields
.field protected final fileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 233
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    .line 234
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 235
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;->fileName:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 238
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 239
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;->fileName:Ljava/lang/String;

    .line 240
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->FILE_REQ:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 249
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;->fileName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
