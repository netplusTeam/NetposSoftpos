.class public Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;
.super Ljava/lang/Object;
.source "TokenQueue.java"


# static fields
.field private static final ESC:C = '\\'


# instance fields
.field private pos:I

.field private queue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    .line 64
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 65
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    .line 66
    return-void
.end method

.method private remainingLength()I
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # Ljava/lang/String;

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .local v0, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 341
    .local v1, "last":C
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-char v5, v2, v4

    .line 342
    .local v5, "c":C
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_0

    .line 343
    if-eqz v1, :cond_1

    if-ne v1, v6, :cond_1

    .line 344
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 347
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    :cond_1
    :goto_1
    move v1, v5

    .line 341
    .end local v5    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addFirst(Ljava/lang/Character;)V
    .locals 1
    .param p1, "c"    # Ljava/lang/Character;

    .line 93
    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->addFirst(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public addFirst(Ljava/lang/String;)V
    .locals 3
    .param p1, "seq"    # Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    .line 104
    return-void
.end method

.method public advance()V
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    .line 190
    :cond_0
    return-void
.end method

.method public chompBalanced(CC)Ljava/lang/String;
    .locals 7
    .param p1, "open"    # C
    .param p2, "close"    # C

    .line 303
    const/4 v0, -0x1

    .line 304
    .local v0, "start":I
    const/4 v1, -0x1

    .line 305
    .local v1, "end":I
    const/4 v2, 0x0

    .line 306
    .local v2, "depth":I
    const/4 v3, 0x0

    .line 307
    .local v3, "last":C
    const/4 v4, 0x0

    .line 310
    .local v4, "inQuote":Z
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consume()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 312
    .local v5, "c":Ljava/lang/Character;
    if-eqz v3, :cond_2

    const/16 v6, 0x5c

    if-eq v3, v6, :cond_8

    .line 313
    :cond_2
    const/16 v6, 0x27

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const/16 v6, 0x22

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v6

    if-eq v6, p1, :cond_5

    .line 314
    if-nez v4, :cond_4

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    :goto_0
    move v4, v6

    .line 315
    :cond_5
    if-eqz v4, :cond_6

    .line 316
    goto :goto_2

    .line 317
    :cond_6
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 318
    add-int/lit8 v2, v2, 0x1

    .line 319
    const/4 v6, -0x1

    if-ne v0, v6, :cond_8

    .line 320
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    goto :goto_1

    .line 322
    :cond_7
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 323
    add-int/lit8 v2, v2, -0x1

    .line 326
    :cond_8
    :goto_1
    if-lez v2, :cond_9

    if-eqz v3, :cond_9

    .line 327
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    .line 328
    :cond_9
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 329
    .end local v5    # "c":Ljava/lang/Character;
    :goto_2
    if-gtz v2, :cond_0

    .line 330
    :goto_3
    if-ltz v1, :cond_a

    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_a
    const-string v5, ""

    :goto_4
    return-object v5
.end method

.method public chompTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "seq"    # Ljava/lang/String;

    .line 282
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consumeTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 284
    return-object v0
.end method

.method public chompToIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "seq"    # Ljava/lang/String;

    .line 288
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consumeToIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 290
    return-object v0
.end method

.method public consume()C
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public consume(Ljava/lang/String;)V
    .locals 3
    .param p1, "seq"    # Ljava/lang/String;

    .line 208
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 211
    .local v0, "len":I
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainingLength()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 214
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    .line 215
    return-void

    .line 212
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Queue not long enough to consume sequence"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    .end local v0    # "len":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Queue did not match expected sequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public consumeAttributeKey()Ljava/lang/String;
    .locals 3

    .line 421
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    .line 422
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchesAny([C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    :cond_0
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :array_0
    .array-data 2
        0x2ds
        0x5fs
        0x3as
    .end array-data
.end method

.method public consumeCssIdentifier()Ljava/lang/String;
    .locals 3

    .line 409
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    .line 410
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchesAny([C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    :cond_0
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 413
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :array_0
    .array-data 2
        0x2ds
        0x5fs
    .end array-data
.end method

.method public consumeElementSelector()Ljava/lang/String;
    .locals 3

    .line 396
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    .line 397
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchesAny([C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    :cond_0
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :array_0
    .array-data 2
        0x7cs
        0x5fs
        0x2ds
    .end array-data
.end method

.method public consumeTagName()Ljava/lang/String;
    .locals 3

    .line 383
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    .line 384
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchesAny([C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    :cond_0
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :array_0
    .array-data 2
        0x3as
        0x5fs
        0x2ds
    .end array-data
.end method

.method public consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "seq"    # Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 224
    .local v0, "offset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "consumed":Ljava/lang/String;
    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    .line 227
    return-object v1

    .line 229
    .end local v1    # "consumed":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public varargs consumeToAny([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "seq"    # [Ljava/lang/String;

    .line 265
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    .line 266
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public consumeToIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    .line 234
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    .line 235
    .local v0, "start":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "first":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 237
    .local v3, "canScan":Z
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 238
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 239
    goto :goto_2

    .line 241
    :cond_0
    if-eqz v3, :cond_3

    .line 242
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    iget v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    sub-int/2addr v4, v5

    .line 243
    .local v4, "skip":I
    if-nez v4, :cond_1

    .line 244
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    goto :goto_1

    .line 245
    :cond_1
    if-gez v4, :cond_2

    .line 246
    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    goto :goto_1

    .line 248
    :cond_2
    add-int/2addr v5, v4

    iput v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    .line 249
    .end local v4    # "skip":I
    :goto_1
    goto :goto_0

    .line 251
    :cond_3
    iget v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 254
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public consumeWhitespace()Z
    .locals 2

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "seen":Z
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchesWhitespace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    .line 361
    const/4 v0, 0x1

    goto :goto_0

    .line 363
    :cond_0
    return v0
.end method

.method public consumeWord()Ljava/lang/String;
    .locals 3

    .line 371
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    .line 372
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainingLength()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matchChomp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .line 161
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    .line 163
    const/4 v0, 0x1

    return v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public varargs matchesAny([C)Z
    .locals 6
    .param p1, "seq"    # [C

    .line 139
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 140
    return v1

    .line 142
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v3, p1, v2

    .line 143
    .local v3, "c":C
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_1

    .line 144
    const/4 v0, 0x1

    return v0

    .line 142
    .end local v3    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_2
    return v1
.end method

.method public varargs matchesAny([Ljava/lang/String;)Z
    .locals 5
    .param p1, "seq"    # [Ljava/lang/String;

    .line 131
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 132
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    const/4 v0, 0x1

    return v0

    .line 131
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_1
    return v1
.end method

.method public matchesCS(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public matchesStartTag()Z
    .locals 3

    .line 151
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainingLength()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public matchesWhitespace()Z
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matchesWord()Z
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peek()C
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0
.end method

.method public remainder()Ljava/lang/String;
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "remainder":Ljava/lang/String;
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    .line 435
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
