.class public Lorg/jpos/iso/filter/ThroughputControlFilter;
.super Ljava/lang/Object;
.source "ThroughputControlFilter.java"

# interfaces
.implements Lorg/jpos/iso/ISOFilter;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field tc:Lorg/jpos/util/ThroughputControl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/filter/ThroughputControlFilter;->tc:Lorg/jpos/util/ThroughputControl;

    .line 34
    return-void
.end method


# virtual methods
.method public filter(Lorg/jpos/iso/ISOChannel;Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;
    .locals 4
    .param p1, "channel"    # Lorg/jpos/iso/ISOChannel;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "evt"    # Lorg/jpos/util/LogEvent;

    .line 49
    iget-object v0, p0, Lorg/jpos/iso/filter/ThroughputControlFilter;->tc:Lorg/jpos/util/ThroughputControl;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Lorg/jpos/util/ThroughputControl;->control()J

    move-result-wide v0

    .line 51
    .local v0, "delay":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThroughputControl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 54
    .end local v0    # "delay":J
    :cond_0
    return-object p2
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;

    .line 44
    new-instance v0, Lorg/jpos/util/ThroughputControl;

    const-string v1, "transactions"

    invoke-interface {p1, v1}, Lorg/jpos/core/Configuration;->getInts(Ljava/lang/String;)[I

    move-result-object v1

    const-string v2, "period"

    invoke-interface {p1, v2}, Lorg/jpos/core/Configuration;->getInts(Ljava/lang/String;)[I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jpos/util/ThroughputControl;-><init>([I[I)V

    iput-object v0, p0, Lorg/jpos/iso/filter/ThroughputControlFilter;->tc:Lorg/jpos/util/ThroughputControl;

    .line 45
    return-void
.end method
