.class public abstract Lch/qos/logback/core/pattern/PatternLayoutBase;
.super Lch/qos/logback/core/LayoutBase;
.source "PatternLayoutBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/LayoutBase<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final INTIAL_STRING_BUILDER_SIZE:I = 0x100


# instance fields
.field head:Lch/qos/logback/core/pattern/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/pattern/Converter<",
            "TE;>;"
        }
    .end annotation
.end field

.field instanceConverterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected outputPatternAsHeader:Z

.field pattern:Ljava/lang/String;

.field protected postCompileProcessor:Lch/qos/logback/core/pattern/PostCompileProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/pattern/PostCompileProcessor<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutBase;, "Lch/qos/logback/core/pattern/PatternLayoutBase<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/LayoutBase;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->instanceConverterMap:Ljava/util/Map;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->outputPatternAsHeader:Z

    return-void
.end method


# virtual methods
.method public abstract getDefaultConverterMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getEffectiveConverterMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutBase;, "Lch/qos/logback/core/pattern/PatternLayoutBase<TE;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v0, "effectiveMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/PatternLayoutBase;->getDefaultConverterMap()Ljava/util/Map;

    move-result-object v1

    .line 55
    .local v1, "defaultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 56
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/PatternLayoutBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object v2

    .line 61
    .local v2, "context":Lch/qos/logback/core/Context;
    if-eqz v2, :cond_1

    .line 63
    const-string v3, "PATTERN_RULE_REGISTRY"

    invoke-interface {v2, v3}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 64
    .local v3, "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 65
    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 69
    .end local v3    # "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->instanceConverterMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 70
    return-object v0
.end method

.method public getInstanceConverterMap()Ljava/util/Map;
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

    .line 134
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutBase;, "Lch/qos/logback/core/pattern/PatternLayoutBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->instanceConverterMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 122
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutBase;, "Lch/qos/logback/core/pattern/PatternLayoutBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getPresentationHeader()Ljava/lang/String;
    .locals 2

    .line 151
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutBase;, "Lch/qos/logback/core/pattern/PatternLayoutBase<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->outputPatternAsHeader:Z

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/PatternLayoutBase;->getPresentationHeaderPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    invoke-super {p0}, Lch/qos/logback/core/LayoutBase;->getPresentationHeader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPresentationHeaderPrefix()Ljava/lang/String;
    .locals 1

    .line 138
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutBase;, "Lch/qos/logback/core/pattern/PatternLayoutBase<TE;>;"
    const-string v0, ""

    return-object v0
.end method

.method public isOutputPatternAsHeader()Z
    .locals 1

    .line 142
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutBase;, "Lch/qos/logback/core/pattern/PatternLayoutBase<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->outputPatternAsHeader:Z

    return v0
.end method

.method protected setContextForConverters(Lch/qos/logback/core/pattern/Converter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/pattern/Converter<",
            "TE;>;)V"
        }
    .end annotation

    .line 108
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutBase;, "Lch/qos/logback/core/pattern/PatternLayoutBase<TE;>;"
    .local p1, "head":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/PatternLayoutBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lch/qos/logback/core/pattern/ConverterUtil;->setContextForConverters(Lch/qos/logback/core/Context;Lch/qos/logback/core/pattern/Converter;)V

    .line 109
    return-void
.end method

.method public setOutputPatternAsHeader(Z)V
    .locals 0
    .param p1, "outputPatternAsHeader"    # Z

    .line 146
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutBase;, "Lch/qos/logback/core/pattern/PatternLayoutBase<TE;>;"
    iput-boolean p1, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->outputPatternAsHeader:Z

    .line 147
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .line 126
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutBase;, "Lch/qos/logback/core/pattern/PatternLayoutBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->pattern:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setPostCompileProcessor(Lch/qos/logback/core/pattern/PostCompileProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/pattern/PostCompileProcessor<",
            "TE;>;)V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutBase;, "Lch/qos/logback/core/pattern/PatternLayoutBase<TE;>;"
    .local p1, "postCompileProcessor":Lch/qos/logback/core/pattern/PostCompileProcessor;, "Lch/qos/logback/core/pattern/PostCompileProcessor<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->postCompileProcessor:Lch/qos/logback/core/pattern/PostCompileProcessor;

    .line 99
    return-void
