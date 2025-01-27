.class public Lch/qos/logback/classic/turbo/MDCFilter;
.super Lch/qos/logback/classic/turbo/MatchingFilter;
.source "MDCFilter.java"


# instance fields
.field MDCKey:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lch/qos/logback/classic/turbo/MatchingFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public decide(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;
    .locals 2
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "logger"    # Lch/qos/logback/classic/Logger;
    .param p3, "level"    # Lch/qos/logback/classic/Level;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;
    .param p6, "t"    # Ljava/lang/Throwable;

    .line 53
    iget-object v0, p0, Lch/qos/logback/classic/turbo/MDCFilter;->MDCKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    return-object v0

    .line 57
    :cond_0
    invoke-static {v0}, Lorg/slf4j/MDC;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lch/qos/logback/classic/turbo/MDCFilter;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lch/qos/logback/classic/turbo/MDCFilter;->onMatch:Lch/qos/logback/core/spi/FilterReply;

    return-object v1

    .line 61
    :cond_1
    iget-object v1, p0, Lch/qos/logback/classic/turbo/MDCFilter;->onMismatch:Lch/qos/logback/core/spi/FilterReply;

    return-object v1
.end method

.method public setMDCKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "MDCKey"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lch/qos/logback/classic/turbo/MDCFilter;->MDCKey:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lch/qos/logback/classic/turbo/MDCFilter;->value:Ljava/lang/String;

    .line 66
    return-void
.end method
