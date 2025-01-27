.class public Lorg/jpos/iso/Connector;
.super Ljava/lang/Object;
.source "Connector.java"

# interfaces
.implements Lorg/jpos/iso/ISORequestListener;
.implements Lorg/jpos/util/LogSource;
.implements Lorg/jpos/core/Configurable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/iso/Connector$Process;
    }
.end annotation


# static fields
.field protected static pool:Lorg/jpos/util/ThreadPool;


# instance fields
.field protected channelName:Ljava/lang/String;

.field private logger:Lorg/jpos/util/Logger;

.field protected muxName:Ljava/lang/String;

.field private preserveSourceHeader:Z

.field private realm:Ljava/lang/String;

.field protected timeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/Connector;->preserveSourceHeader:Z

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/iso/Connector;->timeout:I

    .line 51
    return-void
.end method

.method static synthetic access$000(Lorg/jpos/iso/Connector;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jpos/iso/Connector;

    .line 38
    iget-boolean v0, p0, Lorg/jpos/iso/Connector;->preserveSourceHeader:Z

    return v0
.end method


# virtual methods
.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/jpos/iso/Connector;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/jpos/iso/Connector;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public process(Lorg/jpos/iso/ISOSource;Lorg/jpos/iso/ISOMsg;)Z
    .locals 3
    .param p1, "source"    # Lorg/jpos/iso/ISOSource;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;

    .line 126
    sget-object v0, Lorg/jpos/iso/Connector;->pool:Lorg/jpos/util/ThreadPool;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lorg/jpos/util/ThreadPool;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/jpos/util/ThreadPool;-><init>(II)V

    sput-object v0, Lorg/jpos/iso/Connector;->pool:Lorg/jpos/util/ThreadPool;

    .line 129
    :cond_0
    sget-object v0, Lorg/jpos/iso/Connector;->pool:Lorg/jpos/util/ThreadPool;

    new-instance v2, Lorg/jpos/iso/Connector$Process;

    invoke-direct {v2, p0, p1, p2}, Lorg/jpos/iso/Connector$Process;-><init>(Lorg/jpos/iso/Connector;Lorg/jpos/iso/ISOSource;Lorg/jpos/iso/ISOMsg;)V

    invoke-virtual {v0, v2}, Lorg/jpos/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 130
    return v1
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 4
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 77
    const-string v0, "timeout"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jpos/iso/Connector;->timeout:I

    .line 78
    sget-object v0, Lorg/jpos/iso/Connector;->pool:Lorg/jpos/util/ThreadPool;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lorg/jpos/util/ThreadPool;

    const/16 v2, 0xa

    const-string v3, "poolsize"

    invoke-interface {p1, v3, v2}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/jpos/util/ThreadPool;-><init>(II)V

    sput-object v0, Lorg/jpos/iso/Connector;->pool:Lorg/jpos/util/ThreadPool;

    .line 80
    :cond_0
    const-string v0, "destination-mux"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/Connector;->muxName:Ljava/lang/String;

    .line 81
    const-string v0, "destination-channel"

    invoke-interface {p1, v0, v2}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/Connector;->channelName:Ljava/lang/String;

    .line 82
    const-string v0, "preserve-source-header"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/iso/Connector;->preserveSourceHeader:Z

    .line 83
    iget-object v0, p0, Lorg/jpos/iso/Connector;->muxName:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jpos/iso/Connector;->channelName:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    new-instance v0, Lorg/jpos/core/ConfigurationException;

    const-string v1, "Neither destination mux nor channel were specified."

    invoke-direct {v0, v1}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    :goto_0
    return-void
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lorg/jpos/iso/Connector;->logger:Lorg/jpos/util/Logger;

    .line 55
    iput-object p2, p0, Lorg/jpos/iso/Connector;->realm:Ljava/lang/String;

    .line 56
    return-void
.end method
