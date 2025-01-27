.class public Lch/qos/logback/core/net/SyslogOutputStream;
.super Ljava/io/OutputStream;
.source "SyslogOutputStream.java"


# static fields
.field private static final MAX_LEN:I = 0x400


# instance fields
.field private address:Ljava/net/InetAddress;

.field private baos:Ljava/io/ByteArrayOutputStream;

.field private ds:Ljava/net/DatagramSocket;

.field private final port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "syslogHost"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 39
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/net/SyslogOutputStream;->baos:Ljava/io/ByteArrayOutputStream;

    .line 43
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/net/SyslogOutputStream;->address:Ljava/net/InetAddress;

    .line 44
    iput p2, p0, Lch/qos/logback/core/net/SyslogOutputStream;->port:I

    .line 45
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/net/SyslogOutputStream;->ds:Ljava/net/DatagramSocket;

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/net/SyslogOutputStream;->address:Ljava/net/InetAddress;

    .line 76
    iput-object v0, p0, Lch/qos/logback/core/net/SyslogOutputStream;->ds:Ljava/net/DatagramSocket;

    .line 77
    return-void
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lch/qos/logback/core/net/SyslogOutputStream;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 54
    .local v0, "bytes":[B
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    iget-object v3, p0, Lch/qos/logback/core/net/SyslogOutputStream;->address:Ljava/net/InetAddress;

    iget v4, p0, Lch/qos/logback/core/net/SyslogOutputStream;->port:I

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 57
    .local v1, "packet":Ljava/net/DatagramPacket;
    iget-object v2, p0, Lch/qos/logback/core/net/SyslogOutputStream;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_0

    .line 58
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lch/qos/logback/core/net/SyslogOutputStream;->baos:Ljava/io/ByteArrayOutputStream;

    goto :goto_0

    .line 60
    :cond_0
    iget-object v2, p0, Lch/qos/logback/core/net/SyslogOutputStream;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 65
    :goto_0
    array-length v2, v0

    if-nez v2, :cond_1

    .line 66
    return-void

    .line 68
    :cond_1
    iget-object v2, p0, Lch/qos/logback/core/net/SyslogOutputStream;->ds:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_2

    .line 69
    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 72
    :cond_2
    return-void
.end method

.method public getPort()I
    .locals 1

    .line 80
    iget v0, p0, Lch/qos/logback/core/net/SyslogOutputStream;->port:I

    return v0
.end method

.method getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lch/qos/logback/core/net/SyslogOutputStream;->ds:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lch/qos/logback/core/net/SyslogOutputStream;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 86
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "byteArray"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lch/qos/logback/core/net/SyslogOutputStream;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 50
    return-void
.end method
