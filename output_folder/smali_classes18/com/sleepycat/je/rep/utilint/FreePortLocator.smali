.class public Lcom/sleepycat/je/rep/utilint/FreePortLocator;
.super Ljava/lang/Object;
.source "FreePortLocator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final debug:Z


# instance fields
.field private currPort:I

.field private final hostname:Ljava/lang/String;

.field private final portEnd:I

.field private final portStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    nop

    .line 31
    nop

    .line 32
    const-string/jumbo v0, "test.debugFreePortLocator"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->debug:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 4
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "portStart"    # I
    .param p3, "portEnd"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-ge p2, p3, :cond_1

    .line 53
    const/16 v0, 0x7fff

    if-gt p2, v0, :cond_0

    if-gt p3, v0, :cond_0

    .line 61
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->hostname:Ljava/lang/String;

    .line 62
    iput p2, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->portStart:I

    .line 63
    iput p3, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->portEnd:I

    .line 64
    iput p2, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->currPort:I

    .line 65
    return-void

    .line 54
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid port range:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". The port range must not extend past:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " since the allocated ports could then overlap with dynamically assigned ports used by other services. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public getPortEnd()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->portEnd:I

    return v0
.end method

.method public getPortStart()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->portStart:I

    return v0
.end method

.method public next()I
    .locals 13

    .line 90
    const-string v0, " busy - server hostname close: "

    const-string v1, " busy - server close: "

    const-string v2, " busy - socket close: "

    const-string v3, "FreePortLocator: "

    :cond_0
    :goto_0
    iget v4, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->currPort:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->currPort:I

    iget v6, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->portEnd:I

    if-ge v4, v6, :cond_12

    .line 93
    const/4 v4, 0x0

    .line 95
    .local v4, "s":Ljava/net/Socket;
    :try_start_0
    new-instance v6, Ljava/net/Socket;

    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->hostname:Ljava/lang/String;

    iget v8, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->currPort:I

    invoke-direct {v6, v7, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    move-object v4, v6

    .line 97
    sget-boolean v6, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->debug:Z

    if-eqz v6, :cond_1

    .line 98
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->currPort:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " busy - socket"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_1
    nop

    .line 108
    :try_start_1
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    goto :goto_0

    .line 109
    :catch_0
    move-exception v5

    .line 111
    .local v5, "e":Ljava/io/IOException;
    sget-boolean v6, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->debug:Z

    if-eqz v6, :cond_3

    .line 112
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 106
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_2

    .line 108
    :try_start_2
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 118
    goto :goto_1

    .line 109
    :catch_1
    move-exception v5

    .line 111
    .restart local v5    # "e":Ljava/io/IOException;
    sget-boolean v6, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->debug:Z

    if-eqz v6, :cond_3

    .line 112
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 117
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    throw v5

    .line 103
    :catch_2
    move-exception v6

    .line 106
    if-eqz v4, :cond_4

    .line 108
    :try_start_3
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 118
    goto :goto_3

    .line 109
    :catch_3
    move-exception v5

    .line 111
    .restart local v5    # "e":Ljava/io/IOException;
    sget-boolean v6, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->debug:Z

    if-eqz v6, :cond_3

    .line 112
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->currPort:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 117
    :cond_3
    goto/16 :goto_0

    .line 123
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    const/4 v6, 0x0

    .line 124
    .local v6, "ss":Ljava/net/ServerSocket;
    const/4 v7, 0x0

    .line 126
    .local v7, "ds":Ljava/net/DatagramSocket;
    :try_start_4
    new-instance v8, Ljava/net/ServerSocket;

    iget v9, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->currPort:I

    invoke-direct {v8, v9}, Ljava/net/ServerSocket;-><init>(I)V

    move-object v6, v8

    .line 127
    invoke-virtual {v6, v5}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 128
    new-instance v8, Ljava/net/DatagramSocket;

    iget v9, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->currPort:I

    invoke-direct {v8, v9}, Ljava/net/DatagramSocket;-><init>(I)V

    move-object v7, v8

    .line 129
    invoke-virtual {v7, v5}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 139
    nop

    .line 140
    invoke-virtual {v7}, Ljava/net/DatagramSocket;->close()V

    .line 143
    nop

    .line 145
    :try_start_5
    invoke-virtual {v6}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 154
    nop

    .line 158
    const/4 v6, 0x0

    .line 159
    const/4 v7, 0x0

    .line 162
    new-instance v8, Ljava/net/InetSocketAddress;

    iget-object v9, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->hostname:Ljava/lang/String;

    iget v10, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->currPort:I

    invoke-direct {v8, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 165
    .local v8, "sa":Ljava/net/InetSocketAddress;
    :try_start_6
    new-instance v9, Ljava/net/ServerSocket;

    invoke-direct {v9}, Ljava/net/ServerSocket;-><init>()V

    move-object v6, v9

    .line 166
    invoke-virtual {v6, v5}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 167
    invoke-virtual {v6, v8}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 169
    new-instance v9, Ljava/net/DatagramSocket;

    invoke-direct {v9, v8}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    move-object v7, v9

    .line 170
    invoke-virtual {v7, v5}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 180
    nop

    .line 181
    invoke-virtual {v7}, Ljava/net/DatagramSocket;->close()V

    .line 184
    nop

    .line 186
    :try_start_7
    invoke-virtual {v6}, Ljava/net/ServerSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 195
    nop

    .line 200
    sget-boolean v0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->debug:Z

    if-eqz v0, :cond_5

    .line 201
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->currPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " free"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    :cond_5
    iget v0, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->currPort:I

    return v0

    .line 187
    :catch_4
    move-exception v5

    .line 188
    .restart local v5    # "e":Ljava/io/IOException;
    sget-boolean v9, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->debug:Z

    if-eqz v9, :cond_a

    .line 189
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_5

    .line 180
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    goto :goto_4

    .line 171
    :catch_5
    move-exception v5

    .line 172
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_8
    sget-boolean v9, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->debug:Z

    if-eqz v9, :cond_6

    .line 173
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->currPort:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " busy - server, datagram hostname: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 180
    :cond_6
    if-eqz v7, :cond_7

    .line 181
    invoke-virtual {v7}, Ljava/net/DatagramSocket;->close()V

    .line 184
    :cond_7
    if-eqz v6, :cond_0

    .line 186
    :try_start_9
    invoke-virtual {v6}, Ljava/net/ServerSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 195
    goto/16 :goto_0

    .line 187
    :catch_6
    move-exception v9

    .line 188
    .local v9, "e":Ljava/io/IOException;
    sget-boolean v10, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->debug:Z

    if-eqz v10, :cond_8

    .line 189
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->currPort:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 194
    :cond_8
    goto/16 :goto_0

    .line 180
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz v7, :cond_9

    .line 181
    invoke-virtual {v7}, Ljava/net/DatagramSocket;->close()V

    .line 184
    :cond_9
    if-eqz v6, :cond_b

    .line 186
    :try_start_a
    invoke-virtual {v6}, Ljava/net/ServerSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 195
    goto :goto_6

    .line 187
    :catch_7
    move-exception v5

    .line 188
    .restart local v5    # "e":Ljava/io/IOException;
    sget-boolean v9, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->debug:Z

    if-eqz v9, :cond_a

    .line 189
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->currPort:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 194
    :cond_a
    goto/16 :goto_0

    .end local v5    # "e":Ljava/io/IOException;
    :cond_b
    :goto_6
    throw v5

    .line 146
    .end local v8    # "sa":Ljava/net/InetSocketAddress;
    :catch_8
    move-exception v5

    .line 147
    .restart local v5    # "e":Ljava/io/IOException;
    sget-boolean v8, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->debug:Z

    if-eqz v8, :cond_10

    .line 148
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_8

    .line 139
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v5

    goto :goto_7

    .line 130
    :catch_9
    move-exception v5

    .line 131
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_b
    sget-boolean v8, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->debug:Z

    if-eqz v8, :cond_c

    .line 132
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->currPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " busy - server, datagram: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 139
    :cond_c
    if-eqz v7, :cond_d

    .line 140
    invoke-virtual {v7}, Ljava/net/DatagramSocket;->close()V

    .line 143
    :cond_d
    if-eqz v6, :cond_0

    .line 145
    :try_start_c
    invoke-virtual {v6}, Ljava/net/ServerSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 154
    goto/16 :goto_0

    .line 146
    :catch_a
    move-exception v8

    .line 147
    .local v8, "e":Ljava/io/IOException;
    sget-boolean v9, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->debug:Z

    if-eqz v9, :cond_e

    .line 148
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->currPort:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 153
    :cond_e
    goto/16 :goto_0

    .line 139
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "e":Ljava/io/IOException;
    :goto_7
    if-eqz v7, :cond_f

    .line 140
    invoke-virtual {v7}, Ljava/net/DatagramSocket;->close()V

    .line 143
    :cond_f
    if-eqz v6, :cond_11

    .line 145
    :try_start_d
    invoke-virtual {v6}, Ljava/net/ServerSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 154
    goto :goto_9

    .line 146
    :catch_b
    move-exception v5

    .line 147
    .restart local v5    # "e":Ljava/io/IOException;
    sget-boolean v8, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->debug:Z

    if-eqz v8, :cond_10

    .line 148
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->currPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 153
    :cond_10
    goto/16 :goto_0

    .end local v5    # "e":Ljava/io/IOException;
    :cond_11
    :goto_9
    throw v5

    .line 207
    .end local v4    # "s":Ljava/net/Socket;
    .end local v6    # "ss":Ljava/net/ServerSocket;
    .end local v7    # "ds":Ljava/net/DatagramSocket;
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No more ports available in the range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->portStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->portEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(I)V
    .locals 1
    .param p1, "num"    # I

    .line 216
    iget v0, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->currPort:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->currPort:I

    .line 217
    return-void
.end method
