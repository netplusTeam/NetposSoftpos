.class Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendRequestOp;
.super Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;
.source "ServiceHandshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SendRequestOp"
.end annotation


# instance fields
.field private final authInfo:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

.field private authOp:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;)V
    .locals 0
    .param p1, "initState"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;
    .param p2, "authInfo"    # [Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 820
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;)V

    .line 821
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendRequestOp;->authInfo:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 822
    return-void
.end method

.method private serviceAuthenticateMessage()[B
    .locals 5

    .line 932
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendRequestOp;->authInfo:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 933
    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->mechanisms([Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/utilint/StringUtils;->toASCII(Ljava/lang/String;)[B

    move-result-object v0

    .line 935
    .local v0, "mechListBytes":[B
    invoke-static {}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->access$300()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    add-int/2addr v1, v2

    .line 936
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 937
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->access$300()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    array-length v4, v0

    int-to-byte v4, v4

    .line 938
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 939
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 940
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method getAuthOp()Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendRequestOp;->authOp:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;

    return-object v0
.end method

.method protected processOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    .locals 13
    .param p1, "ioAdapter"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 827
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 833
    .local v1, "responseByte":[B
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendRequestOp;->serviceAuthenticateMessage()[B

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;->write([B)I

    .line 839
    invoke-interface {p1, v1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;->read([B)I

    move-result v2

    .line 840
    .local v2, "result":I
    if-ltz v2, :cond_8

    .line 845
    const/4 v3, 0x0

    aget-byte v4, v1, v3

    invoke-static {v4}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->get(I)Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    move-result-object v4

    .line 846
    .local v4, "response":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    invoke-virtual {p0, v4}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendRequestOp;->setResponse(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;)V

    .line 847
    if-eqz v4, :cond_7

    .line 851
    sget-object v5, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->PROCEED:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    if-eq v4, v5, :cond_0

    .line 852
    sget-object v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->FAIL:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v0

    .line 860
    :cond_0
    invoke-static {}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->access$100()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    .line 861
    .local v5, "mechPrefix":[B
    invoke-interface {p1, v5}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;->read([B)I

    move-result v2

    .line 862
    if-ltz v2, :cond_6

    .line 866
    invoke-static {}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->access$100()[B

    move-result-object v6

    .line 867
    invoke-static {}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->access$100()[B

    move-result-object v7

    array-length v7, v7

    .line 866
    invoke-static {v6, v5, v7}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->access$400([B[BI)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 872
    nop

    .line 873
    invoke-static {}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->access$100()[B

    move-result-object v6

    array-length v6, v6

    .line 872
    invoke-static {v5, v6}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->access$600([BI)S

    move-result v6

    .line 874
    .local v6, "mechLen":I
    if-ltz v6, :cond_4

    .line 879
    new-array v7, v6, [B

    .line 880
    .local v7, "mechBytes":[B
    invoke-interface {p1, v7}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;->read([B)I

    move-result v2

    .line 882
    if-ltz v2, :cond_3

    .line 892
    array-length v8, v7

    .line 893
    invoke-static {v7, v3, v8}, Lcom/sleepycat/utilint/StringUtils;->fromASCII([BII)Ljava/lang/String;

    move-result-object v8

    .line 894
    .local v8, "mechStr":Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 900
    .local v9, "mechList":[Ljava/lang/String;
    new-array v10, v0, [Ljava/lang/String;

    aget-object v11, v9, v3

    aput-object v11, v10, v3

    iget-object v11, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendRequestOp;->authInfo:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 901
    invoke-static {v10, v11}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->findMatch([Ljava/lang/String;[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    move-result-object v10

    .line 903
    .local v10, "selectedAuth":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;
    if-eqz v10, :cond_2

    .line 913
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendRequestOp;->initState:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;

    array-length v11, v9

    if-le v11, v0, :cond_1

    aget-object v0, v9, v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-interface {v10, v3, v0}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;->getClientOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;Ljava/lang/String;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendRequestOp;->authOp:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;

    .line 917
    sget-object v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v0

    .line 904
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Requested authentication mechanism not supported; "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v3, v9, v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    .end local v8    # "mechStr":Ljava/lang/String;
    .end local v9    # "mechList":[Ljava/lang/String;
    .end local v10    # "selectedAuth":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EOF reading service authenticate mechanism: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 875
    .end local v7    # "mechBytes":[B
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid mechanism length received: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    .end local v6    # "mechLen":I
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected service authenticate response: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 870
    invoke-static {v5}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->access$500([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EOF reading service authenticate response: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 848
    .end local v5    # "mechPrefix":[B
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected read response byte: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v3, v1, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 841
    .end local v4    # "response":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No service authenticate response byte: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
