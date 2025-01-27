.class Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;
.super Ljava/lang/Object;
.source "RemoteAppenderStreamClient.java"

# interfaces
.implements Lch/qos/logback/classic/net/server/RemoteAppenderClient;


# instance fields
.field private final id:Ljava/lang/String;

.field private final inputStream:Ljava/io/InputStream;

.field private lc:Lch/qos/logback/classic/LoggerContext;

.field private logger:Lch/qos/logback/classic/Logger;

.field private final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->id:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->socket:Ljava/net/Socket;

    .line 65
    iput-object p2, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->inputStream:Ljava/io/InputStream;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "socket"    # Ljava/net/Socket;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->id:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->socket:Ljava/net/Socket;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->inputStream:Ljava/io/InputStream;

    .line 51
    return-void
.end method

.method private createObjectInputStream()Lch/qos/logback/core/net/HardenedObjectInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Lch/qos/logback/classic/net/server/HardenedLoggingEventInputStream;

    iget-object v1, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->inputStream:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lch/qos/logback/classic/net/server/HardenedLoggingEventInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 127
    :cond_0
    new-instance v0, Lch/qos/logback/classic/net/server/HardenedLoggingEventInputStream;

    iget-object v1, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/qos/logback/classic/net/server/HardenedLoggingEventInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 80
    iget-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 81
    return-void

    .line 82
    :cond_0
    invoke-static {v0}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/net/Socket;)V

    .line 83
    return-void
.end method

.method public run()V
    .locals 6

    .line 89
    const-string v0, ": "

    const-string v1, ": connection closed"

    iget-object v2, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/qos/logback/classic/Logger;->info(Ljava/lang/String;)V

    .line 90
    const/4 v2, 0x0

    .line 92
    .local v2, "ois":Lch/qos/logback/core/net/HardenedObjectInputStream;
    :try_start_0
    invoke-direct {p0}, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->createObjectInputStream()Lch/qos/logback/core/net/HardenedObjectInputStream;

    move-result-object v3

    move-object v2, v3

    .line 95
    :goto_0
    invoke-virtual {v2}, Lch/qos/logback/core/net/HardenedObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 98
    .local v3, "event":Lch/qos/logback/classic/spi/ILoggingEvent;
    iget-object v4, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->lc:Lch/qos/logback/classic/LoggerContext;

    invoke-interface {v3}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lch/qos/logback/classic/LoggerContext;->getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v4

    .line 100
    .local v4, "remoteLogger":Lch/qos/logback/classic/Logger;
    invoke-interface {v3}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v5

    invoke-virtual {v4, v5}, Lch/qos/logback/classic/Logger;->isEnabledFor(Lch/qos/logback/classic/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    invoke-virtual {v4, v3}, Lch/qos/logback/classic/Logger;->callAppenders(Lch/qos/logback/classic/spi/ILoggingEvent;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v3    # "event":Lch/qos/logback/classic/spi/ILoggingEvent;
    .end local v4    # "remoteLogger":Lch/qos/logback/classic/Logger;
    :cond_0
    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 112
    :catch_0
    move-exception v3

    .line 113
    .local v3, "ex":Ljava/lang/RuntimeException;
    :try_start_1
    iget-object v4, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lch/qos/logback/classic/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    if-eqz v2, :cond_1

    .line 116
    invoke-static {v2}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 118
    :cond_1
    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->close()V

    .line 119
    iget-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    .line 110
    :catch_1
    move-exception v0

    .line 111
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_2
    iget-object v3, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": unknown event class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lch/qos/logback/classic/Logger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    if-eqz v2, :cond_2

    .line 116
    invoke-static {v2}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 118
    :cond_2
    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->close()V

    .line 119
    iget-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 108
    :catch_2
    move-exception v3

    .line 109
    .local v3, "ex":Ljava/io/IOException;
    :try_start_3
    iget-object v4, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lch/qos/logback/classic/Logger;->info(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    .end local v3    # "ex":Ljava/io/IOException;
    if-eqz v2, :cond_3

    .line 116
    invoke-static {v2}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 118
    :cond_3
    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->close()V

    .line 119
    iget-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 115
    :goto_1
    if-eqz v2, :cond_4

    .line 116
    invoke-static {v2}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 118
    :cond_4
    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->close()V

    .line 119
    iget-object v3, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lch/qos/logback/classic/Logger;->info(Ljava/lang/String;)V

    throw v0

    .line 105
    :catch_3
    move-exception v0

    .line 115
    if-eqz v2, :cond_5

    .line 116
    invoke-static {v2}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 118
    :cond_5
    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->close()V

    .line 119
    iget-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Logger;->info(Ljava/lang/String;)V

    .line 120
    nop

    .line 121
    return-void
.end method

.method public setLoggerContext(Lch/qos/logback/classic/LoggerContext;)V
    .locals 1
    .param p1, "lc"    # Lch/qos/logback/classic/LoggerContext;

    .line 72
    iput-object p1, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->lc:Lch/qos/logback/classic/LoggerContext;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/qos/logback/classic/LoggerContext;->getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
