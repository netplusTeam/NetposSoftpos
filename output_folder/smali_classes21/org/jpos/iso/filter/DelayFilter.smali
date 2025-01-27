.class public Lorg/jpos/iso/filter/DelayFilter;
.super Ljava/lang/Object;
.source "DelayFilter.java"

# interfaces
.implements Lorg/jpos/iso/ISOFilter;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field delay:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/iso/filter/DelayFilter;->delay:I

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "delay"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/jpos/iso/filter/DelayFilter;->delay:I

    .line 46
    return-void
.end method


# virtual methods
.method public filter(Lorg/jpos/iso/ISOChannel;Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;
    .locals 2
    .param p1, "channel"    # Lorg/jpos/iso/ISOChannel;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "evt"    # Lorg/jpos/util/LogEvent;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<delay-filter delay=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jpos/iso/filter/DelayFilter;->delay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 60
    iget v0, p0, Lorg/jpos/iso/filter/DelayFilter;->delay:I

    if-lez v0, :cond_0

    .line 62
    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 65
    :cond_0
    :goto_0
    return-object p2
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 1
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;

    .line 54
    const-string v0, "delay"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jpos/iso/filter/DelayFilter;->delay:I

    .line 55
    return-void
.end method
