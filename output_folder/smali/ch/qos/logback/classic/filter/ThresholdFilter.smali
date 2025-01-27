.class public Lch/qos/logback/classic/filter/ThresholdFilter;
.super Lch/qos/logback/core/filter/Filter;
.source "ThresholdFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/filter/Filter<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# instance fields
.field level:Lch/qos/logback/classic/Level;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lch/qos/logback/core/filter/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public decide(Lch/qos/logback/classic/spi/ILoggingEvent;)Lch/qos/logback/core/spi/FilterReply;
    .locals 2
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 41
    invoke-virtual {p0}, Lch/qos/logback/classic/filter/ThresholdFilter;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    return-object v0

    .line 45
    :cond_0
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/filter/ThresholdFilter;->level:Lch/qos/logback/classic/Level;

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Level;->isGreaterOrEqual(Lch/qos/logback/classic/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    return-object v0

    .line 48
    :cond_1
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->DENY:Lch/qos/logback/core/spi/FilterReply;

    return-object v0
.end method

.method public bridge synthetic decide(Ljava/lang/Object;)Lch/qos/logback/core/spi/FilterReply;
    .locals 0

    .line 35
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/filter/ThresholdFilter;->decide(Lch/qos/logback/classic/spi/ILoggingEvent;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object p1

    return-object p1
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 1
    .param p1, "level"    # Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lch/qos/logback/classic/Level;->toLevel(Ljava/lang/String;)Lch/qos/logback/classic/Level;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/filter/ThresholdFilter;->level:Lch/qos/logback/classic/Level;

    .line 54
    return-void
.end method

.method public start()V
    .locals 1

    .line 57
    iget-object v0, p0, Lch/qos/logback/classic/filter/ThresholdFilter;->level:Lch/qos/logback/classic/Level;

    if-eqz v0, :cond_0

    .line 58
    invoke-super {p0}, Lch/qos/logback/core/filter/Filter;->start()V

    .line 60
    :cond_0
    return-void
.end method
