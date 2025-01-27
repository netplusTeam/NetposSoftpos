.class Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;
.super Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;
.source "ServiceHandshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReceiveNameOp"
.end annotation


# instance fields
.field private final INITIAL_BUFFER_SIZE:I

.field private buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;)V
    .locals 1
    .param p1, "initState"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    .line 418
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;)V

    .line 413
    invoke-static {}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->access$000()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->INITIAL_BUFFER_SIZE:I

    .line 419
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->buffer:Ljava/nio/ByteBuffer;

    .line 420
    return-void
.end method


# virtual methods
.method protected processOp(Lcom/sleepycat/je/rep/net/DataChannel;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    .locals 8
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->fillBuffer(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    move-result-object v0

    .line 425
    .local v0, "readResult":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    sget-object v1, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    if-eq v0, v1, :cond_0

    .line 426
    return-object v0

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 429
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->INITIAL_BUFFER_SIZE:I

    const-string v3, "Service:"

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    .line 435
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->buffer:Ljava/nio/ByteBuffer;

    .line 436
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v1, v2, v5}, Lcom/sleepycat/utilint/StringUtils;->fromASCII([BII)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 438
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->initState:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed service request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 439
    invoke-virtual {v2, v3, v4, v5}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->logMsg(Ljava/util/logging/Level;ZLjava/lang/String;)V

    .line 442
    sget-object v2, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->FORMAT_ERROR:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->byteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/sleepycat/je/rep/net/DataChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 443
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->closeChannel(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 444
    sget-object v2, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->FAIL:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v2

    .line 448
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->INITIAL_BUFFER_SIZE:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 449
    .local v2, "nameLength":I
    if-gtz v2, :cond_2

    .line 450
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->initState:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad service service name length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 451
    invoke-virtual {v3, v5, v4, v6}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->logMsg(Ljava/util/logging/Level;ZLjava/lang/String;)V

    .line 454
    sget-object v3, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->FORMAT_ERROR:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->byteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/sleepycat/je/rep/net/DataChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 455
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->closeChannel(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 456
    sget-object v3, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->FAIL:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v3

    .line 458
    :cond_2
    iget v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->INITIAL_BUFFER_SIZE:I

    add-int/2addr v3, v2

    .line 459
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 460
    .local v3, "newBuffer":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 461
    iput-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->buffer:Ljava/nio/ByteBuffer;

    .line 466
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->processOp(Lcom/sleepycat/je/rep/net/DataChannel;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    move-result-object v4

    return-object v4

    .line 473
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "nameLength":I
    .end local v3    # "newBuffer":Ljava/nio/ByteBuffer;
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/utilint/StringUtils;->fromASCII([B)Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "request":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;->initState:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    .line 475
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 474
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->setServiceName(Ljava/lang/String;)V

    .line 476
    sget-object v2, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v2
.end method
