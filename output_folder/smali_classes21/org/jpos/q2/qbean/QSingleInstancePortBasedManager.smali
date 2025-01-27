.class public Lorg/jpos/q2/qbean/QSingleInstancePortBasedManager;
.super Lorg/jpos/q2/QBeanSupport;
.source "QSingleInstancePortBasedManager.java"


# instance fields
.field port:I

.field ss:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    return-void
.end method


# virtual methods
.method protected initService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lorg/jpos/q2/qbean/QSingleInstancePortBasedManager;->port:I

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lorg/jpos/q2/qbean/QSingleInstancePortBasedManager;->ss:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QSingleInstancePortBasedManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    const-string v2, "An instance of Q2 is already running. Shutting this instance"

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QSingleInstancePortBasedManager;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/q2/Q2;->shutdown()V

    .line 52
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 57
    invoke-super {p0, p1}, Lorg/jpos/q2/QBeanSupport;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 59
    const-string v0, "port"

    const v1, 0xfde8

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jpos/q2/qbean/QSingleInstancePortBasedManager;->port:I

    .line 60
    return-void
.end method
