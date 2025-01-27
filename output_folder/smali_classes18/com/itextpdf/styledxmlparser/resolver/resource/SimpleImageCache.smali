.class Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;
.super Ljava/lang/Object;
.source "SimpleImageCache.java"


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;",
            ">;"
        }
    .end annotation
.end field

.field private capacity:I

.field private imagesFrequency:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->imagesFrequency:Ljava/util/Map;

    .line 68
    const/16 v0, 0x64

    iput v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->capacity:I

    .line 69
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->imagesFrequency:Ljava/util/Map;

    .line 77
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 80
    iput p1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->capacity:I

    .line 81
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureCapacity()V
    .locals 6

    .line 136
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->capacity:I

    if-lt v0, v1, :cond_4

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "mostUnpopularImg":Ljava/lang/String;
    const v1, 0x7fffffff

    .line 141
    .local v1, "minFrequency":I
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 142
    .local v3, "imgSrc":Ljava/lang/String;
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->imagesFrequency:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 143
    .local v4, "imgFrequency":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v1, :cond_2

    .line 144
    :cond_0
    move-object v0, v3

    .line 145
    if-nez v4, :cond_1

    .line 146
    goto :goto_1

    .line 148
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 151
    .end local v3    # "imgSrc":Ljava/lang/String;
    .end local v4    # "imgFrequency":Ljava/lang/Integer;
    :cond_2
    goto :goto_0

    .line 153
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .end local v0    # "mostUnpopularImg":Ljava/lang/String;
    .end local v1    # "minFrequency":I
    :cond_4
    return-void
.end method


# virtual methods
.method getImage(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 4
    .param p1, "src"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->imagesFrequency:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 105
    .local v0, "frequency":Ljava/lang/Integer;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 106
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->imagesFrequency:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->imagesFrequency:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    return-object v1
.end method

.method putImage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "imageXObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 90
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->ensureCapacity()V

    .line 94
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method reset()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 128
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->imagesFrequency:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 129
    return-void
.end method

.method size()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
