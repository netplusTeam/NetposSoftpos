.class public Lorg/jpos/iso/channel/RawChannel;
.super Lorg/jpos/iso/BaseChannel;
.source "RawChannel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;[B)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "p"    # Lorg/jpos/iso/ISOPackager;
    .param p4, "header"    # [B

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/BaseChannel;-><init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V

    .line 55
    iput-object p4, p0, Lorg/jpos/iso/channel/RawChannel;->header:[B

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOPackager;[B)V
    .locals 0
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;
    .param p2, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;)V

    .line 66
    iput-object p2, p0, Lorg/jpos/iso/channel/RawChannel;->header:[B

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOPackager;[BLjava/net/ServerSocket;)V
    .locals 0
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;
    .param p2, "header"    # [B
    .param p3, "serverSocket"    # Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p3}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V

    .line 80
    iput-object p2, p0, Lorg/jpos/iso/channel/RawChannel;->header:[B

    .line 81
    return-void
.end method


# virtual methods
.method protected getMessageLength()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 90
    .local v1, "b":[B
    iget-object v2, p0, Lorg/jpos/iso/channel/RawChannel;->serverIn:Ljava/io/DataInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 91
    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

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

    .line 83
    iget-object v0, p0, Lorg/jpos/iso/channel/RawChannel;->serverOut:Ljava/io/DataOutputStream;

    shr-int/lit8 v1, p1, 0x18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 84
    iget-object v0, p0, Lorg/jpos/iso/channel/RawChannel;->serverOut:Ljava/io/DataOutputStream;

    shr-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 85
    iget-object v0, p0, Lorg/jpos/iso/channel/RawChannel;->serverOut:Ljava/io/DataOutputStream;

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 86
    iget-object v0, p0, Lorg/jpos/iso/channel/RawChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 87
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/jpos/iso/ISOUtil;->str2bcd(Ljava/lang/String;Z)[B

    move-result-object v0

    invoke-super {p0, v0}, Lorg/jpos/iso/BaseChannel;->setHeader([B)V

    .line 102
    return-void
.end method
