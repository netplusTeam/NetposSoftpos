.class public abstract Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;
.super Ljava/lang/Object;
.source "ServiceHandshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ServerInitOp"
.end annotation


# instance fields
.field protected final initState:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;


# direct methods
.method protected constructor <init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;)V
    .locals 0
    .param p1, "initState"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;->initState:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    .line 240
    return-void
.end method


# virtual methods
.method closeChannel(Lcom/sleepycat/je/rep/net/DataChannel;)V
    .locals 6
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;

    .line 324
    if-eqz p1, :cond_0

    .line 335
    :try_start_0
    invoke-interface {p1}, Lcom/sleepycat/je/rep/net/DataChannel;->closeForcefully()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e1":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;->initState:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during cleanup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 340
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 337
    invoke-virtual {v1, v2, v3, v4}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->logMsg(Ljava/util/logging/Level;ZLjava/lang/String;)V

    .line 343
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method protected fillBuffer(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    .locals 6
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_2

    .line 262
    invoke-interface {p1, p2}, Lcom/sleepycat/je/rep/net/DataChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 263
    .local v0, "count":I
    if-gez v0, :cond_0

    .line 265
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;->initState:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Premature EOF on channel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;->initState:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    .line 269
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - read() returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-virtual {v1, v2, v3, v4}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->logMsg(Ljava/util/logging/Level;ZLjava/lang/String;)V

    .line 271
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;->closeChannel(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 272
    sget-object v1, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->FAIL:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v1

    .line 274
    :cond_0
    if-nez v0, :cond_1

    .line 275
    sget-object v1, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->READ:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v1

    .line 277
    .end local v0    # "count":I
    :cond_1
    goto :goto_0

    .line 278
    :cond_2
    sget-object v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v0
.end method

.method protected abstract processOp(Lcom/sleepycat/je/rep/net/DataChannel;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected sendBuffer(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    .locals 7
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "tryCount":I
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_3

    .line 290
    invoke-interface {p1, p2}, Lcom/sleepycat/je/rep/net/DataChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 291
    .local v1, "count":I
    const/4 v2, 0x1

    if-gez v1, :cond_0

    .line 293
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;->initState:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Premature EOF on channel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " write() returned: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->logMsg(Ljava/util/logging/Level;ZLjava/lang/String;)V

    .line 298
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;->closeChannel(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 299
    sget-object v2, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->FAIL:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v2

    .line 300
    :cond_0
    if-nez v1, :cond_2

    .line 301
    add-int/lit8 v0, v0, 0x1

    .line 302
    const/16 v3, 0xa

    if-gt v0, v3, :cond_1

    goto :goto_1

    .line 303
    :cond_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;->initState:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write to channel. Send buffer size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 307
    invoke-interface {p1}, Lcom/sleepycat/je/rep/net/DataChannel;->socket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 303
    invoke-virtual {v3, v4, v2, v5}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->logMsg(Ljava/util/logging/Level;ZLjava/lang/String;)V

    .line 308
    const-string v2, "Failed to write to channel"

    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 312
    :cond_2
    const/4 v0, 0x0

    .line 314
    .end local v1    # "count":I
    :goto_1
    goto :goto_0

    .line 315
    :cond_3
    sget-object v1, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v1
.end method
