.class public Lch/qos/logback/core/rolling/helper/FileNamePattern;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "FileNamePattern.java"


# static fields
.field static final CONVERTER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field headTokenConverter:Lch/qos/logback/core/pattern/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/pattern/Converter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->CONVERTER_MAP:Ljava/util/Map;

    .line 42
    const-class v1, Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "i"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-class v1, Lch/qos/logback/core/rolling/helper/DateTokenConverter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "d"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lch/qos/logback/core/Context;)V
    .locals 1
    .param p1, "patternArg"    # Ljava/lang/String;
    .param p2, "contextArg"    # Lch/qos/logback/core/Context;

    .line 49
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 51
    invoke-static {p1}, Lch/qos/logback/core/rolling/helper/FileFilterUtil;->slashify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->setPattern(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p2}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->setContext(Lch/qos/logback/core/Context;)V

    .line 53
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->parse()V

    .line 54
    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->headTokenConverter:Lch/qos/logback/core/pattern/Converter;

    invoke-static {v0}, Lch/qos/logback/core/pattern/ConverterUtil;->startConverters(Lch/qos/logback/core/pattern/Converter;)V

    .line 55
    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->headTokenConverter:Lch/qos/logback/core/pattern/Converter;

    .line 167
    .local v1, "p":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<Ljava/lang/Object;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1, p1}, Lch/qos/logback/core/pattern/Converter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v1

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public convertInt(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs convertMultipleArguments([Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p1, "objectList"    # [Ljava/lang/Object;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->headTokenConverter:Lch/qos/logback/core/pattern/Converter;

    .line 148
    .local v1, "c":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<Ljava/lang/Object;>;"
    :goto_0
    if-eqz v1, :cond_3

    .line 149
    instance-of v2, v1, Lch/qos/logback/core/rolling/helper/MonoTypedConverter;

    if-eqz v2, :cond_2

    .line 150
    move-object v2, v1

    check-cast v2, Lch/qos/logback/core/rolling/helper/MonoTypedConverter;

    .line 151
    .local v2, "monoTyped":Lch/qos/logback/core/rolling/helper/MonoTypedConverter;
    move-object v3, p1

    .local v3, "arr$":[Ljava/lang/Object;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 152
    .local v6, "o":Ljava/lang/Object;
    invoke-interface {v2, v6}, Lch/qos/logback/core/rolling/helper/MonoTypedConverter;->isApplicable(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 153
    invoke-virtual {v1, v6}, Lch/qos/logback/core/pattern/Converter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .end local v6    # "o":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 156
    .end local v2    # "monoTyped":Lch/qos/logback/core/rolling/helper/MonoTypedConverter;
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    goto :goto_2

    .line 157
    :cond_2
    invoke-virtual {v1, p1}, Lch/qos/logback/core/pattern/Converter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :goto_2
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v1

    goto :goto_0

    .line 161
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 94
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 95
    return v0

    .line 96
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 97
    return v1

    .line 98
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 99
    return v1

    .line 100
    :cond_2
    move-object v2, p1

    check-cast v2, Lch/qos/logback/core/rolling/helper/FileNamePattern;

    .line 101
    .local v2, "other":Lch/qos/logback/core/rolling/helper/FileNamePattern;
    iget-object v3, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->pattern:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 102
    iget-object v3, v2, Lch/qos/logback/core/rolling/helper/FileNamePattern;->pattern:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 103
    return v1

    .line 104
    :cond_3
    iget-object v4, v2, Lch/qos/logback/core/rolling/helper/FileNamePattern;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 105
    return v1

    .line 106
    :cond_4
    return v0
.end method

.method escapeRightParantesis(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->pattern:Ljava/lang/String;

    const-string v1, ")"

    const-string v2, "\\)"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntegerTokenConverter()Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;
    .locals 2

    .line 128
    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->headTokenConverter:Lch/qos/logback/core/pattern/Converter;

    .line 130
    .local v0, "p":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<Ljava/lang/Object;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 131
    instance-of v1, v0, Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;

    if-eqz v1, :cond_0

    .line 132
    move-object v1, v0

    check-cast v1, Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;

    return-object v1

    .line 135
    :cond_0
    invoke-virtual {v0}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryDateTokenConverter()Lch/qos/logback/core/rolling/helper/DateTokenConverter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/rolling/helper/DateTokenConverter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->headTokenConverter:Lch/qos/logback/core/pattern/Converter;

    .line 113
    .local v0, "p":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<Ljava/lang/Object;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 114
    instance-of v1, v0, Lch/qos/logback/core/rolling/helper/DateTokenConverter;

    if-eqz v1, :cond_0

    .line 115
    move-object v1, v0

    check-cast v1, Lch/qos/logback/core/rolling/helper/DateTokenConverter;

    .line 117
    .local v1, "dtc":Lch/qos/logback/core/rolling/helper/DateTokenConverter;, "Lch/qos/logback/core/rolling/helper/DateTokenConverter<Ljava/lang/Object;>;"
    invoke-virtual {v1}, Lch/qos/logback/core/rolling/helper/DateTokenConverter;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    return-object v1

    .line 121
    .end local v1    # "dtc":Lch/qos/logback/core/rolling/helper/DateTokenConverter;, "Lch/qos/logback/core/rolling/helper/DateTokenConverter<Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v0}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasIntegerTokenCOnverter()Z
    .locals 2

    .line 141
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->getIntegerTokenConverter()Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;

    move-result-object v0

    .line 142
    .local v0, "itc":Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 85
    const/16 v0, 0x1f

    .line 86
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 87
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->pattern:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 88
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method parse()V
    .locals 4

    .line 64
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->pattern:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->escapeRightParantesis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "patternForParsing":Ljava/lang/String;
    new-instance v1, Lch/qos/logback/core/pattern/parser/Parser;

    new-instance v2, Lch/qos/logback/core/pattern/util/AlmostAsIsEscapeUtil;

    invoke-direct {v2}, Lch/qos/logback/core/pattern/util/AlmostAsIsEscapeUtil;-><init>()V

    invoke-direct {v1, v0, v2}, Lch/qos/logback/core/pattern/parser/Parser;-><init>(Ljava/lang/String;Lch/qos/logback/core/pattern/util/IEscapeUtil;)V

    .line 66
    .local v1, "p":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<Ljava/lang/Object;>;"
    iget-object v2, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v1, v2}, Lch/qos/logback/core/pattern/parser/Parser;->setContext(Lch/qos/logback/core/Context;)V

    .line 67
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/parser/Parser;->parse()Lch/qos/logback/core/pattern/parser/Node;

    move-result-object v2

    .line 68
    .local v2, "t":Lch/qos/logback/core/pattern/parser/Node;
    sget-object v3, Lch/qos/logback/core/rolling/helper/FileNamePattern;->CONVERTER_MAP:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lch/qos/logback/core/pattern/parser/Parser;->compile(Lch/qos/logback/core/pattern/parser/Node;Ljava/util/Map;)Lch/qos/logback/core/pattern/Converter;

    move-result-object v3

    iput-object v3, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->headTokenConverter:Lch/qos/logback/core/pattern/Converter;
    :try_end_0
    .catch Lch/qos/logback/core/spi/ScanException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0    # "patternForParsing":Ljava/lang/String;
    .end local v1    # "p":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<Ljava/lang/Object;>;"
    .end local v2    # "t":Lch/qos/logback/core/pattern/parser/Node;
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "sce":Lch/qos/logback/core/spi/ScanException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse pattern \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .end local v0    # "sce":Lch/qos/logback/core/spi/ScanException;
    :goto_0
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 179
    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->pattern:Ljava/lang/String;

    .line 183
    :cond_0
    return-void
.end method

.method public toRegex()Ljava/lang/String;
    .locals 4

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->headTokenConverter:Lch/qos/logback/core/pattern/Converter;

    .line 217
    .local v1, "p":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<Ljava/lang/Object;>;"
    :goto_0
    if-eqz v1, :cond_3

    .line 218
    instance-of v2, v1, Lch/qos/logback/core/pattern/LiteralConverter;

    if-eqz v2, :cond_0

    .line 219
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lch/qos/logback/core/pattern/Converter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 220
    :cond_0
    instance-of v2, v1, Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;

    if-eqz v2, :cond_1

    .line 221
    const-string v2, "\\d{1,2}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 222
    :cond_1
    instance-of v2, v1, Lch/qos/logback/core/rolling/helper/DateTokenConverter;

    if-eqz v2, :cond_2

    .line 223
    move-object v2, v1

    check-cast v2, Lch/qos/logback/core/rolling/helper/DateTokenConverter;

    .line 224
    .local v2, "dtc":Lch/qos/logback/core/rolling/helper/DateTokenConverter;, "Lch/qos/logback/core/rolling/helper/DateTokenConverter<Ljava/lang/Object;>;"
    invoke-virtual {v2}, Lch/qos/logback/core/rolling/helper/DateTokenConverter;->toRegex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .end local v2    # "dtc":Lch/qos/logback/core/rolling/helper/DateTokenConverter;, "Lch/qos/logback/core/rolling/helper/DateTokenConverter<Ljava/lang/Object;>;"
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v1

    goto :goto_0

    .line 228
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toRegexForFixedDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p1, "date"    # Ljava/util/Date;

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->headTokenConverter:Lch/qos/logback/core/pattern/Converter;

    .line 198
    .local v1, "p":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<Ljava/lang/Object;>;"
    :goto_0
    if-eqz v1, :cond_3

    .line 199
    instance-of v2, v1, Lch/qos/logback/core/pattern/LiteralConverter;

    if-eqz v2, :cond_0

    .line 200
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lch/qos/logback/core/pattern/Converter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 201
    :cond_0
    instance-of v2, v1, Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;

    if-eqz v2, :cond_1

    .line 202
    const-string v2, "(\\d{1,3})"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 203
    :cond_1
    instance-of v2, v1, Lch/qos/logback/core/rolling/helper/DateTokenConverter;

    if-eqz v2, :cond_2

    .line 204
    invoke-virtual {v1, p1}, Lch/qos/logback/core/pattern/Converter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v1

    goto :goto_0

    .line 208
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->pattern:Ljava/lang/String;

    return-object v0
.end method
