.class public Lorg/jpos/iso/channel/PADChannel;
.super Lorg/jpos/iso/BaseChannel;
.source "PADChannel.java"


# instance fields
.field delay:J

.field reader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/PADChannel;->reader:Ljava/io/BufferedReader;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jpos/iso/channel/PADChannel;->delay:J

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "p"    # Lorg/jpos/iso/ISOPackager;

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/BaseChannel;-><init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/PADChannel;->reader:Ljava/io/BufferedReader;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jpos/iso/channel/PADChannel;->delay:J

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOPackager;)V
    .locals 2
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/PADChannel;->reader:Ljava/io/BufferedReader;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jpos/iso/channel/PADChannel;->delay:J

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V
    .locals 3
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;
    .param p2, "serverSocket"    # Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/PADChannel;->reader:Ljava/io/BufferedReader;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jpos/iso/channel/PADChannel;->delay:J

    .line 82
    cmp-long v2, v0, v0

    if-lez v2, :cond_0

    .line 83
    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public receive()Lorg/jpos/iso/ISOMsg;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "header":[B
    invoke-virtual {p0}, Lorg/jpos/iso/channel/PADChannel;->createISOMsg()Lorg/jpos/iso/ISOMsg;

    move-result-object v1

    .line 90
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    iget-object v2, p0, Lorg/jpos/iso/channel/PADChannel;->packager:Lorg/jpos/iso/ISOPackager;

    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOMsg;->setPackager(Lorg/jpos/iso/ISOPackager;)V

    .line 91
    invoke-virtual {v1, p0}, Lorg/jpos/iso/ISOMsg;->setSource(Lorg/jpos/iso/ISOSource;)V

    .line 92
    invoke-virtual {p0}, Lorg/jpos/iso/channel/PADChannel;->getHeaderLength()I

    move-result v2

    .line 93
    .local v2, "hLen":I
    new-instance v3, Lorg/jpos/util/LogEvent;

    const-string v4, "receive"

    invoke-direct {v3, p0, v4}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 95
    .local v3, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    iget-object v4, p0, Lorg/jpos/iso/channel/PADChannel;->serverInLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    if-lez v2, :cond_0

    .line 97
    :try_start_1
    new-array v5, v2, [B

    move-object v0, v5

    .line 98
    iget-object v5, p0, Lorg/jpos/iso/channel/PADChannel;->serverIn:Ljava/io/DataInputStream;

    invoke-virtual {v5, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 100
    :cond_0
    iget-object v5, p0, Lorg/jpos/iso/channel/PADChannel;->serverIn:Ljava/io/DataInputStream;

    invoke-virtual {v1, v5}, Lorg/jpos/iso/ISOMsg;->unpack(Ljava/io/InputStream;)V

    .line 101
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :try_start_2
    invoke-virtual {v1, v0}, Lorg/jpos/iso/ISOMsg;->setHeader([B)V

    .line 103
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/jpos/iso/ISOMsg;->setDirection(I)V

    .line 104
    invoke-virtual {v3, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p0, v1, v3}, Lorg/jpos/iso/channel/PADChannel;->applyIncomingFilters(Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;

    move-result-object v5

    move-object v1, v5

    .line 106
    invoke-virtual {v1, v4}, Lorg/jpos/iso/ISOMsg;->setDirection(I)V

    .line 107
    iget-object v5, p0, Lorg/jpos/iso/channel/PADChannel;->cnt:[I

    const/4 v6, 0x2

    aget v7, v5, v6

    add-int/2addr v7, v4

    aput v7, v5, v6

    .line 108
    invoke-virtual {p0}, Lorg/jpos/iso/channel/PADChannel;->setChanged()V

    .line 109
    invoke-virtual {p0, v1}, Lorg/jpos/iso/channel/PADChannel;->notifyObservers(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    invoke-static {v3}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 128
    nop

    .line 129
    return-object v1

    .line 101
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "header":[B
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v2    # "hLen":I
    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    :try_start_4
    throw v5
    :try_end_4
    .catch Lorg/jpos/iso/ISOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 127
    .restart local v0    # "header":[B
    .restart local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local v2    # "hLen":I
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    :catchall_1
    move-exception v4

    goto :goto_0

    .line 123
    :catch_0
    move-exception v4

    .line 124
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v3, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 125
    new-instance v5, Lorg/jpos/iso/ISOException;

    const-string v6, "unexpected exception"

    invoke-direct {v5, v6, v4}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "header":[B
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v2    # "hLen":I
    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    throw v5

    .line 119
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "header":[B
    .restart local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local v2    # "hLen":I
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    :catch_1
    move-exception v4

    .line 120
    .local v4, "e":Ljava/io/IOException;
    iget-boolean v5, p0, Lorg/jpos/iso/channel/PADChannel;->usable:Z

    if-eqz v5, :cond_1

    .line 121
    invoke-virtual {v3, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 122
    :cond_1
    nop

    .end local v0    # "header":[B
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v2    # "hLen":I
    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    throw v4

    .line 116
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "header":[B
    .restart local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local v2    # "hLen":I
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    :catch_2
    move-exception v4

    .line 117
    .local v4, "e":Ljava/io/InterruptedIOException;
    const-string v5, "<io-timeout/>"

    invoke-virtual {v3, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 118
    nop

    .end local v0    # "header":[B
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v2    # "hLen":I
    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    throw v4

    .line 113
    .end local v4    # "e":Ljava/io/InterruptedIOException;
    .restart local v0    # "header":[B
    .restart local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local v2    # "hLen":I
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    :catch_3
    move-exception v4

    .line 114
    .local v4, "e":Ljava/io/EOFException;
    const-string v5, "<peer-disconnect/>"

    invoke-virtual {v3, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 115
    nop

    .end local v0    # "header":[B
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v2    # "hLen":I
    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    throw v4

    .line 110
    .end local v4    # "e":Ljava/io/EOFException;
    .restart local v0    # "header":[B
    .restart local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local v2    # "hLen":I
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    :catch_4
    move-exception v4

    .line 111
    .local v4, "e":Lorg/jpos/iso/ISOException;
    invoke-virtual {v3, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 112
    nop

    .end local v0    # "header":[B
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v2    # "hLen":I
    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 127
    .end local v4    # "e":Lorg/jpos/iso/ISOException;
    .restart local v0    # "header":[B
    .restart local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local v2    # "hLen":I
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    :goto_0
    invoke-static {v3}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 128
    throw v4
.end method

.method public send(Lorg/jpos/iso/ISOMsg;)V
    .locals 0
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 133
    invoke-super {p0, p1}, Lorg/jpos/iso/BaseChannel;->send(Lorg/jpos/iso/ISOMsg;)V

    .line 134
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 138
    invoke-super {p0, p1}, Lorg/jpos/iso/BaseChannel;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 139
    const-string v0, "delay"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/iso/channel/PADChannel;->delay:J

    .line 140
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 3
    .param p1, "header"    # Ljava/lang/String;

    .line 146
    nop

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/jpos/iso/ISOUtil;->hex2byte([BII)[B

    move-result-object v0

    .line 146
    invoke-super {p0, v0}, Lorg/jpos/iso/BaseChannel;->setHeader([B)V

    .line 149
    return-void
.end method
