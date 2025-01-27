.class public Lorg/apache/commons/lang/text/ExtendedMessageFormat;
.super Ljava/text/MessageFormat;
.source "ExtendedMessageFormat.java"


# static fields
.field private static final DUMMY_PATTERN:Ljava/lang/String; = ""

.field private static final END_FE:C = '}'

.field private static final ESCAPED_QUOTE:Ljava/lang/String; = "\'\'"

.field private static final HASH_SEED:I = 0x1f

.field private static final QUOTE:C = '\''

.field private static final START_FE:C = '{'

.field private static final START_FMT:C = ','

.field private static final serialVersionUID:J = -0x20c7ae6efb1e381fL


# instance fields
.field private final registry:Ljava/util/Map;

.field private toPattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "registry"    # Ljava/util/Map;

    .line 126
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->setLocale(Ljava/util/Locale;)V

    .line 128
    iput-object p3, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    .line 129
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "registry"    # Ljava/util/Map;

    .line 114
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V

    .line 115
    return-void
.end method

.method private appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Lorg/apache/commons/lang/text/StrBuilder;Z)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "appendTo"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p4, "escapingOn"    # Z

    .line 474
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 475
    .local v0, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 476
    .local v1, "c":[C
    const/4 v2, 0x0

    const/16 v3, 0x27

    if-eqz p4, :cond_1

    aget-char v4, v1, v0

    if-ne v4, v3, :cond_1

    .line 477
    invoke-direct {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    .line 478
    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v3}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v2

    :goto_0
    return-object v2

    .line 480
    :cond_1
    move v4, v0

    .line 481
    .local v4, "lastHold":I
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    .local v5, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 482
    if-eqz p4, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\'\'"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 483
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p3, v1, v4, v6}, Lorg/apache/commons/lang/text/StrBuilder;->append([CII)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 485
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 486
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 487
    goto :goto_3

    .line 489
    :cond_2
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    aget-char v6, v1, v6

    packed-switch v6, :pswitch_data_0

    .line 495
    invoke-direct {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_3

    .line 491
    :pswitch_0
    invoke-direct {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    .line 492
    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p3, v1, v4, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append([CII)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v2

    :goto_2
    return-object v2

    .line 481
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 498
    .end local v5    # "i":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unterminated quoted string at position "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch
.end method

.method private containsElements(Ljava/util/Collection;)Z
    .locals 3
    .param p1, "coll"    # Ljava/util/Collection;

    .line 520
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 524
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 525
    const/4 v0, 0x1

    return v0

    .line 528
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_2
    return v0

    .line 521
    :cond_3
    :goto_0
    return v0
.end method

.method private getFormat(Ljava/lang/String;)Ljava/text/Format;
    .locals 5
    .param p1, "desc"    # Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 303
    move-object v0, p1

    .line 304
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 305
    .local v1, "args":Ljava/lang/String;
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 306
    .local v2, "i":I
    if-lez v2, :cond_0

    .line 307
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 308
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 310
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang/text/FormatFactory;

    .line 311
    .local v3, "factory":Lorg/apache/commons/lang/text/FormatFactory;
    if-eqz v3, :cond_1

    .line 312
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-interface {v3, v0, v1, v4}, Lorg/apache/commons/lang/text/FormatFactory;->getFormat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v4

    return-object v4

    .line 315
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "args":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "factory":Lorg/apache/commons/lang/text/FormatFactory;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Z)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "escapingOn"    # Z

    .line 511
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Lorg/apache/commons/lang/text/StrBuilder;Z)Lorg/apache/commons/lang/text/StrBuilder;

    .line 512
    return-void
.end method

.method private insertFormats(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "customPatterns"    # Ljava/util/ArrayList;

    .line 400
    invoke-direct {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->containsElements(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    return-object p1

    .line 403
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 404
    .local v0, "sb":Lorg/apache/commons/lang/text/StrBuilder;
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 405
    .local v1, "pos":Ljava/text/ParsePosition;
    const/4 v3, -0x1

    .line 406
    .local v3, "fe":I
    const/4 v4, 0x0

    .line 407
    .local v4, "depth":I
    :goto_0
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 408
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 409
    .local v5, "c":C
    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    .line 426
    :sswitch_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 414
    :sswitch_1
    add-int/lit8 v4, v4, 0x1

    .line 415
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 416
    add-int/lit8 v3, v3, 0x1

    .line 417
    const/16 v6, 0x7b

    invoke-virtual {v0, v6}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v6

    invoke-direct {p0, v1}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/lang/text/StrBuilder;->append(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 419
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 420
    .local v6, "customPattern":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 421
    const/16 v7, 0x2c

    invoke-virtual {v0, v7}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 423
    .end local v6    # "customPattern":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 411
    :sswitch_2
    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Lorg/apache/commons/lang/text/StrBuilder;Z)Lorg/apache/commons/lang/text/StrBuilder;

    .line 412
    goto :goto_2

    .line 429
    :goto_1
    invoke-virtual {v0, v5}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 430
    invoke-direct {p0, v1}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    .line 432
    .end local v5    # "c":C
    :cond_2
    :goto_2
    goto :goto_0

    .line 433
    :cond_3
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_2
        0x7b -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;
    .locals 1
    .param p1, "pos"    # Ljava/text/ParsePosition;

    .line 458
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 459
    return-object p1
.end method

.method private parseFormatDescription(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 368
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 369
    .local v0, "start":I
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 370
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 371
    .local v1, "text":I
    const/4 v2, 0x1

    .line 372
    .local v2, "depth":I
    :goto_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 373
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 378
    :sswitch_0
    add-int/lit8 v2, v2, -0x1

    .line 379
    if-nez v2, :cond_0

    .line 380
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 375
    :sswitch_1
    add-int/lit8 v2, v2, 0x1

    .line 376
    goto :goto_1

    .line 384
    :sswitch_2
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->getQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Z)V

    .line 372
    :cond_0
    :goto_1
    invoke-direct {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_0

    .line 388
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unterminated format element at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_2
        0x7b -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 326
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 327
    .local v0, "start":I
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 328
    new-instance v1, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>()V

    .line 329
    .local v1, "result":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v2, 0x0

    .line 330
    .local v2, "error":Z
    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 331
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 332
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    const/16 v5, 0x7d

    const/16 v6, 0x2c

    if-eqz v4, :cond_0

    .line 333
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 334
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 335
    if-eq v3, v6, :cond_0

    if-eq v3, v5, :cond_0

    .line 336
    const/4 v2, 0x1

    .line 337
    goto :goto_1

    .line 340
    :cond_0
    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_2

    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 342
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 343
    :catch_0
    move-exception v4

    .line 348
    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v2, v4

    .line 349
    invoke-virtual {v1, v3}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 330
    .end local v3    # "c":C
    :goto_1
    invoke-direct {p0, p2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_0

    .line 351
    :cond_3
    if-eqz v2, :cond_4

    .line 352
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid format argument index at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 356
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unterminated format element at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "len":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 446
    .local v1, "buffer":[C
    :cond_0
    invoke-static {}, Lorg/apache/commons/lang/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v2

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CI)I

    move-result v0

    .line 447
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 448
    if-lez v0, :cond_1

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 449
    :cond_1
    return-void
.end method


# virtual methods
.method public final applyPattern(Ljava/lang/String;)V
    .locals 17
    .param p1, "pattern"    # Ljava/lang/String;

    .line 145
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 146
    invoke-super/range {p0 .. p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 147
    invoke-super/range {p0 .. p0}, Ljava/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    .line 148
    return-void

    .line 150
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v2, "foundFormats":Ljava/util/ArrayList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v3, "foundDescriptions":Ljava/util/ArrayList;
    new-instance v4, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 154
    .local v4, "stripCustom":Lorg/apache/commons/lang/text/StrBuilder;
    new-instance v5, Ljava/text/ParsePosition;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 155
    .local v5, "pos":Ljava/text/ParsePosition;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 156
    .local v7, "c":[C
    const/4 v8, 0x0

    .local v8, "fmtCount":I
    const/4 v9, 0x0

    move v10, v6

    move v11, v10

    move-object v12, v9

    move-object v13, v12

    .line 157
    :goto_0
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_6

    .line 158
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v14

    aget-char v14, v7, v14

    const/4 v15, 0x1

    sparse-switch v14, :sswitch_data_0

    move v6, v10

    .local v6, "start":I
    move v10, v11

    .local v10, "index":I
    move-object v11, v12

    .local v11, "formatDescription":Ljava/lang/String;
    move-object v12, v13

    move-object v12, v11

    move v11, v10

    move v10, v6

    .local v12, "format":Ljava/text/Format;
    goto/16 :goto_4

    .line 163
    .end local v6    # "start":I
    .end local v10    # "index":I
    .end local v11    # "formatDescription":Ljava/lang/String;
    .end local v12    # "format":Ljava/text/Format;
    :sswitch_0
    add-int/lit8 v8, v8, 0x1

    .line 164
    invoke-direct {v0, v1, v5}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 165
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    .line 166
    .local v10, "start":I
    invoke-direct {v0, v5}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v11

    invoke-direct {v0, v1, v11}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v11

    .line 167
    .local v11, "index":I
    const/16 v12, 0x7b

    invoke-virtual {v4, v12}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Lorg/apache/commons/lang/text/StrBuilder;->append(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 168
    invoke-direct {v0, v1, v5}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 169
    const/4 v12, 0x0

    .line 170
    .restart local v12    # "format":Ljava/text/Format;
    const/4 v13, 0x0

    .line 171
    .local v13, "formatDescription":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v14

    aget-char v14, v7, v14

    const/16 v6, 0x2c

    if-ne v14, v6, :cond_1

    .line 172
    invoke-direct {v0, v5}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v14

    invoke-direct {v0, v1, v14}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->parseFormatDescription(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v13

    .line 174
    invoke-direct {v0, v13}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->getFormat(Ljava/lang/String;)Ljava/text/Format;

    move-result-object v12

    .line 175
    if-nez v12, :cond_1

    .line 176
    invoke-virtual {v4, v6}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 179
    :cond_1
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    if-nez v12, :cond_2

    move-object v6, v9

    goto :goto_1

    :cond_2
    move-object v6, v13

    :goto_1
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v8, :cond_3

    move v6, v15

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    invoke-static {v6}, Lorg/apache/commons/lang/Validate;->isTrue(Z)V

    .line 182
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v8, :cond_4

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    :goto_3
    invoke-static {v15}, Lorg/apache/commons/lang/Validate;->isTrue(Z)V

    .line 183
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    aget-char v6, v7, v6

    const/16 v14, 0x7d

    if-ne v6, v14, :cond_5

    move-object/from16 v16, v13

    move-object v13, v12

    move-object/from16 v12, v16

    goto :goto_4

    .line 184
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "Unreadable format element at position "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 160
    .end local v10    # "start":I
    .end local v11    # "index":I
    .end local v12    # "format":Ljava/text/Format;
    .end local v13    # "formatDescription":Ljava/lang/String;
    :sswitch_1
    invoke-direct {v0, v1, v5, v4, v15}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Lorg/apache/commons/lang/text/StrBuilder;Z)Lorg/apache/commons/lang/text/StrBuilder;

    .line 161
    goto :goto_5

    .line 189
    .restart local v10    # "start":I
    .restart local v11    # "index":I
    .local v12, "formatDescription":Ljava/lang/String;
    .local v13, "format":Ljava/text/Format;
    :goto_4
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    aget-char v6, v7, v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 190
    invoke-direct {v0, v5}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    .end local v10    # "start":I
    .end local v11    # "index":I
    .end local v12    # "formatDescription":Ljava/lang/String;
    .end local v13    # "format":Ljava/text/Format;
    :goto_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 193
    :cond_6
    invoke-virtual {v4}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-super {v0, v6}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 194
    invoke-super/range {p0 .. p0}, Ljava/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, v3}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->insertFormats(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    .line 195
    invoke-direct {v0, v2}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->containsElements(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 196
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->getFormats()[Ljava/text/Format;

    move-result-object v6

    .line 199
    .local v6, "origFormats":[Ljava/text/Format;
    const/4 v9, 0x0

    .line 200
    .local v9, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "it":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 201
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/text/Format;

    .line 202
    .local v11, "f":Ljava/text/Format;
    if-eqz v11, :cond_7

    .line 203
    aput-object v11, v6, v9

    .line 200
    .end local v11    # "f":Ljava/text/Format;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 206
    .end local v10    # "it":Ljava/util/Iterator;
    :cond_8
    invoke-super {v0, v6}, Ljava/text/MessageFormat;->setFormats([Ljava/text/Format;)V

    .line 208
    .end local v6    # "origFormats":[Ljava/text/Format;
    .end local v9    # "i":I
    :cond_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 260
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 261
    return v0

    .line 263
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 264
    return v1

    .line 266
    :cond_1
    invoke-super {p0, p1}, Ljava/text/MessageFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 267
    return v1

    .line 269
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/lang/ObjectUtils;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    return v1

    .line 272
    :cond_3
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/lang/text/ExtendedMessageFormat;

    .line 273
    .local v2, "rhs":Lorg/apache/commons/lang/text/ExtendedMessageFormat;
    iget-object v3, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/lang/ObjectUtils;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 274
    return v1

    .line 276
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    iget-object v4, v2, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-static {v3, v4}, Lorg/apache/commons/lang/ObjectUtils;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 277
    return v1

    .line 279
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 289
    invoke-super {p0}, Ljava/text/MessageFormat;->hashCode()I

    move-result v0

    .line 290
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-static {v2}, Lorg/apache/commons/lang/ObjectUtils;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 291
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/commons/lang/ObjectUtils;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 292
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public setFormat(ILjava/text/Format;)V
    .locals 1
    .param p1, "formatElementIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .locals 1
    .param p1, "argumentIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFormats([Ljava/text/Format;)V
    .locals 1
    .param p1, "newFormats"    # [Ljava/text/Format;

    .line 239
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .locals 1
    .param p1, "newFormats"    # [Ljava/text/Format;

    .line 249
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/commons/lang/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    return-object v0
.end method
