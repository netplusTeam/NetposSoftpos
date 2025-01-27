.class public Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;
.super Lorg/jpos/q2/iso/ChannelAdaptor;
.source "MultiSessionChannelAdaptor.java"

# interfaces
.implements Lorg/jpos/q2/iso/MultiSessionChannelAdaptorMBean;
.implements Lorg/jpos/iso/Channel;
.implements Lorg/jpos/util/Loggeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;,
        Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;
    }
.end annotation


# instance fields
.field channels:[Lorg/jpos/iso/ISOChannel;

.field roundRobinCounter:I

.field sessions:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->sessions:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->roundRobinCounter:I

    .line 47
    invoke-virtual {p0}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->resetCounters()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;)Lorg/jpos/iso/ISOChannel;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    .line 37
    invoke-direct {p0}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->getNextChannel()Lorg/jpos/iso/ISOChannel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;Lorg/jpos/iso/ISOChannel;)V
    .locals 0
    .param p0, "x0"    # Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;
    .param p1, "x1"    # Lorg/jpos/iso/ISOChannel;

    .line 37
    invoke-direct {p0, p1}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->disconnect(Lorg/jpos/iso/ISOChannel;)V

    return-void
.end method

.method static synthetic access$200(Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;)V
    .locals 0
    .param p0, "x0"    # Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    .line 37
    invoke-direct {p0}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->disconnectAll()V

    return-void
.end method

.method static synthetic access$300(Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;I)V
    .locals 0
    .param p0, "x0"    # Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;
    .param p1, "x1"    # I

    .line 37
    invoke-direct {p0, p1}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->connect(I)V

    return-void
.end method

.method private connect(I)V
    .locals 5
    .param p1, "slot"    # I

    .line 171
    iget-object v0, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->channels:[Lorg/jpos/iso/ISOChannel;

    aget-object v0, v0, p1

    .line 172
    .local v0, "c":Lorg/jpos/iso/ISOChannel;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    :try_start_0
    invoke-interface {v0}, Lorg/jpos/iso/ISOChannel;->connect()V

    .line 175
    iget-object v1, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v2, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->ready:Ljava/lang/String;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-interface {v1, v2, v3}, Lorg/jpos/space/Space;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check-connection("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private disconnect(Lorg/jpos/iso/ISOChannel;)V
    .locals 3
    .param p1, "channel"    # Lorg/jpos/iso/ISOChannel;

    .line 183
    :try_start_0
    invoke-direct {p0}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->getConnectedCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->ready:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jpos/space/SpaceUtil;->wipe(Lorg/jpos/space/Space;Ljava/lang/Object;)V

    .line 185
    :cond_0
    invoke-interface {p1}, Lorg/jpos/iso/ISOChannel;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    const-string v2, "disconnect"

    invoke-virtual {v1, v2, v0}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private disconnectAll()V
    .locals 4

    .line 191
    iget-object v0, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->channels:[Lorg/jpos/iso/ISOChannel;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .local v3, "channel":Lorg/jpos/iso/ISOChannel;
    invoke-direct {p0, v3}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->disconnect(Lorg/jpos/iso/ISOChannel;)V

    .end local v3    # "channel":Lorg/jpos/iso/ISOChannel;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method private getConnectedCount()I
    .locals 6

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "connected":I
    iget-object v1, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->channels:[Lorg/jpos/iso/ISOChannel;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 207
    .local v4, "c":Lorg/jpos/iso/ISOChannel;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 208
    add-int/lit8 v0, v0, 0x1

    .line 206
    .end local v4    # "c":Lorg/jpos/iso/ISOChannel;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    :cond_1
    return v0
.end method

.method private getNextChannel()Lorg/jpos/iso/ISOChannel;
    .locals 5

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "c":Lorg/jpos/iso/ISOChannel;
    iget-object v1, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->channels:[Lorg/jpos/iso/ISOChannel;

    array-length v1, v1

    .local v1, "size":I
    :goto_0
    if-lez v1, :cond_1

    .line 196
    iget-object v2, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->channels:[Lorg/jpos/iso/ISOChannel;

    iget v3, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->roundRobinCounter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->roundRobinCounter:I

    array-length v4, v2

    rem-int/2addr v3, v4

    aget-object v0, v2, v3

    .line 197
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    goto :goto_1

    .line 195
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 200
    .end local v1    # "size":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 201
    iget-object v1, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v2, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->ready:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jpos/space/SpaceUtil;->wipe(Lorg/jpos/space/Space;Ljava/lang/Object;)V

    .line 202
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getSessions()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->sessions:I

    return v0
.end method

.method public initService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->initSpaceAndQueues()V

    .line 51
    invoke-virtual {p0}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method protected initSpaceAndQueues()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 164
    invoke-super {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->initSpaceAndQueues()V

    .line 165
    invoke-virtual {p0}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 166
    .local v0, "persist":Lorg/jdom2/Element;
    const-string v1, "sessions"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->setSessions(I)V

    .line 168
    return-void
.end method

.method public setSessions(I)V
    .locals 0
    .param p1, "sessions"    # I

    .line 78
    iput p1, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->sessions:I

    .line 79
    return-void
.end method

.method public startService()V
    .locals 7

    .line 55
    :try_start_0
    iget v0, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->sessions:I

    new-array v0, v0, [Lorg/jpos/iso/ISOChannel;

    iput-object v0, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->channels:[Lorg/jpos/iso/ISOChannel;

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->sessions:I

    if-ge v0, v1, :cond_2

    .line 57
    invoke-virtual {p0}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->initChannel()Lorg/jpos/iso/ISOChannel;

    move-result-object v1

    .line 58
    .local v1, "c":Lorg/jpos/iso/ISOChannel;
    instance-of v2, v1, Lorg/jpos/util/LogSource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "-"

    if-eqz v2, :cond_0

    .line 59
    :try_start_1
    move-object v2, v1

    check-cast v2, Lorg/jpos/util/LogSource;

    .line 60
    .local v2, "ls":Lorg/jpos/util/LogSource;
    invoke-interface {v2}, Lorg/jpos/util/LogSource;->getLogger()Lorg/jpos/util/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/jpos/util/LogSource;->getRealm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/jpos/util/LogSource;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 63
    .end local v2    # "ls":Lorg/jpos/util/LogSource;
    :cond_0
    iget-object v2, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->channels:[Lorg/jpos/iso/ISOChannel;

    aput-object v1, v2, v0

    .line 64
    iget-boolean v2, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->writeOnly:Z

    if-nez v2, :cond_1

    .line 65
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;

    invoke-direct {v4, p0, v0}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;-><init>(Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channel-receiver-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->in:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 56
    .end local v1    # "c":Lorg/jpos/iso/ISOChannel;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;

    invoke-direct {v1, p0}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;-><init>(Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel-sender-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->in:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    const-string v2, "error starting service"

    invoke-virtual {v1, v2, v0}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
