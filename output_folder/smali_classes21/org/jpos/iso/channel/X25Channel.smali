.class public Lorg/jpos/iso/channel/X25Channel;
.super Lorg/jpos/iso/BaseChannel;
.source "X25Channel.java"


# instance fields
.field protected header:[B

.field reader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/X25Channel;->reader:Ljava/io/BufferedReader;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "p"    # Lorg/jpos/iso/ISOPackager;

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/BaseChannel;-><init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/X25Channel;->reader:Ljava/io/BufferedReader;

    .line 67
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

    .line 75
    invoke-direct {p0, p1}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/X25Channel;->reader:Ljava/io/BufferedReader;

    .line 76
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

    .line 87
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/X25Channel;->reader:Ljava/io/BufferedReader;

    .line 88
    return-void
.end method


# virtual methods
.method protected connect(Ljava/net/Socket;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-super {p0, p1}, Lorg/jpos/iso/BaseChannel;->connect(Ljava/net/Socket;)V

    .line 126
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/jpos/iso/channel/X25Channel;->serverIn:Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/jpos/iso/channel/X25Channel;->reader:Ljava/io/BufferedReader;

    .line 127
    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-super {p0}, Lorg/jpos/iso/BaseChannel;->disconnect()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/X25Channel;->reader:Ljava/io/BufferedReader;

    .line 131
    return-void
.end method

.method public getHeader()[B
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/jpos/iso/channel/X25Channel;->header:[B

    return-object v0
.end method

.method protected getHeaderLength()I
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/jpos/iso/channel/X25Channel;->header:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected sendMessageHeader(Lorg/jpos/iso/ISOMsg;I)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/jpos/iso/channel/X25Channel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/jpos/iso/channel/X25Channel;->header:[B

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lorg/jpos/iso/channel/X25Channel;->serverOut:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lorg/jpos/iso/channel/X25Channel;->header:[B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 154
    :cond_1
    :goto_0
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 3
    .param p1, "header"    # Ljava/lang/String;

    .line 142
    nop

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/jpos/iso/ISOUtil;->hex2byte([BII)[B

    move-result-object v0

    .line 142
    invoke-virtual {p0, v0}, Lorg/jpos/iso/channel/X25Channel;->setHeader([B)V

    .line 145
    return-void
.end method

.method public setHeader([B)V
    .locals 0
    .param p1, "header"    # [B

    .line 136
    iput-object p1, p0, Lorg/jpos/iso/channel/X25Channel;->header:[B

    .line 137
    return-void
.end method

.method protected streamReceive()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    .local v0, "k":I
    const/4 v1, 0x1

    .line 95
    .local v1, "len":I
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 97
    .local v2, "v":Ljava/util/Vector;
    iget-object v3, p0, Lorg/jpos/iso/channel/X25Channel;->serverIn:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    .line 98
    .local v3, "c":I
    const-string v4, "connection closed"

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    .line 100
    const/4 v5, 0x1

    new-array v5, v5, [B

    .line 101
    .local v5, "b":[B
    int-to-byte v6, v3

    const/4 v7, 0x0

    aput-byte v6, v5, v7

    .line 102
    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 105
    :goto_0
    iget-object v6, p0, Lorg/jpos/iso/channel/X25Channel;->serverIn:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->available()I

    move-result v6

    move v3, v6

    if-lez v6, :cond_1

    .line 106
    new-array v5, v3, [B

    .line 107
    iget-object v6, p0, Lorg/jpos/iso/channel/X25Channel;->serverIn:Ljava/io/DataInputStream;

    invoke-virtual {v6, v5}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    if-ne v6, v3, :cond_0

    .line 109
    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 110
    add-int/2addr v1, v3

    .line 112
    const-wide/16 v8, 0x32

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_1
    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_1

    .line 108
    :cond_0
    new-instance v6, Ljava/io/EOFException;

    invoke-direct {v6, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 116
    :cond_1
    new-array v4, v1, [B

    .line 117
    .local v4, "d":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 118
    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v5, v8

    check-cast v5, [B

    .line 119
    array-length v8, v5

    invoke-static {v5, v7, v4, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    array-length v8, v5

    add-int/2addr v0, v8

    .line 117
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 122
    .end local v6    # "i":I
    :cond_2
    return-object v4

    .line 99
    .end local v4    # "d":[B
    .end local v5    # "b":[B
    :cond_3
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
