.class public Lorg/jpos/iso/channel/AmexChannel;
.super Lorg/jpos/iso/BaseChannel;
.source "AmexChannel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "p"    # Lorg/jpos/iso/ISOPackager;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/BaseChannel;-><init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V

    .line 59
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

    .line 85
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V

    .line 86
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

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "l":I
    const/4 v1, 0x2

    new-array v2, v1, [B

    .line 97
    .local v2, "b":[B
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 98
    iget-object v3, p0, Lorg/jpos/iso/channel/AmexChannel;->serverIn:Ljava/io/DataInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 99
    aget-byte v3, v2, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    or-int v0, v3, v4

    .line 100
    if-nez v0, :cond_0

    .line 101
    iget-object v3, p0, Lorg/jpos/iso/channel/AmexChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 102
    iget-object v3, p0, Lorg/jpos/iso/channel/AmexChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 103
    new-instance v3, Lorg/jpos/util/LogEvent;

    const-string v4, "poll"

    invoke-direct {v3, p0, v4}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    invoke-static {v3}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    goto :goto_0

    .line 107
    :cond_1
    sub-int/2addr v0, v1

    .line 109
    return v0
.end method

.method protected sendMessageLength(I)V
    .locals 2
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/jpos/iso/channel/AmexChannel;->serverOut:Ljava/io/DataOutputStream;

    add-int/lit8 v1, p1, 0x2

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 90
    iget-object v0, p0, Lorg/jpos/iso/channel/AmexChannel;->serverOut:Ljava/io/DataOutputStream;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 91
    return-void
.end method
