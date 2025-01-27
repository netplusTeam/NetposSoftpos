.class public Lorg/jpos/iso/channel/GZIPChannel;
.super Lorg/jpos/iso/BaseChannel;
.source "GZIPChannel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "p"    # Lorg/jpos/iso/ISOPackager;

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/BaseChannel;-><init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V

    .line 50
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

    .line 58
    invoke-direct {p0, p1}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;)V

    .line 59
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

    .line 70
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected getMessage([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "total":I
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    iget-object v2, p0, Lorg/jpos/iso/channel/GZIPChannel;->serverIn:Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 108
    .local v1, "gzip":Ljava/util/zip/GZIPInputStream;
    :goto_0
    if-ge v0, p3, :cond_1

    .line 109
    sub-int v2, p3, v0

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v2

    .line 110
    .local v2, "nread":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 113
    add-int/2addr v0, v2

    .line 114
    add-int/2addr p2, v2

    .line 115
    .end local v2    # "nread":I
    goto :goto_0

    .line 111
    .restart local v2    # "nread":I
    :cond_0
    new-instance v3, Lorg/jpos/iso/ISOException;

    const-string v4, "End of compressed stream reached before all data was read"

    invoke-direct {v3, v4}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 116
    .end local v2    # "nread":I
    :cond_1
    return-void
.end method

.method protected getMessageLength()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "l":I
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 87
    .local v1, "b":[B
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 88
    iget-object v2, p0, Lorg/jpos/iso/channel/GZIPChannel;->serverIn:Ljava/io/DataInputStream;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 89
    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 90
    if-nez v0, :cond_0

    .line 91
    iget-object v2, p0, Lorg/jpos/iso/channel/GZIPChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 92
    iget-object v2, p0, Lorg/jpos/iso/channel/GZIPChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0

    .line 95
    :cond_1
    return v0
.end method

.method protected sendMessage([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    iget-object v1, p0, Lorg/jpos/iso/channel/GZIPChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 101
    .local v0, "gzip":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 102
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 103
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 104
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

    .line 77
    iget-object v0, p0, Lorg/jpos/iso/channel/GZIPChannel;->serverOut:Ljava/io/DataOutputStream;

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 78
    iget-object v0, p0, Lorg/jpos/iso/channel/GZIPChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 79
    return-void
.end method
