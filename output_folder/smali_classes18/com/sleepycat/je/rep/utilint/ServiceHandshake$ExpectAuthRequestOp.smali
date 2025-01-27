.class Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;
.super Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;
.source "ServiceHandshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExpectAuthRequestOp"
.end annotation


# static fields
.field static final WAIT_FOR_LIST:I = 0x3

.field static final WAIT_FOR_LIST_SIZE:I = 0x2

.field static final WAIT_FOR_REQUEST:I = 0x1


# instance fields
.field private availableAuth:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

.field private buffer:Ljava/nio/ByteBuffer;

.field private phase:I

.field private selectedAuth:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;)V
    .locals 1
    .param p1, "initState"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;
    .param p2, "authInfo"    # [Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 710
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;)V

    .line 711
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->availableAuth:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 712
    const/4 v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->phase:I

    .line 713
    invoke-static {}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->access$300()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->buffer:Ljava/nio/ByteBuffer;

    .line 714
    return-void
.end method


# virtual methods
.method getSelectedAuthentication()Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->selectedAuth:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    return-object v0
.end method

.method protected processOp(Lcom/sleepycat/je/rep/net/DataChannel;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    .locals 8
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->fillBuffer(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    move-result-object v0

    .line 727
    .local v0, "readResult":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    sget-object v1, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    if-eq v0, v1, :cond_0

    .line 728
    return-object v0

    .line 731
    :cond_0
    iget v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->phase:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 732
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->buffer:Ljava/nio/ByteBuffer;

    .line 733
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const-string v5, "Authenticate:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v1, v2, v6}, Lcom/sleepycat/utilint/StringUtils;->fromASCII([BII)Ljava/lang/String;

    move-result-object v1

    .line 734
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 735
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->initState:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed authentication request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->logMsg(Ljava/util/logging/Level;ZLjava/lang/String;)V

    .line 739
    sget-object v2, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->FORMAT_ERROR:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->byteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->sendBuffer(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    .line 740
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->closeChannel(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 741
    sget-object v2, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->FAIL:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v2

    .line 745
    :cond_1
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 746
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 747
    iput v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->phase:I

    .line 749
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, v5}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->fillBuffer(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    move-result-object v0

    .line 750
    sget-object v5, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    if-eq v0, v5, :cond_2

    .line 751
    return-object v0

    .line 755
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->phase:I

    const/4 v5, 0x3

    if-ne v1, v3, :cond_4

    .line 756
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 757
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 758
    .local v1, "mechListSize":I
    if-gez v1, :cond_3

    .line 759
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->initState:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Negative mechanism list size received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->logMsg(Ljava/util/logging/Level;ZLjava/lang/String;)V

    .line 763
    sget-object v2, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->FORMAT_ERROR:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->byteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->sendBuffer(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    .line 764
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->closeChannel(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 765
    sget-object v2, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->FAIL:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v2

    .line 769
    :cond_3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->buffer:Ljava/nio/ByteBuffer;

    .line 770
    iput v5, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->phase:I

    .line 772
    invoke-virtual {p0, p1, v3}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->fillBuffer(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    move-result-object v0

    .line 773
    sget-object v3, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    if-eq v0, v3, :cond_4

    .line 774
    return-object v0

    .line 778
    .end local v1    # "mechListSize":I
    :cond_4
    iget v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->phase:I

    if-ne v1, v5, :cond_6

    .line 787
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->buffer:Ljava/nio/ByteBuffer;

    .line 788
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/utilint/StringUtils;->fromASCII([BII)Ljava/lang/String;

    move-result-object v1

    .line 789
    .local v1, "mechListStr":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 792
    .local v2, "mechList":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->availableAuth:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    invoke-static {v2, v3}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->findMatch([Ljava/lang/String;[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->selectedAuth:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 794
    if-nez v3, :cond_5

    .line 796
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->initState:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No acceptable authentication mechanism in list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 797
    invoke-virtual {v3, v5, v4, v6}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->logMsg(Ljava/util/logging/Level;ZLjava/lang/String;)V

    .line 801
    sget-object v3, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->INVALID:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->byteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->sendBuffer(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    .line 802
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;->closeChannel(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 803
    sget-object v3, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->FAIL:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v3

    .line 806
    :cond_5
    sget-object v3, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v3

    .line 779
    .end local v1    # "mechListStr":Ljava/lang/String;
    .end local v2    # "mechList":[Ljava/lang/String;
    :cond_6
    const-string v1, "Unexpected state: + phase"

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method
