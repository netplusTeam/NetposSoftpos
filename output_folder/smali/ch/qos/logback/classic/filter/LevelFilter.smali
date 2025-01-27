.class public Lch/qos/logback/classic/filter/LevelFilter;
.super Lch/qos/logback/core/filter/AbstractMatcherFilter;
.source "LevelFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/filter/AbstractMatcherFilter<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# instance fields
.field level:Lch/qos/logback/classic/Level;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lch/qos/logback/core/filter/AbstractMatcherFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public decide(Lch/qos/logback/classic/spi/ILoggingEvent;)Lch/qos/logback/core/spi/FilterReply;
    .locals 2
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 37
    invoke-virtual {p0}, Lch/qos/logback/classic/filter/LevelFilter;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    return-object v0

    .line 41
    :cond_0
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/filter/LevelFilter;->level:Lch/qos/logback/classic/Level;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lch/qos/logback/classic/filter/LevelFilter;->onMatch:Lch/qos/logback/core/spi/FilterReply;

    return-object v0

    .line 44
    :cond_1
    iget-object v0, p0, Lch/qos/logback/classic/filter/LevelFilter;->onMismatch:Lch/qos/logback/core/spi/FilterReply;

    return-object v0
.end method

.method public bridge synthetic decide(Ljava/lang/Object;)Lch/qos/logback/core/spi/FilterReply;
    .locals 0

    .line 31
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/filter/LevelFilter;->decide(Lch/qos/logback/classic/spi/ILoggingEvent;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object p1

    return-object p1
.end method

.method public setLevel(Lch/qos/logback/classic/Level;)V
    .locals 0
    .param p1, "level"    # Lch/qos/logback/classic/Level;

    .line 49
    iput-object p1, p0, Lch/qos/logback/classic/filter/LevelFilter;->level:Lch/qos/logback/classic/Level;

    .line 50
    return-void
.end method

.method public start()V
    .locals 1

    .line 53
    iget-object v0, p0, Lch/qos/logback/classic/filter/LevelFilter;->level:Lch/qos/logback/classic/Level;

    if-eqz v0, :cond_0

    .line 54
    invoke-super {p0}, Lch/qos/logback/core/filter/AbstractMatcherFilter;->start()V

    .line 56
    :cond_0
    return-void
.end method
