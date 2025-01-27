.class public Lorg/jpos/iso/channel/BASE24TCPChannel;
.super Lorg/jpos/iso/BaseChannel;
.source "BASE24TCPChannel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "p"    # Lorg/jpos/iso/ISOPackager;

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/BaseChannel;-><init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOPackager;)V
    .locals 0
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V
    .locals 0
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;
    .param p2, "serverSocket"    # Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected getMessageLength()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "l":I
    const/4 v1, 0x2

    new-array v2, v1, [B

    .line 100
    .local v2, "b":[B
    new-instance v3, Lorg/jpos/util/LogEvent;

    const-string v4, "get-message-length"

    invoke-direct {v3, p0, v4}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    invoke-static {v3}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 101
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 102
    iget-object v3, p0, Lorg/jpos/iso/channel/BASE24TCPChannel;->serverIn:Ljava/io/DataInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 103
    aget-byte v3, v2, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    or-int v0, v3, v4

    .line 104
    if-nez v0, :cond_0

    .line 105
    iget-object v3, p0, Lorg/jpos/iso/channel/BASE24TCPChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 106
    iget-object v3, p0, Lorg/jpos/iso/channel/BASE24TCPChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0

    .line 109
    :cond_1
    new-instance v1, Lorg/jpos/util/LogEvent;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "got-message-length"

    invoke-direct {v1, p0, v4, v3}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 110
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

.method protected getMessageTrailler()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "get-message-trailler"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 114
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 115
    .local v1, "b":[B
    iget-object v2, p0, Lorg/jpos/iso/channel/BASE24TCPChannel;->serverIn:Ljava/io/DataInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 116
    new-instance v0, Lorg/jpos/util/LogEvent;

    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "got-message-trailler"

    invoke-direct {v0, p0, v3, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 117
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

    .line 93
    add-int/lit8 p1, p1, 0x1

    .line 94
    iget-object v0, p0, Lorg/jpos/iso/channel/BASE24TCPChannel;->serverOut:Ljava/io/DataOutputStream;

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 95
    iget-object v0, p0, Lorg/jpos/iso/channel/BASE24TCPChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 96
    return-void
.end method

.method protected sendMessageTrailler(Lorg/jpos/iso/ISOMsg;I)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/jpos/iso/channel/BASE24TCPChannel;->serverOut:Ljava/io/DataOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 91
    return-void
.end method
