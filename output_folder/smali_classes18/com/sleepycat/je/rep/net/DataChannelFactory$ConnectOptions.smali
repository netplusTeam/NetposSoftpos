.class public Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;
.super Ljava/lang/Object;
.source "DataChannelFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/net/DataChannelFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectOptions"
.end annotation


# instance fields
.field private blocking:Z

.field private openTimeout:I

.field private readTimeout:I

.field private receiveBufferSize:I

.field private reuseAddr:Z

.field private tcpNoDelay:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->tcpNoDelay:Z

    .line 39
    iput v0, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->receiveBufferSize:I

    .line 40
    iput v0, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->openTimeout:I

    .line 41
    iput v0, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->readTimeout:I

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->blocking:Z

    .line 43
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->reuseAddr:Z

    .line 58
    return-void
.end method


# virtual methods
.method public final getBlocking()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->blocking:Z

    return v0
.end method

.method public final getOpenTimeout()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->openTimeout:I

    return v0
.end method

.method public final getReadTimeout()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->readTimeout:I

    return v0
.end method

.method public final getReceiveBufferSize()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->receiveBufferSize:I

    return v0
.end method

.method public final getReuseAddr()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->reuseAddr:Z

    return v0
.end method

.method public final getTcpNoDelay()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->tcpNoDelay:Z

    return v0
.end method

.method public final setBlocking(Z)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;
    .locals 0
    .param p1, "blocking"    # Z

    .line 151
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->blocking:Z

    .line 152
    return-object p0
.end method

.method public final setOpenTimeout(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;
    .locals 0
    .param p1, "timeout"    # I

    .line 110
    iput p1, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->openTimeout:I

    .line 111
    return-object p0
.end method

.method public final setReadTimeout(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;
    .locals 0
    .param p1, "timeout"    # I

    .line 131
    iput p1, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->readTimeout:I

    .line 132
    return-object p0
.end method

.method public final setReceiveBufferSize(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;
    .locals 0
    .param p1, "rcvBufferSize"    # I

    .line 89
    iput p1, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->receiveBufferSize:I

    .line 90
    return-object p0
.end method

.method public final setReuseAddr(Z)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;
    .locals 0
    .param p1, "reuseAddr"    # Z

    .line 172
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->reuseAddr:Z

    .line 173
    return-object p0
.end method

.method public final setTcpNoDelay(Z)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;
    .locals 0
    .param p1, "tcpNoDelay"    # Z

    .line 68
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->tcpNoDelay:Z

    .line 69
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectOptions[tcpNoDelay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->tcpNoDelay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", receiveBufferSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->receiveBufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", openTimeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->openTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", readTimeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->readTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blocking = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->blocking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reuseAddr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->reuseAddr:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
