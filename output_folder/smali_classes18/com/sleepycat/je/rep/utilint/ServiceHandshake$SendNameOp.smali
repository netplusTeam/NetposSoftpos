.class Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendNameOp;
.super Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;
.source "ServiceHandshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SendNameOp"
.end annotation


# instance fields
.field serviceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;Ljava/lang/String;)V
    .locals 0
    .param p1, "initState"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;
    .param p2, "serviceName"    # Ljava/lang/String;

    .line 489
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;)V

    .line 490
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendNameOp;->serviceName:Ljava/lang/String;

    .line 491
    return-void
.end method

.method private static serviceRequestMessage(Ljava/lang/String;)[B
    .locals 5
    .param p0, "serviceName"    # Ljava/lang/String;

    .line 528
    invoke-static {p0}, Lcom/sleepycat/utilint/StringUtils;->toASCII(Ljava/lang/String;)[B

    move-result-object v0

    .line 529
    .local v0, "serviceNameBytes":[B
    array-length v1, v0

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_0

    .line 535
    invoke-static {}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->access$000()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    add-int/2addr v1, v2

    .line 537
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 538
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->access$000()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    array-length v4, v0

    int-to-byte v4, v4

    .line 539
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 540
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 541
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3

    .line 530
    .end local v1    # "length":I
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The provided service name is too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected processOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    .locals 8
    .param p1, "ioAdapter"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    const/4 v0, 0x0

    .line 497
    .local v0, "message":[B
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendNameOp;->serviceName:Ljava/lang/String;

    invoke-static {v1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendNameOp;->serviceRequestMessage(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 501
    nop

    .line 502
    invoke-interface {p1, v0}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;->write([B)I

    .line 503
    const/4 v1, 0x1

    new-array v1, v1, [B

    .line 504
    .local v1, "responseBytes":[B
    invoke-interface {p1, v1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;->read([B)I

    move-result v2

    .line 505
    .local v2, "result":I
    if-ltz v2, :cond_1

    .line 508
    const/4 v3, 0x0

    aget-byte v4, v1, v3

    invoke-static {v4}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->get(I)Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    move-result-object v4

    .line 509
    .local v4, "response":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    if-eqz v4, :cond_0

    .line 514
    invoke-virtual {p0, v4}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendNameOp;->setResponse(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;)V

    .line 515
    sget-object v3, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v3

    .line 510
    :cond_0
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected read response byte: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v3, v1, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 506
    .end local v4    # "response":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No service response byte: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 498
    .end local v1    # "responseBytes":[B
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .line 499
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to encode requested service name"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
