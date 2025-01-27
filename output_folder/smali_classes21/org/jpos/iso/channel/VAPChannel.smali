.class public Lorg/jpos/iso/channel/VAPChannel;
.super Lorg/jpos/iso/BaseChannel;
.source "VAPChannel.java"


# instance fields
.field debugPoll:Z

.field dstid:Ljava/lang/String;

.field headerFormat:I

.field private replyKeepAlive:Z

.field srcid:Ljava/lang/String;

.field private swapDirection:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    .line 42
    const-string v0, "000000"

    iput-object v0, p0, Lorg/jpos/iso/channel/VAPChannel;->srcid:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lorg/jpos/iso/channel/VAPChannel;->dstid:Ljava/lang/String;

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lorg/jpos/iso/channel/VAPChannel;->headerFormat:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/channel/VAPChannel;->replyKeepAlive:Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/iso/channel/VAPChannel;->swapDirection:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "p"    # Lorg/jpos/iso/ISOPackager;

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/BaseChannel;-><init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V

    .line 42
    const-string v0, "000000"

    iput-object v0, p0, Lorg/jpos/iso/channel/VAPChannel;->srcid:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lorg/jpos/iso/channel/VAPChannel;->dstid:Ljava/lang/String;

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lorg/jpos/iso/channel/VAPChannel;->headerFormat:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/channel/VAPChannel;->replyKeepAlive:Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/iso/channel/VAPChannel;->swapDirection:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOPackager;)V
    .locals 1
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;)V

    .line 42
    const-string v0, "000000"

    iput-object v0, p0, Lorg/jpos/iso/channel/VAPChannel;->srcid:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lorg/jpos/iso/channel/VAPChannel;->dstid:Ljava/lang/String;

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lorg/jpos/iso/channel/VAPChannel;->headerFormat:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/channel/VAPChannel;->replyKeepAlive:Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/iso/channel/VAPChannel;->swapDirection:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V
    .locals 1
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;
    .param p2, "serverSocket"    # Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V

    .line 42
    const-string v0, "000000"

    iput-object v0, p0, Lorg/jpos/iso/channel/VAPChannel;->srcid:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lorg/jpos/iso/channel/VAPChannel;->dstid:Ljava/lang/String;

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lorg/jpos/iso/channel/VAPChannel;->headerFormat:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/channel/VAPChannel;->replyKeepAlive:Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/iso/channel/VAPChannel;->swapDirection:Z

    .line 85
    return-void
.end method


# virtual methods
.method public getDstId()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/jpos/iso/channel/VAPChannel;->dstid:Ljava/lang/String;

    return-object v0
.end method

