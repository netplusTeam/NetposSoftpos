.class Lch/qos/logback/core/pattern/parser/Compiler;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "Compiler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/spi/ContextAwareBase;"
    }
.end annotation


# instance fields
.field final converterMap:Ljava/util/Map;

.field head:Lch/qos/logback/core/pattern/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/pattern/Converter<",
            "TE;>;"
        }
    .end annotation
.end field

.field tail:Lch/qos/logback/core/pattern/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/pattern/Converter<",
            "TE;>;"
        }
    .end annotation
.end field

.field final top:Lch/qos/logback/core/pattern/parser/Node;


# direct methods
.method constructor <init>(Lch/qos/logback/core/pattern/parser/Node;Ljava/util/Map;)V
    .locals 0
    .param p1, "top"    # Lch/qos/logback/core/pattern/parser/Node;
    .param p2, "converterMap"    # Ljava/util/Map;

    .line 33
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Compiler;, "Lch/qos/logback/core/pattern/parser/Compiler<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 34
    iput-object p1, p0, Lch/qos/logback/core/pattern/parser/Compiler;->top:Lch/qos/logback/core/pattern/parser/Node;

    .line 35
    iput-object p2, p0, Lch/qos/logback/core/pattern/parser/Compiler;->converterMap:Ljava/util/Map;

    .line 36
    return-void
.end method

