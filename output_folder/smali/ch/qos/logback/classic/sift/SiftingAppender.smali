.class public Lch/qos/logback/classic/sift/SiftingAppender;
.super Lch/qos/logback/core/sift/SiftingAppenderBase;
.source "SiftingAppender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/sift/SiftingAppenderBase<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lch/qos/logback/core/sift/SiftingAppenderBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected eventMarksEndOfLife(Lch/qos/logback/classic/spi/ILoggingEvent;)Z
    .locals 2
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 47
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMarker()Lorg/slf4j/Marker;

    move-result-object v0

    .line 48
    .local v0, "marker":Lorg/slf4j/Marker;
    if-nez v0, :cond_0

    .line 49
    const/4 v1, 0x0

    return v1

    .line 51
    :cond_0
    sget-object v1, Lch/qos/logback/classic/ClassicConstants;->FINALIZE_SESSION_MARKER:Lorg/slf4j/Marker;

    invoke-interface {v0, v1}, Lorg/slf4j/Marker;->contains(Lorg/slf4j/Marker;)Z

    move-result v1

    return v1
.end method

.method protected bridge synthetic eventMarksEndOfLife(Ljava/lang/Object;)Z
    .locals 0

    .line 33
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/sift/SiftingAppender;->eventMarksEndOfLife(Lch/qos/logback/classic/spi/ILoggingEvent;)Z

    move-result p1

    return p1
.end method

.method protected getTimestamp(Lch/qos/logback/classic/spi/ILoggingEvent;)J
    .locals 2
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 37
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method protected bridge synthetic getTimestamp(Ljava/lang/Object;)J
    .locals 2

    .line 33
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/sift/SiftingAppender;->getTimestamp(Lch/qos/logback/classic/spi/ILoggingEvent;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setDiscriminator(Lch/qos/logback/core/sift/Discriminator;)V
    .locals 0
    .annotation runtime Lch/qos/logback/core/joran/spi/DefaultClass;
        value = Lch/qos/logback/classic/sift/MDCBasedDiscriminator;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/sift/Discriminator<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p1, "discriminator":Lch/qos/logback/core/sift/Discriminator;, "Lch/qos/logback/core/sift/Discriminator<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    invoke-super {p0, p1}, Lch/qos/logback/core/sift/SiftingAppenderBase;->setDiscriminator(Lch/qos/logback/core/sift/Discriminator;)V

    .line 44
    return-void
.end method
