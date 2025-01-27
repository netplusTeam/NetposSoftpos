.class public Lcom/sleepycat/je/rep/utilint/NamedChannel;
.super Ljava/lang/Object;
.source "NamedChannel.java"

# interfaces
.implements Ljava/nio/channels/ByteChannel;


# instance fields
.field protected final channel:Lcom/sleepycat/je/rep/net/DataChannel;

.field private nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/net/DataChannel;)V
    .locals 1
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/NamedChannel;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    .line 42
    sget-object v0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/NamedChannel;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 43
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->ensureChannelBlocking()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 0
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p2, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/NamedChannel;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    .line 34
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/NamedChannel;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 35
    return-void
.end method

.method private ensureChannelBlocking()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/NamedChannel;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v0}, Lcom/sleepycat/je/rep/net/DataChannel;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only blocking channel can be used to construct NamedChannel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/NamedChannel;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v0}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V

    .line 80
    return-void
.end method

.method public getChannel()Lcom/sleepycat/je/rep/net/DataChannel;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/NamedChannel;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    return-object v0
.end method

.method public getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/NamedChannel;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/NamedChannel;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v0}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/NamedChannel;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v0, p1}, Lcom/sleepycat/je/rep/net/DataChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public setNameIdPair(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 0
    .param p1, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 47
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/NamedChannel;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 48
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->ensureChannelBlocking()V

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/NamedChannel;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v0, p1}, Lcom/sleepycat/je/rep/net/DataChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method
