.class public Lorg/jpos/iso/channel/BCDChannel;
.super Lorg/jpos/iso/BaseChannel;
.source "BCDChannel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;[B)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "p"    # Lorg/jpos/iso/ISOPackager;
    .param p4, "TPDU"    # [B

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/BaseChannel;-><init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V

    .line 56
    iput-object p4, p0, Lorg/jpos/iso/channel/BCDChannel;->header:[B

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOPackager;[B)V
    .locals 0
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;
    .param p2, "TPDU"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;)V

    .line 67
    iput-object p2, p0, Lorg/jpos/iso/channel/BCDChannel;->header:[B

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOPackager;[BLjava/net/ServerSocket;)V
    .locals 0
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;
    .param p2, "TPDU"    # [B
    .param p3, "serverSocket"    # Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p3}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V

    .line 81
    iput-object p2, p0, Lorg/jpos/iso/channel/BCDChannel;->header:[B

    .line 82
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

    .line 96
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 97
    .local v1, "b":[B
    iget-object v2, p0, Lorg/jpos/iso/channel/BCDChannel;->serverIn:Ljava/io/DataInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 98
    nop

    .line 99
    const/4 v0, 0x4

    const/4 v2, 0x1

    invoke-static {v1, v3, v0, v2}, Lorg/jpos/iso/ISOUtil;->bcd2str([BIIZ)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

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

    .line 103
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v0

    .line 104
    .local v0, "h":[B
    if-eqz v0, :cond_0

    .line 105
    array-length v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 107
    const/4 v1, 0x2

    new-array v2, v1, [B

    .line 108
    .local v2, "tmp":[B
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    const/4 v5, 0x3

    invoke-static {v0, v5, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    invoke-static {v2, v4, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    .end local v2    # "tmp":[B
    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/jpos/iso/channel/BCDChannel;->header:[B

    .line 115
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 116
    iget-object v1, p0, Lorg/jpos/iso/channel/BCDChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 117
    :cond_2
    return-void
.end method

.method protected sendMessageLength(I)V
    .locals 3
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/channel/BCDChannel;->serverOut:Ljava/io/DataOutputStream;

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 86
    invoke-static {v1, v2}, Lorg/jpos/iso/ISOUtil;->str2bcd(Ljava/lang/String;Z)[B

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Lorg/jpos/iso/ISOException;
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "send-message-length"

    invoke-direct {v1, p0, v2, v0}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 94
    .end local v0    # "e":Lorg/jpos/iso/ISOException;
    :goto_0
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/jpos/iso/ISOUtil;->str2bcd(Ljava/lang/String;Z)[B

    move-result-object v0

    invoke-super {p0, v0}, Lorg/jpos/iso/BaseChannel;->setHeader([B)V

    .line 124
    return-void
.end method
