.class public final Lch/qos/logback/classic/pattern/PropertyConverter;
.super Lch/qos/logback/classic/pattern/ClassicConverter;
.source "PropertyConverter.java"


# instance fields
.field key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lch/qos/logback/classic/pattern/ClassicConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 4
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 34
    iget-object v0, p0, Lch/qos/logback/classic/pattern/PropertyConverter;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 35
    const-string v0, "Property_HAS_NO_KEY"

    return-object v0

    .line 37
    :cond_0
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerContextVO()Lch/qos/logback/classic/spi/LoggerContextVO;

    move-result-object v0

    .line 38
    .local v0, "lcvo":Lch/qos/logback/classic/spi/LoggerContextVO;
    invoke-virtual {v0}, Lch/qos/logback/classic/spi/LoggerContextVO;->getPropertyMap()Ljava/util/Map;

    move-result-object v1

    .line 39
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lch/qos/logback/classic/pattern/PropertyConverter;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 40
    .local v2, "val":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 41
    return-object v2

    .line 43
    :cond_1
    iget-object v3, p0, Lch/qos/logback/classic/pattern/PropertyConverter;->key:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 21
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/pattern/PropertyConverter;->convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public start()V
    .locals 1

    .line 26
    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/PropertyConverter;->getFirstOption()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "optStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 28
    iput-object v0, p0, Lch/qos/logback/classic/pattern/PropertyConverter;->key:Ljava/lang/String;

    .line 29
    invoke-super {p0}, Lch/qos/logback/classic/pattern/ClassicConverter;->start()V

    .line 31
    :cond_0
    return-void
.end method
