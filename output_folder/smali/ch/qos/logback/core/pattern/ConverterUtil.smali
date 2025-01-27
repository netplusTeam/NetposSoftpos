.class public Lch/qos/logback/core/pattern/ConverterUtil;
.super Ljava/lang/Object;
.source "ConverterUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findTail(Lch/qos/logback/core/pattern/Converter;)Lch/qos/logback/core/pattern/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/qos/logback/core/pattern/Converter<",
            "TE;>;)",
            "Lch/qos/logback/core/pattern/Converter<",
            "TE;>;"
        }
    .end annotation

    .line 44
    .local p0, "head":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    move-object v0, p0

    .line 45
    .local v0, "p":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v1

    .line 47
    .local v1, "next":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    if-nez v1, :cond_0

    .line 48
    goto :goto_1

    .line 50
    :cond_0
    move-object v0, v1

    .line 52
    .end local v1    # "next":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    goto :goto_0

    .line 53
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static setContextForConverters(Lch/qos/logback/core/Context;Lch/qos/logback/core/pattern/Converter;)V
    .locals 2
    .param p0, "context"    # Lch/qos/logback/core/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/qos/logback/core/Context;",
            "Lch/qos/logback/core/pattern/Converter<",
            "TE;>;)V"
        }
    .end annotation

    .line 57
    .local p1, "head":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    move-object v0, p1

    .line 58
    .local v0, "c":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 59
    instance-of v1, v0, Lch/qos/logback/core/spi/ContextAware;

    if-eqz v1, :cond_0

    .line 60
    move-object v1, v0

    check-cast v1, Lch/qos/logback/core/spi/ContextAware;

    invoke-interface {v1, p0}, Lch/qos/logback/core/spi/ContextAware;->setContext(Lch/qos/logback/core/Context;)V

    .line 62
    :cond_0
    invoke-virtual {v0}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method public static startConverters(Lch/qos/logback/core/pattern/Converter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/qos/logback/core/pattern/Converter<",
            "TE;>;)V"
        }
    .end annotation

    .line 27
    .local p0, "head":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    move-object v0, p0

    .line 28
    .local v0, "c":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 30
    instance-of v1, v0, Lch/qos/logback/core/pattern/CompositeConverter;

    if-eqz v1, :cond_0

    .line 31
    move-object v1, v0

    check-cast v1, Lch/qos/logback/core/pattern/CompositeConverter;

    .line 32
    .local v1, "cc":Lch/qos/logback/core/pattern/CompositeConverter;, "Lch/qos/logback/core/pattern/CompositeConverter<TE;>;"
    iget-object v2, v1, Lch/qos/logback/core/pattern/CompositeConverter;->childConverter:Lch/qos/logback/core/pattern/Converter;

    .line 33
    .local v2, "childConverter":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    invoke-static {v2}, Lch/qos/logback/core/pattern/ConverterUtil;->startConverters(Lch/qos/logback/core/pattern/Converter;)V

    .line 34
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/CompositeConverter;->start()V

    .end local v1    # "cc":Lch/qos/logback/core/pattern/CompositeConverter;, "Lch/qos/logback/core/pattern/CompositeConverter<TE;>;"
    .end local v2    # "childConverter":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    goto :goto_1

    .line 35
    :cond_0
    instance-of v1, v0, Lch/qos/logback/core/pattern/DynamicConverter;

    if-eqz v1, :cond_1

    .line 36
    move-object v1, v0

    check-cast v1, Lch/qos/logback/core/pattern/DynamicConverter;

    .line 37
    .local v1, "dc":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/DynamicConverter;->start()V

    goto :goto_2

    .line 35
    .end local v1    # "dc":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    :cond_1
    :goto_1
    nop

    .line 39
    :goto_2
    invoke-virtual {v0}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method
