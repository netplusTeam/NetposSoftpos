.class public Lch/qos/logback/classic/net/SMTPAppender;
.super Lch/qos/logback/core/net/SMTPAppenderBase;
.source "SMTPAppender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/net/SMTPAppenderBase<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT_SUBJECT_PATTERN:Ljava/lang/String; = "%logger{20} - %m"


# instance fields
.field private bufferSize:I

.field private includeCallerData:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;-><init>()V

    .line 42
    const/16 v0, 0x200

    iput v0, p0, Lch/qos/logback/classic/net/SMTPAppender;->bufferSize:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/net/SMTPAppender;->includeCallerData:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Lch/qos/logback/core/boolex/EventEvaluator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/boolex/EventEvaluator<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p1, "eventEvaluator":Lch/qos/logback/core/boolex/EventEvaluator;, "Lch/qos/logback/core/boolex/EventEvaluator<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    invoke-direct {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;-><init>()V

    .line 42
    const/16 v0, 0x200

    iput v0, p0, Lch/qos/logback/classic/net/SMTPAppender;->bufferSize:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/net/SMTPAppender;->includeCallerData:Z

    .line 70
    iput-object p1, p0, Lch/qos/logback/classic/net/SMTPAppender;->eventEvaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    .line 71
    return-void
.end method


# virtual methods
.method protected eventMarksEndOfLife(Lch/qos/logback/classic/spi/ILoggingEvent;)Z
    .locals 2
    .param p1, "eventObject"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 95
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMarker()Lorg/slf4j/Marker;

    move-result-object v0

    .line 96
    .local v0, "marker":Lorg/slf4j/Marker;
    if-nez v0, :cond_0

    .line 97
    const/4 v1, 0x0

    return v1

    .line 99
    :cond_0
    sget-object v1, Lch/qos/logback/classic/ClassicConstants;->FINALIZE_SESSION_MARKER:Lorg/slf4j/Marker;

    invoke-interface {v0, v1}, Lorg/slf4j/Marker;->contains(Lorg/slf4j/Marker;)Z

    move-result v1

    return v1
.end method

.method protected bridge synthetic eventMarksEndOfLife(Ljava/lang/Object;)Z
    .locals 0

    .line 37
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/net/SMTPAppender;->eventMarksEndOfLife(Lch/qos/logback/classic/spi/ILoggingEvent;)Z

    move-result p1

    return p1
.end method

.method protected fillBuffer(Lch/qos/logback/core/helpers/CyclicBuffer;Ljava/lang/StringBuffer;)V
    .locals 4
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/helpers/CyclicBuffer<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    .line 87
    .local p1, "cb":Lch/qos/logback/core/helpers/CyclicBuffer;, "Lch/qos/logback/core/helpers/CyclicBuffer<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    invoke-virtual {p1}, Lch/qos/logback/core/helpers/CyclicBuffer;->length()I

    move-result v0

    .line 88
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 89
    invoke-virtual {p1}, Lch/qos/logback/core/helpers/CyclicBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 90
    .local v2, "event":Lch/qos/logback/classic/spi/ILoggingEvent;
    iget-object v3, p0, Lch/qos/logback/classic/net/SMTPAppender;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v3, v2}, Lch/qos/logback/core/Layout;->doLayout(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    .end local v2    # "event":Lch/qos/logback/classic/spi/ILoggingEvent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public isIncludeCallerData()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lch/qos/logback/classic/net/SMTPAppender;->includeCallerData:Z

    return v0
.end method

.method protected makeNewToPatternLayout(Ljava/lang/String;)Lch/qos/logback/classic/PatternLayout;
    .locals 3
    .param p1, "toPattern"    # Ljava/lang/String;

    .line 119
    new-instance v0, Lch/qos/logback/classic/PatternLayout;

    invoke-direct {v0}, Lch/qos/logback/classic/PatternLayout;-><init>()V

    .line 120
    .local v0, "pl":Lch/qos/logback/classic/PatternLayout;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%nopex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/PatternLayout;->setPattern(Ljava/lang/String;)V

    .line 121
    return-object v0
.end method

.method protected bridge synthetic makeNewToPatternLayout(Ljava/lang/String;)Lch/qos/logback/core/pattern/PatternLayoutBase;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lch/qos/logback/classic/net/SMTPAppender;->makeNewToPatternLayout(Ljava/lang/String;)Lch/qos/logback/classic/PatternLayout;

    move-result-object p1

    return-object p1
.end method

.method protected makeSubjectLayout(Ljava/lang/String;)Lch/qos/logback/core/Layout;
    .locals 2
    .param p1, "subjectStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/Layout<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;"
        }
    .end annotation

    .line 104
    if-nez p1, :cond_0

    .line 105
    const-string p1, "%logger{20} - %m"

    .line 107
    :cond_0
    new-instance v0, Lch/qos/logback/classic/PatternLayout;

    invoke-direct {v0}, Lch/qos/logback/classic/PatternLayout;-><init>()V

    .line 108
    .local v0, "pl":Lch/qos/logback/classic/PatternLayout;
    invoke-virtual {p0}, Lch/qos/logback/classic/net/SMTPAppender;->getContext()Lch/qos/logback/core/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/PatternLayout;->setContext(Lch/qos/logback/core/Context;)V

    .line 109
    invoke-virtual {v0, p1}, Lch/qos/logback/classic/PatternLayout;->setPattern(Ljava/lang/String;)V

    .line 113
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/PatternLayout;->setPostCompileProcessor(Lch/qos/logback/core/pattern/PostCompileProcessor;)V

    .line 114
    invoke-virtual {v0}, Lch/qos/logback/classic/PatternLayout;->start()V

    .line 115
    return-object v0