.method protected getDynamicHeader([B)Lorg/jpos/iso/ISOHeader;
    .locals 1
    .param p1, "image"    # [B

    .line 102
    new-instance v0, Lorg/jpos/iso/header/BASE1Header;

    invoke-direct {v0, p1}, Lorg/jpos/iso/header/BASE1Header;-><init>([B)V

    return-object v0
.end method

.method protected getHeaderLength()I
    .locals 1

    .line 195
    const/16 v0, 0x16

    return v0
.end method

.method protected getMessageLength()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "l":I
    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 178
    .local v2, "b":[B
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 179
    iget-object v3, p0, Lorg/jpos/iso/channel/VAPChannel;->serverIn:Ljava/io/DataInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 180
    aget-byte v3, v2, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    or-int v0, v3, v4

    .line 182
    iget-boolean v3, p0, Lorg/jpos/iso/channel/VAPChannel;->replyKeepAlive:Z

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    .line 183
    iget-object v3, p0, Lorg/jpos/iso/channel/VAPChannel;->serverOutLock:Ljava/lang/Object;

    monitor-enter v3

    .line 184
    :try_start_0
    iget-object v4, p0, Lorg/jpos/iso/channel/VAPChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 185
    iget-object v4, p0, Lorg/jpos/iso/channel/VAPChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 186
    iget-boolean v4, p0, Lorg/jpos/iso/channel/VAPChannel;->debugPoll:Z

    if-eqz v4, :cond_1

    .line 187
    new-instance v4, Lorg/jpos/util/LogEvent;

    const-string v5, "poll"

    invoke-direct {v4, p0, v5}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    invoke-static {v4}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 188
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 191
    :cond_2
    return v0
.end method

.method public getSrcId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/jpos/iso/channel/VAPChannel;->srcid:Ljava/lang/String;

    return-object v0
.end method

.method protected isRejected([B)Z
    .locals 3
    .param p1, "b"    # [B

    .line 199
    new-instance v0, Lorg/jpos/iso/header/BASE1Header;

    invoke-direct {v0, p1}, Lorg/jpos/iso/header/BASE1Header;-><init>([B)V

    .line 200
    .local v0, "h":Lorg/jpos/iso/header/BASE1Header;
    invoke-virtual {v0}, Lorg/jpos/iso/header/BASE1Header;->isRejected()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/jpos/iso/header/BASE1Header;->getHLen()I

    move-result v1

    const/16 v2, 0x16

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method protected readHeader(I)[B
    .locals 7
    .param p1, "hLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/jpos/iso/channel/VAPChannel;->serverIn:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 115
    .local v0, "b":I
    move v1, v0

    .line 117
    .local v1, "bytesRead":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 120
    new-array v2, v0, [B

    .line 122
    .local v2, "bytes":[B
    int-to-byte v3, v0

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 124
    iget-object v3, p0, Lorg/jpos/iso/channel/VAPChannel;->serverIn:Ljava/io/DataInputStream;

    add-int/lit8 v5, v0, -0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v6, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 127
    aget-byte v3, v2, v6

    const/16 v5, 0x80

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_0

    .line 129
    iget-object v3, p0, Lorg/jpos/iso/channel/VAPChannel;->serverIn:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 130
    add-int/2addr v1, v0

    .line 133
    new-array v3, v1, [B

    .line 136
    .local v3, "tmp":[B
    array-length v5, v2

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    array-length v4, v2

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    .line 140
    iget-object v4, p0, Lorg/jpos/iso/channel/VAPChannel;->serverIn:Ljava/io/DataInputStream;

    array-length v5, v2

    add-int/2addr v5, v6

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v4, v3, v5, v6}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 141
    move-object v2, v3

    .line 143
    .end local v3    # "tmp":[B
    :cond_0
    return-object v2

    .line 147
    .end local v2    # "bytes":[B
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error reading header"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public send(Lorg/jpos/iso/ISOMsg;)V
    .locals 1
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 226
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/jpos/iso/channel/VAPChannel;->swapDirection:Z

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getISOHeader()Lorg/jpos/iso/ISOHeader;

    move-result-object v0

    invoke-interface {v0}, Lorg/jpos/iso/ISOHeader;->swapDirection()V

    .line 229
    :cond_0
    invoke-super {p0, p1}, Lorg/jpos/iso/BaseChannel;->send(Lorg/jpos/iso/ISOMsg;)V

    .line 230
    return-void
.end method

.method protected sendMessageHeader(Lorg/jpos/iso/ISOMsg;I)V
    .locals 4
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lorg/jpos/iso/channel/VAPChannel;->isOverrideHeader()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getISOHeader()Lorg/jpos/iso/ISOHeader;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/jpos/iso/header/BASE1Header;

    iget-object v1, p0, Lorg/jpos/iso/channel/VAPChannel;->srcid:Ljava/lang/String;

    iget-object v2, p0, Lorg/jpos/iso/channel/VAPChannel;->dstid:Ljava/lang/String;

    iget v3, p0, Lorg/jpos/iso/channel/VAPChannel;->headerFormat:I

    invoke-direct {v0, v1, v2, v3}, Lorg/jpos/iso/header/BASE1Header;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    .local v0, "h":Lorg/jpos/iso/ISOHeader;
    :goto_0
    instance-of v1, v0, Lorg/jpos/iso/header/BASE1Header;

    if-eqz v1, :cond_1

    .line 170
    move-object v1, v0

    check-cast v1, Lorg/jpos/iso/header/BASE1Header;

    invoke-virtual {v1, p2}, Lorg/jpos/iso/header/BASE1Header;->setLen(I)V

    .line 172
    :cond_1
    iget-object v1, p0, Lorg/jpos/iso/channel/VAPChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-interface {v0}, Lorg/jpos/iso/ISOHeader;->pack()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 173
    return-void
.end method

.method protected sendMessageLength(I)V
    .locals 2
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/jpos/iso/channel/VAPChannel;->serverOut:Ljava/io/DataOutputStream;

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 153
    iget-object v0, p0, Lorg/jpos/iso/channel/VAPChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 154
    iget-object v0, p0, Lorg/jpos/iso/channel/VAPChannel;->serverOut:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 155
    iget-object v0, p0, Lorg/jpos/iso/channel/VAPChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 156
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 235
    invoke-super {p0, p1}, Lorg/jpos/iso/BaseChannel;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 236
    const-string v0, "srcid"

    const-string v1, "000000"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/channel/VAPChannel;->srcid:Ljava/lang/String;

    .line 237
    const-string v0, "dstid"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/channel/VAPChannel;->dstid:Ljava/lang/String;

    .line 238
    const-string v0, "debug-poll"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/iso/channel/VAPChannel;->debugPoll:Z

    .line 239
    const-string v0, "header-format"

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jpos/iso/channel/VAPChannel;->headerFormat:I

    .line 240
    const-string v0, "reply-keepalive"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/iso/channel/VAPChannel;->replyKeepAlive:Z

    .line 241
    const-string v0, "swap-direction"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/iso/channel/VAPChannel;->swapDirection:Z

    .line 242
    return-void
.end method

.method public setDstId(Ljava/lang/String;)V
    .locals 0
    .param p1, "dstid"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lorg/jpos/iso/channel/VAPChannel;->dstid:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setSrcId(Ljava/lang/String;)V
    .locals 0
    .param p1, "srcid"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lorg/jpos/iso/channel/VAPChannel;->srcid:Ljava/lang/String;

    .line 88
    return-void
.end method

.method protected shouldIgnore([B)Z
    .locals 4
    .param p1, "b"    # [B

    .line 204
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 205
    new-instance v1, Lorg/jpos/iso/header/BASE1Header;

    invoke-direct {v1, p1}, Lorg/jpos/iso/header/BASE1Header;-><init>([B)V

    .line 206
    .local v1, "h":Lorg/jpos/iso/header/BASE1Header;
    invoke-virtual {v1}, Lorg/jpos/iso/header/BASE1Header;->getFormat()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 208
    .end local v1    # "h":Lorg/jpos/iso/header/BASE1Header;
    :cond_1
    return v0
.end method
