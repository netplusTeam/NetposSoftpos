.class public Lcom/itextpdf/io/font/FontCache;
.super Ljava/lang/Object;
.source "FontCache.java"


# static fields
.field private static final CJK_REGISTRY_FILENAME:Ljava/lang/String; = "cjk_registry.properties"

.field private static final FONTS_PROP:Ljava/lang/String; = "fonts"

.field private static final REGISTRY_PROP:Ljava/lang/String; = "Registry"

.field private static final W2_PROP:Ljava/lang/String; = "W2"

.field private static final W_PROP:Ljava/lang/String; = "W"

.field private static final allCidFonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static fontCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/io/font/FontCacheKey;",
            "Lcom/itextpdf/io/font/FontProgram;",
            ">;"
        }
    .end annotation
.end field

.field private static final registryNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 69
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/io/font/FontCache;->allCidFonts:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/io/font/FontCache;->registryNames:Ljava/util/Map;

    .line 78
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/itextpdf/io/font/FontCache;->fontCache:Ljava/util/Map;

    .line 82
    :try_start_0
    invoke-static {}, Lcom/itextpdf/io/font/FontCache;->loadRegistry()V

    .line 83
    const-string v1, "fonts"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    .local v1, "font":Ljava/lang/String;
    sget-object v2, Lcom/itextpdf/io/font/FontCache;->allCidFonts:Ljava/util/Map;

    invoke-static {v1}, Lcom/itextpdf/io/font/FontCache;->readFontProperties(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    nop

    .end local v1    # "font":Ljava/lang/String;
    goto :goto_0

    .line 87
    :cond_0
    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 88
    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSavedFonts()V
    .locals 1

    .line 178
    sget-object v0, Lcom/itextpdf/io/font/FontCache;->fontCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 179
    return-void
.end method

.method private static createMetric(Ljava/lang/String;)Lcom/itextpdf/io/util/IntHashtable;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 251
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/io/util/IntHashtable;-><init>()V

    .line 252
    .local v0, "h":Lcom/itextpdf/io/util/IntHashtable;
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, "tk":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 256
    .local v2, "n1":I
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 257
    .end local v2    # "n1":I
    goto :goto_0

    .line 259
    :cond_0
    return-object v0
.end method

.method public static getAllPredefinedCidFonts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/itextpdf/io/font/FontCache;->allCidFonts:Ljava/util/Map;

    return-object v0
.end method

.method public static getByte2CidCmap(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapByteCid;
    .locals 2
    .param p0, "cmap"    # Ljava/lang/String;

    .line 162
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapByteCid;

    invoke-direct {v0}, Lcom/itextpdf/io/font/cmap/CMapByteCid;-><init>()V

    .line 163
    .local v0, "uniCid":Lcom/itextpdf/io/font/cmap/CMapByteCid;
    invoke-static {p0, v0}, Lcom/itextpdf/io/font/FontCache;->parseCmap(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/AbstractCMap;)Lcom/itextpdf/io/font/cmap/AbstractCMap;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/cmap/CMapByteCid;

    return-object v1
.end method

.method public static getCid2Byte(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapCidByte;
    .locals 2
    .param p0, "cmap"    # Ljava/lang/String;

    .line 167
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-direct {v0}, Lcom/itextpdf/io/font/cmap/CMapCidByte;-><init>()V

    .line 168
    .local v0, "cidByte":Lcom/itextpdf/io/font/cmap/CMapCidByte;
    invoke-static {p0, v0}, Lcom/itextpdf/io/font/FontCache;->parseCmap(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/AbstractCMap;)Lcom/itextpdf/io/font/cmap/AbstractCMap;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/cmap/CMapCidByte;

    return-object v1
.end method

.method public static getCid2UniCmap(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapCidUni;
    .locals 2
    .param p0, "uniMap"    # Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapCidUni;

    invoke-direct {v0}, Lcom/itextpdf/io/font/cmap/CMapCidUni;-><init>()V

    .line 153
    .local v0, "cidUni":Lcom/itextpdf/io/font/cmap/CMapCidUni;
    invoke-static {p0, v0}, Lcom/itextpdf/io/font/FontCache;->parseCmap(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/AbstractCMap;)Lcom/itextpdf/io/font/cmap/AbstractCMap;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/cmap/CMapCidUni;

    return-object v1
.end method

.method public static getCompatibleCidFont(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "cmap"    # Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/itextpdf/io/font/FontCache;->registryNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 112
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 114
    .local v2, "registry":Ljava/lang/String;
    sget-object v3, Lcom/itextpdf/io/font/FontCache;->allCidFonts:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 115
    .local v4, "e1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "Registry"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 117
    .end local v4    # "e1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    goto :goto_1

    .line 119
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "registry":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 120
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCompatibleCmaps(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p0, "fontName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-static {}, Lcom/itextpdf/io/font/FontCache;->getAllPredefinedCidFonts()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 131
    .local v0, "cidFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 132
    const/4 v1, 0x0

    return-object v1

    .line 134
    :cond_0
    const-string v1, "Registry"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 135
    .local v1, "registry":Ljava/lang/String;
    sget-object v2, Lcom/itextpdf/io/font/FontCache;->registryNames:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    return-object v2
.end method

.method static getFont(Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .param p0, "key"    # Lcom/itextpdf/io/font/FontCacheKey;

    .line 186
    sget-object v0, Lcom/itextpdf/io/font/FontCache;->fontCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/FontProgram;

    return-object v0
.end method

.method public static getFont(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgram;
    .locals 2
    .param p0, "fontName"    # Ljava/lang/String;

    .line 182
    sget-object v0, Lcom/itextpdf/io/font/FontCache;->fontCache:Ljava/util/Map;

    invoke-static {p0}, Lcom/itextpdf/io/font/FontCacheKey;->create(Ljava/lang/String;)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/FontProgram;

    return-object v0
.end method

.method public static getRegistryNames()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/itextpdf/io/font/FontCache;->registryNames:Ljava/util/Map;

    return-object v0
.end method

.method public static getUni2CidCmap(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapUniCid;
    .locals 2
    .param p0, "uniMap"    # Ljava/lang/String;

    .line 157
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapUniCid;

    invoke-direct {v0}, Lcom/itextpdf/io/font/cmap/CMapUniCid;-><init>()V

    .line 158
    .local v0, "uniCid":Lcom/itextpdf/io/font/cmap/CMapUniCid;
    invoke-static {p0, v0}, Lcom/itextpdf/io/font/FontCache;->parseCmap(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/AbstractCMap;)Lcom/itextpdf/io/font/cmap/AbstractCMap;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/cmap/CMapUniCid;

    return-object v1
.end method

.method protected static isPredefinedCidFont(Ljava/lang/String;)Z
    .locals 4
    .param p0, "fontName"    # Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/itextpdf/io/font/FontCache;->registryNames:Ljava/util/Map;

    const-string v1, "fonts"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 98
    return v3

    .line 99
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    return v3

    .line 102
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static loadRegistry()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const-string v0, "com/itextpdf/io/font/cmap/cjk_registry.properties"

    invoke-static {v0}, Lcom/itextpdf/io/util/ResourceUtil;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 205
    .local v0, "resource":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 206
    .local v1, "p":Ljava/util/Properties;
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 208
    invoke-virtual {v1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 209
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 210
    .local v4, "value":Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "splitValue":[Ljava/lang/String;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 213
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v7, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v5, v8

    .line 214
    .local v9, "s":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    .line 215
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    .end local v9    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 219
    :cond_1
    sget-object v7, Lcom/itextpdf/io/font/FontCache;->registryNames:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "splitValue":[Ljava/lang/String;
    .end local v6    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 222
    .end local v1    # "p":Ljava/util/Properties;
    :cond_2
    if-eqz v0, :cond_3

    .line 223
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 226
    :cond_3
    return-void

    .line 222
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 223
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 225
    :cond_4
    throw v1
.end method

.method private static parseCmap(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/AbstractCMap;)Lcom/itextpdf/io/font/cmap/AbstractCMap;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itextpdf/io/font/cmap/AbstractCMap;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 264
    .local p1, "cmap":Lcom/itextpdf/io/font/cmap/AbstractCMap;, "TT;"
    :try_start_0
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapLocationResource;

    invoke-direct {v0}, Lcom/itextpdf/io/font/cmap/CMapLocationResource;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/itextpdf/io/font/cmap/CMapParser;->parseCid(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/AbstractCMap;Lcom/itextpdf/io/font/cmap/ICMapLocation;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    nop

    .line 268
    return-object p1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "I/O exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static readFontProperties(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    const-string v0, "W2"

    const-string v1, "W"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com/itextpdf/io/font/cmap/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/io/util/ResourceUtil;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 232
    .local v2, "resource":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 233
    .local v3, "p":Ljava/util/Properties;
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 235
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 236
    .local v4, "fontProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v3}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 237
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_0

    .line 239
    :cond_0
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/itextpdf/io/font/FontCache;->createMetric(Ljava/lang/String;)Lcom/itextpdf/io/util/IntHashtable;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/io/font/FontCache;->createMetric(Ljava/lang/String;)Lcom/itextpdf/io/util/IntHashtable;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    nop

    .line 244
    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 242
    :cond_1
    return-object v4

    .line 244
    .end local v3    # "p":Ljava/util/Properties;
    .end local v4    # "fontProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 245
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 247
    :cond_2
    throw v0
.end method

.method static saveFont(Lcom/itextpdf/io/font/FontProgram;Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;
    .locals 2
    .param p0, "font"    # Lcom/itextpdf/io/font/FontProgram;
    .param p1, "key"    # Lcom/itextpdf/io/font/FontCacheKey;

    .line 194
    sget-object v0, Lcom/itextpdf/io/font/FontCache;->fontCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/FontProgram;

    .line 195
    .local v0, "fontFound":Lcom/itextpdf/io/font/FontProgram;
    if-eqz v0, :cond_0

    .line 196
    return-object v0

    .line 198
    :cond_0
    sget-object v1, Lcom/itextpdf/io/font/FontCache;->fontCache:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-object p0
.end method

.method public static saveFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .param p0, "font"    # Lcom/itextpdf/io/font/FontProgram;
    .param p1, "fontName"    # Ljava/lang/String;

    .line 190
    invoke-static {p1}, Lcom/itextpdf/io/font/FontCacheKey;->create(Ljava/lang/String;)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/itextpdf/io/font/FontCache;->saveFont(Lcom/itextpdf/io/font/FontProgram;Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    return-object v0
.end method
