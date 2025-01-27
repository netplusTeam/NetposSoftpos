.class Lcom/itextpdf/io/font/FontRegisterProvider;
.super Ljava/lang/Object;
.source "FontRegisterProvider.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final fontFamilies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fontNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/font/FontRegisterProvider;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    .line 83
    invoke-virtual {p0}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerStandardFonts()V

    .line 84
    invoke-virtual {p0}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerStandardFontFamilies()V

    .line 85
    return-void
.end method


# virtual methods
.method public clearRegisteredFontFamilies()V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 422
    invoke-virtual {p0}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerStandardFontFamilies()V

    .line 423
    return-void
.end method

.method public clearRegisteredFonts()V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 417
    invoke-virtual {p0}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerStandardFonts()V

    .line 418
    return-void
.end method

.method getFont(Ljava/lang/String;I)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "style"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/io/font/FontRegisterProvider;->getFont(Ljava/lang/String;IZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    return-object v0
.end method

.method getFont(Ljava/lang/String;IZ)Lcom/itextpdf/io/font/FontProgram;
    .locals 8
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    if-nez p1, :cond_0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "lowerCaseFontName":Ljava/lang/String;
    const-string v1, "Times-Roman"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    .line 113
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    const-string v2, "Times"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/util/List;

    .line 114
    .local v1, "family":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_8

    .line 115
    monitor-enter v1

    .line 117
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move v2, p2

    .line 118
    .local v2, "s":I
    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 119
    .local v4, "f":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, "lcf":Ljava/lang/String;
    const/4 v6, 0x0

    .line 121
    .local v6, "fs":I
    const-string v7, "bold"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    or-int/lit8 v6, v6, 0x1

    .line 122
    :cond_3
    const-string v7, "italic"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "oblique"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    or-int/lit8 v6, v6, 0x2

    .line 123
    :cond_5
    and-int/lit8 v7, v2, 0x3

    if-ne v7, v6, :cond_6

    .line 124
    move-object p1, v4

    .line 125
    goto :goto_3

    .line 127
    .end local v4    # "f":Ljava/lang/String;
    .end local v5    # "lcf":Ljava/lang/String;
    .end local v6    # "fs":I
    :cond_6
    goto :goto_2

    .line 128
    .end local v2    # "s":I
    :cond_7
    :goto_3
    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 130
    :cond_8
    :goto_4
    invoke-virtual {p0, p1, p3}, Lcom/itextpdf/io/font/FontRegisterProvider;->getFontProgram(Ljava/lang/String;Z)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    return-object v2
.end method

.method protected getFontProgram(Ljava/lang/String;Z)Lcom/itextpdf/io/font/FontProgram;
    .locals 3
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "fontProgram":Lcom/itextpdf/io/font/FontProgram;
    iget-object v1, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object p1, v1

    check-cast p1, Ljava/lang/String;

    .line 181
    if-eqz p1, :cond_0

    .line 182
    invoke-static {p1, p2}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;Z)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    .line 184
    :cond_0
    return-object v0
.end method

