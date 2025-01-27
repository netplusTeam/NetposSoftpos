.class public Lorg/jpos/space/SpaceSource;
.super Ljava/lang/Object;
.source "SpaceSource.java"

# interfaces
.implements Lorg/jpos/iso/ISOSource;
.implements Lorg/jpos/space/SpaceListener;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jpos/iso/ISOSource;",
        "Lorg/jpos/space/SpaceListener<",
        "Ljava/lang/String;",
        "Lorg/jpos/iso/ISOMsg;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x247e7815174f04a1L


# instance fields
.field private connected:Z

.field private transient isp:Lorg/jpos/space/Space;

.field private key:Ljava/lang/String;

.field private transient sp:Lorg/jpos/space/LocalSpace;

.field private timeout:J


# direct methods
.method public constructor <init>(Lorg/jpos/space/LocalSpace;Lorg/jpos/iso/ISOSource;J)V
    .locals 3
    .param p1, "sp"    # Lorg/jpos/space/LocalSpace;
    .param p2, "source"    # Lorg/jpos/iso/ISOSource;
    .param p3, "timeout"    # J

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lorg/jpos/space/SpaceFactory;->getSpace()Lorg/jpos/space/Space;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/space/SpaceSource;->isp:Lorg/jpos/space/Space;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SS."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/space/SpaceSource;->key:Ljava/lang/String;

    .line 42
    invoke-interface {p2}, Lorg/jpos/iso/ISOSource;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/space/SpaceSource;->connected:Z

    .line 43
    iput-object p1, p0, Lorg/jpos/space/SpaceSource;->sp:Lorg/jpos/space/LocalSpace;

    .line 44
    iget-object v0, p0, Lorg/jpos/space/SpaceSource;->key:Ljava/lang/String;

    const-wide/16 v1, 0x2710

    add-long/2addr v1, p3

    invoke-interface {p1, v0, p0, v1, v2}, Lorg/jpos/space/LocalSpace;->addListener(Ljava/lang/Object;Lorg/jpos/space/SpaceListener;J)V

    .line 45
    iget-object v0, p0, Lorg/jpos/space/SpaceSource;->isp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/space/SpaceSource;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3, p4}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 46
    return-void
.end method


# virtual methods
.method public init(Lorg/jpos/space/LocalSpace;J)V
    .locals 0
    .param p1, "sp"    # Lorg/jpos/space/LocalSpace;
    .param p2, "timeout"    # J

    .line 49
    iput-object p1, p0, Lorg/jpos/space/SpaceSource;->sp:Lorg/jpos/space/LocalSpace;

    .line 50
    iput-wide p2, p0, Lorg/jpos/space/SpaceSource;->timeout:J

    .line 51
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lorg/jpos/space/SpaceSource;->connected:Z

    return v0
.end method

.method public bridge synthetic notify(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lorg/jpos/iso/ISOMsg;

    invoke-virtual {p0, p1, p2}, Lorg/jpos/space/SpaceSource;->notify(Ljava/lang/String;Lorg/jpos/iso/ISOMsg;)V

    return-void
.end method

.method public notify(Ljava/lang/String;Lorg/jpos/iso/ISOMsg;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;

    .line 67
    iget-object v0, p0, Lorg/jpos/space/SpaceSource;->sp:Lorg/jpos/space/LocalSpace;

    iget-object v1, p0, Lorg/jpos/space/SpaceSource;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lorg/jpos/space/LocalSpace;->removeListener(Ljava/lang/Object;Lorg/jpos/space/SpaceListener;)V

    .line 68
    iget-object v0, p0, Lorg/jpos/space/SpaceSource;->isp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1}, Lorg/jpos/space/Space;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOSource;

    .line 69
    .local v0, "source":Lorg/jpos/iso/ISOSource;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/jpos/iso/ISOSource;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    :try_start_0
    invoke-virtual {p2}, Lorg/jpos/iso/ISOMsg;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    invoke-interface {v0, v1}, Lorg/jpos/iso/ISOSource;->send(Lorg/jpos/iso/ISOMsg;)V

    .line 72
    iget-object v1, p0, Lorg/jpos/space/SpaceSource;->sp:Lorg/jpos/space/LocalSpace;

    invoke-interface {v1, p1}, Lorg/jpos/space/LocalSpace;->inp(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/jpos/q2/Q2;->getQ2()Lorg/jpos/q2/Q2;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jpos/q2/Q2;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 77
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public send(Lorg/jpos/iso/ISOMsg;)V
    .locals 4
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/jpos/space/SpaceSource;->sp:Lorg/jpos/space/LocalSpace;

    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lorg/jpos/space/SpaceSource;->key:Ljava/lang/String;

    iget-wide v2, p0, Lorg/jpos/space/SpaceSource;->timeout:J

    invoke-interface {v0, v1, p1, v2, v3}, Lorg/jpos/space/LocalSpace;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 58
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Space not configured"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