.method private addToList(Lch/qos/logback/core/pattern/Converter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/pattern/Converter<",
            "TE;>;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Compiler;, "Lch/qos/logback/core/pattern/parser/Compiler<TE;>;"
    .local p1, "c":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/Compiler;->head:Lch/qos/logback/core/pattern/Converter;

    if-nez v0, :cond_0

    .line 83
    iput-object p1, p0, Lch/qos/logback/core/pattern/parser/Compiler;->tail:Lch/qos/logback/core/pattern/Converter;

    iput-object p1, p0, Lch/qos/logback/core/pattern/parser/Compiler;->head:Lch/qos/logback/core/pattern/Converter;

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/Compiler;->tail:Lch/qos/logback/core/pattern/Converter;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/pattern/Converter;->setNext(Lch/qos/logback/core/pattern/Converter;)V

    .line 86
    iput-object p1, p0, Lch/qos/logback/core/pattern/parser/Compiler;->tail:Lch/qos/logback/core/pattern/Converter;

    .line 88
    :goto_0
    return-void
.end method


# virtual methods
.method compile()Lch/qos/logback/core/pattern/Converter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/pattern/Converter<",
            "TE;>;"
        }
    .end annotation

    .line 39
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Compiler;, "Lch/qos/logback/core/pattern/parser/Compiler<TE;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/Compiler;->tail:Lch/qos/logback/core/pattern/Converter;

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/Compiler;->head:Lch/qos/logback/core/pattern/Converter;

    .line 40
    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/Compiler;->top:Lch/qos/logback/core/pattern/parser/Node;

    .local v0, "n":Lch/qos/logback/core/pattern/parser/Node;
    :goto_0
    if-eqz v0, :cond_2

    .line 41
    iget v1, v0, Lch/qos/logback/core/pattern/parser/Node;->type:I

    const-string v2, "]"

    const-string v3, "%PARSER_ERROR["

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 46
    :pswitch_0
    move-object v1, v0

    check-cast v1, Lch/qos/logback/core/pattern/parser/CompositeNode;

    .line 47
    .local v1, "cn":Lch/qos/logback/core/pattern/parser/CompositeNode;
    invoke-virtual {p0, v1}, Lch/qos/logback/core/pattern/parser/Compiler;->createCompositeConverter(Lch/qos/logback/core/pattern/parser/CompositeNode;)Lch/qos/logback/core/pattern/CompositeConverter;

    move-result-object v4

    .line 48
    .local v4, "compositeConverter":Lch/qos/logback/core/pattern/CompositeConverter;, "Lch/qos/logback/core/pattern/CompositeConverter<TE;>;"
    if-nez v4, :cond_0

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create converter for [%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lch/qos/logback/core/pattern/parser/CompositeNode;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] keyword"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lch/qos/logback/core/pattern/parser/Compiler;->addError(Ljava/lang/String;)V

    .line 50
    new-instance v5, Lch/qos/logback/core/pattern/LiteralConverter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lch/qos/logback/core/pattern/parser/CompositeNode;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lch/qos/logback/core/pattern/LiteralConverter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lch/qos/logback/core/pattern/parser/Compiler;->addToList(Lch/qos/logback/core/pattern/Converter;)V

    .line 51
    goto/16 :goto_1

    .line 53
    :cond_0
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/parser/CompositeNode;->getFormatInfo()Lch/qos/logback/core/pattern/FormatInfo;

    move-result-object v2

    invoke-virtual {v4, v2}, Lch/qos/logback/core/pattern/CompositeConverter;->setFormattingInfo(Lch/qos/logback/core/pattern/FormatInfo;)V

    .line 54
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/parser/CompositeNode;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v2}, Lch/qos/logback/core/pattern/CompositeConverter;->setOptionList(Ljava/util/List;)V

    .line 55
    new-instance v2, Lch/qos/logback/core/pattern/parser/Compiler;

    invoke-virtual {v1}, Lch/qos/logback/core/pattern/parser/CompositeNode;->getChildNode()Lch/qos/logback/core/pattern/parser/Node;

    move-result-object v3

    iget-object v5, p0, Lch/qos/logback/core/pattern/parser/Compiler;->converterMap:Ljava/util/Map;

    invoke-direct {v2, v3, v5}, Lch/qos/logback/core/pattern/parser/Compiler;-><init>(Lch/qos/logback/core/pattern/parser/Node;Ljava/util/Map;)V

    .line 56
    .local v2, "childCompiler":Lch/qos/logback/core/pattern/parser/Compiler;, "Lch/qos/logback/core/pattern/parser/Compiler<TE;>;"
    iget-object v3, p0, Lch/qos/logback/core/pattern/parser/Compiler;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v2, v3}, Lch/qos/logback/core/pattern/parser/Compiler;->setContext(Lch/qos/logback/core/Context;)V

    .line 57
    invoke-virtual {v2}, Lch/qos/logback/core/pattern/parser/Compiler;->compile()Lch/qos/logback/core/pattern/Converter;

    move-result-object v3

    .line 58
    .local v3, "childConverter":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    invoke-virtual {v4, v3}, Lch/qos/logback/core/pattern/CompositeConverter;->setChildConverter(Lch/qos/logback/core/pattern/Converter;)V

    .line 59
    invoke-direct {p0, v4}, Lch/qos/logback/core/pattern/parser/Compiler;->addToList(Lch/qos/logback/core/pattern/Converter;)V

    .line 60
    goto :goto_1

    .line 62
    .end local v1    # "cn":Lch/qos/logback/core/pattern/parser/CompositeNode;
    .end local v2    # "childCompiler":Lch/qos/logback/core/pattern/parser/Compiler;, "Lch/qos/logback/core/pattern/parser/Compiler<TE;>;"
    .end local v3    # "childConverter":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    .end local v4    # "compositeConverter":Lch/qos/logback/core/pattern/CompositeConverter;, "Lch/qos/logback/core/pattern/CompositeConverter<TE;>;"
    :pswitch_1
    move-object v1, v0

    check-cast v1, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;

    .line 63
    .local v1, "kn":Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;
    invoke-virtual {p0, v1}, Lch/qos/logback/core/pattern/parser/Compiler;->createConverter(Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;)Lch/qos/logback/core/pattern/DynamicConverter;

    move-result-object v4

    .line 64
    .local v4, "dynaConverter":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    if-eqz v4, :cond_1

    .line 65
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->getFormatInfo()Lch/qos/logback/core/pattern/FormatInfo;

    move-result-object v2

    invoke-virtual {v4, v2}, Lch/qos/logback/core/pattern/DynamicConverter;->setFormattingInfo(Lch/qos/logback/core/pattern/FormatInfo;)V

    .line 66
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v2}, Lch/qos/logback/core/pattern/DynamicConverter;->setOptionList(Ljava/util/List;)V

    .line 67
    invoke-direct {p0, v4}, Lch/qos/logback/core/pattern/parser/Compiler;->addToList(Lch/qos/logback/core/pattern/Converter;)V

    goto :goto_1

    .line 71
    :cond_1
    new-instance v5, Lch/qos/logback/core/pattern/LiteralConverter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lch/qos/logback/core/pattern/LiteralConverter;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 72
    .local v2, "errConveter":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    new-instance v3, Lch/qos/logback/core/status/ErrorStatus;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not a valid conversion word"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, p0}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lch/qos/logback/core/pattern/parser/Compiler;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 73
    invoke-direct {p0, v2}, Lch/qos/logback/core/pattern/parser/Compiler;->addToList(Lch/qos/logback/core/pattern/Converter;)V

    goto :goto_1

    .line 43
    .end local v1    # "kn":Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;
    .end local v2    # "errConveter":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    .end local v4    # "dynaConverter":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    :pswitch_2
    new-instance v1, Lch/qos/logback/core/pattern/LiteralConverter;

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lch/qos/logback/core/pattern/LiteralConverter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lch/qos/logback/core/pattern/parser/Compiler;->addToList(Lch/qos/logback/core/pattern/Converter;)V

    .line 44
    nop

    .line 40
    :goto_1
    iget-object v0, v0, Lch/qos/logback/core/pattern/parser/Node;->next:Lch/qos/logback/core/pattern/parser/Node;

    goto/16 :goto_0

    .line 78
    .end local v0    # "n":Lch/qos/logback/core/pattern/parser/Node;
    :cond_2
    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/Compiler;->head:Lch/qos/logback/core/pattern/Converter;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method createCompositeConverter(Lch/qos/logback/core/pattern/parser/CompositeNode;)Lch/qos/logback/core/pattern/CompositeConverter;
    .locals 7
    .param p1, "cn"    # Lch/qos/logback/core/pattern/parser/CompositeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/pattern/parser/CompositeNode;",
            ")",
            "Lch/qos/logback/core/pattern/CompositeConverter<",
            "TE;>;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Compiler;, "Lch/qos/logback/core/pattern/parser/Compiler<TE;>;"
    invoke-virtual {p1}, Lch/qos/logback/core/pattern/parser/CompositeNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    .local v0, "keyword":Ljava/lang/String;
    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/Compiler;->converterMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    .local v1, "converterClassStr":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "]"

    if-eqz v1, :cond_0

    .line 129
    :try_start_0
    const-class v4, Lch/qos/logback/core/pattern/CompositeConverter;

    iget-object v5, p0, Lch/qos/logback/core/pattern/parser/Compiler;->context:Lch/qos/logback/core/Context;

    invoke-static {v1, v4, v5}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lch/qos/logback/core/pattern/CompositeConverter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 130
    :catch_0
    move-exception v4

    .line 131
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to instantiate converter class ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] as a composite converter for keyword ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lch/qos/logback/core/pattern/parser/Compiler;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    return-object v2

    .line 135
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is no conversion class registered for composite conversion word ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/core/pattern/parser/Compiler;->addError(Ljava/lang/String;)V

    .line 136
    return-object v2
.end method

.method createConverter(Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;)Lch/qos/logback/core/pattern/DynamicConverter;
    .locals 7
    .param p1, "kn"    # Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;",
            ")",
            "Lch/qos/logback/core/pattern/DynamicConverter<",
            "TE;>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Compiler;, "Lch/qos/logback/core/pattern/parser/Compiler<TE;>;"
    invoke-virtual {p1}, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    .local v0, "keyword":Ljava/lang/String;
    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/Compiler;->converterMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    .local v1, "converterClassStr":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "]"

    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    const-class v4, Lch/qos/logback/core/pattern/DynamicConverter;

    iget-object v5, p0, Lch/qos/logback/core/pattern/parser/Compiler;->context:Lch/qos/logback/core/Context;

    invoke-static {v1, v4, v5}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lch/qos/logback/core/pattern/DynamicConverter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 105
    :catch_0
    move-exception v4

    .line 106
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to instantiate converter class ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] for keyword ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lch/qos/logback/core/pattern/parser/Compiler;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    return-object v2

    .line 110
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is no conversion class registered for conversion word ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/core/pattern/parser/Compiler;->addError(Ljava/lang/String;)V

    .line 111
    return-object v2
.end method
