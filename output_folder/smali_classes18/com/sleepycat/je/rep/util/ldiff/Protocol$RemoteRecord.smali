.class public Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/util/ldiff/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteRecord"
.end annotation


# instance fields
.field final data:[B

.field final key:[B

.field final synthetic this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;

.field final vlsn:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Lcom/sleepycat/je/rep/util/ldiff/Record;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .param p2, "record"    # Lcom/sleepycat/je/rep/util/ldiff/Record;

    .line 378
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    .line 379
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 380
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/util/ldiff/Record;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->key:[B

    .line 381
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/util/ldiff/Record;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->data:[B

    .line 382
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/util/ldiff/Record;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 383
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 385
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    .line 386
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 387
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->getByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->key:[B

    .line 388
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->getByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->data:[B

    .line 389
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->getVLSN(Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 390
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->data:[B

    return-object v0
.end method

.method public getKey()[B
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->key:[B

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 399
    sget-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->REMOTE_RECORD:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public getVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 394
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->key:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->data:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
