.class public Lorg/jpos/iso/channel/CSChannel;
.super Lorg/jpos/iso/BaseChannel;
.source "CSChannel.java"


# instance fields
.field private replyKeepAlive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/channel/CSChannel;->replyKeepAlive:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "p"    # Lorg/jpos/iso/ISOPackager;

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/BaseChannel;-><init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/channel/CSChannel;->replyKeepAlive:Z

    .line 57
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

    .line 65
    invoke-direct {p0, p1}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/channel/CSChannel;->replyKeepAlive:Z

    .line 66
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

    .line 77
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/channel/CSChannel;->replyKeepAlive:Z

    .line 78
    return-void
.end method


# virtual methods
.method protected getHeaderLength()I
    .locals 1

    .line 110
    const/4 v0, 0x0

    return v0
.end method

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
    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 96
    .local v2, "b":[B
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 97
    iget-object v3, p0, Lorg/jpos/iso/channel/CSChannel;->serverIn:Ljava/io/DataInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 98
    aget-byte v3, v2, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    or-int v0, v3, v4

    .line 99
    iget-boolean v3, p0, Lorg/jpos/iso/channel/CSChannel;->replyKeepAlive:Z

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    .line 100
    iget-object v3, p0, Lorg/jpos/iso/channel/CSChannel;->serverOutLock:Ljava/lang/Object;

    monitor-enter v3

    .line 101
    :try_start_0
    iget-object v4, p0, Lorg/jpos/iso/channel/CSChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 102
    iget-object v4, p0, Lorg/jpos/iso/channel/CSChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 103
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 106
    :cond_1
    return v0
.end method

.method protected sendMessageHeader(Lorg/jpos/iso/ISOMsg;I)V
    .locals 0
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "len"    # I

    .line 114
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

    .line 84
    iget-object v0, p0, Lorg/jpos/iso/channel/CSChannel;->serverOut:Ljava/io/DataOutputStream;

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 85
    iget-object v0, p0, Lorg/jpos/iso/channel/CSChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 86
    iget-object v0, p0, Lorg/jpos/iso/channel/CSChannel;->serverOut:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 87
    iget-object v0, p0, Lorg/jpos/iso/channel/CSChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 88
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

    .line 118
    invoke-super {p0, p1}, Lorg/jpos/iso/BaseChannel;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 119
    const-string v0, "reply-keepalive"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/iso/channel/CSChannel;->replyKeepAlive:Z

    .line 120
    return-void
.end method
