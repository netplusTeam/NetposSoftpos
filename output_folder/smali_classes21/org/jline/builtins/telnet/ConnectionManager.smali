.class public abstract Lorg/jline/builtins/telnet/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static LOG:Ljava/util/logging/Logger;


# instance fields
.field private closedConnections:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/jline/builtins/telnet/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private connectionFilter:Lorg/jline/builtins/telnet/ConnectionFilter;

.field private disconnectTimeout:I

.field private housekeepingInterval:I

.field private lineMode:Z

.field private loginShell:Ljava/lang/String;

.field private maxConnections:I

.field private final openConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/builtins/telnet/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private stopping:Z

.field private thread:Ljava/lang/Thread;

.field private threadGroup:Ljava/lang/ThreadGroup;

.field private warningTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lorg/jline/builtins/telnet/ConnectionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jline/builtins/telnet/ConnectionManager;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->lineMode:Z

    .line 76
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->stopping:Z

    .line 79
    new-instance v0, Ljava/lang/ThreadGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Connections"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->threadGroup:Ljava/lang/ThreadGroup;

    .line 80
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->closedConnections:Ljava/util/Stack;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->openConnections:Ljava/util/List;

    .line 82
    return-void
.end method

.method public constructor <init>(IIIILorg/jline/builtins/telnet/ConnectionFilter;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "con"    # I
    .param p2, "timew"    # I
    .param p3, "timedis"    # I
    .param p4, "hoke"    # I
    .param p5, "filter"    # Lorg/jline/builtins/telnet/ConnectionFilter;
    .param p6, "lsh"    # Ljava/lang/String;
    .param p7, "lm"    # Z

    .line 85
    invoke-direct {p0}, Lorg/jline/builtins/telnet/ConnectionManager;-><init>()V

    .line 86
    iput-object p5, p0, Lorg/jline/builtins/telnet/ConnectionManager;->connectionFilter:Lorg/jline/builtins/telnet/ConnectionFilter;

    .line 87
    iput-object p6, p0, Lorg/jline/builtins/telnet/ConnectionManager;->loginShell:Ljava/lang/String;

    .line 88
    iput-boolean p7, p0, Lorg/jline/builtins/telnet/ConnectionManager;->lineMode:Z

    .line 89
    iput p1, p0, Lorg/jline/builtins/telnet/ConnectionManager;->maxConnections:I

    .line 90
    iput p2, p0, Lorg/jline/builtins/telnet/ConnectionManager;->warningTimeout:I

    .line 91
    iput p3, p0, Lorg/jline/builtins/telnet/ConnectionManager;->disconnectTimeout:I

    .line 92
    iput p4, p0, Lorg/jline/builtins/telnet/ConnectionManager;->housekeepingInterval:I

    .line 93
    return-void
.end method

.method private checkOpenConnections()V
    .locals 10

    .line 287
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->stopping:Z

    if-eqz v0, :cond_0

    .line 288
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->openConnections:Ljava/util/List;

    monitor-enter v0

    .line 292
    :try_start_0
    iget-object v1, p0, Lorg/jline/builtins/telnet/ConnectionManager;->openConnections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/builtins/telnet/Connection;

    .line 293
    .local v2, "conn":Lorg/jline/builtins/telnet/Connection;
    invoke-virtual {v2}, Lorg/jline/builtins/telnet/Connection;->getConnectionData()Lorg/jline/builtins/telnet/ConnectionData;

    move-result-object v3

    .line 295
    .local v3, "cd":Lorg/jline/builtins/telnet/ConnectionData;
    invoke-virtual {v2}, Lorg/jline/builtins/telnet/Connection;->isActive()Z

    move-result v4

    if-nez v4, :cond_1

    .line 296
    invoke-virtual {p0, v2}, Lorg/jline/builtins/telnet/ConnectionManager;->registerClosedConnection(Lorg/jline/builtins/telnet/Connection;)V

    .line 297
    goto :goto_0

    .line 301
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Lorg/jline/builtins/telnet/ConnectionData;->getLastActivity()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 303
    .local v4, "inactivity":J
    iget v6, p0, Lorg/jline/builtins/telnet/ConnectionManager;->warningTimeout:I

    int-to-long v7, v6

    cmp-long v7, v4, v7

    if-lez v7, :cond_3

    .line 305
    iget v7, p0, Lorg/jline/builtins/telnet/ConnectionManager;->disconnectTimeout:I

    add-int/2addr v7, v6

    int-to-long v6, v7

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 307
    sget-object v6, Lorg/jline/builtins/telnet/ConnectionManager;->LOG:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkOpenConnections():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/jline/builtins/telnet/Connection;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exceeded total timeout."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 309
    new-instance v6, Lorg/jline/builtins/telnet/ConnectionEvent;

    sget-object v7, Lorg/jline/builtins/telnet/ConnectionEvent$Type;->CONNECTION_TIMEDOUT:Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    invoke-direct {v6, v2, v7}, Lorg/jline/builtins/telnet/ConnectionEvent;-><init>(Lorg/jline/builtins/telnet/Connection;Lorg/jline/builtins/telnet/ConnectionEvent$Type;)V

    invoke-virtual {v2, v6}, Lorg/jline/builtins/telnet/Connection;->processConnectionEvent(Lorg/jline/builtins/telnet/ConnectionEvent;)V

    goto :goto_1

    .line 313
    :cond_2
    invoke-virtual {v3}, Lorg/jline/builtins/telnet/ConnectionData;->isWarned()Z

    move-result v6

    if-nez v6, :cond_3

    .line 314
    sget-object v6, Lorg/jline/builtins/telnet/ConnectionManager;->LOG:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkOpenConnections():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/jline/builtins/telnet/Connection;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exceeded warning timeout."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 315
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lorg/jline/builtins/telnet/ConnectionData;->setWarned(Z)V

    .line 317
    new-instance v6, Lorg/jline/builtins/telnet/ConnectionEvent;

    sget-object v7, Lorg/jline/builtins/telnet/ConnectionEvent$Type;->CONNECTION_IDLE:Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    invoke-direct {v6, v2, v7}, Lorg/jline/builtins/telnet/ConnectionEvent;-><init>(Lorg/jline/builtins/telnet/Connection;Lorg/jline/builtins/telnet/ConnectionEvent$Type;)V

    invoke-virtual {v2, v6}, Lorg/jline/builtins/telnet/Connection;->processConnectionEvent(Lorg/jline/builtins/telnet/ConnectionEvent;)V

    .line 321
    .end local v2    # "conn":Lorg/jline/builtins/telnet/Connection;
    .end local v3    # "cd":Lorg/jline/builtins/telnet/ConnectionData;
    .end local v4    # "inactivity":J
    :cond_3
    :goto_1
    goto/16 :goto_0

    .line 323
    :cond_4
    monitor-exit v0

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cleanupClosed()V
    .locals 4

    .line 273
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->stopping:Z

    if-eqz v0, :cond_0

    .line 274
    return-void

    .line 277
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->closedConnections:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->closedConnections:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/telnet/Connection;

    .line 279
    .local v0, "nextOne":Lorg/jline/builtins/telnet/Connection;
    sget-object v1, Lorg/jline/builtins/telnet/ConnectionManager;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanupClosed():: Removing closed connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jline/builtins/telnet/Connection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lorg/jline/builtins/telnet/ConnectionManager;->openConnections:Ljava/util/List;

    monitor-enter v1

    .line 281
    :try_start_0
    iget-object v2, p0, Lorg/jline/builtins/telnet/ConnectionManager;->openConnections:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 282
    monitor-exit v1

    .line 283
    .end local v0    # "nextOne":Lorg/jline/builtins/telnet/Connection;
    goto :goto_0

    .line 282
    .restart local v0    # "nextOne":Lorg/jline/builtins/telnet/Connection;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 284
    .end local v0    # "nextOne":Lorg/jline/builtins/telnet/Connection;
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract createConnection(Ljava/lang/ThreadGroup;Lorg/jline/builtins/telnet/ConnectionData;)Lorg/jline/builtins/telnet/Connection;
.end method

.method public getConnection(I)Lorg/jline/builtins/telnet/Connection;
    .locals 2
    .param p1, "idx"    # I

    .line 130
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->openConnections:Ljava/util/List;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lorg/jline/builtins/telnet/ConnectionManager;->openConnections:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/builtins/telnet/Connection;

    monitor-exit v0

    return-object v1

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConnectionFilter()Lorg/jline/builtins/telnet/ConnectionFilter;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->connectionFilter:Lorg/jline/builtins/telnet/ConnectionFilter;

    return-object v0
.end method

.method public getConnectionsByAdddress(Ljava/net/InetAddress;)[Lorg/jline/builtins/telnet/Connection;
    .locals 5
    .param p1, "addr"    # Ljava/net/InetAddress;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jline/builtins/telnet/Connection;>;"
    iget-object v1, p0, Lorg/jline/builtins/telnet/ConnectionManager;->openConnections:Ljava/util/List;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v2, p0, Lorg/jline/builtins/telnet/ConnectionManager;->openConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/builtins/telnet/Connection;

    .line 147
    .local v3, "connection":Lorg/jline/builtins/telnet/Connection;
    invoke-virtual {v3}, Lorg/jline/builtins/telnet/Connection;->getConnectionData()Lorg/jline/builtins/telnet/ConnectionData;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jline/builtins/telnet/ConnectionData;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v3    # "connection":Lorg/jline/builtins/telnet/Connection;
    :cond_0
    goto :goto_0

    .line 151
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jline/builtins/telnet/Connection;

    .line 153
    .local v1, "conns":[Lorg/jline/builtins/telnet/Connection;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jline/builtins/telnet/Connection;

    return-object v2

    .line 151
    .end local v1    # "conns":[Lorg/jline/builtins/telnet/Connection;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getDisconnectTimeout()I
    .locals 1

    .line 337
    iget v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->disconnectTimeout:I

    return v0
.end method

.method public getHousekeepingInterval()I
    .locals 1

    .line 345
    iget v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->housekeepingInterval:I

    return v0
.end method

.method public getLoginShell()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->loginShell:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxConnections()I
    .locals 1

    .line 369
    iget v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->maxConnections:I

    return v0
.end method

.method public getWarningTimeout()I
    .locals 1

    .line 377
    iget v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->warningTimeout:I

    return v0
.end method

.method public isLineMode()Z
    .locals 1

    .line 353
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->lineMode:Z

    return v0
.end method

.method public makeConnection(Ljava/net/Socket;)V
    .locals 6
    .param p1, "insock"    # Ljava/net/Socket;

    .line 199
    sget-object v0, Lorg/jline/builtins/telnet/ConnectionManager;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeConnection()::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->connectionFilter:Lorg/jline/builtins/telnet/ConnectionFilter;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jline/builtins/telnet/ConnectionFilter;->isAllowed(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    sget-object v0, Lorg/jline/builtins/telnet/ConnectionManager;->LOG:Ljava/util/logging/Logger;

    const-string v1, "makeConnection():: Active Filter blocked incoming connection."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 222
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_2

    .line 223
    :catch_0
    move-exception v0

    goto :goto_2

    .line 203
    :cond_1
    :goto_0
    new-instance v0, Lorg/jline/builtins/telnet/ConnectionData;

    invoke-direct {v0, p1, p0}, Lorg/jline/builtins/telnet/ConnectionData;-><init>(Ljava/net/Socket;Lorg/jline/builtins/telnet/ConnectionManager;)V

    .line 204
    .local v0, "newCD":Lorg/jline/builtins/telnet/ConnectionData;
    iget-object v1, p0, Lorg/jline/builtins/telnet/ConnectionManager;->loginShell:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jline/builtins/telnet/ConnectionData;->setLoginShell(Ljava/lang/String;)V

    .line 205
    iget-boolean v1, p0, Lorg/jline/builtins/telnet/ConnectionManager;->lineMode:Z

    invoke-virtual {v0, v1}, Lorg/jline/builtins/telnet/ConnectionData;->setLineMode(Z)V

    .line 206
    iget-object v1, p0, Lorg/jline/builtins/telnet/ConnectionManager;->openConnections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lorg/jline/builtins/telnet/ConnectionManager;->maxConnections:I

    if-ge v1, v2, :cond_2

    .line 208
    iget-object v1, p0, Lorg/jline/builtins/telnet/ConnectionManager;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {p0, v1, v0}, Lorg/jline/builtins/telnet/ConnectionManager;->createConnection(Ljava/lang/ThreadGroup;Lorg/jline/builtins/telnet/ConnectionData;)Lorg/jline/builtins/telnet/Connection;

    move-result-object v1

    .line 210
    .local v1, "con":Lorg/jline/builtins/telnet/Connection;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/jline/builtins/telnet/ConnectionManager;->openConnections:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    move-object v2, v3

    .line 211
    .local v2, "args":[Ljava/lang/Object;
    sget-object v3, Lorg/jline/builtins/telnet/ConnectionManager;->LOG:Ljava/util/logging/Logger;

    const-string v4, "connection #{0,number,integer} made."

    invoke-static {v4, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lorg/jline/builtins/telnet/ConnectionManager;->openConnections:Ljava/util/List;

    monitor-enter v3

    .line 214
    :try_start_1
    iget-object v4, p0, Lorg/jline/builtins/telnet/ConnectionManager;->openConnections:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    invoke-virtual {v1}, Lorg/jline/builtins/telnet/Connection;->start()V

    goto :goto_1

    .line 215
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 219
    .end local v0    # "newCD":Lorg/jline/builtins/telnet/ConnectionData;
    .end local v1    # "con":Lorg/jline/builtins/telnet/Connection;
    .end local v2    # "args":[Ljava/lang/Object;
    :cond_2
    :goto_1
    nop

    .line 227
    :goto_2
    return-void
.end method

.method public openConnectionCount()I
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->openConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public registerClosedConnection(Lorg/jline/builtins/telnet/Connection;)V
    .locals 4
    .param p1, "con"    # Lorg/jline/builtins/telnet/Connection;

    .line 327
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->stopping:Z

    if-eqz v0, :cond_0

    .line 328
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->closedConnections:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    sget-object v0, Lorg/jline/builtins/telnet/ConnectionManager;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerClosedConnection()::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jline/builtins/telnet/Connection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->closedConnections:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_1
    return-void
.end method

.method public run()V
    .locals 4

    .line 246
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/jline/builtins/telnet/ConnectionManager;->cleanupClosed()V

    .line 248
    invoke-direct {p0}, Lorg/jline/builtins/telnet/ConnectionManager;->checkOpenConnections()V

    .line 250
    iget v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->housekeepingInterval:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 251
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->stopping:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 255
    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/jline/builtins/telnet/ConnectionManager;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "run()"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Lorg/jline/builtins/telnet/ConnectionManager;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run():: Ran out "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public setConnectionFilter(Lorg/jline/builtins/telnet/ConnectionFilter;)V
    .locals 0
    .param p1, "filter"    # Lorg/jline/builtins/telnet/ConnectionFilter;

    .line 113
    iput-object p1, p0, Lorg/jline/builtins/telnet/ConnectionManager;->connectionFilter:Lorg/jline/builtins/telnet/ConnectionFilter;

    .line 114
    return-void
.end method

.method public setDisconnectTimeout(I)V
    .locals 0
    .param p1, "disconnectTimeout"    # I

    .line 341
    iput p1, p0, Lorg/jline/builtins/telnet/ConnectionManager;->disconnectTimeout:I

    .line 342
    return-void
.end method

.method public setHousekeepingInterval(I)V
    .locals 0
    .param p1, "housekeepingInterval"    # I

    .line 349
    iput p1, p0, Lorg/jline/builtins/telnet/ConnectionManager;->housekeepingInterval:I

    .line 350
    return-void
.end method

.method public setLineMode(Z)V
    .locals 0
    .param p1, "lineMode"    # Z

    .line 357
    iput-boolean p1, p0, Lorg/jline/builtins/telnet/ConnectionManager;->lineMode:Z

    .line 358
    return-void
.end method

.method public setLoginShell(Ljava/lang/String;)V
    .locals 0
    .param p1, "loginShell"    # Ljava/lang/String;

    .line 365
    iput-object p1, p0, Lorg/jline/builtins/telnet/ConnectionManager;->loginShell:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setMaxConnections(I)V
    .locals 0
    .param p1, "maxConnections"    # I

    .line 373
    iput p1, p0, Lorg/jline/builtins/telnet/ConnectionManager;->maxConnections:I

    .line 374
    return-void
.end method

.method public setWarningTimeout(I)V
    .locals 0
    .param p1, "warningTimeout"    # I

    .line 381
    iput p1, p0, Lorg/jline/builtins/telnet/ConnectionManager;->warningTimeout:I

    .line 382
    return-void
.end method

.method public start()V
    .locals 1

    .line 160
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->thread:Ljava/lang/Thread;

    .line 161
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 162
    return-void
.end method

.method public stop()V
    .locals 7

    .line 168
    sget-object v0, Lorg/jline/builtins/telnet/ConnectionManager;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop()::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->stopping:Z

    .line 172
    :try_start_0
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "iex":Ljava/lang/InterruptedException;
    sget-object v1, Lorg/jline/builtins/telnet/ConnectionManager;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "stop()"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionManager;->openConnections:Ljava/util/List;

    monitor-enter v0

    .line 179
    :try_start_1
    iget-object v1, p0, Lorg/jline/builtins/telnet/ConnectionManager;->openConnections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/builtins/telnet/Connection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .local v2, "tc":Lorg/jline/builtins/telnet/Connection;
    :try_start_2
    invoke-virtual {v2}, Lorg/jline/builtins/telnet/Connection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    goto :goto_2

    .line 183
    :catch_1
    move-exception v3

    .line 184
    .local v3, "exc":Ljava/lang/Exception;
    :try_start_3
    sget-object v4, Lorg/jline/builtins/telnet/ConnectionManager;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v6, "stop()"

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .end local v2    # "tc":Lorg/jline/builtins/telnet/Connection;
    .end local v3    # "exc":Ljava/lang/Exception;
    :goto_2
    goto :goto_1

    .line 187
    :cond_1
    iget-object v1, p0, Lorg/jline/builtins/telnet/ConnectionManager;->openConnections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 188
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    sget-object v0, Lorg/jline/builtins/telnet/ConnectionManager;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop():: Stopped "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 190
    return-void

    .line 188
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