.method getRegisteredFontFamilies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getRegisteredFonts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method isRegisteredFont(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fontname"    # Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method registerFont(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFont(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method registerFont(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 248
    const-string v0, ","

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".ttf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".otf"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".ttc,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    goto/16 :goto_2

    .line 273
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".ttc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    new-instance v1, Lcom/itextpdf/io/font/TrueTypeCollection;

    invoke-direct {v1, p1}, Lcom/itextpdf/io/font/TrueTypeCollection;-><init>(Ljava/lang/String;)V

    .line 275
    .local v1, "ttc":Lcom/itextpdf/io/font/TrueTypeCollection;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/io/font/TrueTypeCollection;->getTTCSize()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "fullPath":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFont(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 280
    :cond_1
    invoke-virtual {p0, v3}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFont(Ljava/lang/String;)V

    .line 275
    .end local v3    # "fullPath":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    .end local v1    # "ttc":Lcom/itextpdf/io/font/TrueTypeCollection;
    .end local v2    # "i":I
    :cond_2
    goto/16 :goto_5

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".afm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pfm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    :cond_4
    invoke-static {p1}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchDescriptor(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v0

    .line 285
    .local v0, "descriptor":Lcom/itextpdf/io/font/FontProgramDescriptor;
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFamilyNameLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFullNameLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFontFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFontNameLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v1, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFullNameLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 249
    .end local v0    # "descriptor":Lcom/itextpdf/io/font/FontProgramDescriptor;
    :cond_5
    :goto_2
    invoke-static {p1}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchDescriptor(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v0

    .line 250
    .restart local v0    # "descriptor":Lcom/itextpdf/io/font/FontProgramDescriptor;
    iget-object v1, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFontNameLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    const-string/jumbo v1, "regular"

    if-eqz p2, :cond_6

    .line 252
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "lcAlias":Ljava/lang/String;
    iget-object v4, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 256
    invoke-virtual {p0, v3, p1}, Lcom/itextpdf/io/font/FontRegisterProvider;->saveCopyOfRegularFont(Ljava/lang/String;Ljava/lang/String;)Z

    .line 260
    .end local v3    # "lcAlias":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFullNameAllLangs()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 261
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-interface {v5, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 264
    invoke-virtual {p0, v4, p1}, Lcom/itextpdf/io/font/FontRegisterProvider;->saveCopyOfRegularFont(Ljava/lang/String;Ljava/lang/String;)Z

    .line 266
    .end local v4    # "name":Ljava/lang/String;
    :cond_7
    goto :goto_3

    .line 268
    :cond_8
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFamilyNameEnglishOpenType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 269
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFullNamesEnglishOpenType()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 270
    .local v3, "fullName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFamilyNameEnglishOpenType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3, v2}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFontFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "fullName":Ljava/lang/String;
    goto :goto_4

    .line 273
    .end local v0    # "descriptor":Lcom/itextpdf/io/font/FontProgramDescriptor;
    :cond_9
    nop

    .line 289
    :goto_5
    sget-object v0, Lcom/itextpdf/io/font/FontRegisterProvider;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Registered {0}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 292
    nop

    .line 293
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    invoke-direct {v1, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method registerFontDirectory(Ljava/lang/String;)I
    .locals 1
    .param p1, "dir"    # Ljava/lang/String;

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFontDirectory(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method registerFontDirectory(Ljava/lang/String;Z)I
    .locals 11
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "scanSubdirectories"    # Z

    .line 326
    sget-object v0, Lcom/itextpdf/io/font/FontRegisterProvider;->LOGGER:Lorg/slf4j/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "Registering directory {0}, looking for fonts"

    invoke-static {v3, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 327
    const/4 v0, 0x0

    .line 329
    .local v0, "count":I
    :try_start_0
    invoke-static {p1, p2}, Lcom/itextpdf/io/util/FileUtil;->listFilesInDirectory(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "files":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 331
    return v2

    .line 332
    :cond_0
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_6

    aget-object v5, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 334
    .local v5, "file":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    if-ge v6, v8, :cond_1

    move-object v6, v7

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 335
    .local v6, "suffix":Ljava/lang/String;
    :goto_1
    const-string v9, ".afm"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, ".pfm"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    .line 342
    :cond_2
    const-string v8, ".ttf"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, ".otf"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, ".ttc"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 343
    :cond_3
    invoke-virtual {p0, v5, v7}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFont(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 337
    :cond_4
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-virtual {v5, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".pfb"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 338
    .local v8, "pfb":Ljava/lang/String;
    invoke-static {v8}, Lcom/itextpdf/io/util/FileUtil;->fileExists(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 339
    invoke-virtual {p0, v5, v7}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFont(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 340
    add-int/lit8 v0, v0, 0x1

    .line 342
    .end local v8    # "pfb":Ljava/lang/String;
    :cond_5
    nop

    .line 348
    .end local v6    # "suffix":Ljava/lang/String;
    :goto_3
    goto :goto_4

    .line 346
    :catch_0
    move-exception v6

    .line 332
    .end local v5    # "file":Ljava/lang/String;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 352
    .end local v1    # "files":[Ljava/lang/String;
    :cond_6
    goto :goto_5

    .line 350
    :catch_1
    move-exception v1

    .line 353
    :goto_5
    return v0
.end method

.method registerFontFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "fullName"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .line 195
    if-eqz p3, :cond_0

    .line 196
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 200
    .local v1, "family":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 202
    iget-object v2, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 205
    monitor-enter v1

    .line 206
    :try_start_1
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 207
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 208
    .local v0, "fullNameLength":I
    const/4 v2, 0x0

    .line 209
    .local v2, "inserted":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 210
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v0, :cond_2

    .line 211
    invoke-interface {v1, v3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 212
    const/4 v2, 0x1

    .line 213
    goto :goto_1

    .line 209
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    .end local v3    # "j":I
    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 217
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "newFullName":Ljava/lang/String;
    const-string/jumbo v4, "regular"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 221
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 223
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 227
    .end local v0    # "fullNameLength":I
    .end local v2    # "inserted":Z
    .end local v3    # "newFullName":Ljava/lang/String;
    :cond_4
    monitor-exit v1

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 204
    .end local v1    # "family":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected registerStandardFontFamilies()V
    .locals 3

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, "family":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "Courier"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v2, "Courier-Bold"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v2, "Courier-Oblique"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v2, "Courier-BoldOblique"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v2, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 159
    const-string v1, "Helvetica"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v2, "Helvetica-Bold"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v2, "Helvetica-Oblique"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v2, "Helvetica-BoldOblique"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v2, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 165
    const-string v1, "Symbol"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v2, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 168
    const-string v1, "Times-Roman"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v1, "Times-Bold"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v1, "Times-Italic"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v1, "Times-BoldItalic"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v1, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    const-string v2, "Times"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 174
    const-string v1, "ZapfDingbats"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v2, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method protected registerStandardFonts()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Courier"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Courier-Bold"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Courier-Oblique"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Courier-BoldOblique"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Helvetica"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Helvetica-Bold"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Helvetica-Oblique"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Helvetica-BoldOblique"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Symbol"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Times-Roman"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Times-Bold"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Times-Italic"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Times-BoldItalic"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "ZapfDingbats"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method registerSystemFontDirectories()I
    .locals 8

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "count":I
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    .line 365
    invoke-static {}, Lcom/itextpdf/io/util/FileUtil;->getFontsDir()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/usr/share/X11/fonts"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "/usr/X/lib/X11/fonts"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "/usr/openwin/lib/X11/fonts"

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string v5, "/usr/share/fonts"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const-string v5, "/usr/X11R6/lib/X11/fonts"

    aput-object v5, v1, v2

    .line 372
    .local v1, "withSubDirs":[Ljava/lang/String;
    array-length v2, v1

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_0

    aget-object v6, v1, v5

    .line 373
    .local v6, "directory":Ljava/lang/String;
    invoke-virtual {p0, v6, v4}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFontDirectory(Ljava/lang/String;Z)I

    move-result v7

    add-int/2addr v0, v7

    .line 372
    .end local v6    # "directory":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 376
    :cond_0
    const-string v2, "/Library/Fonts"

    const-string v4, "/System/Library/Fonts"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "withoutSubDirs":[Ljava/lang/String;
    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .line 381
    .restart local v6    # "directory":Ljava/lang/String;
    invoke-virtual {p0, v6, v3}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFontDirectory(Ljava/lang/String;Z)I

    move-result v7

    add-int/2addr v0, v7

    .line 380
    .end local v6    # "directory":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 384
    :cond_1
    return v0
.end method

.method saveCopyOfRegularFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "regularFontName"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "alias":Ljava/lang/String;
    iget-object v2, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 302
    iget-object v1, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const/4 v1, 0x1

    return v1

    .line 305
    :cond_0
    return v1
.end method
