.class public Lorg/jpos/iso/channel/NACChannel;
.super Lorg/jpos/iso/BaseChannel;
.source "NACChannel.java"


# instance fields
.field lenlen:I

.field tpduSwap:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/channel/NACChannel;->tpduSwap:Z

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/iso/channel/NACChannel;->lenlen:I

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;[B)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "p"    # Lorg/jpos/iso/ISOPackager;
    .param p4, "TPDU"    # [B

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/BaseChannel;-><init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/channel/NACChannel;->tpduSwap:Z

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/iso/channel/NACChannel;->lenlen:I

    .line 59
    iput-object p4, p0, Lorg/jpos/iso/channel/NACChannel;->header:[B

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOPackager;[B)V
    .locals 1
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;
    .param p2, "TPDU"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/channel/NACChannel;->tpduSwap:Z

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/iso/channel/NACChannel;->lenlen:I

    .line 70
    iput-object p2, p0, Lorg/jpos/iso/channel/NACChannel;->header:[B

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOPackager;[BLjava/net/ServerSocket;)V
    .locals 1
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;
    .param p2, "TPDU"    # [B
    .param p3, "serverSocket"    # Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p3}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/channel/NACChannel;->tpduSwap:Z

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/iso/channel/NACChannel;->lenlen:I

    .line 84
    iput-object p2, p0, Lorg/jpos/iso/channel/NACChannel;->header:[B

    .line 85
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

    .line 92
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 93
    .local v1, "b":[B
    iget-object v2, p0, Lorg/jpos/iso/channel/NACChannel;->serverIn:Ljava/io/DataInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 94
    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iget v2, p0, Lorg/jpos/iso/channel/NACChannel;->lenlen:I

    sub-int/2addr v0, v2

    return v0
.end method

.method protected sendMessageHeader(Lorg/jpos/iso/ISOMsg;I)V
    .locals 6
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v0

    .line 98
    .local v0, "h":[B
    if-eqz v0, :cond_0

    .line 99
    iget-boolean v1, p0, Lorg/jpos/iso/channel/NACChannel;->tpduSwap:Z

    if-eqz v1, :cond_1

    array-length v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 101
    const/4 v1, 0x2

    new-array v2, v1, [B

    .line 102
    .local v2, "tmp":[B
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    const/4 v5, 0x3

    invoke-static {v0, v5, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    invoke-static {v2, v4, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    .end local v2    # "tmp":[B
    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/jpos/iso/channel/NACChannel;->header:[B

    .line 109
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 110
    iget-object v1, p0, Lorg/jpos/iso/channel/NACChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 111
    :cond_2
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

    .line 87
    iget v0, p0, Lorg/jpos/iso/channel/NACChannel;->lenlen:I

    add-int/2addr p1, v0

    .line 88
    iget-object v0, p0, Lorg/jpos/iso/channel/NACChannel;->serverOut:Ljava/io/DataOutputStream;

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 89
    iget-object v0, p0, Lorg/jpos/iso/channel/NACChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 90
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

    .line 122
    invoke-super {p0, p1}, Lorg/jpos/iso/BaseChannel;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 123
    const-string v0, "tpdu-swap"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/iso/channel/NACChannel;->tpduSwap:Z

    .line 124
    const-string v0, "include-header-length"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :cond_0
    iput v1, p0, Lorg/jpos/iso/channel/NACChannel;->lenlen:I

    .line 125
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/jpos/iso/ISOUtil;->str2bcd(Ljava/lang/String;Z)[B

    move-result-object v0

    invoke-super {p0, v0}, Lorg/jpos/iso/BaseChannel;->setHeader([B)V

    .line 118
    return-void
.end method
