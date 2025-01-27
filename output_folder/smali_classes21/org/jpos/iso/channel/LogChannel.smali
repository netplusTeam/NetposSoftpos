.class public Lorg/jpos/iso/channel/LogChannel;
.super Lorg/jpos/iso/BaseChannel;
.source "LogChannel.java"


# static fields
.field private static logPattern:Ljava/util/regex/Pattern;


# instance fields
.field reader:Ljava/io/BufferedReader;

.field realmField:I

.field timestampField:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-string v0, "<log realm=\"(\\.|[^\"]*)\"\\sat=\"((\\.|[^\"])*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jpos/iso/channel/LogChannel;->logPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/LogChannel;->reader:Ljava/io/BufferedReader;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/iso/channel/LogChannel;->timestampField:I

    .line 44
    iput v0, p0, Lorg/jpos/iso/channel/LogChannel;->realmField:I

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "p"    # Lorg/jpos/iso/ISOPackager;

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/BaseChannel;-><init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/LogChannel;->reader:Ljava/io/BufferedReader;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/iso/channel/LogChannel;->timestampField:I

    .line 44
    iput v0, p0, Lorg/jpos/iso/channel/LogChannel;->realmField:I

    .line 61
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

    .line 69
    invoke-direct {p0, p1}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/LogChannel;->reader:Ljava/io/BufferedReader;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/iso/channel/LogChannel;->timestampField:I

    .line 44
    iput v0, p0, Lorg/jpos/iso/channel/LogChannel;->realmField:I

    .line 70
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

    .line 81
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/BaseChannel;-><init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/LogChannel;->reader:Ljava/io/BufferedReader;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/iso/channel/LogChannel;->timestampField:I

    .line 44
    iput v0, p0, Lorg/jpos/iso/channel/LogChannel;->realmField:I

    .line 82
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

    .line 130
    invoke-super {p0, p1}, Lorg/jpos/iso/BaseChannel;->connect(Ljava/net/Socket;)V

    .line 131
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/jpos/iso/channel/LogChannel;->serverIn:Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/jpos/iso/channel/LogChannel;->reader:Ljava/io/BufferedReader;

    .line 132
    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-super {p0}, Lorg/jpos/iso/BaseChannel;->disconnect()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/LogChannel;->reader:Ljava/io/BufferedReader;

    .line 136
    return-void
.end method

.method protected getHeaderLength()I
    .locals 1

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 140
    invoke-super {p0, p1}, Lorg/jpos/iso/BaseChannel;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 141
    const-string v0, "timestamp-field"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jpos/iso/channel/LogChannel;->timestampField:I

    .line 142
    const-string v0, "realm-field"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jpos/iso/channel/LogChannel;->realmField:I

    .line 143
    return-void
.end method

.method protected streamReceive()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 90
    .local v1, "realm":Ljava/lang/String;
    const/4 v2, 0x0

    .line 91
    .local v2, "at":Ljava/lang/String;
    const/4 v3, 0x0

    .line 92
    .local v3, "inMsg":I
    :goto_0
    iget-object v4, p0, Lorg/jpos/iso/channel/LogChannel;->reader:Ljava/io/BufferedReader;

    if-eqz v4, :cond_a

    .line 93
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 96
    iget v5, p0, Lorg/jpos/iso/channel/LogChannel;->timestampField:I

    if-gtz v5, :cond_0

    iget v5, p0, Lorg/jpos/iso/channel/LogChannel;->realmField:I

    if-lez v5, :cond_2

    :cond_0
    const-string v5, "<log"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "at="

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    sget-object v5, Lorg/jpos/iso/channel/LogChannel;->logPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 98
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 99
    iget v6, p0, Lorg/jpos/iso/channel/LogChannel;->realmField:I

    if-lez v6, :cond_1

    .line 100
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    :cond_1
    iget v6, p0, Lorg/jpos/iso/channel/LogChannel;->timestampField:I

    if-lez v6, :cond_2

    .line 102
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    const-string v5, "<isomsg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 106
    add-int/lit8 v3, v3, 0x1

    .line 108
    :cond_3
    const-string v5, "</isomsg>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_7

    .line 109
    if-nez v2, :cond_4

    if-eqz v1, :cond_6

    if-nez v3, :cond_6

    .line 110
    :cond_4
    const-string v5, "\" />"

    const-string v6, "\" value=\""

    const-string v7, "  <field id=\""

    if-eqz v1, :cond_5

    .line 111
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/jpos/iso/channel/LogChannel;->realmField:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const/4 v1, 0x0

    .line 114
    :cond_5
    if-eqz v2, :cond_6

    .line 115
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/jpos/iso/channel/LogChannel;->timestampField:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    goto :goto_1

    .line 121
    :cond_7
    if-lez v3, :cond_8

    .line 122
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .end local v4    # "s":Ljava/lang/String;
    :cond_8
    goto/16 :goto_0

    .line 95
    .restart local v4    # "s":Ljava/lang/String;
    :cond_9
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 124
    .end local v4    # "s":Ljava/lang/String;
    :cond_a
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4
.end method
