.class Lcom/sleepycat/je/rep/utilint/ServiceHandshake$RequireAuthenticateOp;
.super Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;
.source "ServiceHandshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequireAuthenticateOp"
.end annotation


# instance fields
.field private final authInfo:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

.field private authOp:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;

.field private expectRequestOp:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;)V
    .locals 0
    .param p1, "initState"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;
    .param p2, "authInfo"    # [Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 580
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;)V

    .line 581
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$RequireAuthenticateOp;->authInfo:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 582
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

    .line 587
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$RequireAuthenticateOp;->expectRequestOp:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;

    if-nez v0, :cond_1

    .line 589
    sget-object v0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->AUTHENTICATE:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    .line 590
    .local v0, "response":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    nop

    .line 591
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->byteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 590
    invoke-virtual {p0, p1, v1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$RequireAuthenticateOp;->sendBuffer(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    move-result-object v1

    .line 592
    .local v1, "writeResult":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    sget-object v2, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    if-eq v1, v2, :cond_0

    .line 593
    return-object v1

    .line 595
    :cond_0
    new-instance v2, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$RequireAuthenticateOp;->initState:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$RequireAuthenticateOp;->authInfo:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$RequireAuthenticateOp;->expectRequestOp:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;

    .line 599
    .end local v0    # "response":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    .end local v1    # "writeResult":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$RequireAuthenticateOp;->authOp:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;

    if-nez v0, :cond_4

    .line 601
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$RequireAuthenticateOp;->expectRequestOp:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;

    .line 602
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->processOp(Lcom/sleepycat/je/rep/net/DataChannel;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    move-result-object v0

    .line 603
    .local v0, "readResult":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    sget-object v1, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    if-eq v0, v1, :cond_2

    .line 604
    return-object v0

    .line 607
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$RequireAuthenticateOp;->expectRequestOp:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;

    .line 608
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->getSelectedAuthentication()Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    move-result-object v1

    .line 610
    .local v1, "selectedAuth":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;
    if-nez v1, :cond_3

    .line 611
    new-instance v2, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$NoMatchAuthentication;

    invoke-direct {v2}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$NoMatchAuthentication;-><init>()V

    move-object v1, v2

    .line 613
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$RequireAuthenticateOp;->initState:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    invoke-interface {v1, v2}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;->getServerOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$RequireAuthenticateOp;->authOp:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;->getMechanismName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 617
    invoke-interface {v1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;->getServerParams()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, "authResponseStr":Ljava/lang/String;
    nop

    .line 619
    invoke-static {v2}, Lcom/sleepycat/utilint/StringUtils;->toASCII(Ljava/lang/String;)[B

    move-result-object v3

    .line 620
    .local v3, "authResponseBytes":[B
    invoke-static {}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->access$100()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x2

    array-length v5, v3

    add-int/2addr v4, v5

    .line 623
    .local v4, "length":I
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 624
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    sget-object v6, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->PROCEED:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->byteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 625
    invoke-static {}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->access$100()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 626
    array-length v6, v3

    int-to-short v6, v6

    invoke-static {v5, v6}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->access$200(Ljava/nio/ByteBuffer;S)V

    .line 627
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 629
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 632
    invoke-virtual {p0, p1, v5}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$RequireAuthenticateOp;->sendBuffer(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    move-result-object v6

    .line 633
    .local v6, "writeResult":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    sget-object v7, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    if-eq v6, v7, :cond_4

    .line 634
    return-object v6

    .line 638
    .end local v0    # "readResult":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    .end local v1    # "selectedAuth":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;
    .end local v2    # "authResponseStr":Ljava/lang/String;
    .end local v3    # "authResponseBytes":[B
    .end local v4    # "length":I
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v6    # "writeResult":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$RequireAuthenticateOp;->authOp:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;->processOp(Lcom/sleepycat/je/rep/net/DataChannel;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    move-result-object v0

    return-object v0
.end method
