.class public Lorg/jpos/iso/IncomingListener;
.super Lorg/jpos/util/Log;
.source "IncomingListener.java"

# interfaces
.implements Lorg/jpos/iso/ISORequestListener;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field private additionalContextEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private queue:Ljava/lang/String;

.field private remote:Z

.field private request:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private sp:Lorg/jpos/space/Space;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jpos/space/Space<",
            "Ljava/lang/String;",
            "Lorg/jpos/transaction/Context;",
            ">;"
        }
    .end annotation
.end field

.field timeout:J

.field private timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/jpos/util/Log;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/IncomingListener;->additionalContextEntries:Ljava/util/Map;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/iso/IncomingListener;->remote:Z

    return-void
.end method

.method static synthetic lambda$setConfiguration$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 62
    const-string v0, "ctx."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$setConfiguration$1(Ljava/util/Map;Lorg/jpos/core/Configuration;Ljava/lang/String;)V
    .locals 2
    .param p0, "m"    # Ljava/util/Map;
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .param p2, "s"    # Ljava/lang/String;

    .line 63
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-void
.end method


# virtual methods
.method synthetic lambda$process$2$org-jpos-iso-IncomingListener(Lorg/jpos/transaction/Context;Ljava/util/Map$Entry;)V
    .locals 3
    .param p1, "ctx"    # Lorg/jpos/transaction/Context;
    .param p2, "e"    # Ljava/util/Map$Entry;

    .line 76
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lorg/jpos/iso/IncomingListener;->remote:Z

    invoke-virtual {p1, v0, v1, v2}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public process(Lorg/jpos/iso/ISOSource;Lorg/jpos/iso/ISOMsg;)Z
    .locals 5
    .param p1, "src"    # Lorg/jpos/iso/ISOSource;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;

    .line 68
    new-instance v0, Lorg/jpos/transaction/Context;

    invoke-direct {v0}, Lorg/jpos/transaction/Context;-><init>()V

    .line 69
    .local v0, "ctx":Lorg/jpos/transaction/Context;
    iget-boolean v1, p0, Lorg/jpos/iso/IncomingListener;->remote:Z

    if-eqz v1, :cond_0

    .line 70
    new-instance v1, Lorg/jpos/space/SpaceSource;

    iget-object v2, p0, Lorg/jpos/iso/IncomingListener;->sp:Lorg/jpos/space/Space;

    check-cast v2, Lorg/jpos/space/LocalSpace;

    iget-wide v3, p0, Lorg/jpos/iso/IncomingListener;->timeout:J

    invoke-direct {v1, v2, p1, v3, v4}, Lorg/jpos/space/SpaceSource;-><init>(Lorg/jpos/space/LocalSpace;Lorg/jpos/iso/ISOSource;J)V

    move-object p1, v1

    .line 71
    :cond_0
    iget-object v1, p0, Lorg/jpos/iso/IncomingListener;->timestamp:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iget-boolean v3, p0, Lorg/jpos/iso/IncomingListener;->remote:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 72
    iget-object v1, p0, Lorg/jpos/iso/IncomingListener;->source:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/jpos/iso/IncomingListener;->remote:Z

    invoke-virtual {v0, v1, p1, v2}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 73
    iget-object v1, p0, Lorg/jpos/iso/IncomingListener;->request:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/jpos/iso/IncomingListener;->remote:Z

    invoke-virtual {v0, v1, p2, v2}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 74
    iget-object v1, p0, Lorg/jpos/iso/IncomingListener;->additionalContextEntries:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 75
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lorg/jpos/iso/IncomingListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/jpos/iso/IncomingListener$$ExternalSyntheticLambda0;-><init>(Lorg/jpos/iso/IncomingListener;Lorg/jpos/transaction/Context;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 79
    :cond_1
    iget-object v1, p0, Lorg/jpos/iso/IncomingListener;->sp:Lorg/jpos/space/Space;

    iget-object v2, p0, Lorg/jpos/iso/IncomingListener;->queue:Ljava/lang/String;

    iget-wide v3, p0, Lorg/jpos/iso/IncomingListener;->timeout:J

    invoke-interface {v1, v2, v0, v3, v4}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 80
    const/4 v1, 0x1

    return v1
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 50
    const-string v0, "timeout"

    const-wide/16 v1, 0x3a98

    invoke-interface {p1, v0, v1, v2}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/iso/IncomingListener;->timeout:J

    .line 51
    const-string v0, "space"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/space/SpaceFactory;->getSpace(Ljava/lang/String;)Lorg/jpos/space/Space;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/iso/IncomingListener;->sp:Lorg/jpos/space/Space;

    .line 52
    const-string v1, "queue"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/iso/IncomingListener;->queue:Ljava/lang/String;

    .line 53
    if-eqz v1, :cond_3

    .line 55
    sget-object v1, Lorg/jpos/transaction/ContextConstants;->SOURCE:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v1}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-interface {p1, v2, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/iso/IncomingListener;->source:Ljava/lang/String;

    .line 56
    sget-object v1, Lorg/jpos/transaction/ContextConstants;->REQUEST:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v1}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request"

    invoke-interface {p1, v2, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/iso/IncomingListener;->request:Ljava/lang/String;

    .line 57
    sget-object v1, Lorg/jpos/transaction/ContextConstants;->TIMESTAMP:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v1}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-interface {p1, v2, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/iso/IncomingListener;->timestamp:Ljava/lang/String;

    .line 58
    const-string v1, "remote"

    invoke-interface {p1, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rspace:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/jpos/iso/IncomingListener;->remote:Z

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/jpos/core/Configuration;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 61
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jpos/iso/IncomingListener$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/jpos/iso/IncomingListener$$ExternalSyntheticLambda1;-><init>()V

    .line 62
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jpos/iso/IncomingListener$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p1}, Lorg/jpos/iso/IncomingListener$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;Lorg/jpos/core/Configuration;)V

    .line 63
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 64
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 65
    iput-object v0, p0, Lorg/jpos/iso/IncomingListener;->additionalContextEntries:Ljava/util/Map;

    .line 66
    :cond_2
    return-void

    .line 54
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    new-instance v0, Lorg/jpos/core/ConfigurationException;

    const-string v1, "queue property not specified"

    invoke-direct {v0, v1}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
