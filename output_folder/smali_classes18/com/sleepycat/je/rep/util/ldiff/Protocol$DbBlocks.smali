.class public Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/util/ldiff/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DbBlocks"
.end annotation


# instance fields
.field final blockSize:I

.field final dbName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "blockSize"    # I

    .line 143
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;->this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    .line 144
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 145
    iput-object p2, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;->dbName:Ljava/lang/String;

    .line 146
    iput p3, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;->blockSize:I

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 149
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;->this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    .line 150
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 151
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;->dbName:Ljava/lang/String;

    .line 152
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;->blockSize:I

    .line 153
    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;->blockSize:I

    return v0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 162
    sget-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->DB_BLOCKS:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;->dbName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;->blockSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
