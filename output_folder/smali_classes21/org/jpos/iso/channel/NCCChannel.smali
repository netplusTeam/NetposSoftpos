.class public Lorg/jpos/iso/channel/NCCChannel;
.super Lorg/jpos/iso/BaseChannel;
.source "NCCChannel.java"


# instance fields
.field tpduSwap:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/channel/NCCChannel;->tpduSwap:Z

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

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/channel/NCCChannel;->tpduSwap:Z

    .line 59
    iput-object p4, p0, Lorg/jpos/iso/channel/NCCChannel;->header:[B

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

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/channel/NCCChannel;->tpduSwap:Z

    .line 70
    iput-object p2, p0, Lorg/jpos/iso/channel/NCCChannel;->header:[B

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

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/channel/NCCChannel;->tpduSwap:Z

    .line 84
    iput-object p2, p0, Lorg/jpos/iso/channel/NCCChannel;->header:[B

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

    .line 99
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 100
    .local v1, "b":[B
    iget-object v2, p0, Lorg/jpos/iso/channel/NCCChannel;->serverIn:Ljava/io/DataInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 101
    nop

    .line 102
    const/4 v0, 0x4

    const/4 v2, 0x1

    invoke-static {v1, v3, v0, v2}, Lorg/jpos/iso/ISOUtil;->bcd2str([BIIZ)Ljava/lang/String;

    move-result-object v0

    .line 101
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

    .line 106
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v0

    .line 107
    .local v0, "h":[B
    if-eqz v0, :cond_0

    .line 108
    iget-boolean v1, p0, Lorg/jpos/iso/channel/NCCChannel;->tpduSwap:Z

    if-eqz v1, :cond_1

    array-length v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 110
    const/4 v1, 0x2

    new-array v2, v1, [B

    .line 111
    .local v2, "tmp":[B
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    const/4 v5, 0x3

    invoke-static {v0, v5, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    invoke-static {v2, v4, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    .end local v2    # "tmp":[B
    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/jpos/iso/channel/NCCChannel;->header:[B

    .line 118
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 119
    iget-object v1, p0, Lorg/jpos/iso/channel/NCCChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 120
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

    .line 88
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/channel/NCCChannel;->serverOut:Ljava/io/DataOutputStream;

    rem-int/lit16 v1, p1, 0x2710

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 89
    invoke-static {v1, v2}, Lorg/jpos/iso/ISOUtil;->str2bcd(Ljava/lang/String;Z)[B

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Lorg/jpos/iso/ISOException;
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "send-message-length"

    invoke-direct {v1, p0, v2, v0}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 97
    .end local v0    # "e":Lorg/jpos/iso/ISOException;
    :goto_0
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

    .line 131
    invoke-super {p0, p1}, Lorg/jpos/iso/BaseChannel;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 132
    const-string v0, "tpdu-swap"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/iso/channel/NCCChannel;->tpduSwap:Z

    .line 133
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/jpos/iso/ISOUtil;->str2bcd(Ljava/lang/String;Z)[B

    move-result-object v0

    invoke-super {p0, v0}, Lorg/jpos/iso/BaseChannel;->setHeader([B)V

    .line 127
    return-void
.end method
