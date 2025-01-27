.class public Lorg/jpos/util/SysLogListener;
.super Ljava/lang/Object;
.source "SysLogListener.java"

# interfaces
.implements Lorg/jpos/util/LogListener;
.implements Lorg/jpos/core/Configurable;


# static fields
.field public static final LOG_USER:I = 0x10

.field public static final PRI_INFO:I = 0x6

.field public static final SYSLOG_PORT:I = 0x202


# instance fields
.field private cfg:Lorg/jpos/core/Configuration;

.field private defaultFacility:I

.field private defaultSeverity:I

.field private host:Ljava/net/InetAddress;

.field private port:I

.field private prefix:Ljava/lang/String;

.field private socket:Ljava/net/DatagramSocket;

.field private tags:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method


# virtual methods
.method public declared-synchronized log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;
    .locals 9
    .param p1, "ev"    # Lorg/jpos/util/LogEvent;

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/SysLogListener;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jpos/util/SysLogListener;->tags:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lorg/jpos/util/SysLogListener;->cfg:Lorg/jpos/core/Configuration;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".facility"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/jpos/util/SysLogListener;->defaultFacility:I

    invoke-interface {v0, v1, v2}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 71
    .local v0, "facility":I
    iget-object v1, p0, Lorg/jpos/util/SysLogListener;->cfg:Lorg/jpos/core/Configuration;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".severity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/jpos/util/SysLogListener;->defaultSeverity:I

    invoke-interface {v1, v2, v3}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 72
    .local v1, "severity":I
    shl-int/lit8 v2, v0, 0x3

    or-int/2addr v2, v1

    .line 74
    .local v2, "priority":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    iget-object v4, p0, Lorg/jpos/util/SysLogListener;->prefix:Ljava/lang/String;

    const/16 v5, 0x20

    if-eqz v4, :cond_0

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .end local p0    # "this":Lorg/jpos/util/SysLogListener;
    :cond_0
    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getRealm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getPayLoad()Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    :try_start_1
    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getPayLoad()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 88
    .local v6, "iter":Ljava/util/Iterator;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 89
    if-lez v7, :cond_1

    .line 90
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 93
    .end local v6    # "iter":Ljava/util/Iterator;
    .end local v7    # "i":I
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 95
    .local v4, "b":[B
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, v4

    const/16 v7, 0x400

    .line 96
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, p0, Lorg/jpos/util/SysLogListener;->host:Ljava/net/InetAddress;

    iget v8, p0, Lorg/jpos/util/SysLogListener;->port:I

    invoke-direct {v5, v4, v6, v7, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    .local v5, "packet":Ljava/net/DatagramPacket;
    :try_start_3
    iget-object v6, p0, Lorg/jpos/util/SysLogListener;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v6, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    goto :goto_1

    .line 99
    :catch_0
    move-exception v6

    .line 100
    .local v6, "e":Ljava/io/IOException;
    :try_start_4
    const-string v7, "--- SysLogListener error ---"

    invoke-virtual {p1, v7}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p1, v6}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 93
    .end local v4    # "b":[B
    .end local v5    # "packet":Ljava/net/DatagramPacket;
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 104
    .end local v0    # "facility":I
    .end local v1    # "severity":I
    .end local v2    # "priority":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    monitor-exit p0

    return-object p1

    .line 68
    .end local p1    # "ev":Lorg/jpos/util/LogEvent;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lorg/jpos/util/SysLogListener;->cfg:Lorg/jpos/core/Configuration;

    .line 111
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/SysLogListener;->socket:Ljava/net/DatagramSocket;

    .line 112
    const-string v0, "port"

    const/16 v1, 0x202

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jpos/util/SysLogListener;->port:I

    .line 113
    const-string v0, "host"

    const-string v1, "localhost"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/SysLogListener;->host:Ljava/net/InetAddress;

    .line 114
    const-string v0, "facility"

    const/16 v1, 0x10

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jpos/util/SysLogListener;->defaultFacility:I

    .line 115
    const-string v0, "severity"

    const/4 v1, 0x6

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jpos/util/SysLogListener;->defaultSeverity:I

    .line 116
    const-string v0, "tags"

    const-string v1, "audit, syslog"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/SysLogListener;->tags:Ljava/lang/String;

    .line 117
    const-string v0, "prefix"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/SysLogListener;->prefix:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    nop

    .line 121
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v1, v0}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
