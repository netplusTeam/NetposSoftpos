.class public Lorg/jpos/iso/channel/XMLChannel;
.super Lorg/jpos/iso/BaseChannel;
.source "XMLChannel.java"


# instance fields
.field reader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/XMLChannel;->reader:Ljava/io/BufferedReader;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "p"    # Lorg/jpos/iso/ISOPackager;

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/BaseChannel;-><init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/XMLChannel;->reader:Ljava/io/BufferedReader;

    .line 58
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

    .line 66
    invoke-direct {p0, p1}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/XMLChannel;->reader:Ljava/io/BufferedReader;

    .line 67
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

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/XMLChannel;->reader:Ljava/io/BufferedReader;

    .line 79
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

    .line 111
    invoke-super {p0, p1}, Lorg/jpos/iso/BaseChannel;->connect(Ljava/net/Socket;)V

    .line 112
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/jpos/iso/channel/XMLChannel;->serverIn:Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/jpos/iso/channel/XMLChannel;->reader:Ljava/io/BufferedReader;

    .line 113
    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-super {p0}, Lorg/jpos/iso/BaseChannel;->disconnect()V

    .line 116
    iget-object v0, p0, Lorg/jpos/iso/channel/XMLChannel;->reader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 118
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/XMLChannel;->reader:Ljava/io/BufferedReader;

    .line 119
    return-void
.end method

.method protected getHeaderLength()I
    .locals 1

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method protected sendMessageHeader(Lorg/jpos/iso/ISOMsg;I)V
    .locals 0
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "len"    # I

    .line 109
    return-void
.end method

.method protected streamReceive()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "sp":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v2, p0, Lorg/jpos/iso/channel/XMLChannel;->reader:Ljava/io/BufferedReader;

    if-eqz v2, :cond_3

    .line 88
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v3, "<isomsg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 94
    :cond_0
    const-string v3, "</isomsg>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    .line 95
    goto :goto_1

    .line 96
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 90
    .restart local v2    # "s":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 97
    .end local v2    # "s":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    return-object v2

    .line 98
    :cond_4
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method
