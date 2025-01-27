.class public Lcom/itextpdf/layout/hyphenation/HyphenationTree;
.super Lcom/itextpdf/layout/hyphenation/TernaryTree;
.source "HyphenationTree.java"

# interfaces
.implements Lcom/itextpdf/layout/hyphenation/IPatternConsumer;


# static fields
.field private static final serialVersionUID:J = -0x6cd4c3aa6df770a5L


# instance fields
.field protected classmap:Lcom/itextpdf/layout/hyphenation/TernaryTree;

.field private transient ivalues:Lcom/itextpdf/layout/hyphenation/TernaryTree;

.field protected stoplist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field protected vspace:Lcom/itextpdf/layout/hyphenation/ByteVector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->stoplist:Ljava/util/Map;

    .line 65
    new-instance v0, Lcom/itextpdf/layout/hyphenation/TernaryTree;

    invoke-direct {v0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->classmap:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    .line 66
    new-instance v0, Lcom/itextpdf/layout/hyphenation/ByteVector;

    invoke-direct {v0}, Lcom/itextpdf/layout/hyphenation/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/layout/hyphenation/ByteVector;

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/hyphenation/ByteVector;->alloc(I)I

    .line 70
    return-void
.end method

.method private calcForeWordsSize(Ljava/util/List;I)I
    .locals 3
    .param p2, "iNonLetterWord"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[C>;I)I"
        }
    .end annotation

    .line 426
    .local p1, "nonLetterWords":Ljava/util/List;, "Ljava/util/List<[C>;"
    const/4 v0, 0x0

    .line 427
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 428
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private getHyphPointsForWords(Ljava/util/List;II)[I
    .locals 10
    .param p2, "remainCharCount"    # I
    .param p3, "pushCharCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[C>;II)[I"
        }
    .end annotation

    .line 403
    .local p1, "nonLetterWords":Ljava/util/List;, "Ljava/util/List<[C>;"
    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 404
    .local v1, "breaks":[I
    const/4 v2, 0x0

    .local v2, "iNonLetterWord":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 405
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    .line 406
    .local v3, "nonLetterWord":[C
    const/4 v6, 0x0

    array-length v7, v3

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v8, p2

    goto :goto_1

    :cond_0
    move v8, v4

    .line 408
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne v2, v5, :cond_1

    move v9, p3

    goto :goto_2

    :cond_1
    move v9, v4

    .line 406
    :goto_2
    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->hyphenate([CIIII)Lcom/itextpdf/layout/hyphenation/Hyphenation;

    move-result-object v4

    .line 409
    .local v4, "curHyph":Lcom/itextpdf/layout/hyphenation/Hyphenation;
    if-nez v4, :cond_2

    .line 410
    goto :goto_4

    .line 412
    :cond_2
    array-length v5, v1

    invoke-virtual {v4}, Lcom/itextpdf/layout/hyphenation/Hyphenation;->getHyphenationPoints()[I

    move-result-object v6

    array-length v6, v6

    add-int/2addr v5, v6

    new-array v5, v5, [I

    .line 413
    .local v5, "combined":[I
    invoke-virtual {v4}, Lcom/itextpdf/layout/hyphenation/Hyphenation;->getHyphenationPoints()[I

    move-result-object v6

    .line 414
    .local v6, "hyphPoints":[I
    invoke-direct {p0, p1, v2}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->calcForeWordsSize(Ljava/util/List;I)I

    move-result v7

    .line 415
    .local v7, "foreWordsSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    array-length v9, v6

    if-ge v8, v9, :cond_3

    .line 416
    aget v9, v6, v8

    add-int/2addr v9, v7

    aput v9, v6, v8

    .line 415
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 418
    .end local v8    # "i":I
    :cond_3
    array-length v8, v1

    invoke-static {v1, v0, v5, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    array-length v8, v1

    array-length v9, v6

    invoke-static {v6, v0, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    move-object v1, v5

    .line 404
    .end local v3    # "nonLetterWord":[C
    .end local v4    # "curHyph":Lcom/itextpdf/layout/hyphenation/Hyphenation;
    .end local v5    # "combined":[I
    .end local v6    # "hyphPoints":[I
    .end local v7    # "foreWordsSize":I
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    .end local v2    # "iNonLetterWord":I
    :cond_4
    return-object v1
.end method

.method private getNonLetterBreaks([C)Ljava/util/List;
    .locals 6
    .param p1, "word"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 376
    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 377
    .local v0, "c":[C
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v1, "breakPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 379
    .local v2, "foundLetter":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 380
    aget-char v4, p1, v3

    const/4 v5, 0x0

    aput-char v4, v0, v5

    .line 381
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->classmap:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    invoke-virtual {v4, v0, v5}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->find([CI)I

    move-result v4

    if-gez v4, :cond_0

    .line 382
    if-eqz v2, :cond_1

    .line 383
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 386
    :cond_0
    const/4 v2, 0x1

    .line 379
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 389
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method private getWordFromCharArray([CII)[C
    .locals 5
    .param p1, "word"    # [C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 393
    if-nez p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    :goto_0
    sub-int v0, p3, v0

    new-array v0, v0, [C

    .line 394
    .local v0, "newWord":[C
    const/4 v1, 0x0

    .line 395
    .local v1, "iChar":I
    if-nez p2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, p3, :cond_2

    .line 396
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "iChar":I
    .local v3, "iChar":I
    aget-char v4, p1, v2

    aput-char v4, v0, v1

    .line 395
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_1

    .line 398
    .end local v2    # "i":I
    .end local v3    # "iChar":I
    .restart local v1    # "iChar":I
    :cond_2
    return-object v0
.end method

.method private isMultiPartWord([CI)Z
    .locals 5
    .param p1, "w"    # [C
    .param p2, "len"    # I

    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "wordParts":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, p2, :cond_3

    .line 339
    const/4 v3, 0x2

    new-array v3, v3, [C

    .line 340
    .local v3, "c":[C
    aget-char v4, p1, v1

    aput-char v4, v3, v2

    .line 341
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->classmap:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    invoke-virtual {v4, v3, v2}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->find([CI)I

    move-result v2

    .line 342
    .local v2, "nc":I
    const/4 v4, 0x1

    if-lez v2, :cond_1

    .line 343
    if-le v0, v4, :cond_0

    .line 344
    return v4

    .line 346
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 348
    :cond_1
    if-ne v0, v4, :cond_2

    .line 349
    add-int/lit8 v0, v0, 0x1

    .line 338
    .end local v2    # "nc":I
    .end local v3    # "c":[C
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    .end local v1    # "i":I
    :cond_3
    return v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 74
    return-void
.end method

.method private splitOnNonCharacters([C)Ljava/util/List;
    .locals 5
    .param p1, "word"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List<",
            "[C>;"
        }
    .end annotation

    .line 357
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->getNonLetterBreaks([C)Ljava/util/List;

    move-result-object v0

    .line 358
    .local v0, "breakPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 359
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 361
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v1, "words":Ljava/util/List;, "Ljava/util/List<[C>;"
    const/4 v2, 0x0

    .local v2, "ibreak":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 363
    if-nez v2, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, -0x1

    .line 364
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 363
    invoke-direct {p0, p1, v3, v4}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->getWordFromCharArray([CII)[C

    move-result-object v3

    .line 365
    .local v3, "newWord":[C
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    .end local v3    # "newWord":[C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    .end local v2    # "ibreak":I
    :cond_2
    array-length v2, p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    if-le v2, v4, :cond_3

    .line 368
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    array-length v3, p1

    invoke-direct {p0, p1, v2, v3}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->getWordFromCharArray([CII)[C

    move-result-object v2

    .line 370
    .local v2, "newWord":[C
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    .end local v2    # "newWord":[C
    :cond_3
    return-object v1
.end method


# virtual methods
.method public addClass(Ljava/lang/String;)V
    .locals 5
    .param p1, "chargroup"    # Ljava/lang/String;

    .line 581
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 582
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 583
    .local v1, "equivChar":C
    const/4 v2, 0x2

    new-array v2, v2, [C

    .line 584
    .local v2, "key":[C
    const/4 v3, 0x1

    aput-char v0, v2, v3

    .line 585
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 586
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v0

    .line 587
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->classmap:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    invoke-virtual {v4, v2, v0, v1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insert([CIC)V

    .line 585
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 590
    .end local v1    # "equivChar":C
    .end local v2    # "key":[C
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method public addException(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "hyphenatedword"    # Ljava/util/List;

    .line 601
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->stoplist:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    return-void
.end method

.method public addPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "ivalue"    # Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->ivalues:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    invoke-virtual {v0, p2}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->find(Ljava/lang/String;)I

    move-result v0

    .line 616
    .local v0, "k":I
    if-gtz v0, :cond_0

    .line 617
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->packValues(Ljava/lang/String;)I

    move-result v0

    .line 618
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->ivalues:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    int-to-char v2, v0

    invoke-virtual {v1, p2, v2}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insert(Ljava/lang/String;C)V

    .line 620
    :cond_0
    int-to-char v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->insert(Ljava/lang/String;C)V

    .line 621
    return-void
.end method

.method public findPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pat"    # Ljava/lang/String;

    .line 167
    invoke-super {p0, p1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->find(Ljava/lang/String;)I

    move-result v0

    .line 168
    .local v0, "k":I
    if-ltz v0, :cond_0

    .line 169
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->unpackValues(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 171
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method protected getValues(I)[B
    .locals 5
    .param p1, "k"    # I

    .line 201
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 202
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/layout/hyphenation/ByteVector;

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "k":I
    .local v2, "k":I
    invoke-virtual {v1, p1}, Lcom/itextpdf/layout/hyphenation/ByteVector;->get(I)B

    move-result p1

    .line 203
    .local p1, "v":B
    :goto_0
    if-eqz p1, :cond_1

    .line 204
    ushr-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, -0x1

    int-to-char v1, v1

    .line 205
    .local v1, "c":C
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 206
    and-int/lit8 v3, p1, 0xf

    int-to-char v1, v3

    .line 207
    if-nez v1, :cond_0

    .line 208
    goto :goto_1

    .line 210
    :cond_0
    add-int/lit8 v3, v1, -0x1

    int-to-char v1, v3

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 212
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/layout/hyphenation/ByteVector;

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "k":I
    .local v4, "k":I
    invoke-virtual {v3, v2}, Lcom/itextpdf/layout/hyphenation/ByteVector;->get(I)B

    move-result p1

    .line 213
    .end local v1    # "c":C
    move v2, v4

    goto :goto_0

    .line 214
    .end local v4    # "k":I
    .restart local v2    # "k":I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    new-array v1, v1, [B

    .line 215
    .local v1, "res":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 216
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 215
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 218
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method protected hstrcmp([CI[CI)I
    .locals 3
    .param p1, "s"    # [C
    .param p2, "si"    # I
    .param p3, "t"    # [C
    .param p4, "ti"    # I

    .line 184
    :goto_0
    aget-char v0, p1, p2

    aget-char v1, p3, p4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 185
    aget-char v0, p1, p2

    if-nez v0, :cond_0

    .line 186
    return v2

    .line 184
    :cond_0
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 189
    :cond_1
    aget-char v0, p3, p4

    if-nez v0, :cond_2

    .line 190
    return v2

    .line 192
    :cond_2
    aget-char v0, p1, p2

    aget-char v1, p3, p4

    sub-int/2addr v0, v1

    return v0
.end method

.method public hyphenate(Ljava/lang/String;II)Lcom/itextpdf/layout/hyphenation/Hyphenation;
    .locals 7
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "remainCharCount"    # I
    .param p3, "pushCharCount"    # I

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 327
    .local v6, "w":[C
    array-length v0, v6

    invoke-direct {p0, v6, v0}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->isMultiPartWord([CI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0, v6}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->splitOnNonCharacters([C)Ljava/util/List;

    move-result-object v0

    .line 329
    .local v0, "words":Ljava/util/List;, "Ljava/util/List<[C>;"
    new-instance v1, Lcom/itextpdf/layout/hyphenation/Hyphenation;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([C)V

    .line 330
    invoke-direct {p0, v0, p2, p3}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->getHyphPointsForWords(Ljava/util/List;II)[I

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/hyphenation/Hyphenation;-><init>(Ljava/lang/String;[I)V

    .line 329
    return-object v1

    .line 332
    .end local v0    # "words":Ljava/util/List;, "Ljava/util/List<[C>;"
    :cond_0
    const/4 v2, 0x0

    array-length v3, v6

    move-object v0, p0

    move-object v1, v6

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->hyphenate([CIIII)Lcom/itextpdf/layout/hyphenation/Hyphenation;

    move-result-object v0

    return-object v0
.end method

.method public hyphenate([CIIII)Lcom/itextpdf/layout/hyphenation/Hyphenation;
    .locals 18
    .param p1, "w"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "remainCharCount"    # I
    .param p5, "pushCharCount"    # I

    .line 471
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    add-int/lit8 v4, v2, 0x3

    new-array v4, v4, [C

    .line 474
    .local v4, "word":[C
    const/4 v5, 0x2

    new-array v5, v5, [C

    .line 475
    .local v5, "c":[C
    const/4 v6, 0x0

    .line 476
    .local v6, "iIgnoreAtBeginning":I
    move/from16 v7, p3

    .line 477
    .local v7, "iLength":I
    const/4 v8, 0x0

    .line 478
    .local v8, "bEndOfLetters":Z
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-gt v9, v2, :cond_3

    .line 479
    add-int v13, p2, v9

    sub-int/2addr v13, v12

    aget-char v12, v1, v13

    aput-char v12, v5, v11

    .line 480
    iget-object v12, v0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->classmap:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    invoke-virtual {v12, v5, v11}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->find([CI)I

    move-result v11

    .line 483
    .local v11, "nc":I
    if-gez v11, :cond_1

    .line 484
    add-int/lit8 v10, v6, 0x1

    if-ne v9, v10, :cond_0

    .line 486
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 489
    :cond_0
    const/4 v8, 0x1

    .line 491
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 493
    :cond_1
    if-nez v8, :cond_2

    .line 494
    sub-int v10, v9, v6

    int-to-char v12, v11

    aput-char v12, v4, v10

    .line 478
    .end local v11    # "nc":I
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 496
    .restart local v11    # "nc":I
    :cond_2
    return-object v10

    .line 501
    .end local v11    # "nc":I
    :cond_3
    move v2, v7

    .line 502
    .end local p3    # "len":I
    .local v2, "len":I
    add-int v13, v3, p5

    if-ge v2, v13, :cond_4

    .line 504
    return-object v10

    .line 506
    :cond_4
    add-int/lit8 v13, v2, 0x1

    new-array v13, v13, [I

    .line 507
    .local v13, "result":[I
    const/4 v14, 0x0

    .line 510
    .local v14, "k":I
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v4, v12, v2}, Ljava/lang/String;-><init>([CII)V

    .line 511
    .local v15, "sw":Ljava/lang/String;
    iget-object v10, v0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->stoplist:Ljava/util/Map;

    invoke-interface {v10, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 513
    iget-object v10, v0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->stoplist:Ljava/util/Map;

    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 514
    .local v10, "hw":Ljava/util/ArrayList;
    const/4 v12, 0x0

    .line 515
    .local v12, "j":I
    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_6

    .line 516
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 519
    .local v11, "o":Ljava/lang/Object;
    move-object/from16 v16, v5

    .end local v5    # "c":[C
    .local v16, "c":[C
    instance-of v5, v11, Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 520
    move-object v5, v11

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v12, v5

    .line 521
    if-lt v12, v3, :cond_5

    sub-int v5, v2, p5

    if-ge v12, v5, :cond_5

    .line 522
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "k":I
    .local v5, "k":I
    add-int v17, v12, v6

    aput v17, v13, v14

    move v14, v5

    .line 515
    .end local v5    # "k":I
    .end local v11    # "o":Ljava/lang/Object;
    .restart local v14    # "k":I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v16

    const/4 v11, 0x0

    goto :goto_3

    .end local v16    # "c":[C
    .local v5, "c":[C
    :cond_6
    move-object/from16 v16, v5

    .line 526
    .end local v5    # "c":[C
    .end local v10    # "hw":Ljava/util/ArrayList;
    .end local v12    # "j":I
    .restart local v16    # "c":[C
    goto :goto_6

    .line 530
    .end local v16    # "c":[C
    .restart local v5    # "c":[C
    :cond_7
    move-object/from16 v16, v5

    .end local v5    # "c":[C
    .restart local v16    # "c":[C
    const/16 v5, 0x2e

    const/4 v10, 0x0

    aput-char v5, v4, v10

    .line 533
    add-int/lit8 v11, v2, 0x1

    aput-char v5, v4, v11

    .line 536
    add-int/lit8 v5, v2, 0x2

    aput-char v10, v4, v5

    .line 539
    add-int/lit8 v5, v2, 0x3

    new-array v5, v5, [B

    .line 540
    .local v5, "il":[B
    const/4 v9, 0x0

    :goto_4
    add-int/lit8 v10, v2, 0x1

    if-ge v9, v10, :cond_8

    .line 541
    invoke-virtual {v0, v4, v9, v5}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->searchPatterns([CI[B)V

    .line 540
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 548
    :cond_8
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v2, :cond_a

    .line 549
    add-int/lit8 v10, v9, 0x1

    aget-byte v10, v5, v10

    and-int/2addr v10, v12

    if-ne v10, v12, :cond_9

    if-lt v9, v3, :cond_9

    sub-int v10, v2, p5

    if-gt v9, v10, :cond_9

    .line 551
    add-int/lit8 v10, v14, 0x1

    .end local v14    # "k":I
    .local v10, "k":I
    aput v9, v13, v14

    move v14, v10

    .line 548
    .end local v10    # "k":I
    .restart local v14    # "k":I
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 557
    .end local v5    # "il":[B
    :cond_a
    :goto_6
    if-lez v14, :cond_b

    .line 559
    new-array v5, v14, [I

    .line 560
    .local v5, "res":[I
    const/4 v10, 0x0

    invoke-static {v13, v10, v5, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    new-instance v10, Lcom/itextpdf/layout/hyphenation/Hyphenation;

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v1, v6, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v10, v11, v5}, Lcom/itextpdf/layout/hyphenation/Hyphenation;-><init>(Ljava/lang/String;[I)V

    return-object v10

    .line 563
    .end local v5    # "res":[I
    :cond_b
    const/4 v5, 0x0

    return-object v5
.end method

.method public loadPatterns(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/layout/hyphenation/HyphenationException;
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/itextpdf/layout/hyphenation/PatternParser;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/hyphenation/PatternParser;-><init>(Lcom/itextpdf/layout/hyphenation/IPatternConsumer;)V

    .line 147
    .local v0, "pp":Lcom/itextpdf/layout/hyphenation/PatternParser;
    new-instance v1, Lcom/itextpdf/layout/hyphenation/TernaryTree;

    invoke-direct {v1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->ivalues:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    .line 149
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/layout/hyphenation/PatternParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->trimToSize()V

    .line 154
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/layout/hyphenation/ByteVector;

    invoke-virtual {v1}, Lcom/itextpdf/layout/hyphenation/ByteVector;->trimToSize()V

    .line 155
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->classmap:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    invoke-virtual {v1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->trimToSize()V

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->ivalues:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    .line 159
    return-void
.end method

.method public loadPatterns(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/layout/hyphenation/HyphenationException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->loadPatterns(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method protected packValues(Ljava/lang/String;)I
    .locals 10
    .param p1, "values"    # Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 88
    .local v0, "n":I
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    shr-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v1, v2

    .line 89
    .local v1, "m":I
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/layout/hyphenation/ByteVector;

    invoke-virtual {v3, v1}, Lcom/itextpdf/layout/hyphenation/ByteVector;->alloc(I)I

    move-result v3

    .line 90
    .local v3, "offset":I
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/layout/hyphenation/ByteVector;

    invoke-virtual {v4}, Lcom/itextpdf/layout/hyphenation/ByteVector;->getArray()[B

    move-result-object v4

    .line 91
    .local v4, "va":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_2

    .line 92
    shr-int/lit8 v6, v5, 0x1

    .line 93
    .local v6, "j":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v7, v2

    and-int/lit8 v7, v7, 0xf

    int-to-byte v7, v7

    .line 94
    .local v7, "v":B
    and-int/lit8 v8, v5, 0x1

    if-ne v8, v2, :cond_1

    .line 95
    add-int v8, v6, v3

    add-int v9, v6, v3

    aget-byte v9, v4, v9

    or-int/2addr v9, v7

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    goto :goto_2

    .line 98
    :cond_1
    add-int v8, v6, v3

    shl-int/lit8 v9, v7, 0x4

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    .line 91
    .end local v6    # "j":I
    .end local v7    # "v":B
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 103
    :cond_2
    add-int/lit8 v2, v1, -0x1

    add-int/2addr v2, v3

    const/4 v6, 0x0

    aput-byte v6, v4, v2

    .line 104
    return v3
.end method

.method protected searchPatterns([CI[B)V
    .locals 10
    .param p1, "word"    # [C
    .param p2, "index"    # I
    .param p3, "il"    # [B

    .line 249
    move v0, p2

    .line 252
    .local v0, "i":I
    aget-char v1, p1, v0

    .line 253
    .local v1, "sp":C
    iget-char v2, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->root:C

    .line 255
    .local v2, "p":C
    :goto_0
    if-lez v2, :cond_b

    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->sc:[C

    array-length v3, v3

    if-ge v2, v3, :cond_b

    .line 256
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->sc:[C

    aget-char v3, v3, v2

    const v4, 0xffff

    if-ne v3, v4, :cond_2

    .line 257
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-virtual {v3}, Lcom/itextpdf/layout/hyphenation/CharVector;->getArray()[C

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->lo:[C

    aget-char v4, v4, v2

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->hstrcmp([CI[CI)I

    move-result v3

    if-nez v3, :cond_1

    .line 260
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->eq:[C

    aget-char v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->getValues(I)[B

    move-result-object v3

    .line 261
    .local v3, "values":[B
    move v4, p2

    .line 262
    .local v4, "j":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_1

    .line 263
    array-length v6, p3

    if-ge v4, v6, :cond_0

    aget-byte v6, v3, v5

    aget-byte v7, p3, v4

    if-le v6, v7, :cond_0

    .line 264
    aget-byte v6, v3, v5

    aput-byte v6, p3, v4

    .line 266
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 262
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 269
    .end local v3    # "values":[B
    .end local v4    # "j":I
    .end local v5    # "k":I
    :cond_1
    return-void

    .line 271
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->sc:[C

    aget-char v3, v3, v2

    sub-int v3, v1, v3

    .line 272
    .local v3, "d":I
    if-nez v3, :cond_8

    .line 273
    if-nez v1, :cond_3

    .line 274
    goto :goto_6

    .line 276
    :cond_3
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    .line 277
    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->eq:[C

    aget-char v2, v5, v2

    .line 278
    move v5, v2

    .line 282
    .local v5, "q":C
    :goto_2
    if-lez v5, :cond_a

    iget-object v6, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->sc:[C

    array-length v6, v6

    if-ge v5, v6, :cond_a

    .line 285
    iget-object v6, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->sc:[C

    aget-char v6, v6, v5

    if-ne v6, v4, :cond_4

    .line 286
    goto :goto_5

    .line 288
    :cond_4
    iget-object v6, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->sc:[C

    aget-char v6, v6, v5

    if-nez v6, :cond_7

    .line 289
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->eq:[C

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->getValues(I)[B

    move-result-object v4

    .line 290
    .local v4, "values":[B
    move v6, p2

    .line 291
    .local v6, "j":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_3
    array-length v8, v4

    if-ge v7, v8, :cond_6

    .line 292
    array-length v8, p3

    if-ge v6, v8, :cond_5

    aget-byte v8, v4, v7

    aget-byte v9, p3, v6

    if-le v8, v9, :cond_5

    .line 293
    aget-byte v8, v4, v7

    aput-byte v8, p3, v6

    .line 295
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 291
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 297
    .end local v7    # "k":I
    :cond_6
    goto :goto_5

    .line 299
    .end local v4    # "values":[B
    .end local v6    # "j":I
    :cond_7
    iget-object v6, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->lo:[C

    aget-char v5, v6, v5

    goto :goto_2

    .line 309
    .end local v5    # "q":C
    :cond_8
    if-gez v3, :cond_9

    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->lo:[C

    aget-char v4, v4, v2

    goto :goto_4

    :cond_9
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->hi:[C

    aget-char v4, v4, v2

    :goto_4
    move v2, v4

    .line 311
    .end local v3    # "d":I
    :cond_a
    :goto_5
    goto/16 :goto_0

    .line 312
    :cond_b
    :goto_6
    return-void
.end method

.method protected unpackValues(I)Ljava/lang/String;
    .locals 5
    .param p1, "k"    # I

    .line 113
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 114
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/layout/hyphenation/ByteVector;

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "k":I
    .local v2, "k":I
    invoke-virtual {v1, p1}, Lcom/itextpdf/layout/hyphenation/ByteVector;->get(I)B

    move-result p1

    .line 115
    .local p1, "v":B
    :goto_0
    if-eqz p1, :cond_1

    .line 116
    ushr-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 117
    .local v1, "c":C
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    and-int/lit8 v3, p1, 0xf

    int-to-char v1, v3

    .line 119
    if-nez v1, :cond_0

    .line 120
    goto :goto_1

    .line 122
    :cond_0
    add-int/lit8 v3, v1, -0x1

    add-int/lit8 v3, v3, 0x30

    int-to-char v1, v3

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/layout/hyphenation/ByteVector;

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "k":I
    .local v4, "k":I
    invoke-virtual {v3, v2}, Lcom/itextpdf/layout/hyphenation/ByteVector;->get(I)B

    move-result p1

    .line 125
    .end local v1    # "c":C
    move v2, v4

    goto :goto_0

    .line 126
    .end local v4    # "k":I
    .restart local v2    # "k":I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
