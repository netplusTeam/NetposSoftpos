.class public Lch/qos/logback/classic/boolex/OnMarkerEvaluator;
.super Lch/qos/logback/core/boolex/EventEvaluatorBase;
.source "OnMarkerEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/boolex/EventEvaluatorBase<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# instance fields
.field markerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lch/qos/logback/core/boolex/EventEvaluatorBase;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/boolex/OnMarkerEvaluator;->markerList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addMarker(Ljava/lang/String;)V
    .locals 1
    .param p1, "markerStr"    # Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lch/qos/logback/classic/boolex/OnMarkerEvaluator;->markerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public evaluate(Lch/qos/logback/classic/spi/ILoggingEvent;)Z
    .locals 5
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Lch/qos/logback/core/boolex/EvaluationException;
        }
    .end annotation

    .line 45
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMarker()Lorg/slf4j/Marker;

    move-result-object v0

    .line 46
    .local v0, "eventsMarker":Lorg/slf4j/Marker;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 47
    return v1

    .line 50
    :cond_0
    iget-object v2, p0, Lch/qos/logback/classic/boolex/OnMarkerEvaluator;->markerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 51
    .local v3, "markerStr":Ljava/lang/String;
    invoke-interface {v0, v3}, Lorg/slf4j/Marker;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    const/4 v1, 0x1

    return v1

    .line 54
    .end local v3    # "markerStr":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 55
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return v1
.end method

.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Lch/qos/logback/core/boolex/EvaluationException;
        }
    .end annotation

    .line 31
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/boolex/OnMarkerEvaluator;->evaluate(Lch/qos/logback/classic/spi/ILoggingEvent;)Z

    move-result p1

    return p1
.end method
