.class public Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;
.super Ljava/lang/Object;
.source "BackgroundPositionShorthandResolver.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final POSITION_VALUES_MAX_COUNT:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkProperty(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 102
    .local p0, "resolvedProps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    .line 104
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 103
    const-string v2, "Invalid css property declaration: {0}"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 105
    return v3

    .line 107
    :cond_0
    return v1
.end method

.method private static parseCenter(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .param p0, "positionValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 228
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "background-position-x"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 229
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return v2

    .line 232
    :cond_0
    const-string v0, "background-position-y"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 233
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return v2

    .line 236
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static parseHorizontal(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 5
    .param p0, "positionValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 206
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "background-position-x"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 207
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return v2

    .line 210
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "center"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    const-string v1, "background-position-y"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 212
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return v2

    .line 216
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static parseLargeNumericValue(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 5
    .param p0, "prevValue"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 179
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->typeOfValue(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->HORIZONTAL_POSITION:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    const/4 v2, 0x1

    const-string v3, " "

    if-ne v0, v1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    const-string v1, "background-position-x"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return v2

    .line 184
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->typeOfValue(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->VERTICAL_POSITION:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    if-ne v0, v1, :cond_1

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    const-string v1, "background-position-y"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return v2

    .line 189
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static parseNonNumericValue(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .param p0, "positionValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 193
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$1;->$SwitchMap$com$itextpdf$styledxmlparser$css$resolve$shorthand$impl$BackgroundPositionShorthandResolver$BackgroundPositionType:[I

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->typeOfValue(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 201
    const/4 v0, 0x1

    return v0

    .line 199
    :pswitch_0
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->parseCenter(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0

    .line 197
    :pswitch_1
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->parseVertical(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0

    .line 195
    :pswitch_2
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->parseHorizontal(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseNumericValue(ILjava/util/List;Ljava/util/Map;)Z
    .locals 2
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 142
    .local p1, "positionValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "background-position-x"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 143
    const-string v0, "background-position-y"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    if-nez p0, :cond_1

    .line 147
    const/4 v0, 0x0

    return v0

    .line 149
    :cond_1
    add-int/lit8 v0, p0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->parseLargeNumericValue(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 144
    :cond_2
    :goto_0
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->parseShortNumericValue(ILjava/util/List;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static parsePositionShorthand(Ljava/util/List;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 127
    .local p0, "valuesToParse":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "parsedValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, "positionValue":Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->parseNonNumericValue(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    return v2

    .line 131
    .end local v1    # "positionValue":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 133
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->typeOfValue(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    move-result-object v1

    sget-object v3, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->NUMERIC:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    if-ne v1, v3, :cond_2

    .line 134
    invoke-static {v0, p0, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->parseNumericValue(ILjava/util/List;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 135
    return v2

    .line 132
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private static parseShortNumericValue(ILjava/util/List;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 6
    .param p0, "i"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 155
    .local p1, "positionValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 156
    return v1

    .line 158
    :cond_0
    const-string v0, "background-position-x"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 159
    if-eqz p0, :cond_1

    .line 160
    return v1

    .line 162
    :cond_1
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return v3

    .line 165
    :cond_2
    const-string v2, "background-position-y"

    if-nez p0, :cond_4

    .line 166
    add-int/lit8 v4, p0, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->typeOfValue(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->CENTER:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    if-ne v4, v5, :cond_3

    .line 167
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v0, "center"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return v3

    .line 171
    :cond_3
    return v1

    .line 173
    :cond_4
    invoke-interface {p2, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return v3
.end method

.method private static parseVertical(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .param p0, "positionValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 220
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "background-position-y"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 221
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const/4 v0, 0x1

    return v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static typeOfValue(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 240
    const-string v0, "left"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "right"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 243
    :cond_0
    const-string/jumbo v0, "top"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "bottom"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 246
    :cond_1
    const-string v0, "center"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->CENTER:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    return-object v0

    .line 249
    :cond_2
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->NUMERIC:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    return-object v0

    .line 244
    :cond_3
    :goto_0
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->VERTICAL_POSITION:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    return-object v0

    .line 241
    :cond_4
    :goto_1
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->HORIZONTAL_POSITION:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    return-object v0
.end method

.method private static updateValue(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 111
    .local p0, "resolvedProps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ","

    if-nez v0, :cond_1

    .line 112
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "center"

    if-nez v0, :cond_0

    .line 113
    invoke-interface {p0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    :cond_1
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 119
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :goto_0
    return-void
.end method


# virtual methods
.method public resolveShorthand(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "shorthandExpression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isInitialOrInheritOrUnset(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "background-position-y"

    const/4 v3, 0x1

    const-string v4, "background-position-x"

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 57
    new-array v0, v1, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v1, v4, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v1, v2, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v6, "background-position"

    const-string/jumbo v7, "{0} shorthand property cannot be empty."

    if-eqz v0, :cond_1

    .line 63
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v6, v1, v5

    invoke-static {v7, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 68
    :cond_1
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->extractShorthandProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "propsList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v8, "resolvedProps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v9, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 73
    .local v11, "props":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 74
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v6, v2, v5

    invoke-static {v7, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 78
    :cond_2
    invoke-static {v11, v9}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->parsePositionShorthand(Ljava/util/List;Ljava/util/Map;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 79
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const-string v3, "Invalid css property declaration: {0}"

    invoke-static {v3, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 84
    :cond_3
    invoke-static {v8, v9, v4}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->updateValue(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 85
    invoke-static {v8, v9, v2}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->updateValue(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 86
    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 87
    .end local v11    # "props":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 88
    :cond_4
    invoke-static {v8, v4}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->checkProperty(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 89
    invoke-static {v8, v2}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->checkProperty(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    .line 93
    :cond_5
    new-array v1, v1, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 95
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v4, v7}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v1, v5

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 97
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v2, v5}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v3

    .line 93
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 90
    :cond_6
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method
