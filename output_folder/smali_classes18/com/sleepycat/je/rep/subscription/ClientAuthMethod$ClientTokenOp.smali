.class Lcom/sleepycat/je/rep/subscription/ClientAuthMethod$ClientTokenOp;
.super Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;
.source "ClientAuthMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/subscription/ClientAuthMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClientTokenOp"
.end annotation


# instance fields
.field private final auth:Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;)V
    .locals 0
    .param p1, "initState"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;
    .param p2, "auth"    # Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;

    .line 67
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;)V

    .line 68
    iput-object p2, p0, Lcom/sleepycat/je/rep/subscription/ClientAuthMethod$ClientTokenOp;->auth:Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;

    .line 69
    return-void
.end method


# virtual methods
.method public processOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    .locals 10
    .param p1, "ioAdapter"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/ClientAuthMethod$ClientTokenOp;->auth:Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;

    invoke-interface {v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;->getToken()[B

    move-result-object v0

    .line 76
    .local v0, "token":[B
    if-eqz v0, :cond_2

    array-length v1, v0

    if-eqz v1, :cond_2

    .line 81
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 82
    .local v1, "szBuf":Ljava/nio/ByteBuffer;
    array-length v2, v0

    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 83
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;->write([B)I

    .line 85
    array-length v2, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 86
    .local v2, "tokenBuf":Ljava/nio/ByteBuffer;
    invoke-static {v2, v0}, Lcom/sleepycat/je/log/LogUtils;->writeBytesNoLength(Ljava/nio/ByteBuffer;[B)V

    .line 87
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;->write([B)I

    .line 89
    const/4 v3, 0x1

    new-array v3, v3, [B

    .line 90
    .local v3, "responseByte":[B
    invoke-interface {p1, v3}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;->read([B)I

    move-result v4

    .line 91
    .local v4, "result":I
    if-ltz v4, :cond_1

    .line 96
    const/4 v5, 0x0

    aget-byte v6, v3, v5

    invoke-static {v6}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->get(I)Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    move-result-object v6

    .line 97
    .local v6, "response":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    if-eqz v6, :cond_0

    .line 101
    invoke-virtual {p0, v6}, Lcom/sleepycat/je/rep/subscription/ClientAuthMethod$ClientTokenOp;->setResponse(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;)V

    .line 102
    sget-object v5, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v5

    .line 98
    :cond_0
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected read response byte: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v5, v3, v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 92
    .end local v6    # "response":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    :cond_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No service authenticate response byte: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 77
    .end local v1    # "szBuf":Ljava/nio/ByteBuffer;
    .end local v2    # "tokenBuf":Ljava/nio/ByteBuffer;
    .end local v3    # "responseByte":[B
    .end local v4    # "result":I
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Token cannot be null or empty"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
