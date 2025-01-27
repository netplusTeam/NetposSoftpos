.class public Lorg/jdom2/ProcessingInstruction;
.super Lorg/jdom2/Content;
.source "ProcessingInstruction.java"


# static fields
.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field protected transient mapData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected rawData:Ljava/lang/String;

.field protected target:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 91
    sget-object v0, Lorg/jdom2/Content$CType;->ProcessingInstruction:Lorg/jdom2/Content$CType;

    invoke-direct {p0, v0}, Lorg/jdom2/Content;-><init>(Lorg/jdom2/Content$CType;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .line 103
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lorg/jdom2/ProcessingInstruction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 132
    sget-object v0, Lorg/jdom2/Content$CType;->ProcessingInstruction:Lorg/jdom2/Content$CType;

    invoke-direct {p0, v0}, Lorg/jdom2/Content;-><init>(Lorg/jdom2/Content$CType;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    .line 133
    invoke-virtual {p0, p1}, Lorg/jdom2/ProcessingInstruction;->setTarget(Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    .line 134
    invoke-virtual {p0, p2}, Lorg/jdom2/ProcessingInstruction;->setData(Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lorg/jdom2/Content$CType;->ProcessingInstruction:Lorg/jdom2/Content$CType;

    invoke-direct {p0, v0}, Lorg/jdom2/Content;-><init>(Lorg/jdom2/Content$CType;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    .line 118
    invoke-virtual {p0, p1}, Lorg/jdom2/ProcessingInstruction;->setTarget(Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    .line 119
    invoke-virtual {p0, p2}, Lorg/jdom2/ProcessingInstruction;->setData(Ljava/util/Map;)Lorg/jdom2/ProcessingInstruction;

    .line 120
    return-void
.end method

.method private static extractQuotedString(Ljava/lang/String;)[I
    .locals 7
    .param p0, "rawData"    # Ljava/lang/String;

    .line 411
    const/4 v0, 0x0

    .line 414
    .local v0, "inQuotes":Z
    const/16 v1, 0x22

    .line 418
    .local v1, "quoteChar":C
    const/4 v2, 0x0

    .line 422
    .local v2, "start":I
    const/4 v3, 0x0

    .local v3, "pos":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 423
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 424
    .local v4, "currentChar":C
    const/16 v5, 0x22

    if-eq v4, v5, :cond_0

    const/16 v5, 0x27

    if-ne v4, v5, :cond_2

    .line 425
    :cond_0
    if-nez v0, :cond_1

    .line 427
    move v1, v4

    .line 428
    const/4 v0, 0x1

    .line 429
    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    .line 431
    :cond_1
    if-ne v1, v4, :cond_2

    .line 433
    const/4 v0, 0x0

    .line 434
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v6, 0x1

    aput v3, v5, v6

    return-object v5

    .line 422
    .end local v4    # "currentChar":C
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 441
    .end local v3    # "pos":I
    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method private parseData(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .param p1, "prawData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 334
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "inputData":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 341
    const-string v2, ""

    .line 342
    .local v2, "name":Ljava/lang/String;
    const-string v3, ""

    .line 343
    .local v3, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .line 344
    .local v4, "startName":I
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 345
    .local v5, "previousChar":C
    const/4 v6, 0x1

    .line 346
    .local v6, "pos":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 347
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 348
    .local v7, "currentChar":C
    const/16 v8, 0x3d

    if-ne v7, v8, :cond_1

    .line 349
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 352
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/jdom2/ProcessingInstruction;->extractQuotedString(Ljava/lang/String;)[I

    move-result-object v8

    .line 355
    .local v8, "bounds":[I
    if-nez v8, :cond_0

    .line 356
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9

    return-object v9

    .line 358
    :cond_0
    const/4 v9, 0x0

    aget v9, v8, v9

    add-int/2addr v9, v6

    const/4 v10, 0x1

    add-int/2addr v9, v10

    aget v11, v8, v10

    add-int/2addr v11, v6

    add-int/2addr v11, v10

    invoke-virtual {v1, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 360
    aget v9, v8, v10

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    .line 361
    goto :goto_2

    .line 363
    .end local v8    # "bounds":[I
    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_2

    .line 365
    move v4, v6

    .line 368
    :cond_2
    move v5, v7

    .line 346
    .end local v7    # "currentChar":C
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 372
    :cond_3
    :goto_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 386
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "startName":I
    .end local v5    # "previousChar":C
    .end local v6    # "pos":I
    :cond_4
    goto :goto_0

    .line 391
    :cond_5
    return-object v0
.end method

.method private static final toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 297
    .local p0, "pmapData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v0, "stringData":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 300
    .local v2, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .end local v2    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 306
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 310
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lorg/jdom2/ProcessingInstruction;->clone()Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/CloneBase;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/jdom2/ProcessingInstruction;->clone()Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/Content;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/jdom2/ProcessingInstruction;->clone()Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/ProcessingInstruction;
    .locals 2

    .line 465
    invoke-super {p0}, Lorg/jdom2/Content;->clone()Lorg/jdom2/Content;

    move-result-object v0

    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    .line 471
    .local v0, "pi":Lorg/jdom2/ProcessingInstruction;
    iget-object v1, p0, Lorg/jdom2/ProcessingInstruction;->rawData:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/jdom2/ProcessingInstruction;->parseData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    .line 472
    return-object v0
.end method

.method public bridge synthetic detach()Lorg/jdom2/Content;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/jdom2/ProcessingInstruction;->detach()Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public detach()Lorg/jdom2/ProcessingInstruction;
    .locals 1

    .line 477
    invoke-super {p0}, Lorg/jdom2/Content;->detach()Lorg/jdom2/Content;

    move-result-object v0

    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/jdom2/ProcessingInstruction;->rawData:Ljava/lang/String;

    return-object v0
.end method

.method public getPseudoAttributeNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPseudoAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/jdom2/ProcessingInstruction;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/jdom2/ProcessingInstruction;->rawData:Ljava/lang/String;

    return-object v0
.end method

.method public removePseudoAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-static {v0}, Lorg/jdom2/ProcessingInstruction;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/ProcessingInstruction;->rawData:Ljava/lang/String;

    .line 284
    const/4 v0, 0x1

    return v0

    .line 287
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 202
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "reason":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 207
    iput-object p1, p0, Lorg/jdom2/ProcessingInstruction;->rawData:Ljava/lang/String;

    .line 208
    invoke-direct {p0, p1}, Lorg/jdom2/ProcessingInstruction;->parseData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    .line 209
    return-object p0

    .line 204
    :cond_0
    new-instance v1, Lorg/jdom2/IllegalDataException;

    invoke-direct {v1, p1, v0}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public setData(Ljava/util/Map;)Lorg/jdom2/ProcessingInstruction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jdom2/ProcessingInstruction;"
        }
    .end annotation

    .line 222
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/jdom2/ProcessingInstruction;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "temp":Ljava/lang/String;
    invoke-static {v0}, Lorg/jdom2/Verifier;->checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "reason":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 229
    iput-object v0, p0, Lorg/jdom2/ProcessingInstruction;->rawData:Ljava/lang/String;

    .line 230
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    .line 231
    return-object p0

    .line 226
    :cond_0
    new-instance v2, Lorg/jdom2/IllegalDataException;

    invoke-direct {v2, v0, v1}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method protected bridge synthetic setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;
    .locals 1
    .param p1, "x0"    # Lorg/jdom2/Parent;

    .line 70
    invoke-virtual {p0, p1}, Lorg/jdom2/ProcessingInstruction;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method protected setParent(Lorg/jdom2/Parent;)Lorg/jdom2/ProcessingInstruction;
    .locals 1
    .param p1, "parent"    # Lorg/jdom2/Parent;

    .line 482
    invoke-super {p0, p1}, Lorg/jdom2/Content;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;

    move-result-object v0

    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    return-object v0
.end method

.method public setPseudoAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 258
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "reason":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 263
    invoke-static {p2}, Lorg/jdom2/Verifier;->checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    if-nez v0, :cond_0

    .line 268
    iget-object v1, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v1, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-static {v1}, Lorg/jdom2/ProcessingInstruction;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jdom2/ProcessingInstruction;->rawData:Ljava/lang/String;

    .line 270
    return-object p0

    .line 265
    :cond_0
    new-instance v1, Lorg/jdom2/IllegalDataException;

    invoke-direct {v1, p2, v0}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_1
    new-instance v1, Lorg/jdom2/IllegalDataException;

    invoke-direct {v1, p1, v0}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public setTarget(Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .locals 2
    .param p1, "newTarget"    # Ljava/lang/String;

    .line 145
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkProcessingInstructionTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "reason":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 150
    iput-object p1, p0, Lorg/jdom2/ProcessingInstruction;->target:Ljava/lang/String;

    .line 151
    return-object p0

    .line 147
    :cond_0
    new-instance v0, Lorg/jdom2/IllegalTargetException;

    invoke-direct {v0, p1, v1}, Lorg/jdom2/IllegalTargetException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ProcessingInstruction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lorg/jdom2/output/XMLOutputter;

    invoke-direct {v1}, Lorg/jdom2/output/XMLOutputter;-><init>()V

    invoke-virtual {v1, p0}, Lorg/jdom2/output/XMLOutputter;->outputString(Lorg/jdom2/ProcessingInstruction;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
