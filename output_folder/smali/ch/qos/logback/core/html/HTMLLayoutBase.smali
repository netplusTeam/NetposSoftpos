.class public abstract Lch/qos/logback/core/html/HTMLLayoutBase;
.super Lch/qos/logback/core/LayoutBase;
.source "HTMLLayoutBase.java"


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


# instance fields
.field protected counter:J

.field protected cssBuilder:Lch/qos/logback/core/html/CssBuilder;

.field protected head:Lch/qos/logback/core/pattern/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/pattern/Converter<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected pattern:Ljava/lang/String;

.field protected title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    .local p0, "this":Lch/qos/logback/core/html/HTMLLayoutBase;, "Lch/qos/logback/core/html/HTMLLayoutBase<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/LayoutBase;-><init>()V

    .line 42
    const-string v0, "Logback Log Messages"

    iput-object v0, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->title:Ljava/lang/String;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->counter:J

    return-void
.end method

.method private buildHeaderRowForTable(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sbuf"    # Ljava/lang/StringBuilder;

    .line 198
    .local p0, "this":Lch/qos/logback/core/html/HTMLLayoutBase;, "Lch/qos/logback/core/html/HTMLLayoutBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->head:Lch/qos/logback/core/pattern/Converter;

    .line 200
    .local v0, "c":Lch/qos/logback/core/pattern/Converter;
    const-string v1, "<tr class=\"header\">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :goto_0
    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {p0, v0}, Lch/qos/logback/core/html/HTMLLayoutBase;->computeConverterName(Lch/qos/logback/core/pattern/Converter;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 205
    invoke-virtual {v0}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v0

    .line 206
    goto :goto_0

    .line 208
    :cond_0
    const-string v2, "<td class=\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p0, v0}, Lch/qos/logback/core/html/HTMLLayoutBase;->computeConverterName(Lch/qos/logback/core/pattern/Converter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v2, "\">"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p0, v0}, Lch/qos/logback/core/html/HTMLLayoutBase;->computeConverterName(Lch/qos/logback/core/pattern/Converter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v2, "</td>"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    sget-object v2, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v0

    goto :goto_0

    .line 216
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    const-string v1, "</tr>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    return-void
.end method


# virtual methods
.method protected computeConverterName(Lch/qos/logback/core/pattern/Converter;)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # Lch/qos/logback/core/pattern/Converter;

    .line 250
    .local p0, "this":Lch/qos/logback/core/html/HTMLLayoutBase;, "Lch/qos/logback/core/html/HTMLLayoutBase<TE;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "className":Ljava/lang/String;
    const-string v1, "Converter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 252
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 253
    return-object v0

    .line 255
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 148
    .local p0, "this":Lch/qos/logback/core/html/HTMLLayoutBase;, "Lch/qos/logback/core/html/HTMLLayoutBase<TE;>;"
    const-string/jumbo v0, "text/html"

    return-object v0
.end method

.method public getCssBuilder()Lch/qos/logback/core/html/CssBuilder;
    .locals 1

    .line 68
    .local p0, "this":Lch/qos/logback/core/html/HTMLLayoutBase;, "Lch/qos/logback/core/html/HTMLLayoutBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->cssBuilder:Lch/qos/logback/core/html/CssBuilder;

    return-object v0
.end method

.method protected abstract getDefaultConverterMap()Ljava/util/Map;
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

    .line 105
    .local p0, "this":Lch/qos/logback/core/html/HTMLLayoutBase;, "Lch/qos/logback/core/html/HTMLLayoutBase<TE;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v0, "effectiveMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/html/HTMLLayoutBase;->getDefaultConverterMap()Ljava/util/Map;

    move-result-object v1

    .line 109
    .local v1, "defaultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 110
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/html/HTMLLayoutBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object v2

    .line 115
    .local v2, "context":Lch/qos/logback/core/Context;
    if-eqz v2, :cond_1

    .line 117
    const-string v3, "PATTERN_RULE_REGISTRY"

    invoke-interface {v2, v3}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 118
    .local v3, "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 119
    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 122
    .end local v3    # "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-object v0
.end method

.method public getFileFooter()Ljava/lang/String;
    .locals 2

    .line 231
    .local p0, "this":Lch/qos/logback/core/html/HTMLLayoutBase;, "Lch/qos/logback/core/html/HTMLLayoutBase<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFileHeader()Ljava/lang/String;
    .locals 2

    .line 156
    .local p0, "this":Lch/qos/logback/core/html/HTMLLayoutBase;, "Lch/qos/logback/core/html/HTMLLayoutBase<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, " \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, "<html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, "  <head>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, "    <title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v1, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, "</title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->cssBuilder:Lch/qos/logback/core/html/CssBuilder;

    invoke-interface {v1, v0}, Lch/qos/logback/core/html/CssBuilder;->addCss(Ljava/lang/StringBuilder;)V

    .line 171
    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, "  </head>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, "<body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 64
    .local p0, "this":Lch/qos/logback/core/html/HTMLLayoutBase;, "Lch/qos/logback/core/html/HTMLLayoutBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getPresentationFooter()Ljava/lang/String;
    .locals 2

    .line 221
    .local p0, "this":Lch/qos/logback/core/html/HTMLLayoutBase;, "Lch/qos/logback/core/html/HTMLLayoutBase<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "</table>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPresentationHeader()Ljava/lang/String;
    .locals 2

    .line 181
    .local p0, "this":Lch/qos/logback/core/html/HTMLLayoutBase;, "Lch/qos/logback/core/html/HTMLLayoutBase<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "<hr/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, "<p>Log session start time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, "</p><p></p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, "<table cellspacing=\"0\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-direct {p0, v0}, Lch/qos/logback/core/html/HTMLLayoutBase;->buildHeaderRowForTable(Ljava/lang/StringBuilder;)V

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 140
    .local p0, "this":Lch/qos/logback/core/html/HTMLLayoutBase;, "Lch/qos/logback/core/html/HTMLLayoutBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCssBuilder(Lch/qos/logback/core/html/CssBuilder;)V
    .locals 0
    .param p1, "cssBuilder"    # Lch/qos/logback/core/html/CssBuilder;

    .line 72
    .local p0, "this":Lch/qos/logback/core/html/HTMLLayoutBase;, "Lch/qos/logback/core/html/HTMLLayoutBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->cssBuilder:Lch/qos/logback/core/html/CssBuilder;

    .line 73
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversionPattern"    # Ljava/lang/String;

    .line 57
    .local p0, "this":Lch/qos/logback/core/html/HTMLLayoutBase;, "Lch/qos/logback/core/html/HTMLLayoutBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->pattern:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 133
    .local p0, "this":Lch/qos/logback/core/html/HTMLLayoutBase;, "Lch/qos/logback/core/html/HTMLLayoutBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->title:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public start()V
    .locals 4

    .line 80
    .local p0, "this":Lch/qos/logback/core/html/HTMLLayoutBase;, "Lch/qos/logback/core/html/HTMLLayoutBase<TE;>;"
    const/4 v0, 0x0

    .line 83
    .local v0, "errorCount":I
    :try_start_0
    new-instance v1, Lch/qos/logback/core/pattern/parser/Parser;

    iget-object v2, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->pattern:Ljava/lang/String;

    invoke-direct {v1, v2}, Lch/qos/logback/core/pattern/parser/Parser;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "p":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/html/HTMLLayoutBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/qos/logback/core/pattern/parser/Parser;->setContext(Lch/qos/logback/core/Context;)V

    .line 85
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/parser/Parser;->parse()Lch/qos/logback/core/pattern/parser/Node;

    move-result-object v2

    .line 86
    .local v2, "t":Lch/qos/logback/core/pattern/parser/Node;
    invoke-virtual {p0}, Lch/qos/logback/core/html/HTMLLayoutBase;->getEffectiveConverterMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lch/qos/logback/core/pattern/parser/Parser;->compile(Lch/qos/logback/core/pattern/parser/Node;Ljava/util/Map;)Lch/qos/logback/core/pattern/Converter;

    move-result-object v3

    iput-object v3, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->head:Lch/qos/logback/core/pattern/Converter;

    .line 87
    invoke-static {v3}, Lch/qos/logback/core/pattern/ConverterUtil;->startConverters(Lch/qos/logback/core/pattern/Converter;)V
    :try_end_0
    .catch Lch/qos/logback/core/spi/ScanException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1    # "p":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<TE;>;"
    .end local v2    # "t":Lch/qos/logback/core/pattern/parser/Node;
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "ex":Lch/qos/logback/core/spi/ScanException;
    const-string v2, "Incorrect pattern found"

    invoke-virtual {p0, v2, v1}, Lch/qos/logback/core/html/HTMLLayoutBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 93
    .end local v1    # "ex":Lch/qos/logback/core/spi/ScanException;
    :goto_0
    if-nez v0, :cond_0

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lch/qos/logback/core/LayoutBase;->started:Z

    .line 96
    :cond_0
    return-void
.end method

.method protected startNewTableIfLimitReached(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sbuf"    # Ljava/lang/StringBuilder;

    .line 238
    .local p0, "this":Lch/qos/logback/core/html/HTMLLayoutBase;, "Lch/qos/logback/core/html/HTMLLayoutBase<TE;>;"
    iget-wide v0, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->counter:J

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 239
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->counter:J

    .line 240
    const-string v0, "</table>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    sget-object v0, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v0, "<p></p>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string v0, "<table cellspacing=\"0\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    sget-object v0, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-direct {p0, p1}, Lch/qos/logback/core/html/HTMLLayoutBase;->buildHeaderRowForTable(Ljava/lang/StringBuilder;)V

    .line 247
    :cond_0
    return-void
.end method