.end method

.method public setIncludeCallerData(Z)V
    .locals 0
    .param p1, "includeCallerData"    # Z

    .line 129
    iput-boolean p1, p0, Lch/qos/logback/classic/net/SMTPAppender;->includeCallerData:Z

    .line 130
    return-void
.end method

.method public start()V
    .locals 2

    .line 55
    iget-object v0, p0, Lch/qos/logback/classic/net/SMTPAppender;->eventEvaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lch/qos/logback/classic/boolex/OnErrorEvaluator;

    invoke-direct {v0}, Lch/qos/logback/classic/boolex/OnErrorEvaluator;-><init>()V

    .line 57
    .local v0, "onError":Lch/qos/logback/classic/boolex/OnErrorEvaluator;
    invoke-virtual {p0}, Lch/qos/logback/classic/net/SMTPAppender;->getContext()Lch/qos/logback/core/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/boolex/OnErrorEvaluator;->setContext(Lch/qos/logback/core/Context;)V

    .line 58
    const-string v1, "onError"

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/boolex/OnErrorEvaluator;->setName(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Lch/qos/logback/classic/boolex/OnErrorEvaluator;->start()V

    .line 60
    iput-object v0, p0, Lch/qos/logback/classic/net/SMTPAppender;->eventEvaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    .line 62
    .end local v0    # "onError":Lch/qos/logback/classic/boolex/OnErrorEvaluator;
    :cond_0
    invoke-super {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->start()V

    .line 63
    return-void
.end method

.method protected subAppend(Lch/qos/logback/core/helpers/CyclicBuffer;Lch/qos/logback/classic/spi/ILoggingEvent;)V
    .locals 1
    .param p2, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/helpers/CyclicBuffer<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ")V"
        }
    .end annotation

    .line 78
    .local p1, "cb":Lch/qos/logback/core/helpers/CyclicBuffer;, "Lch/qos/logback/core/helpers/CyclicBuffer<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    iget-boolean v0, p0, Lch/qos/logback/classic/net/SMTPAppender;->includeCallerData:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {p2}, Lch/qos/logback/classic/spi/ILoggingEvent;->getCallerData()[Ljava/lang/StackTraceElement;

    .line 81
    :cond_0
    invoke-interface {p2}, Lch/qos/logback/classic/spi/ILoggingEvent;->prepareForDeferredProcessing()V

    .line 82
    invoke-virtual {p1, p2}, Lch/qos/logback/core/helpers/CyclicBuffer;->add(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method protected bridge synthetic subAppend(Lch/qos/logback/core/helpers/CyclicBuffer;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1, p2}, Lch/qos/logback/classic/net/SMTPAppender;->subAppend(Lch/qos/logback/core/helpers/CyclicBuffer;Lch/qos/logback/classic/spi/ILoggingEvent;)V

    return-void
.end method
