.class public Lorg/jpos/iso/channel/BASE24Channel;
.super Lorg/jpos/iso/BaseChannel;
.source "BASE24Channel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "p"    # Lorg/jpos/iso/ISOPackager;

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/BaseChannel;-><init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V

    .line 58
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

    .line 66
    invoke-direct {p0, p1}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;)V

    .line 67
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

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected sendMessageTrailler(Lorg/jpos/iso/ISOMsg;I)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/jpos/iso/channel/BASE24Channel;->serverOut:Ljava/io/DataOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 87
    return-void
.end method

.method protected streamReceive()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 95
    .local v1, "buf":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 96
    iget-object v3, p0, Lorg/jpos/iso/channel/BASE24Channel;->serverIn:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    .line 97
    .local v3, "c":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 98
    goto :goto_1

    .line 99
    :cond_0
    int-to-byte v4, v3

    aput-byte v4, v1, v2

    .line 95
    .end local v3    # "c":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_1
    :goto_1
    if-eq v2, v0, :cond_2

    .line 104
    new-array v0, v2, [B

    .line 105
    .local v0, "d":[B
    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    return-object v0

    .line 102
    .end local v0    # "d":[B
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v3, "message too long"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
