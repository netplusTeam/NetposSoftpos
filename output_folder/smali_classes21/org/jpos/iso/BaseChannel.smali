.class public abstract Lorg/jpos/iso/BaseChannel;
.super Ljava/util/Observable;
.source "BaseChannel.java"

# interfaces
.implements Lorg/jpos/iso/FilteredChannel;
.implements Lorg/jpos/iso/ClientChannel;
.implements Lorg/jpos/iso/ServerChannel;
.implements Lorg/jpos/iso/FactoryChannel;
.implements Lorg/jpos/util/LogSource;
.implements Lorg/jpos/core/Configurable;
.implements Lorg/jpos/iso/BaseChannelMBean;
.implements Ljava/lang/Cloneable;
.implements Lorg/jpos/core/handlers/exception/ExceptionHandlerAware;


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x493e0


# instance fields
.field private cfg:Lorg/jpos/core/Configuration;

.field protected cnt:[I

.field private connectTimeout:I

.field private final exceptionHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;",
            "Ljava/util/List<",
            "Lorg/jpos/core/handlers/exception/ExceptionHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private expectKeepAlive:Z

.field protected header:[B

.field private host:Ljava/lang/String;

.field private hosts:[Ljava/lang/String;

.field protected incomingFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jpos/iso/ISOFilter;",
            ">;"
        }
    .end annotation
.end field

.field private keepAlive:Z

.field private localIface:Ljava/lang/String;

.field private localPort:I

.field protected logger:Lorg/jpos/util/Logger;

.field private maxPacketLength:I

.field private name:Ljava/lang/String;

.field private nextHostPort:I

.field protected originalRealm:Ljava/lang/String;

.field protected outgoingFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jpos/iso/ISOFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected overrideHeader:Z

.field protected packager:Lorg/jpos/iso/ISOPackager;

.field private port:I

.field private ports:[I

.field protected realm:Ljava/lang/String;

.field private roundRobin:Z

.field protected serverIn:Ljava/io/DataInputStream;

.field protected serverInLock:Ljava/lang/Object;

.field protected serverOut:Ljava/io/DataOutputStream;

.field protected serverOutLock:Ljava/lang/Object;

.field protected serverSocket:Ljava/net/ServerSocket;

.field private soLingerOn:Z

.field private soLingerSeconds:I

.field private socket:Ljava/net/Socket;

.field protected socketFactory:Lorg/jpos/iso/ISOClientSocketFactory;

.field private timeout:I

.field protected usable:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 119
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 82
    const v0, 0x186a0

    iput v0, p0, Lorg/jpos/iso/BaseChannel;->maxPacketLength:I

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/BaseChannel;->soLingerOn:Z

    .line 86
    const/4 v0, 0x5

    iput v0, p0, Lorg/jpos/iso/BaseChannel;->soLingerSeconds:I

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/BaseChannel;->serverInLock:Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/BaseChannel;->serverOutLock:Ljava/lang/Object;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/BaseChannel;->serverSocket:Ljava/net/ServerSocket;

    .line 100
    iput-object v0, p0, Lorg/jpos/iso/BaseChannel;->socketFactory:Lorg/jpos/iso/ISOClientSocketFactory;

    .line 104
    iput-object v0, p0, Lorg/jpos/iso/BaseChannel;->logger:Lorg/jpos/util/Logger;

    .line 105
    iput-object v0, p0, Lorg/jpos/iso/BaseChannel;->realm:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lorg/jpos/iso/BaseChannel;->originalRealm:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lorg/jpos/iso/BaseChannel;->header:[B

    .line 109
    const/4 v1, 0x0

    iput v1, p0, Lorg/jpos/iso/BaseChannel;->nextHostPort:I

    .line 110
    iput-boolean v1, p0, Lorg/jpos/iso/BaseChannel;->roundRobin:Z

    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/jpos/iso/BaseChannel;->exceptionHandlers:Ljava/util/Map;

    .line 120
    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/jpos/iso/BaseChannel;->cnt:[I

    .line 121
    const-string v2, ""

    iput-object v2, p0, Lorg/jpos/iso/BaseChannel;->name:Ljava/lang/String;

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/jpos/iso/BaseChannel;->incomingFilters:Ljava/util/List;

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/jpos/iso/BaseChannel;->outgoingFilters:Ljava/util/List;

    .line 124
    invoke-virtual {p0, v0, v1}, Lorg/jpos/iso/BaseChannel;->setHost(Ljava/lang/String;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jpos/iso/ISOPackager;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "p"    # Lorg/jpos/iso/ISOPackager;

    .line 135
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    .line 136
    invoke-virtual {p0, p1, p2}, Lorg/jpos/iso/BaseChannel;->setHost(Ljava/lang/String;I)V

    .line 137
    invoke-virtual {p0, p3}, Lorg/jpos/iso/BaseChannel;->setPackager(Lorg/jpos/iso/ISOPackager;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOPackager;)V
    .locals 0
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    .line 147
    invoke-virtual {p0, p1}, Lorg/jpos/iso/BaseChannel;->setPackager(Lorg/jpos/iso/ISOPackager;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOPackager;Ljava/net/ServerSocket;)V
    .locals 0
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;
    .param p2, "serverSocket"    # Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;-><init>()V

    .line 161
    invoke-virtual {p0, p1}, Lorg/jpos/iso/BaseChannel;->setPackager(Lorg/jpos/iso/ISOPackager;)V

    .line 162
    invoke-virtual {p0, p2}, Lorg/jpos/iso/BaseChannel;->setServerSocket(Ljava/net/ServerSocket;)V

    .line 163
    return-void
.end method

.method public static getChannel(Ljava/lang/String;)Lorg/jpos/iso/ISOChannel;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channel."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOChannel;

    return-object v0
.end method

.method private isSoLingerForcingImmediateTcpReset()Z
    .locals 1

    .line 1125
    iget-boolean v0, p0, Lorg/jpos/iso/BaseChannel;->soLingerOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jpos/iso/BaseChannel;->soLingerSeconds:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shutdownSupportedBySocket(Ljava/net/Socket;)Z
    .locals 1
    .param p1, "s"    # Ljava/net/Socket;

    .line 1122
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public accept(Ljava/net/ServerSocket;)V
    .locals 3
    .param p1, "s"    # Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    invoke-virtual {p1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 440
    .local v0, "ss":Ljava/net/Socket;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/iso/BaseChannel;->name:Ljava/lang/String;

    .line 441
    invoke-virtual {p0, v0}, Lorg/jpos/iso/BaseChannel;->connect(Ljava/net/Socket;)V

    .line 446
    return-void
.end method

.method public addFilter(Lorg/jpos/iso/ISOFilter;)V
    .locals 1
    .param p1, "filter"    # Lorg/jpos/iso/ISOFilter;

    .line 914
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/BaseChannel;->addFilter(Lorg/jpos/iso/ISOFilter;I)V

    .line 915
    return-void
.end method

.method public addFilter(Lorg/jpos/iso/ISOFilter;I)V
    .locals 1
    .param p1, "filter"    # Lorg/jpos/iso/ISOFilter;
    .param p2, "direction"    # I

    .line 884
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 889
    :pswitch_0
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->outgoingFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    goto :goto_0

    .line 886
    :pswitch_1
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->incomingFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    goto :goto_0

    .line 892
    :pswitch_2
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->incomingFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->outgoingFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addIncomingFilter(Lorg/jpos/iso/ISOFilter;)V
    .locals 1
    .param p1, "filter"    # Lorg/jpos/iso/ISOFilter;

    .line 901
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/BaseChannel;->addFilter(Lorg/jpos/iso/ISOFilter;I)V

    .line 902
    return-void
.end method

.method public addOutgoingFilter(Lorg/jpos/iso/ISOFilter;)V
    .locals 1
    .param p1, "filter"    # Lorg/jpos/iso/ISOFilter;

    .line 907
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/BaseChannel;->addFilter(Lorg/jpos/iso/ISOFilter;I)V

    .line 908
    return-void
.end method

.method protected applyIncomingFilters(Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;
    .locals 1
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "evt"    # Lorg/jpos/util/LogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOFilter$VetoException;
        }
    .end annotation

    .line 962
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lorg/jpos/iso/BaseChannel;->applyIncomingFilters(Lorg/jpos/iso/ISOMsg;[B[BLorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    return-object v0
.end method

.method protected applyIncomingFilters(Lorg/jpos/iso/ISOMsg;[B[BLorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;
    .locals 8
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "header"    # [B
    .param p3, "image"    # [B
    .param p4, "evt"    # Lorg/jpos/util/LogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOFilter$VetoException;
        }
    .end annotation

    .line 967
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->incomingFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/jpos/iso/ISOFilter;

    .line 968
    .local v7, "f":Lorg/jpos/iso/ISOFilter;
    if-eqz p3, :cond_0

    instance-of v1, v7, Lorg/jpos/iso/RawIncomingFilter;

    if-eqz v1, :cond_0

    .line 969
    move-object v1, v7

    check-cast v1, Lorg/jpos/iso/RawIncomingFilter;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lorg/jpos/iso/RawIncomingFilter;->filter(Lorg/jpos/iso/ISOChannel;Lorg/jpos/iso/ISOMsg;[B[BLorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;

    move-result-object p1

    goto :goto_1

    .line 971
    :cond_0
    invoke-interface {v7, p0, p1, p4}, Lorg/jpos/iso/ISOFilter;->filter(Lorg/jpos/iso/ISOChannel;Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;

    move-result-object p1

    .line 972
    .end local v7    # "f":Lorg/jpos/iso/ISOFilter;
    :goto_1
    goto :goto_0

    .line 973
    :cond_1
    return-object p1
.end method

.method protected applyOutgoingFilters(Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "evt"    # Lorg/jpos/util/LogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOFilter$VetoException;
        }
    .end annotation

    .line 955
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->outgoingFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOFilter;

    .line 956
    .local v1, "f":Lorg/jpos/iso/ISOFilter;
    invoke-interface {v1, p0, p1, p2}, Lorg/jpos/iso/ISOFilter;->filter(Lorg/jpos/iso/ISOChannel;Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;

    move-result-object p1

    .end local v1    # "f":Lorg/jpos/iso/ISOFilter;
    goto :goto_0

    .line 957
    :cond_0
    return-object p1
.end method

.method protected applyTimeout()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 382
    iget-boolean v1, p0, Lorg/jpos/iso/BaseChannel;->keepAlive:Z

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 383
    iget v0, p0, Lorg/jpos/iso/BaseChannel;->timeout:I

    if-ltz v0, :cond_0

    .line 384
    iget-object v1, p0, Lorg/jpos/iso/BaseChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 386
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 1129
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/BaseChannel;

    .line 1130
    .local v0, "channel":Lorg/jpos/iso/BaseChannel;
    iget-object v1, p0, Lorg/jpos/iso/BaseChannel;->cnt:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lorg/jpos/iso/BaseChannel;->cnt:[I

    .line 1135
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/jpos/iso/BaseChannel;->serverInLock:Ljava/lang/Object;

    .line 1136
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/jpos/iso/BaseChannel;->serverOutLock:Ljava/lang/Object;

    .line 1137
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jpos/iso/BaseChannel;->serverIn:Ljava/io/DataInputStream;

    .line 1138
    iput-object v1, v0, Lorg/jpos/iso/BaseChannel;->serverOut:Ljava/io/DataOutputStream;

    .line 1139
    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/jpos/iso/BaseChannel;->usable:Z

    .line 1140
    iput-object v1, v0, Lorg/jpos/iso/BaseChannel;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    return-object v0

    .line 1142
    .end local v0    # "channel":Lorg/jpos/iso/BaseChannel;
    :catch_0
    move-exception v0

    .line 1143
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method protected closeSocket()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1101
    const/4 v0, 0x0

    .line 1102
    .local v0, "s":Ljava/net/Socket;
    monitor-enter p0

    .line 1103
    :try_start_0
    iget-object v1, p0, Lorg/jpos/iso/BaseChannel;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 1104
    move-object v0, v1

    .line 1105
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jpos/iso/BaseChannel;->socket:Ljava/net/Socket;

    .line 1107
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    if-eqz v0, :cond_2

    .line 1110
    :try_start_1
    iget-boolean v1, p0, Lorg/jpos/iso/BaseChannel;->soLingerOn:Z

    iget v2, p0, Lorg/jpos/iso/BaseChannel;->soLingerSeconds:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 1111
    invoke-direct {p0, v0}, Lorg/jpos/iso/BaseChannel;->shutdownSupportedBySocket(Ljava/net/Socket;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/jpos/iso/BaseChannel;->isSoLingerForcingImmediateTcpReset()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1112
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1117
    :cond_1
    goto :goto_0

    .line 1113
    :catch_0
    move-exception v1

    .line 1118
    :goto_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 1120
    :cond_2
    return-void

    .line 1107
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public connect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "connect"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 408
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    iget-object v1, p0, Lorg/jpos/iso/BaseChannel;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {p0, v1}, Lorg/jpos/iso/BaseChannel;->accept(Ljava/net/ServerSocket;)V

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/iso/BaseChannel;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " remote host "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/iso/BaseChannel;->socket:Ljava/net/Socket;

    .line 411
    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 414
    :cond_0
    iget-object v1, p0, Lorg/jpos/iso/BaseChannel;->hosts:[Ljava/lang/String;

    iget-object v2, p0, Lorg/jpos/iso/BaseChannel;->ports:[I

    invoke-virtual {p0, v1, v2, v0}, Lorg/jpos/iso/BaseChannel;->newSocket([Ljava/lang/String;[ILorg/jpos/util/LogEvent;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jpos/iso/BaseChannel;->connect(Ljava/net/Socket;)V

    .line 416
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->applyTimeout()V

    .line 417
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 424
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 425
    throw v1

    .line 418
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 419
    .local v1, "e":Ljava/net/ConnectException;
    new-instance v2, Lorg/jpos/util/LogEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "connection-refused"

    invoke-direct {v2, p0, v4, v3}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 419
    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 426
    .end local v1    # "e":Ljava/net/ConnectException;
    :goto_1
    nop

    .line 427
    return-void
.end method

.method protected connect(Ljava/net/Socket;)V
    .locals 5
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lorg/jpos/iso/BaseChannel;->socket:Ljava/net/Socket;

    .line 273
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->applyTimeout()V

    .line 274
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->getLogger()Lorg/jpos/util/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->getOriginalRealm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 275
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 276
    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {p0, v0, v1}, Lorg/jpos/iso/BaseChannel;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->serverInLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    .line 280
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/jpos/iso/BaseChannel;->serverIn:Ljava/io/DataInputStream;

    .line 282
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 283
    iget-object v1, p0, Lorg/jpos/iso/BaseChannel;->serverOutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_1
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 285
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/16 v4, 0x800

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/jpos/iso/BaseChannel;->serverOut:Ljava/io/DataOutputStream;

    .line 287
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->postConnectHook()V

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/BaseChannel;->usable:Z

    .line 290
    iget-object v1, p0, Lorg/jpos/iso/BaseChannel;->cnt:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/2addr v3, v0

    aput v3, v1, v2

    .line 291
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->setChanged()V

    .line 292
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->notifyObservers()V

    .line 293
    return-void

    .line 287
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 282
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method protected createISOMsg()Lorg/jpos/iso/ISOMsg;
    .locals 1

    .line 679
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->packager:Lorg/jpos/iso/ISOPackager;

    invoke-interface {v0}, Lorg/jpos/iso/ISOPackager;->createISOMsg()Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    return-object v0
.end method

.method protected createMsg()Lorg/jpos/iso/ISOMsg;
    .locals 1

    .line 676
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->createISOMsg()Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "disconnect"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 810
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    iget-object v1, p0, Lorg/jpos/iso/BaseChannel;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_0

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/iso/BaseChannel;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " remote host "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/iso/BaseChannel;->serverSocket:Ljava/net/ServerSocket;

    .line 812
    invoke-virtual {v2}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 811
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 814
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jpos/iso/BaseChannel;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jpos/iso/BaseChannel;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 816
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/jpos/iso/BaseChannel;->usable:Z

    .line 817
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->setChanged()V

    .line 818
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->notifyObservers()V

    .line 819
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->closeSocket()V

    .line 820
    iget-object v1, p0, Lorg/jpos/iso/BaseChannel;->serverIn:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 822
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 823
    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 824
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_1
    iput-object v2, p0, Lorg/jpos/iso/BaseChannel;->serverIn:Ljava/io/DataInputStream;

    .line 826
    :cond_1
    iget-object v1, p0, Lorg/jpos/iso/BaseChannel;->serverOut:Ljava/io/DataOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_2

    .line 828
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 829
    goto :goto_2

    :catch_1
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 830
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_2
    iput-object v2, p0, Lorg/jpos/iso/BaseChannel;->serverOut:Ljava/io/DataOutputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 836
    :cond_2
    nop

    .line 837
    iput-object v2, p0, Lorg/jpos/iso/BaseChannel;->socket:Ljava/net/Socket;

    .line 838
    return-void

    .line 832
    :catch_2
    move-exception v1

    .line 833
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 834
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 835
    throw v1
.end method

.method public getBytes([B)I
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 801
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->serverIn:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public getConfiguration()Lorg/jpos/core/Configuration;
    .locals 1

    .line 1036
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->cfg:Lorg/jpos/core/Configuration;

    return-object v0
.end method

.method public getCounters()[I
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->cnt:[I

    return-object v0
.end method

.method protected getDynamicHeader([B)Lorg/jpos/iso/ISOHeader;
    .locals 1
    .param p1, "image"    # [B

    .line 494
    if-eqz p1, :cond_0

    new-instance v0, Lorg/jpos/iso/header/BaseHeader;

    invoke-direct {v0, p1}, Lorg/jpos/iso/header/BaseHeader;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getDynamicPackager(Lorg/jpos/iso/ISOMsg;)Lorg/jpos/iso/ISOPackager;
    .locals 1
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;

    .line 463
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->packager:Lorg/jpos/iso/ISOPackager;

    return-object v0
.end method

.method protected getDynamicPackager([B)Lorg/jpos/iso/ISOPackager;
    .locals 1
    .param p1, "image"    # [B

    .line 473
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->packager:Lorg/jpos/iso/ISOPackager;

    return-object v0
.end method

.method protected getDynamicPackager([B[B)Lorg/jpos/iso/ISOPackager;
    .locals 1
    .param p1, "header"    # [B
    .param p2, "image"    # [B

    .line 483
    invoke-virtual {p0, p2}, Lorg/jpos/iso/BaseChannel;->getDynamicPackager([B)Lorg/jpos/iso/ISOPackager;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionHandlers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;",
            "Ljava/util/List<",
            "Lorg/jpos/core/handlers/exception/ExceptionHandler;",
            ">;>;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->exceptionHandlers:Ljava/util/Map;

    return-object v0
.end method

.method public getHeader()[B
    .locals 1

    .line 1057
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->header:[B

    return-object v0
.end method

.method protected getHeaderLength()I
    .locals 1

    .line 558
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->header:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getHeaderLength(Lorg/jpos/iso/ISOMsg;)I
    .locals 1
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;

    .line 563
    iget-boolean v0, p0, Lorg/jpos/iso/BaseChannel;->overrideHeader:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->getHeaderLength()I

    move-result v0

    .line 563
    :goto_0
    return v0
.end method

.method protected getHeaderLength([B)I
    .locals 1
    .param p1, "b"    # [B

    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getIncomingFilters()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/jpos/iso/ISOFilter;",
            ">;"
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->incomingFilters:Ljava/util/List;

    return-object v0
.end method

.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 857
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method public getMaxPacketLength()I
    .locals 1

    .line 1095
    iget v0, p0, Lorg/jpos/iso/BaseChannel;->maxPacketLength:I

    return v0
.end method

.method protected getMessage([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->serverIn:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 553
    return-void
.end method

.method protected getMessageLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 555
    const/4 v0, -0x1

    return v0
.end method

.method protected getMessageTrailer(Lorg/jpos/iso/ISOMsg;)V
    .locals 0
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->getMessageTrailler()V

    .line 549
    return-void
.end method

.method protected getMessageTrailler()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 876
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalRealm()Ljava/lang/String;
    .locals 1

    .line 860
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->originalRealm:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 861
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    nop

    .line 860
    :goto_0
    return-object v0
.end method

.method public getOutgoingFilters()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/jpos/iso/ISOFilter;",
            ">;"
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->outgoingFilters:Ljava/util/List;

    return-object v0
.end method

.method public getPackager()Lorg/jpos/iso/ISOPackager;
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->packager:Lorg/jpos/iso/ISOPackager;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 212
    iget v0, p0, Lorg/jpos/iso/BaseChannel;->port:I

    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 854
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getServerSocket()Ljava/net/ServerSocket;
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public getSoLingerSeconds()I
    .locals 1

    .line 399
    iget v0, p0, Lorg/jpos/iso/BaseChannel;->soLingerSeconds:I

    return v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 353
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getSocketFactory()Lorg/jpos/iso/ISOClientSocketFactory;
    .locals 1

    .line 1083
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->socketFactory:Lorg/jpos/iso/ISOClientSocketFactory;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 373
    iget v0, p0, Lorg/jpos/iso/BaseChannel;->timeout:I

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/jpos/iso/BaseChannel;->usable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverrideHeader()Z
    .locals 1

    .line 1063
    iget-boolean v0, p0, Lorg/jpos/iso/BaseChannel;->overrideHeader:Z

    return v0
.end method

.method protected isRejected([B)Z
    .locals 1
    .param p1, "b"    # [B

    .line 665
    const/4 v0, 0x0

    return v0
.end method

.method public isSoLingerOn()Z
    .locals 1

    .line 396
    iget-boolean v0, p0, Lorg/jpos/iso/BaseChannel;->soLingerOn:Z

    return v0
.end method

.method protected newSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->socketFactory:Lorg/jpos/iso/ISOClientSocketFactory;

    if-eqz v0, :cond_0

    .line 310
    invoke-interface {v0, p1, p2}, Lorg/jpos/iso/ISOClientSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    .line 312
    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 313
    .local v0, "s":Ljava/net/Socket;
    iget-object v1, p0, Lorg/jpos/iso/BaseChannel;->localIface:Ljava/lang/String;

    if-nez v1, :cond_1

    iget v2, p0, Lorg/jpos/iso/BaseChannel;->localPort:I

    if-eqz v2, :cond_3

    .line 314
    :cond_1
    if-nez v1, :cond_2

    .line 315
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0

    :cond_2
    nop

    .line 316
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    :goto_0
    nop

    .line 317
    .local v1, "addr":Ljava/net/InetAddress;
    new-instance v2, Ljava/net/InetSocketAddress;

    iget v3, p0, Lorg/jpos/iso/BaseChannel;->localPort:I

    invoke-direct {v2, v1, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 319
    .end local v1    # "addr":Ljava/net/InetAddress;
    :cond_3
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v2, p0, Lorg/jpos/iso/BaseChannel;->connectTimeout:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    return-object v0

    .line 325
    .end local v0    # "s":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Lorg/jpos/iso/ISOException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected newSocket([Ljava/lang/String;[ILorg/jpos/util/LogEvent;)Ljava/net/Socket;
    .locals 5
    .param p1, "hosts"    # [Ljava/lang/String;
    .param p2, "ports"    # [I
    .param p3, "evt"    # Lorg/jpos/util/LogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "s":Ljava/net/Socket;
    iget-boolean v1, p0, Lorg/jpos/iso/BaseChannel;->roundRobin:Z

    if-nez v1, :cond_0

    .line 334
    const/4 v1, 0x0

    iput v1, p0, Lorg/jpos/iso/BaseChannel;->nextHostPort:I

    .line 335
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 337
    :try_start_0
    iget v2, p0, Lorg/jpos/iso/BaseChannel;->nextHostPort:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jpos/iso/BaseChannel;->nextHostPort:I

    array-length v3, p1

    rem-int/2addr v2, v3

    .line 338
    .local v2, "ii":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 339
    aget-object v3, p1, v2

    aget v4, p2, v2

    invoke-virtual {p0, v3, v4}, Lorg/jpos/iso/BaseChannel;->newSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 340
    goto :goto_1

    .line 341
    .end local v2    # "ii":I
    :catch_0
    move-exception v2

    .line 342
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 335
    .end local v2    # "e":Ljava/io/IOException;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 347
    return-object v0

    .line 346
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected pack(Lorg/jpos/iso/ISOMsg;)[B
    .locals 1
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 979
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->pack()[B

    move-result-object v0

    return-object v0
.end method

.method protected postConnectHook()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    return-void
.end method

.method protected readHeader(I)[B
    .locals 3
    .param p1, "hLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 690
    new-array v0, p1, [B

    .line 691
    .local v0, "header":[B
    iget-object v1, p0, Lorg/jpos/iso/BaseChannel;->serverIn:Ljava/io/DataInputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 692
    return-object v0
.end method

.method public receive()Lorg/jpos/iso/ISOMsg;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 701
    const/4 v0, 0x0

    .line 702
    .local v0, "b":[B
    const/4 v1, 0x0

    .line 703
    .local v1, "header":[B
    new-instance v2, Lorg/jpos/util/LogEvent;

    const-string v3, "receive"

    invoke-direct {v2, p0, v3}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 704
    .local v2, "evt":Lorg/jpos/util/LogEvent;
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->createMsg()Lorg/jpos/iso/ISOMsg;

    move-result-object v3

    .line 706
    .local v3, "m":Lorg/jpos/iso/ISOMsg;
    invoke-virtual {v3, p0}, Lorg/jpos/iso/ISOMsg;->setSource(Lorg/jpos/iso/ISOSource;)V

    .line 708
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 711
    iget-object v4, p0, Lorg/jpos/iso/BaseChannel;->serverInLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 712
    :try_start_1
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->getMessageLength()I

    move-result v5

    .line 713
    .local v5, "len":I
    iget-boolean v6, p0, Lorg/jpos/iso/BaseChannel;->expectKeepAlive:Z

    if-eqz v6, :cond_0

    .line 714
    :goto_0
    if-nez v5, :cond_0

    .line 716
    new-instance v6, Lorg/jpos/util/LogEvent;

    const-string v7, "receive"

    const-string v8, "Zero length keep alive message received"

    invoke-direct {v6, p0, v7, v8}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v6}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 717
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->getMessageLength()I

    move-result v6

    move v5, v6

    goto :goto_0

    .line 720
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->getHeaderLength()I

    move-result v6

    .line 722
    .local v6, "hLen":I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_2

    .line 723
    if-lez v6, :cond_1

    .line 724
    invoke-virtual {p0, v6}, Lorg/jpos/iso/BaseChannel;->readHeader(I)[B

    move-result-object v7

    move-object v1, v7

    .line 726
    :cond_1
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->streamReceive()[B

    move-result-object v7

    move-object v0, v7

    goto :goto_1

    .line 728
    :cond_2
    if-lez v5, :cond_5

    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->getMaxPacketLength()I

    move-result v7

    if-gt v5, v7, :cond_5

    .line 729
    if-lez v6, :cond_3

    .line 732
    invoke-virtual {p0, v6}, Lorg/jpos/iso/BaseChannel;->readHeader(I)[B

    move-result-object v7

    move-object v1, v7

    .line 733
    array-length v7, v1

    sub-int/2addr v5, v7

    .line 735
    :cond_3
    new-array v7, v5, [B

    move-object v0, v7

    .line 736
    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7, v5}, Lorg/jpos/iso/BaseChannel;->getMessage([BII)V

    .line 737
    invoke-virtual {p0, v3}, Lorg/jpos/iso/BaseChannel;->getMessageTrailer(Lorg/jpos/iso/ISOMsg;)V

    .line 742
    .end local v5    # "len":I
    .end local v6    # "hLen":I
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    :try_start_2
    invoke-virtual {p0, v1, v0}, Lorg/jpos/iso/BaseChannel;->getDynamicPackager([B[B)Lorg/jpos/iso/ISOPackager;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jpos/iso/ISOMsg;->setPackager(Lorg/jpos/iso/ISOPackager;)V

    .line 744
    invoke-virtual {p0, v1}, Lorg/jpos/iso/BaseChannel;->getDynamicHeader([B)Lorg/jpos/iso/ISOHeader;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jpos/iso/ISOMsg;->setHeader(Lorg/jpos/iso/ISOHeader;)V

    .line 745
    array-length v4, v0

    if-lez v4, :cond_4

    invoke-virtual {p0, v1}, Lorg/jpos/iso/BaseChannel;->shouldIgnore([B)Z

    move-result v4

    if-nez v4, :cond_4

    .line 746
    invoke-virtual {p0, v3, v0}, Lorg/jpos/iso/BaseChannel;->unpack(Lorg/jpos/iso/ISOMsg;[B)V

    .line 747
    :cond_4
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/jpos/iso/ISOMsg;->setDirection(I)V

    .line 748
    invoke-virtual {v2, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 749
    invoke-virtual {p0, v3, v1, v0, v2}, Lorg/jpos/iso/BaseChannel;->applyIncomingFilters(Lorg/jpos/iso/ISOMsg;[B[BLorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;

    move-result-object v5

    move-object v3, v5

    .line 750
    invoke-virtual {v3, v4}, Lorg/jpos/iso/ISOMsg;->setDirection(I)V

    .line 751
    iget-object v5, p0, Lorg/jpos/iso/BaseChannel;->cnt:[I

    const/4 v6, 0x2

    aget v7, v5, v6

    add-int/2addr v7, v4

    aput v7, v5, v6

    .line 752
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->setChanged()V

    .line 753
    invoke-virtual {p0, v3}, Lorg/jpos/iso/BaseChannel;->notifyObservers(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 789
    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 790
    nop

    .line 791
    return-object v3

    .line 740
    .restart local v5    # "len":I
    .restart local v6    # "hLen":I
    :cond_5
    :try_start_3
    new-instance v7, Lorg/jpos/iso/ISOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " seems strange - maxPacketLength = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 741
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->getMaxPacketLength()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "b":[B
    .end local v1    # "header":[B
    .end local v2    # "evt":Lorg/jpos/util/LogEvent;
    .end local v3    # "m":Lorg/jpos/iso/ISOMsg;
    throw v7

    .line 742
    .end local v5    # "len":I
    .end local v6    # "hLen":I
    .restart local v0    # "b":[B
    .restart local v1    # "header":[B
    .restart local v2    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v3    # "m":Lorg/jpos/iso/ISOMsg;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "b":[B
    .end local v1    # "header":[B
    .end local v2    # "evt":Lorg/jpos/util/LogEvent;
    .end local v3    # "m":Lorg/jpos/iso/ISOMsg;
    :try_start_4
    throw v5

    .line 709
    .restart local v0    # "b":[B
    .restart local v1    # "header":[B
    .restart local v2    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v3    # "m":Lorg/jpos/iso/ISOMsg;
    :cond_6
    new-instance v4, Ljava/io/IOException;

    const-string v5, "unconnected ISOChannel"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "b":[B
    .end local v1    # "header":[B
    .end local v2    # "evt":Lorg/jpos/util/LogEvent;
    .end local v3    # "m":Lorg/jpos/iso/ISOMsg;
    throw v4
    :try_end_4
    .catch Lorg/jpos/iso/ISOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 789
    .restart local v0    # "b":[B
    .restart local v1    # "header":[B
    .restart local v2    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v3    # "m":Lorg/jpos/iso/ISOMsg;
    :catchall_1
    move-exception v4

    goto/16 :goto_2

    .line 783
    :catch_0
    move-exception v4

    .line 784
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->closeSocket()V

    .line 785
    invoke-virtual {v2, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 786
    invoke-virtual {v2, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 787
    new-instance v5, Ljava/io/IOException;

    const-string v6, "unexpected exception"

    invoke-direct {v5, v6, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "b":[B
    .end local v1    # "header":[B
    .end local v2    # "evt":Lorg/jpos/util/LogEvent;
    .end local v3    # "m":Lorg/jpos/iso/ISOMsg;
    throw v5

    .line 778
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "b":[B
    .restart local v1    # "header":[B
    .restart local v2    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v3    # "m":Lorg/jpos/iso/ISOMsg;
    :catch_1
    move-exception v4

    .line 779
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->closeSocket()V

    .line 780
    iget-boolean v5, p0, Lorg/jpos/iso/BaseChannel;->usable:Z

    if-eqz v5, :cond_7

    .line 781
    invoke-virtual {v2, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 782
    :cond_7
    nop

    .end local v0    # "b":[B
    .end local v1    # "header":[B
    .end local v2    # "evt":Lorg/jpos/util/LogEvent;
    .end local v3    # "m":Lorg/jpos/iso/ISOMsg;
    throw v4

    .line 774
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "b":[B
    .restart local v1    # "header":[B
    .restart local v2    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v3    # "m":Lorg/jpos/iso/ISOMsg;
    :catch_2
    move-exception v4

    .line 775
    .local v4, "e":Ljava/io/InterruptedIOException;
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->closeSocket()V

    .line 776
    const-string v5, "<io-timeout/>"

    invoke-virtual {v2, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 777
    nop

    .end local v0    # "b":[B
    .end local v1    # "header":[B
    .end local v2    # "evt":Lorg/jpos/util/LogEvent;
    .end local v3    # "m":Lorg/jpos/iso/ISOMsg;
    throw v4

    .line 769
    .end local v4    # "e":Ljava/io/InterruptedIOException;
    .restart local v0    # "b":[B
    .restart local v1    # "header":[B
    .restart local v2    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v3    # "m":Lorg/jpos/iso/ISOMsg;
    :catch_3
    move-exception v4

    .line 770
    .local v4, "e":Ljava/net/SocketException;
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->closeSocket()V

    .line 771
    iget-boolean v5, p0, Lorg/jpos/iso/BaseChannel;->usable:Z

    if-eqz v5, :cond_8

    .line 772
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<peer-disconnect>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</peer-disconnect>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 773
    :cond_8
    nop

    .end local v0    # "b":[B
    .end local v1    # "header":[B
    .end local v2    # "evt":Lorg/jpos/util/LogEvent;
    .end local v3    # "m":Lorg/jpos/iso/ISOMsg;
    throw v4

    .line 765
    .end local v4    # "e":Ljava/net/SocketException;
    .restart local v0    # "b":[B
    .restart local v1    # "header":[B
    .restart local v2    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v3    # "m":Lorg/jpos/iso/ISOMsg;
    :catch_4
    move-exception v4

    .line 766
    .local v4, "e":Ljava/io/EOFException;
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->closeSocket()V

    .line 767
    const-string v5, "<peer-disconnect/>"

    invoke-virtual {v2, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 768
    nop

    .end local v0    # "b":[B
    .end local v1    # "header":[B
    .end local v2    # "evt":Lorg/jpos/util/LogEvent;
    .end local v3    # "m":Lorg/jpos/iso/ISOMsg;
    throw v4

    .line 754
    .end local v4    # "e":Ljava/io/EOFException;
    .restart local v0    # "b":[B
    .restart local v1    # "header":[B
    .restart local v2    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v3    # "m":Lorg/jpos/iso/ISOMsg;
    :catch_5
    move-exception v4

    .line 755
    .local v4, "e":Lorg/jpos/iso/ISOException;
    invoke-virtual {v2, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 756
    if-eqz v1, :cond_9

    .line 757
    const-string v5, "--- header ---"

    invoke-virtual {v2, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 758
    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->hexdump([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 760
    :cond_9
    if-eqz v0, :cond_a

    .line 761
    const-string v5, "--- data ---"

    invoke-virtual {v2, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 762
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hexdump([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 764
    :cond_a
    nop

    .end local v0    # "b":[B
    .end local v1    # "header":[B
    .end local v2    # "evt":Lorg/jpos/util/LogEvent;
    .end local v3    # "m":Lorg/jpos/iso/ISOMsg;
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 789
    .end local v4    # "e":Lorg/jpos/iso/ISOException;
    .restart local v0    # "b":[B
    .restart local v1    # "header":[B
    .restart local v2    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v3    # "m":Lorg/jpos/iso/ISOMsg;
    :goto_2
    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 790
    throw v4
.end method

.method public reconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 844
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->disconnect()V

    .line 845
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->connect()V

    .line 846
    return-void
.end method

.method public removeFilter(Lorg/jpos/iso/ISOFilter;)V
    .locals 1
    .param p1, "filter"    # Lorg/jpos/iso/ISOFilter;

    .line 938
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/BaseChannel;->removeFilter(Lorg/jpos/iso/ISOFilter;I)V

    .line 939
    return-void
.end method

.method public removeFilter(Lorg/jpos/iso/ISOFilter;I)V
    .locals 1
    .param p1, "filter"    # Lorg/jpos/iso/ISOFilter;
    .param p2, "direction"    # I

    .line 921
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 926
    :pswitch_0
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->outgoingFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 927
    goto :goto_0

    .line 923
    :pswitch_1
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->incomingFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 924
    goto :goto_0

    .line 929
    :pswitch_2
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->incomingFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 930
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->outgoingFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 933
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeIncomingFilter(Lorg/jpos/iso/ISOFilter;)V
    .locals 1
    .param p1, "filter"    # Lorg/jpos/iso/ISOFilter;

    .line 944
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/BaseChannel;->removeFilter(Lorg/jpos/iso/ISOFilter;I)V

    .line 945
    return-void
.end method

.method public removeOutgoingFilter(Lorg/jpos/iso/ISOFilter;)V
    .locals 1
    .param p1, "filter"    # Lorg/jpos/iso/ISOFilter;

    .line 950
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/BaseChannel;->removeFilter(Lorg/jpos/iso/ISOFilter;I)V

    .line 951
    return-void
.end method

.method public resetCounters()V
    .locals 3

    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 250
    iget-object v1, p0, Lorg/jpos/iso/BaseChannel;->cnt:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public send(Lorg/jpos/iso/ISOMsg;)V
    .locals 6
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 585
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "send"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 587
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOMsg;->setDirection(I)V

    .line 590
    invoke-virtual {p0, p1}, Lorg/jpos/iso/BaseChannel;->getDynamicPackager(Lorg/jpos/iso/ISOMsg;)Lorg/jpos/iso/ISOPackager;

    move-result-object v2

    .line 591
    .local v2, "p":Lorg/jpos/iso/ISOPackager;
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOMsg;->setPackager(Lorg/jpos/iso/ISOPackager;)V

    .line 592
    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/BaseChannel;->applyOutgoingFilters(Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;

    move-result-object v3

    move-object p1, v3

    .line 593
    invoke-virtual {v0, p1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 594
    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOMsg;->setDirection(I)V

    .line 595
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOMsg;->setPackager(Lorg/jpos/iso/ISOPackager;)V

    .line 596
    invoke-virtual {p0, p1}, Lorg/jpos/iso/BaseChannel;->pack(Lorg/jpos/iso/ISOMsg;)[B

    move-result-object v1

    .line 597
    .local v1, "b":[B
    iget-object v3, p0, Lorg/jpos/iso/BaseChannel;->serverOutLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Lorg/jpos/iso/ISOFilter$VetoException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 598
    :try_start_1
    array-length v4, v1

    invoke-virtual {p0, p1}, Lorg/jpos/iso/BaseChannel;->getHeaderLength(Lorg/jpos/iso/ISOMsg;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lorg/jpos/iso/BaseChannel;->sendMessageLength(I)V

    .line 599
    array-length v4, v1

    invoke-virtual {p0, p1, v4}, Lorg/jpos/iso/BaseChannel;->sendMessageHeader(Lorg/jpos/iso/ISOMsg;I)V

    .line 600
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {p0, v1, v4, v5}, Lorg/jpos/iso/BaseChannel;->sendMessage([BII)V

    .line 601
    invoke-virtual {p0, p1, v1}, Lorg/jpos/iso/BaseChannel;->sendMessageTrailer(Lorg/jpos/iso/ISOMsg;[B)V

    .line 602
    iget-object v4, p0, Lorg/jpos/iso/BaseChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 603
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    :try_start_2
    iget-object v3, p0, Lorg/jpos/iso/BaseChannel;->cnt:[I

    const/4 v4, 0x1

    aget v5, v3, v4

    add-int/2addr v5, v4

    aput v5, v3, v4

    .line 605
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->setChanged()V

    .line 606
    invoke-virtual {p0, p1}, Lorg/jpos/iso/BaseChannel;->notifyObservers(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/jpos/iso/ISOFilter$VetoException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/jpos/iso/ISOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 622
    .end local v1    # "b":[B
    .end local v2    # "p":Lorg/jpos/iso/ISOPackager;
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 623
    nop

    .line 624
    return-void

    .line 603
    .restart local v1    # "b":[B
    .restart local v2    # "p":Lorg/jpos/iso/ISOPackager;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOMsg;
    :try_start_4
    throw v4

    .line 588
    .end local v1    # "b":[B
    .end local v2    # "p":Lorg/jpos/iso/ISOPackager;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOMsg;
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "unconnected ISOChannel"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOMsg;
    throw v1
    :try_end_4
    .catch Lorg/jpos/iso/ISOFilter$VetoException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/jpos/iso/ISOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 622
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOMsg;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 618
    :catch_0
    move-exception v1

    .line 619
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 620
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unexpected exception"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOMsg;
    throw v2

    .line 615
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOMsg;
    :catch_1
    move-exception v1

    .line 616
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 617
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOMsg;
    throw v1

    .line 612
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOMsg;
    :catch_2
    move-exception v1

    .line 613
    .local v1, "e":Lorg/jpos/iso/ISOException;
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 614
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOMsg;
    throw v1

    .line 607
    .end local v1    # "e":Lorg/jpos/iso/ISOException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOMsg;
    :catch_3
    move-exception v1

    .line 609
    .local v1, "e":Lorg/jpos/iso/ISOFilter$VetoException;
    invoke-virtual {v0, p1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 610
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 611
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOMsg;
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 622
    .end local v1    # "e":Lorg/jpos/iso/ISOFilter$VetoException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOMsg;
    :goto_0
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 623
    throw v1
.end method

.method public send([B)V
    .locals 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 635
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "send"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 637
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    iget-object v1, p0, Lorg/jpos/iso/BaseChannel;->serverOutLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 640
    :try_start_1
    iget-object v2, p0, Lorg/jpos/iso/BaseChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 641
    iget-object v2, p0, Lorg/jpos/iso/BaseChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 642
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    :try_start_2
    iget-object v1, p0, Lorg/jpos/iso/BaseChannel;->cnt:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    add-int/2addr v3, v2

    aput v3, v1, v2

    .line 644
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->setChanged()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 649
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 650
    nop

    .line 651
    return-void

    .line 642
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "b":[B
    :try_start_4
    throw v2

    .line 638
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "b":[B
    :cond_0
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "unconnected ISOChannel"

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "b":[B
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 649
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "b":[B
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 645
    :catch_0
    move-exception v1

    .line 646
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 647
    new-instance v2, Lorg/jpos/iso/ISOException;

    const-string v3, "unexpected exception"

    invoke-direct {v2, v3, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "b":[B
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 649
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "b":[B
    :goto_0
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 650
    throw v1
.end method

.method public sendKeepAlive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->serverOutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/jpos/iso/BaseChannel;->sendMessageLength(I)V

    .line 659
    iget-object v1, p0, Lorg/jpos/iso/BaseChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 660
    monitor-exit v0

    .line 662
    return-void

    .line 660
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected sendMessage([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 574
    return-void
.end method

.method protected sendMessageHeader(Lorg/jpos/iso/ISOMsg;I)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->isOverrideHeader()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    .line 501
    :cond_0
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->header:[B

    if-eqz v0, :cond_1

    .line 502
    iget-object v1, p0, Lorg/jpos/iso/BaseChannel;->serverOut:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 503
    :cond_1
    :goto_0
    return-void
.end method

.method protected sendMessageLength(I)V
    .locals 0
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    return-void
.end method

.method protected sendMessageTrailer(Lorg/jpos/iso/ISOMsg;[B)V
    .locals 0
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    invoke-virtual {p0, p1, p2}, Lorg/jpos/iso/BaseChannel;->sendMessageTrailler(Lorg/jpos/iso/ISOMsg;[B)V

    .line 531
    return-void
.end method

.method protected sendMessageTrailler(Lorg/jpos/iso/ISOMsg;I)V
    .locals 0
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    return-void
.end method

.method protected sendMessageTrailler(Lorg/jpos/iso/ISOMsg;[B)V
    .locals 1
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    array-length v0, p2

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/BaseChannel;->sendMessageTrailler(Lorg/jpos/iso/ISOMsg;I)V

    .line 520
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 10
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 998
    iput-object p1, p0, Lorg/jpos/iso/BaseChannel;->cfg:Lorg/jpos/core/Configuration;

    .line 999
    const-string v0, "host"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    .local v0, "h":Ljava/lang/String;
    const-string v1, "port"

    invoke-interface {p1, v1}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1001
    .local v1, "port":I
    const-string v2, "max-packet-length"

    const v3, 0x186a0

    invoke-interface {p1, v2, v3}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/jpos/iso/BaseChannel;->maxPacketLength:I

    .line 1002
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1003
    if-eqz v1, :cond_1

    .line 1006
    invoke-virtual {p0, v0, v1}, Lorg/jpos/iso/BaseChannel;->setHost(Ljava/lang/String;I)V

    .line 1007
    const/4 v3, 0x0

    const-string v4, "local-iface"

    invoke-interface {p1, v4, v3}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "local-port"

    invoke-interface {p1, v4}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lorg/jpos/iso/BaseChannel;->setLocalAddress(Ljava/lang/String;I)V

    .line 1008
    const-string v3, "alternate-host"

    invoke-interface {p1, v3}, Lorg/jpos/core/Configuration;->getAll(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1009
    .local v3, "altHosts":[Ljava/lang/String;
    const-string v4, "alternate-port"

    invoke-interface {p1, v4}, Lorg/jpos/core/Configuration;->getInts(Ljava/lang/String;)[I

    move-result-object v4

    .line 1010
    .local v4, "altPorts":[I
    array-length v5, v3

    const/4 v6, 0x1

    add-int/2addr v5, v6

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lorg/jpos/iso/BaseChannel;->hosts:[Ljava/lang/String;

    .line 1011
    array-length v7, v4

    add-int/2addr v7, v6

    new-array v7, v7, [I

    iput-object v7, p0, Lorg/jpos/iso/BaseChannel;->ports:[I

    .line 1012
    array-length v8, v5

    array-length v9, v7

    if-ne v8, v9, :cond_0

    .line 1017
    iget-object v8, p0, Lorg/jpos/iso/BaseChannel;->host:Ljava/lang/String;

    aput-object v8, v5, v2

    .line 1018
    aput v1, v7, v2

    .line 1019
    array-length v7, v3

    invoke-static {v3, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1020
    iget-object v5, p0, Lorg/jpos/iso/BaseChannel;->ports:[I

    array-length v7, v4

    invoke-static {v4, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1013
    :cond_0
    new-instance v2, Lorg/jpos/core/ConfigurationException;

    const-string v5, "alternate host/port misconfiguration"

    invoke-direct {v2, v5}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1004
    .end local v3    # "altHosts":[Ljava/lang/String;
    .end local v4    # "altPorts":[I
    :cond_1
    new-instance v2, Lorg/jpos/core/ConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid port for host \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1022
    :cond_2
    :goto_0
    const-string v3, "override-header"

    invoke-interface {p1, v3, v2}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/jpos/iso/BaseChannel;->setOverrideHeader(Z)V

    .line 1023
    const-string v3, "keep-alive"

    invoke-interface {p1, v3, v2}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/jpos/iso/BaseChannel;->keepAlive:Z

    .line 1024
    const-string v3, "expect-keep-alive"

    invoke-interface {p1, v3, v2}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/jpos/iso/BaseChannel;->expectKeepAlive:Z

    .line 1025
    const-string v3, "round-robin"

    invoke-interface {p1, v3, v2}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/jpos/iso/BaseChannel;->roundRobin:Z

    .line 1026
    iget-object v2, p0, Lorg/jpos/iso/BaseChannel;->socketFactory:Lorg/jpos/iso/ISOClientSocketFactory;

    if-eq v2, p0, :cond_3

    instance-of v3, v2, Lorg/jpos/core/Configurable;

    if-eqz v3, :cond_3

    .line 1027
    check-cast v2, Lorg/jpos/core/Configurable;

    invoke-interface {v2, p1}, Lorg/jpos/core/Configurable;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 1029
    :cond_3
    :try_start_0
    const-string v2, "timeout"

    const v3, 0x493e0

    invoke-interface {p1, v2, v3}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/jpos/iso/BaseChannel;->setTimeout(I)V

    .line 1030
    const-string v2, "connect-timeout"

    iget v3, p0, Lorg/jpos/iso/BaseChannel;->timeout:I

    invoke-interface {p1, v2, v3}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/jpos/iso/BaseChannel;->connectTimeout:I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    nop

    .line 1034
    return-void

    .line 1031
    :catch_0
    move-exception v2

    .line 1032
    .local v2, "e":Ljava/net/SocketException;
    new-instance v3, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v3, v2}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .line 1054
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/BaseChannel;->setHeader([B)V

    .line 1055
    return-void
.end method

.method public setHeader([B)V
    .locals 0
    .param p1, "header"    # [B

    .line 1051
    iput-object p1, p0, Lorg/jpos/iso/BaseChannel;->header:[B

    .line 1052
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .line 192
    iput-object p1, p0, Lorg/jpos/iso/BaseChannel;->host:Ljava/lang/String;

    .line 193
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/jpos/iso/BaseChannel;->hosts:[Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setHost(Ljava/lang/String;I)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 171
    iput-object p1, p0, Lorg/jpos/iso/BaseChannel;->host:Ljava/lang/String;

    .line 172
    iput p2, p0, Lorg/jpos/iso/BaseChannel;->port:I

    .line 173
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, p0, Lorg/jpos/iso/BaseChannel;->hosts:[Ljava/lang/String;

    .line 174
    new-array v0, v0, [I

    aput p2, v0, v2

    iput-object v0, p0, Lorg/jpos/iso/BaseChannel;->ports:[I

    .line 175
    return-void
.end method

.method public setIncomingFilters(Ljava/util/Collection;)V
    .locals 1
    .param p1, "filters"    # Ljava/util/Collection;

    .line 1045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/jpos/iso/BaseChannel;->incomingFilters:Ljava/util/List;

    .line 1046
    return-void
.end method

.method public setLocalAddress(Ljava/lang/String;I)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 183
    iput-object p1, p0, Lorg/jpos/iso/BaseChannel;->localIface:Ljava/lang/String;

    .line 184
    iput p2, p0, Lorg/jpos/iso/BaseChannel;->localPort:I

    .line 185
    return-void
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 1
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 848
    iput-object p1, p0, Lorg/jpos/iso/BaseChannel;->logger:Lorg/jpos/util/Logger;

    .line 849
    iput-object p2, p0, Lorg/jpos/iso/BaseChannel;->realm:Ljava/lang/String;

    .line 850
    iget-object v0, p0, Lorg/jpos/iso/BaseChannel;->originalRealm:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 851
    iput-object p2, p0, Lorg/jpos/iso/BaseChannel;->originalRealm:Ljava/lang/String;

    .line 852
    :cond_0
    return-void
.end method

.method public setMaxPacketLength(I)V
    .locals 0
    .param p1, "maxPacketLength"    # I

    .line 1098
    iput p1, p0, Lorg/jpos/iso/BaseChannel;->maxPacketLength:I

    .line 1099
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 869
    iput-object p1, p0, Lorg/jpos/iso/BaseChannel;->name:Ljava/lang/String;

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channel."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 871
    return-void
.end method

.method public setOutgoingFilters(Ljava/util/Collection;)V
    .locals 1
    .param p1, "filters"    # Ljava/util/Collection;

    .line 1048
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/jpos/iso/BaseChannel;->outgoingFilters:Ljava/util/List;

    .line 1049
    return-void
.end method

.method public setOverrideHeader(Z)V
    .locals 0
    .param p1, "overrideHeader"    # Z

    .line 1060
    iput-boolean p1, p0, Lorg/jpos/iso/BaseChannel;->overrideHeader:Z

    .line 1061
    return-void
.end method

.method public setPackager(Lorg/jpos/iso/ISOPackager;)V
    .locals 0
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;

    .line 220
    iput-object p1, p0, Lorg/jpos/iso/BaseChannel;->packager:Lorg/jpos/iso/ISOPackager;

    .line 221
    return-void
.end method

.method public setPort(I)V
    .locals 2
    .param p1, "port"    # I

    .line 199
    iput p1, p0, Lorg/jpos/iso/BaseChannel;->port:I

    .line 200
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Lorg/jpos/iso/BaseChannel;->ports:[I

    .line 201
    return-void
.end method

.method public setServerSocket(Ljava/net/ServerSocket;)V
    .locals 2
    .param p1, "sock"    # Ljava/net/ServerSocket;

    .line 235
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jpos/iso/BaseChannel;->setHost(Ljava/lang/String;I)V

    .line 236
    iput-object p1, p0, Lorg/jpos/iso/BaseChannel;->serverSocket:Ljava/net/ServerSocket;

    .line 237
    const-string v0, ""

    iput-object v0, p0, Lorg/jpos/iso/BaseChannel;->name:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "linger"    # I

    .line 392
    iput-boolean p1, p0, Lorg/jpos/iso/BaseChannel;->soLingerOn:Z

    .line 393
    iput p2, p0, Lorg/jpos/iso/BaseChannel;->soLingerSeconds:I

    .line 394
    return-void
.end method

.method public setSocketFactory(Lorg/jpos/iso/ISOClientSocketFactory;)V
    .locals 0
    .param p1, "socketFactory"    # Lorg/jpos/iso/ISOClientSocketFactory;

    .line 1092
    iput-object p1, p0, Lorg/jpos/iso/BaseChannel;->socketFactory:Lorg/jpos/iso/ISOClientSocketFactory;

    .line 1093
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 369
    iput p1, p0, Lorg/jpos/iso/BaseChannel;->timeout:I

    .line 370
    invoke-virtual {p0}, Lorg/jpos/iso/BaseChannel;->applyTimeout()V

    .line 371
    return-void
.end method

.method public setUsable(Z)V
    .locals 3
    .param p1, "b"    # Z

    .line 453
    new-instance v0, Lorg/jpos/util/LogEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "usable"

    invoke-direct {v0, p0, v2, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 454
    iput-boolean p1, p0, Lorg/jpos/iso/BaseChannel;->usable:Z

    .line 455
    return-void
.end method

.method protected shouldIgnore([B)Z
    .locals 1
    .param p1, "b"    # [B

    .line 669
    const/4 v0, 0x0

    return v0
.end method

.method protected streamReceive()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected unpack(Lorg/jpos/iso/ISOMsg;[B)V
    .locals 0
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 976
    invoke-virtual {p1, p2}, Lorg/jpos/iso/ISOMsg;->unpack([B)I

    .line 977
    return-void
.end method
