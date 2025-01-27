.class public abstract Lorg/jline/builtins/telnet/Connection;
.super Ljava/lang/Thread;
.source "Connection.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static number:I


# instance fields
.field private connectionData:Lorg/jline/builtins/telnet/ConnectionData;

.field private dead:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/builtins/telnet/ConnectionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lorg/jline/builtins/telnet/Connection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jline/builtins/telnet/Connection;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Lorg/jline/builtins/telnet/ConnectionData;)V
    .locals 2
    .param p1, "tcg"    # Ljava/lang/ThreadGroup;
    .param p2, "cd"    # Lorg/jline/builtins/telnet/ConnectionData;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lorg/jline/builtins/telnet/Connection;->number:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/jline/builtins/telnet/Connection;->number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 96
    iput-object p2, p0, Lorg/jline/builtins/telnet/Connection;->connectionData:Lorg/jline/builtins/telnet/ConnectionData;

    .line 99
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/telnet/Connection;->listeners:Ljava/util/List;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/builtins/telnet/Connection;->dead:Z

    .line 101
    return-void
.end method


# virtual methods
.method public addConnectionListener(Lorg/jline/builtins/telnet/ConnectionListener;)V
    .locals 1
    .param p1, "cl"    # Lorg/jline/builtins/telnet/ConnectionListener;

    .line 205
    iget-object v0, p0, Lorg/jline/builtins/telnet/Connection;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    .line 147
    :try_start_0
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/Connection;->dead:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 148
    monitor-exit p0

    return-void

    .line 152
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/Connection;->dead:Z

    .line 154
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/Connection;->doClose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    goto :goto_0

    .line 155
    .end local p0    # "this":Lorg/jline/builtins/telnet/Connection;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lorg/jline/builtins/telnet/Connection;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "close()"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    :try_start_3
    iget-object v0, p0, Lorg/jline/builtins/telnet/Connection;->connectionData:Lorg/jline/builtins/telnet/ConnectionData;

    invoke-virtual {v0}, Lorg/jline/builtins/telnet/ConnectionData;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    goto :goto_1

    .line 162
    :catch_1
    move-exception v0

    .line 163
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_4
    sget-object v1, Lorg/jline/builtins/telnet/Connection;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "close()"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 168
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    iget-object v0, p0, Lorg/jline/builtins/telnet/Connection;->connectionData:Lorg/jline/builtins/telnet/ConnectionData;

    invoke-virtual {v0}, Lorg/jline/builtins/telnet/ConnectionData;->getManager()Lorg/jline/builtins/telnet/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jline/builtins/telnet/ConnectionManager;->registerClosedConnection(Lorg/jline/builtins/telnet/Connection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 172
    goto :goto_2

    .line 169
    :catch_2
    move-exception v0

    .line 170
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_6
    sget-object v1, Lorg/jline/builtins/telnet/Connection;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "close()"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 175
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/Connection;->interrupt()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 179
    goto :goto_3

    .line 176
    :catch_3
    move-exception v0

    .line 177
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_8
    sget-object v1, Lorg/jline/builtins/telnet/Connection;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "close()"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3
    sget-object v0, Lorg/jline/builtins/telnet/Connection;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jline/builtins/telnet/Connection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and inactive."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract doClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getConnectionData()Lorg/jline/builtins/telnet/ConnectionData;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/jline/builtins/telnet/Connection;->connectionData:Lorg/jline/builtins/telnet/ConnectionData;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/Connection;->dead:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public processConnectionEvent(Lorg/jline/builtins/telnet/ConnectionEvent;)V
    .locals 4
    .param p1, "ce"    # Lorg/jline/builtins/telnet/ConnectionEvent;

    .line 229
    iget-object v0, p0, Lorg/jline/builtins/telnet/Connection;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/builtins/telnet/ConnectionListener;

    .line 230
    .local v1, "cl":Lorg/jline/builtins/telnet/ConnectionListener;
    sget-object v2, Lorg/jline/builtins/telnet/Connection$1;->$SwitchMap$org$jline$builtins$telnet$ConnectionEvent$Type:[I

    invoke-virtual {p1}, Lorg/jline/builtins/telnet/ConnectionEvent;->getType()Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jline/builtins/telnet/ConnectionEvent$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 244
    :pswitch_0
    invoke-interface {v1, p1}, Lorg/jline/builtins/telnet/ConnectionListener;->connectionTerminalGeometryChanged(Lorg/jline/builtins/telnet/ConnectionEvent;)V

    goto :goto_1

    .line 241
    :pswitch_1
    invoke-interface {v1, p1}, Lorg/jline/builtins/telnet/ConnectionListener;->connectionSentBreak(Lorg/jline/builtins/telnet/ConnectionEvent;)V

    .line 242
    goto :goto_1

    .line 238
    :pswitch_2
    invoke-interface {v1, p1}, Lorg/jline/builtins/telnet/ConnectionListener;->connectionLogoutRequest(Lorg/jline/builtins/telnet/ConnectionEvent;)V

    .line 239
    goto :goto_1

    .line 235
    :pswitch_3
    invoke-interface {v1, p1}, Lorg/jline/builtins/telnet/ConnectionListener;->connectionTimedOut(Lorg/jline/builtins/telnet/ConnectionEvent;)V

    .line 236
    goto :goto_1

    .line 232
    :pswitch_4
    invoke-interface {v1, p1}, Lorg/jline/builtins/telnet/ConnectionListener;->connectionIdle(Lorg/jline/builtins/telnet/ConnectionEvent;)V

    .line 233
    nop

    .line 246
    .end local v1    # "cl":Lorg/jline/builtins/telnet/ConnectionListener;
    :goto_1
    goto :goto_0

    .line 247
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeConnectionListener(Lorg/jline/builtins/telnet/ConnectionListener;)V
    .locals 1
    .param p1, "cl"    # Lorg/jline/builtins/telnet/ConnectionListener;

    .line 216
    iget-object v0, p0, Lorg/jline/builtins/telnet/Connection;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method public run()V
    .locals 4

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/Connection;->doRun()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/Connection;->dead:Z

    if-nez v0, :cond_0

    .line 122
    :goto_0
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/Connection;->close()V

    goto :goto_1

    .line 121
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lorg/jline/builtins/telnet/Connection;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "run()"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .end local v0    # "ex":Ljava/lang/Exception;
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/Connection;->dead:Z

    if-nez v0, :cond_0

    .line 122
    goto :goto_0

    .line 125
    :cond_0
    :goto_1
    sget-object v0, Lorg/jline/builtins/telnet/Connection;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run():: Returning from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jline/builtins/telnet/Connection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 126
    return-void

    .line 121
    :goto_2
    iget-boolean v1, p0, Lorg/jline/builtins/telnet/Connection;->dead:Z

    if-nez v1, :cond_1

    .line 122
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/Connection;->close()V

    .line 124
    :cond_1
    throw v0
.end method
