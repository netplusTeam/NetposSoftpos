.class public Lch/qos/logback/classic/html/HTMLLayout;
.super Lch/qos/logback/core/html/HTMLLayoutBase;
.source "HTMLLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/html/HTMLLayoutBase<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT_CONVERSION_PATTERN:Ljava/lang/String; = "%date%thread%level%logger%mdc%msg"


# instance fields
.field throwableRenderer:Lch/qos/logback/core/html/IThrowableRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/html/IThrowableRenderer<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lch/qos/logback/core/html/HTMLLayoutBase;-><init>()V

    .line 55
    const-string v0, "%date%thread%level%logger%mdc%msg"

    iput-object v0, p0, Lch/qos/logback/classic/html/HTMLLayout;->pattern:Ljava/lang/String;

    .line 56
    new-instance v0, Lch/qos/logback/classic/html/DefaultThrowableRenderer;

    invoke-direct {v0}, Lch/qos/logback/classic/html/DefaultThrowableRenderer;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/html/HTMLLayout;->throwableRenderer:Lch/qos/logback/core/html/IThrowableRenderer;

    .line 57
    new-instance v0, Lch/qos/logback/classic/html/DefaultCssBuilder;

    invoke-direct {v0}, Lch/qos/logback/classic/html/DefaultCssBuilder;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/html/HTMLLayout;->cssBuilder:Lch/qos/logback/core/html/CssBuilder;

    .line 58
    return-void
.end method

.method private appendEventToBuffer(Ljava/lang/StringBuilder;Lch/qos/logback/core/pattern/Converter;Lch/qos/logback/classic/spi/ILoggingEvent;)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p3, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lch/qos/logback/core/pattern/Converter<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ")V"
        }
    .end annotation

    .line 112
    .local p2, "c":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    const-string v0, "<td class=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0, p2}, Lch/qos/logback/classic/html/HTMLLayout;->computeConverterName(Lch/qos/logback/core/pattern/Converter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p2, p3}, Lch/qos/logback/core/pattern/Converter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/qos/logback/core/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v0, "</td>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    sget-object v0, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    return-void
.end method


# virtual methods
.method protected computeConverterName(Lch/qos/logback/core/pattern/Converter;)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # Lch/qos/logback/core/pattern/Converter;

    .line 130
    instance-of v0, p1, Lch/qos/logback/classic/pattern/MDCConverter;

    if-eqz v0, :cond_1

    .line 131
    move-object v0, p1

    check-cast v0, Lch/qos/logback/classic/pattern/MDCConverter;

    .line 132
    .local v0, "mc":Lch/qos/logback/classic/pattern/MDCConverter;
    invoke-virtual {v0}, Lch/qos/logback/classic/pattern/MDCConverter;->getFirstOption()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 134
    return-object v1

    .line 136
    :cond_0
    const-string v2, "MDC"

    return-object v2

    .line 139
    .end local v0    # "mc":Lch/qos/logback/classic/pattern/MDCConverter;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Lch/qos/logback/core/html/HTMLLayoutBase;->computeConverterName(Lch/qos/logback/core/pattern/Converter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doLayout(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 8
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lch/qos/logback/classic/html/HTMLLayout;->startNewTableIfLimitReached(Ljava/lang/StringBuilder;)V

    .line 80
    const/4 v1, 0x1

    .line 81
    .local v1, "odd":Z
    iget-wide v2, p0, Lch/qos/logback/classic/html/HTMLLayout;->counter:J

    const-wide/16 v4, 0x1

    add-long v6, v2, v4

    iput-wide v6, p0, Lch/qos/logback/classic/html/HTMLLayout;->counter:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 82
    const/4 v1, 0x0

    .line 85
    :cond_0
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v2

    invoke-virtual {v2}, Lch/qos/logback/classic/Level;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "level":Ljava/lang/String;
    sget-object v3, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v3, "<tr class=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    if-eqz v1, :cond_1

    .line 91
    const-string v3, " odd\">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 93
    :cond_1
    const-string v3, " even\">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :goto_0
    sget-object v3, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v3, p0, Lch/qos/logback/classic/html/HTMLLayout;->head:Lch/qos/logback/core/pattern/Converter;

    .line 98
    .local v3, "c":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    :goto_1
    if-eqz v3, :cond_2

    .line 99
    invoke-direct {p0, v0, v3, p1}, Lch/qos/logback/classic/html/HTMLLayout;->appendEventToBuffer(Ljava/lang/StringBuilder;Lch/qos/logback/core/pattern/Converter;Lch/qos/logback/classic/spi/ILoggingEvent;)V

    .line 100
    invoke-virtual {v3}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v3

    goto :goto_1

    .line 102
    :cond_2
    const-string v4, "</tr>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    sget-object v4, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThrowableProxy()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 106
    iget-object v4, p0, Lch/qos/logback/classic/html/HTMLLayout;->throwableRenderer:Lch/qos/logback/core/html/IThrowableRenderer;

    invoke-interface {v4, v0, p1}, Lch/qos/logback/core/html/IThrowableRenderer;->render(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 108
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic doLayout(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 40
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/html/HTMLLayout;->doLayout(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getDefaultConverterMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    sget-object v0, Lch/qos/logback/classic/PatternLayout;->defaultConverterMap:Ljava/util/Map;

    return-object v0
.end method

.method public getThrowableRenderer()Lch/qos/logback/core/html/IThrowableRenderer;
    .locals 1

    .line 121
    iget-object v0, p0, Lch/qos/logback/classic/html/HTMLLayout;->throwableRenderer:Lch/qos/logback/core/html/IThrowableRenderer;

    return-object v0
.end method

.method public setThrowableRenderer(Lch/qos/logback/core/html/IThrowableRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/html/IThrowableRenderer<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p1, "throwableRenderer":Lch/qos/logback/core/html/IThrowableRenderer;, "Lch/qos/logback/core/html/IThrowableRenderer<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    iput-object p1, p0, Lch/qos/logback/classic/html/HTMLLayout;->throwableRenderer:Lch/qos/logback/core/html/IThrowableRenderer;

    .line 126
    return-void
.end method

.method public start()V
    .locals 2

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "errorCount":I
    iget-object v1, p0, Lch/qos/logback/classic/html/HTMLLayout;->throwableRenderer:Lch/qos/logback/core/html/IThrowableRenderer;

    if-nez v1, :cond_0

    .line 64
    const-string v1, "ThrowableRender cannot be null."

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/html/HTMLLayout;->addError(Ljava/lang/String;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 67
    :cond_0
    if-nez v0, :cond_1

    .line 68
    invoke-super {p0}, Lch/qos/logback/core/html/HTMLLayoutBase;->start()V

    .line 70
    :cond_1
    return-void
.end method
