.class public Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileStart"
.end annotation


# instance fields
.field protected final fileLength:J

.field protected final fileName:Ljava/lang/String;

.field protected final lastModifiedTime:J

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileLength"    # J
    .param p5, "lastModifiedTime"    # J

    .line 344
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    .line 345
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 346
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;->fileName:Ljava/lang/String;

    .line 347
    iput-wide p3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;->fileLength:J

    .line 348
    iput-wide p5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;->lastModifiedTime:J

    .line 349
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 351
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 352
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;->fileName:Ljava/lang/String;

    .line 353
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;->fileLength:J

    .line 354
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;->lastModifiedTime:J

    .line 355
    return-void
.end method


# virtual methods
.method public getFileLength()J
    .locals 2

    .line 368
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;->fileLength:J

    return-wide v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .line 372
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;->lastModifiedTime:J

    return-wide v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->FILE_START:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 364
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;->fileName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;->fileLength:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;->lastModifiedTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
