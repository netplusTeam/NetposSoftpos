.class public Lorg/jpos/iso/channel/TelnetXMLChannel;
.super Lorg/jpos/iso/BaseChannel;
.source "TelnetXMLChannel.java"


# static fields
.field static final isomsgEndTag:Ljava/lang/String; = "</isomsg>"

.field static final isomsgStartTag:Ljava/lang/String; = "<isomsg>"


# instance fields
.field reader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/TelnetXMLChannel;->reader:Ljava/io/BufferedReader;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "p"    # Lorg/jpos/iso/ISOPackager;

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/BaseChannel;-><init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/TelnetXMLChannel;->reader:Ljava/io/BufferedReader;

    .line 70
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

    .line 81
    invoke-direct {p0, p1}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/TelnetXMLChannel;->reader:Ljava/io/BufferedReader;

    .line 82
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

    .line 96
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/TelnetXMLChannel;->reader:Ljava/io/BufferedReader;

    .line 97
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

    .line 155
    invoke-super {p0, p1}, Lorg/jpos/iso/BaseChannel;->connect(Ljava/net/Socket;)V

    .line 156
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/jpos/iso/channel/TelnetXMLChannel;->serverIn:Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/jpos/iso/channel/TelnetXMLChannel;->reader:Ljava/io/BufferedReader;

    .line 157
    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-super {p0}, Lorg/jpos/iso/BaseChannel;->disconnect()V

    .line 161
    iget-object v0, p0, Lorg/jpos/iso/channel/TelnetXMLChannel;->reader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/TelnetXMLChannel;->reader:Ljava/io/BufferedReader;

    .line 164
    return-void
.end method

.method protected getHeaderLength()I
    .locals 1

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method protected sendMessageHeader(Lorg/jpos/iso/ISOMsg;I)V
    .locals 0
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "len"    # I

    .line 152
    return-void
.end method

.method protected streamReceive()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "sp":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v2, p0, Lorg/jpos/iso/channel/TelnetXMLChannel;->reader:Ljava/io/BufferedReader;

    if-eqz v2, :cond_5

    .line 111
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->mark(I)V

    .line 113
    :goto_1
    iget-object v2, p0, Lorg/jpos/iso/channel/TelnetXMLChannel;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v2

    const/16 v4, 0xff

    if-ne v2, v4, :cond_0

    .line 114
    iget-object v2, p0, Lorg/jpos/iso/channel/TelnetXMLChannel;->reader:Ljava/io/BufferedReader;

    const-wide/16 v4, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/io/BufferedReader;->skip(J)J

    .line 115
    iget-object v2, p0, Lorg/jpos/iso/channel/TelnetXMLChannel;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->mark(I)V

    goto :goto_1

    .line 117
    :cond_0
    iget-object v2, p0, Lorg/jpos/iso/channel/TelnetXMLChannel;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->reset()V

    .line 122
    iget-object v2, p0, Lorg/jpos/iso/channel/TelnetXMLChannel;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 125
    const-string v3, "<isomsg>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 126
    .local v3, "isomsgStart":I
    if-ltz v3, :cond_1

    .line 127
    add-int/lit8 v0, v0, 0x1

    .line 128
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 130
    :cond_1
    const-string v4, "</isomsg>"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 131
    .local v5, "isomsgEnd":I
    if-ltz v5, :cond_2

    .line 132
    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_3

    .line 134
    goto :goto_3

    .line 136
    :cond_2
    if-lez v0, :cond_3

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "isomsgStart":I
    .end local v5    # "isomsgEnd":I
    :cond_3
    :goto_2
    goto :goto_0

    .line 124
    .restart local v2    # "s":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 142
    .end local v2    # "s":Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    return-object v2
.end method
