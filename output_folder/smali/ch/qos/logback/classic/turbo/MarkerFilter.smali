.class public Lch/qos/logback/classic/turbo/MarkerFilter;
.super Lch/qos/logback/classic/turbo/MatchingFilter;
.source "MarkerFilter.java"


# instance fields
.field markerToMatch:Lorg/slf4j/Marker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lch/qos/logback/classic/turbo/MatchingFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public decide(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;
    .locals 1
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "logger"    # Lch/qos/logback/classic/Logger;
    .param p3, "level"    # Lch/qos/logback/classic/Level;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;
    .param p6, "t"    # Ljava/lang/Throwable;

    .line 42
    invoke-virtual {p0}, Lch/qos/logback/classic/turbo/MarkerFilter;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    return-object v0

    .line 46
    :cond_0
    if-nez p1, :cond_1

    .line 47
    iget-object v0, p0, Lch/qos/logback/classic/turbo/MarkerFilter;->onMismatch:Lch/qos/logback/core/spi/FilterReply;

    return-object v0

    .line 50
    :cond_1
    iget-object v0, p0, Lch/qos/logback/classic/turbo/MarkerFilter;->markerToMatch:Lorg/slf4j/Marker;

    invoke-interface {p1, v0}, Lorg/slf4j/Marker;->contains(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lch/qos/logback/classic/turbo/MarkerFilter;->onMatch:Lch/qos/logback/core/spi/FilterReply;

    return-object v0

    .line 53
    :cond_2
    iget-object v0, p0, Lch/qos/logback/classic/turbo/MarkerFilter;->onMismatch:Lch/qos/logback/core/spi/FilterReply;

    return-object v0
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 1
    .param p1, "markerStr"    # Ljava/lang/String;

    .line 63
    if-eqz p1, :cond_0

    .line 64
    invoke-static {p1}, Lorg/slf4j/MarkerFactory;->getMarker(Ljava/lang/String;)Lorg/slf4j/Marker;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/turbo/MarkerFilter;->markerToMatch:Lorg/slf4j/Marker;

    .line 66
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 33
    iget-object v0, p0, Lch/qos/logback/classic/turbo/MarkerFilter;->markerToMatch:Lorg/slf4j/Marker;

    if-eqz v0, :cond_0

    .line 34
    invoke-super {p0}, Lch/qos/logback/classic/turbo/MatchingFilter;->start()V

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The marker property must be set for ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/classic/turbo/MarkerFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/turbo/MarkerFilter;->addError(Ljava/lang/String;)V

    .line 38
    :goto_0
    return-void
.end method