.end method

.method public start()V
    .locals 5

    .line 74
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutBase;, "Lch/qos/logback/core/pattern/PatternLayoutBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    :try_start_0
    new-instance v0, Lch/qos/logback/core/pattern/parser/Parser;

    iget-object v1, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->pattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Lch/qos/logback/core/pattern/parser/Parser;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "p":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/PatternLayoutBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/PatternLayoutBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/core/pattern/parser/Parser;->setContext(Lch/qos/logback/core/Context;)V

    .line 83
    :cond_1
    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Parser;->parse()Lch/qos/logback/core/pattern/parser/Node;

    move-result-object v1

    .line 84
    .local v1, "t":Lch/qos/logback/core/pattern/parser/Node;
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/PatternLayoutBase;->getEffectiveConverterMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lch/qos/logback/core/pattern/parser/Parser;->compile(Lch/qos/logback/core/pattern/parser/Node;Ljava/util/Map;)Lch/qos/logback/core/pattern/Converter;

    move-result-object v2

    iput-object v2, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->head:Lch/qos/logback/core/pattern/Converter;

    .line 85
    iget-object v2, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->postCompileProcessor:Lch/qos/logback/core/pattern/PostCompileProcessor;

    if-eqz v2, :cond_2

    .line 86
    iget-object v3, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->context:Lch/qos/logback/core/Context;

    iget-object v4, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->head:Lch/qos/logback/core/pattern/Converter;

    invoke-interface {v2, v3, v4}, Lch/qos/logback/core/pattern/PostCompileProcessor;->process(Lch/qos/logback/core/Context;Lch/qos/logback/core/pattern/Converter;)V

    .line 88
    :cond_2
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/PatternLayoutBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->head:Lch/qos/logback/core/pattern/Converter;

    invoke-static {v2, v3}, Lch/qos/logback/core/pattern/ConverterUtil;->setContextForConverters(Lch/qos/logback/core/Context;Lch/qos/logback/core/pattern/Converter;)V

    .line 89
    iget-object v2, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->head:Lch/qos/logback/core/pattern/Converter;

    invoke-static {v2}, Lch/qos/logback/core/pattern/ConverterUtil;->startConverters(Lch/qos/logback/core/pattern/Converter;)V

    .line 90
    invoke-super {p0}, Lch/qos/logback/core/LayoutBase;->start()V
    :try_end_0
    .catch Lch/qos/logback/core/spi/ScanException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "p":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<TE;>;"
    .end local v1    # "t":Lch/qos/logback/core/pattern/parser/Node;
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "sce":Lch/qos/logback/core/spi/ScanException;
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/PatternLayoutBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object v1

    invoke-interface {v1}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v1

    .line 93
    .local v1, "sm":Lch/qos/logback/core/status/StatusManager;
    new-instance v2, Lch/qos/logback/core/status/ErrorStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse pattern \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/PatternLayoutBase;->getPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v0}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    .line 95
    .end local v0    # "sce":Lch/qos/logback/core/spi/ScanException;
    .end local v1    # "sm":Lch/qos/logback/core/status/StatusManager;
    :goto_0
    return-void

    .line 75
    :cond_3
    :goto_1
    const-string v0, "Empty or null pattern."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/pattern/PatternLayoutBase;->addError(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 130
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutBase;, "Lch/qos/logback/core/pattern/PatternLayoutBase<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/PatternLayoutBase;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeLoopOnConverters(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutBase;, "Lch/qos/logback/core/pattern/PatternLayoutBase<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 113
    .local v0, "strBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lch/qos/logback/core/pattern/PatternLayoutBase;->head:Lch/qos/logback/core/pattern/Converter;

    .line 114
    .local v1, "c":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v1, v0, p1}, Lch/qos/logback/core/pattern/Converter;->write(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v1

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
