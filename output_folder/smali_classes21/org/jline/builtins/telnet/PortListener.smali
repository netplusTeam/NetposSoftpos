.class public Lorg/jline/builtins/telnet/PortListener;
.super Ljava/lang/Object;
.source "PortListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final logmsg:Ljava/lang/String; = "Listening to Port {0,number,integer} with a connectivity queue size of {1,number,integer}."


# instance fields
.field private available:Z

.field private connectionManager:Lorg/jline/builtins/telnet/ConnectionManager;

.field private floodProtection:I

.field private name:Ljava/lang/String;

.field private port:I

.field private serverSocket:Ljava/net/ServerSocket;

.field private stopping:Z

.field private thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lorg/jline/builtins/telnet/PortListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jline/builtins/telnet/PortListener;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "floodprot"    # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/builtins/telnet/PortListener;->serverSocket:Ljava/net/ServerSocket;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/builtins/telnet/PortListener;->stopping:Z

    .line 83
    iput-object p1, p0, Lorg/jline/builtins/telnet/PortListener;->name:Ljava/lang/String;

    .line 84
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/PortListener;->available:Z

    .line 85
    iput p2, p0, Lorg/jline/builtins/telnet/PortListener;->port:I

    .line 86
    iput p3, p0, Lorg/jline/builtins/telnet/PortListener;->floodProtection:I

    .line 87
    return-void
.end method


# virtual methods
.method public getConnectionManager()Lorg/jline/builtins/telnet/ConnectionManager;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/jline/builtins/telnet/PortListener;->connectionManager:Lorg/jline/builtins/telnet/ConnectionManager;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/jline/builtins/telnet/PortListener;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/PortListener;->available:Z

    return v0
.end method

.method public run()V
    .locals 6

    .line 169
    const-string v0, "run()"

    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    iget v2, p0, Lorg/jline/builtins/telnet/PortListener;->port:I

    iget v3, p0, Lorg/jline/builtins/telnet/PortListener;->floodProtection:I

    invoke-direct {v1, v2, v3}, Ljava/net/ServerSocket;-><init>(II)V

    iput-object v1, p0, Lorg/jline/builtins/telnet/PortListener;->serverSocket:Ljava/net/ServerSocket;

    .line 172
    sget-object v1, Lorg/jline/builtins/telnet/PortListener;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Listening to Port {0,number,integer} with a connectivity queue size of {1,number,integer}."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lorg/jline/builtins/telnet/PortListener;->port:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lorg/jline/builtins/telnet/PortListener;->floodProtection:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/jline/builtins/telnet/PortListener;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 177
    .local v1, "s":Ljava/net/Socket;
    iget-boolean v2, p0, Lorg/jline/builtins/telnet/PortListener;->available:Z

    if-eqz v2, :cond_1

    .line 178
    iget-object v2, p0, Lorg/jline/builtins/telnet/PortListener;->connectionManager:Lorg/jline/builtins/telnet/ConnectionManager;

    invoke-virtual {v2, v1}, Lorg/jline/builtins/telnet/ConnectionManager;->makeConnection(Ljava/net/Socket;)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    .end local v1    # "s":Ljava/net/Socket;
    :goto_0
    goto :goto_1

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "ex":Ljava/net/SocketException;
    :try_start_2
    iget-boolean v2, p0, Lorg/jline/builtins/telnet/PortListener;->stopping:Z

    if-eqz v2, :cond_2

    .line 186
    sget-object v2, Lorg/jline/builtins/telnet/PortListener;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "run(): ServerSocket closed by stop()"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    .line 188
    :cond_2
    sget-object v2, Lorg/jline/builtins/telnet/PortListener;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    .end local v1    # "ex":Ljava/net/SocketException;
    :goto_1
    iget-boolean v1, p0, Lorg/jline/builtins/telnet/PortListener;->stopping:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v1, :cond_0

    .line 195
    goto :goto_2

    .line 193
    :catch_1
    move-exception v1

    .line 194
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/jline/builtins/telnet/PortListener;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    sget-object v0, Lorg/jline/builtins/telnet/PortListener;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "run(): returning."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setAvailable(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 113
    iput-boolean p1, p0, Lorg/jline/builtins/telnet/PortListener;->available:Z

    .line 114
    return-void
.end method

.method public setConnectionManager(Lorg/jline/builtins/telnet/ConnectionManager;)V
    .locals 0
    .param p1, "connectionManager"    # Lorg/jline/builtins/telnet/ConnectionManager;

    .line 210
    iput-object p1, p0, Lorg/jline/builtins/telnet/PortListener;->connectionManager:Lorg/jline/builtins/telnet/ConnectionManager;

    .line 211
    return-void
.end method

.method public start()V
    .locals 3

    .line 120
    sget-object v0, Lorg/jline/builtins/telnet/PortListener;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "start()"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/jline/builtins/telnet/PortListener;->thread:Ljava/lang/Thread;

    .line 122
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/builtins/telnet/PortListener;->available:Z

    .line 124
    return-void
.end method

.method public stop()V
    .locals 5

    .line 131
    const-string v0, "stop()"

    sget-object v1, Lorg/jline/builtins/telnet/PortListener;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop()::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jline/builtins/telnet/PortListener;->stopping:Z

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jline/builtins/telnet/PortListener;->available:Z

    .line 136
    iget-object v1, p0, Lorg/jline/builtins/telnet/PortListener;->connectionManager:Lorg/jline/builtins/telnet/ConnectionManager;

    invoke-virtual {v1}, Lorg/jline/builtins/telnet/ConnectionManager;->stop()V

    .line 140
    :try_start_0
    iget-object v1, p0, Lorg/jline/builtins/telnet/PortListener;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "ex":Ljava/io/IOException;
    sget-object v2, Lorg/jline/builtins/telnet/PortListener;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/jline/builtins/telnet/PortListener;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    goto :goto_1

    .line 148
    :catch_1
    move-exception v1

    .line 149
    .local v1, "iex":Ljava/lang/InterruptedException;
    sget-object v2, Lorg/jline/builtins/telnet/PortListener;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .end local v1    # "iex":Ljava/lang/InterruptedException;
    :goto_1
    sget-object v0, Lorg/jline/builtins/telnet/PortListener;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop()::Stopped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 153
    return-void
.end method
