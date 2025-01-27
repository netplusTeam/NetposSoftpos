.class public Lcom/itextpdf/kernel/pdf/PdfNameTree;
.super Ljava/lang/Object;
.source "PdfNameTree.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NODE_SIZE:I = 0x28

.field private static final serialVersionUID:J = 0x7127cd4daa2f87d3L


# instance fields
.field private catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

.field private items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field

.field private modified:Z

.field private treeType:Lcom/itextpdf/kernel/pdf/PdfName;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfCatalog;Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 1
    .param p1, "catalog"    # Lcom/itextpdf/kernel/pdf/PdfCatalog;
    .param p2, "treeType"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    .line 77
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->treeType:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 78
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 79
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->getNames()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    .line 80
    return-void
.end method

.method private getDestArray(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2
    .param p1, "obj"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 268
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 269
    return-object v0

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    return-object v0

    .line 272
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 274
    .local v0, "arr":Lcom/itextpdf/kernel/pdf/PdfArray;
    return-object v0

    .line 276
    .end local v0    # "arr":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_2
    return-object v0
.end method

.method private iterateItems(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 6
    .param p1, "dictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "leftOver"    # Lcom/itextpdf/kernel/pdf/PdfString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfString;",
            ")",
            "Lcom/itextpdf/kernel/pdf/PdfString;"
        }
    .end annotation

    .line 242
    .local p2, "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Names:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 243
    .local v0, "names":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v0, :cond_3

    .line 244
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 246
    if-nez p3, :cond_0

    .line 247
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .local v2, "k":I
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    move v5, v2

    move-object v2, v1

    move v1, v5

    .local v1, "name":Lcom/itextpdf/kernel/pdf/PdfString;
    goto :goto_1

    .line 249
    .end local v2    # "k":I
    .local v1, "k":I
    :cond_0
    move-object v2, p3

    .line 250
    .local v2, "name":Lcom/itextpdf/kernel/pdf/PdfString;
    const/4 p3, 0x0

    .line 252
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 253
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .end local v2    # "name":Lcom/itextpdf/kernel/pdf/PdfString;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .restart local v2    # "name":Lcom/itextpdf/kernel/pdf/PdfString;
    :cond_1
    return-object v2

    .line 244
    .end local v1    # "k":I
    .end local v2    # "name":Lcom/itextpdf/kernel/pdf/PdfString;
    :cond_2
    goto :goto_3

    .line 258
    :cond_3
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_4

    .line 259
    const/4 v1, 0x0

    .restart local v1    # "k":I
    :goto_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 260
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 261
    .local v2, "kid":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-direct {p0, v2, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->iterateItems(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p3

    .line 259
    .end local v2    # "kid":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 264
    .end local v1    # "k":I
    :cond_4
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private readTree(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/util/Map;
    .locals 2
    .param p1, "dictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 235
    .local v0, "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    if-eqz p1, :cond_0

    .line 236
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->iterateItems(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/PdfString;

    .line 238
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 137
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 138
    .local v0, "existingVal":Lcom/itextpdf/kernel/pdf/PdfObject;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    const-class v2, Lcom/itextpdf/kernel/pdf/PdfNameTree;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 143
    .local v2, "logger":Lorg/slf4j/Logger;
    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v4, "Name \"{0}\" already exists in the name tree; old value will be replaced by the new one."

    invoke-static {v4, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 146
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :cond_1
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->modified:Z

    .line 147
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method public buildTree()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 15

    .line 170
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 171
    .local v0, "names":[Ljava/lang/String;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 172
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 173
    array-length v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x28

    if-gt v1, v3, :cond_1

    .line 174
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 175
    .local v1, "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 176
    .local v3, "ar":Lcom/itextpdf/kernel/pdf/PdfArray;
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v0, v5

    .line 177
    .local v6, "name":Ljava/lang/String;
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v7, v6, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 178
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v3, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 176
    .end local v6    # "name":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 180
    :cond_0
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Names:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 181
    return-object v1

    .line 183
    .end local v1    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v3    # "ar":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_1
    const/16 v1, 0x28

    .line 184
    .local v1, "skip":I
    array-length v4, v0

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v3

    new-array v4, v4, [Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 185
    .local v4, "kids":[Lcom/itextpdf/kernel/pdf/PdfDictionary;
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_3

    .line 186
    mul-int/lit8 v6, v5, 0x28

    .line 187
    .local v6, "offset":I
    add-int/lit8 v7, v6, 0x28

    array-length v8, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 188
    .local v7, "end":I
    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 189
    .local v8, "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v9}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 190
    .local v9, "arr":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfString;

    aget-object v11, v0, v6

    invoke-direct {v10, v11, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 191
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfString;

    add-int/lit8 v11, v7, -0x1

    aget-object v11, v0, v11

    invoke-direct {v10, v11, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 192
    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->Limits:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v10, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 193
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v10}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v9, v10

    .line 194
    :goto_2
    if-ge v6, v7, :cond_2

    .line 195
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfString;

    aget-object v11, v0, v6

    invoke-direct {v10, v11, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 196
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    aget-object v11, v0, v6

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 194
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 198
    :cond_2
    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->Names:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v10, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 199
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 200
    aput-object v8, v4, v5

    .line 185
    .end local v6    # "offset":I
    .end local v7    # "end":I
    .end local v8    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v9    # "arr":Lcom/itextpdf/kernel/pdf/PdfArray;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 202
    .end local v5    # "k":I
    :cond_3
    array-length v5, v4

    .line 204
    .local v5, "top":I
    :goto_3
    if-gt v5, v3, :cond_5

    .line 205
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 206
    .local v2, "arr":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v5, :cond_4

    .line 207
    aget-object v6, v4, v3

    invoke-virtual {v2, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 208
    .end local v3    # "i":I
    :cond_4
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 209
    .local v3, "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v6, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 210
    return-object v3

    .line 212
    .end local v2    # "arr":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v3    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_5
    mul-int/lit8 v1, v1, 0x28

    .line 213
    array-length v6, v0

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    div-int/2addr v6, v1

    .line 214
    .local v6, "tt":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v6, :cond_7

    .line 215
    mul-int/lit8 v8, v7, 0x28

    .line 216
    .local v8, "offset":I
    add-int/lit8 v9, v8, 0x28

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 217
    .local v9, "end":I
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    iget-object v11, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 218
    .local v10, "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v11}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 219
    .local v11, "arr":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfString;

    mul-int v13, v7, v1

    aget-object v13, v0, v13

    invoke-direct {v12, v13, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 220
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfString;

    add-int/lit8 v13, v7, 0x1

    mul-int/2addr v13, v1

    array-length v14, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    aget-object v13, v0, v13

    invoke-direct {v12, v13, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 221
    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->Limits:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v10, v12, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 222
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v12}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v11, v12

    .line 223
    :goto_6
    if-ge v8, v9, :cond_6

    .line 224
    aget-object v12, v4, v8

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 223
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 226
    :cond_6
    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v10, v12, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 227
    aput-object v10, v4, v7

    .line 214
    .end local v8    # "offset":I
    .end local v9    # "end":I
    .end local v10    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v11    # "arr":Lcom/itextpdf/kernel/pdf/PdfArray;
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 229
    .end local v7    # "i":I
    :cond_7
    move v5, v6

    .line 230
    .end local v6    # "tt":I
    goto/16 :goto_3
.end method

.method public getNames()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Names:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 93
    .local v0, "dictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_4

    .line 94
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->treeType:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->readTree(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    .line 99
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 100
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 102
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->treeType:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Dests:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-direct {p0, v4}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->getDestArray(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    .line 104
    .local v4, "arr":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v4, :cond_1

    .line 105
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 107
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 108
    .end local v4    # "arr":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 109
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 108
    :cond_3
    :goto_1
    nop

    .line 110
    .end local v3    # "key":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 114
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->treeType:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Dests:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 115
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Dests:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 116
    .local v1, "destinations":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_6

    .line 117
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 118
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 119
    .local v4, "key":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->getDestArray(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    .line 120
    .local v5, "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v5, :cond_5

    .line 121
    goto :goto_3

    .line 123
    :cond_5
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .end local v4    # "key":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v5    # "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    goto :goto_3

    .line 127
    .end local v1    # "destinations":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    :cond_6
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    return-object v1
.end method

.method public isModified()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->modified:Z

    return v0
.end method

.method public setModified()V
    .locals 1

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->modified:Z

    .line 162
    return-void
.end method
