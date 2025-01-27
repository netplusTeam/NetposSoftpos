.class public Lorg/jdom2/output/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/Format$TextMode;,
        Lorg/jdom2/output/Format$DefaultCharsetEscapeStrategy;,
        Lorg/jdom2/output/Format$EscapeStrategy7Bits;,
        Lorg/jdom2/output/Format$EscapeStrategy8Bits;,
        Lorg/jdom2/output/Format$EscapeStrategyUTF;
    }
.end annotation


# static fields
.field private static final Bits7EscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

.field private static final Bits8EscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

.field private static final DefaultEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

.field private static final STANDARD_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final STANDARD_INDENT:Ljava/lang/String; = "  "

.field private static final STANDARD_LINE_SEPARATOR:Ljava/lang/String;

.field private static final UTFEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;


# instance fields
.field encoding:Ljava/lang/String;

.field escapeStrategy:Lorg/jdom2/output/EscapeStrategy;

.field expandEmptyElements:Z

.field ignoreTrAXEscapingPIs:Z

.field indent:Ljava/lang/String;

.field lineSeparator:Ljava/lang/String;

.field mode:Lorg/jdom2/output/Format$TextMode;

.field omitDeclaration:Z

.field omitEncoding:Z

.field specifiedAttributesOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 109
    new-instance v0, Lorg/jdom2/output/Format$EscapeStrategyUTF;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jdom2/output/Format$EscapeStrategyUTF;-><init>(Lorg/jdom2/output/Format$1;)V

    sput-object v0, Lorg/jdom2/output/Format;->UTFEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 125
    new-instance v0, Lorg/jdom2/output/Format$EscapeStrategy8Bits;

    invoke-direct {v0, v1}, Lorg/jdom2/output/Format$EscapeStrategy8Bits;-><init>(Lorg/jdom2/output/Format$1;)V

    sput-object v0, Lorg/jdom2/output/Format;->Bits8EscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 141
    new-instance v0, Lorg/jdom2/output/Format$EscapeStrategy7Bits;

    invoke-direct {v0, v1}, Lorg/jdom2/output/Format$EscapeStrategy7Bits;-><init>(Lorg/jdom2/output/Format$1;)V

    sput-object v0, Lorg/jdom2/output/Format;->Bits7EscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 147
    new-instance v0, Lorg/jdom2/output/Format$1;

    invoke-direct {v0}, Lorg/jdom2/output/Format$1;-><init>()V

    sput-object v0, Lorg/jdom2/output/Format;->DefaultEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 569
    sget-object v0, Lorg/jdom2/output/LineSeparator;->DEFAULT:Lorg/jdom2/output/LineSeparator;

    invoke-virtual {v0}, Lorg/jdom2/output/LineSeparator;->value()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jdom2/output/Format;->STANDARD_LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/output/Format;->indent:Ljava/lang/String;

    .line 579
    sget-object v0, Lorg/jdom2/output/Format;->STANDARD_LINE_SEPARATOR:Ljava/lang/String;

    iput-object v0, p0, Lorg/jdom2/output/Format;->lineSeparator:Ljava/lang/String;

    .line 582
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/jdom2/output/Format;->encoding:Ljava/lang/String;

    .line 586
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jdom2/output/Format;->omitDeclaration:Z

    .line 590
    iput-boolean v1, p0, Lorg/jdom2/output/Format;->omitEncoding:Z

    .line 594
    iput-boolean v1, p0, Lorg/jdom2/output/Format;->specifiedAttributesOnly:Z

    .line 598
    iput-boolean v1, p0, Lorg/jdom2/output/Format;->expandEmptyElements:Z

    .line 602
    iput-boolean v1, p0, Lorg/jdom2/output/Format;->ignoreTrAXEscapingPIs:Z

    .line 605
    sget-object v1, Lorg/jdom2/output/Format$TextMode;->PRESERVE:Lorg/jdom2/output/Format$TextMode;

    iput-object v1, p0, Lorg/jdom2/output/Format;->mode:Lorg/jdom2/output/Format$TextMode;

    .line 608
    sget-object v1, Lorg/jdom2/output/Format;->DefaultEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    iput-object v1, p0, Lorg/jdom2/output/Format;->escapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 614
    invoke-virtual {p0, v0}, Lorg/jdom2/output/Format;->setEncoding(Ljava/lang/String;)Lorg/jdom2/output/Format;

    .line 615
    return-void
.end method

.method private static final chooseStrategy(Ljava/lang/String;)Lorg/jdom2/output/EscapeStrategy;
    .locals 2
    .param p0, "encoding"    # Ljava/lang/String;

    .line 540
    const-string v0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "UTF-16"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 545
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Latin1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 550
    :cond_1
    const-string v0, "US-ASCII"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ASCII"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 556
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 557
    .local v0, "cse":Ljava/nio/charset/CharsetEncoder;
    new-instance v1, Lorg/jdom2/output/Format$DefaultCharsetEscapeStrategy;

    invoke-direct {v1, v0}, Lorg/jdom2/output/Format$DefaultCharsetEscapeStrategy;-><init>(Ljava/nio/charset/CharsetEncoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 558
    .end local v0    # "cse":Ljava/nio/charset/CharsetEncoder;
    :catch_0
    move-exception v0

    .line 561
    sget-object v0, Lorg/jdom2/output/Format;->DefaultEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    return-object v0

    .line 552
    :cond_3
    :goto_0
    sget-object v0, Lorg/jdom2/output/Format;->Bits7EscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    return-object v0

    .line 547
    :cond_4
    :goto_1
    sget-object v0, Lorg/jdom2/output/Format;->Bits8EscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    return-object v0

    .line 542
    :cond_5
    :goto_2
    sget-object v0, Lorg/jdom2/output/Format;->UTFEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    return-object v0
.end method

.method public static final compact(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 235
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 236
    .local v0, "right":I
    const/4 v1, 0x0

    .line 237
    .local v1, "left":I
    :goto_0
    if-gt v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_0
    :goto_1
    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 246
    :cond_1
    if-le v1, v0, :cond_2

    .line 247
    const-string v2, ""

    return-object v2

    .line 250
    :cond_2
    const/4 v2, 0x1

    .line 251
    .local v2, "space":Z
    new-instance v3, Ljava/lang/StringBuilder;

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 252
    .local v3, "buffer":Ljava/lang/StringBuilder;
    :goto_2
    if-gt v1, v0, :cond_5

    .line 253
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 254
    .local v4, "c":C
    invoke-static {v4}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 255
    if-eqz v2, :cond_4

    .line 256
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    const/4 v2, 0x0

    goto :goto_3

    .line 260
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    const/4 v2, 0x1

    .line 263
    :cond_4
    :goto_3
    nop

    .end local v4    # "c":C
    add-int/lit8 v1, v1, 0x1

    .line 264
    goto :goto_2

    .line 265
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static final escapeAttribute(Lorg/jdom2/output/EscapeStrategy;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "strategy"    # Lorg/jdom2/output/EscapeStrategy;
    .param p1, "value"    # Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 349
    .local v0, "len":I
    const/4 v1, 0x0

    .line 351
    .local v1, "idx":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 352
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 353
    .local v2, "ch":C
    const/16 v3, 0x3c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x26

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0x22

    if-eq v2, v3, :cond_1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    invoke-interface {p0, v2}, Lorg/jdom2/output/EscapeStrategy;->shouldEscape(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    goto :goto_1

    .line 357
    :cond_0
    nop

    .end local v2    # "ch":C
    add-int/lit8 v1, v1, 0x1

    .line 358
    goto :goto_0

    .line 360
    :cond_1
    :goto_1
    if-ne v1, v0, :cond_2

    .line 361
    return-object p1

    .line 364
    :cond_2
    const/4 v2, 0x0

    .line 365
    .local v2, "highsurrogate":C
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 366
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 367
    :goto_2
    if-ge v1, v0, :cond_7

    .line 368
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .local v4, "idx":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 369
    .local v1, "ch":C
    const/16 v5, 0x3b

    const-string v6, "&#x"

    if-lez v2, :cond_4

    .line 370
    invoke-static {v1}, Lorg/jdom2/Verifier;->isLowSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 376
    invoke-static {v2, v1}, Lorg/jdom2/Verifier;->decodeSurrogatePair(CC)I

    move-result v7

    .line 377
    .local v7, "chp":I
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    const/4 v2, 0x0

    .line 381
    move v1, v4

    goto :goto_2

    .line 371
    .end local v7    # "chp":I
    :cond_3
    new-instance v5, Lorg/jdom2/IllegalDataException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not decode surrogate pair 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 383
    :cond_4
    sparse-switch v1, :sswitch_data_0

    .line 407
    invoke-interface {p0, v1}, Lorg/jdom2/output/EscapeStrategy;->shouldEscape(C)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 410
    invoke-static {v1}, Lorg/jdom2/Verifier;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 412
    move v2, v1

    goto :goto_3

    .line 388
    :sswitch_0
    const-string v5, "&gt;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    goto :goto_3

    .line 385
    :sswitch_1
    const-string v5, "&lt;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    goto :goto_3

    .line 391
    :sswitch_2
    const-string v5, "&amp;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    goto :goto_3

    .line 397
    :sswitch_3
    const-string v5, "&quot;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    goto :goto_3

    .line 394
    :sswitch_4
    const-string v5, "&#xD;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    goto :goto_3

    .line 403
    :sswitch_5
    const-string v5, "&#xA;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    goto :goto_3

    .line 400
    :sswitch_6
    const-string v5, "&#x9;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    goto :goto_3

    .line 414
    :cond_5
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 419
    :cond_6
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    .end local v1    # "ch":C
    :goto_3
    move v1, v4

    goto/16 :goto_2

    .line 424
    .end local v4    # "idx":I
    .local v1, "idx":I
    :cond_7
    if-gtz v2, :cond_8

    .line 429
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 425
    :cond_8
    new-instance v4, Lorg/jdom2/IllegalDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Surrogate pair 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "truncated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_6
        0xa -> :sswitch_5
        0xd -> :sswitch_4
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public static final escapeText(Lorg/jdom2/output/EscapeStrategy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "strategy"    # Lorg/jdom2/output/EscapeStrategy;
    .param p1, "eol"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 457
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 458
    .local v0, "right":I
    const/4 v1, 0x0

    .line 459
    .local v1, "idx":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v0, :cond_1

    .line 460
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 461
    .local v3, "ch":C
    const/16 v4, 0x3c

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_1

    const/16 v4, 0x26

    if-eq v3, v4, :cond_1

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    if-eq v3, v2, :cond_1

    invoke-interface {p0, v3}, Lorg/jdom2/output/EscapeStrategy;->shouldEscape(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 463
    goto :goto_1

    .line 465
    :cond_0
    nop

    .end local v3    # "ch":C
    add-int/lit8 v1, v1, 0x1

    .line 466
    goto :goto_0

    .line 468
    :cond_1
    :goto_1
    if-ne v1, v0, :cond_2

    .line 470
    return-object p2

    .line 473
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-lez v1, :cond_3

    .line 475
    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 477
    :cond_3
    const/4 v4, 0x0

    .line 478
    .local v4, "highsurrogate":C
    :goto_2
    if-ge v1, v0, :cond_9

    .line 479
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "idx":I
    .local v5, "idx":I
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 480
    .local v1, "ch":C
    const-string v6, ";"

    const-string v7, "&#x"

    if-lez v4, :cond_5

    .line 481
    invoke-static {v1}, Lorg/jdom2/Verifier;->isLowSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 487
    invoke-static {v4, v1}, Lorg/jdom2/Verifier;->decodeSurrogatePair(CC)I

    move-result v8

    .line 488
    .local v8, "chp":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const/4 v4, 0x0

    .line 490
    move v1, v5

    goto :goto_2

    .line 482
    .end local v8    # "chp":I
    :cond_4
    new-instance v2, Lorg/jdom2/IllegalDataException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not decode surrogate pair 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 492
    :cond_5
    sparse-switch v1, :sswitch_data_0

    .line 514
    invoke-interface {p0, v1}, Lorg/jdom2/output/EscapeStrategy;->shouldEscape(C)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 517
    invoke-static {v1}, Lorg/jdom2/Verifier;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 519
    move v4, v1

    goto :goto_3

    .line 497
    :sswitch_0
    const-string v6, "&gt;"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    goto :goto_3

    .line 494
    :sswitch_1
    const-string v6, "&lt;"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    goto :goto_3

    .line 500
    :sswitch_2
    const-string v6, "&amp;"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    goto :goto_3

    .line 503
    :sswitch_3
    const-string v6, "&#xD;"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    goto :goto_3

    .line 506
    :sswitch_4
    if-eqz p1, :cond_6

    .line 507
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 509
    :cond_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    goto :goto_3

    .line 521
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 524
    :cond_8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 528
    .end local v1    # "ch":C
    :goto_3
    move v1, v5

    goto/16 :goto_2

    .line 529
    .end local v5    # "idx":I
    .local v1, "idx":I
    :cond_9
    if-gtz v4, :cond_a

    .line 534
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 530
    :cond_a
    new-instance v2, Lorg/jdom2/IllegalDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Surrogate pair 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "truncated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_4
        0xd -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public static getCompactFormat()Lorg/jdom2/output/Format;
    .locals 2

    .line 221
    new-instance v0, Lorg/jdom2/output/Format;

    invoke-direct {v0}, Lorg/jdom2/output/Format;-><init>()V

    .line 222
    .local v0, "f":Lorg/jdom2/output/Format;
    sget-object v1, Lorg/jdom2/output/Format$TextMode;->NORMALIZE:Lorg/jdom2/output/Format$TextMode;

    invoke-virtual {v0, v1}, Lorg/jdom2/output/Format;->setTextMode(Lorg/jdom2/output/Format$TextMode;)Lorg/jdom2/output/Format;

    .line 223
    return-object v0
.end method

.method public static getPrettyFormat()Lorg/jdom2/output/Format;
    .locals 2

    .line 205
    new-instance v0, Lorg/jdom2/output/Format;

    invoke-direct {v0}, Lorg/jdom2/output/Format;-><init>()V

    .line 206
    .local v0, "f":Lorg/jdom2/output/Format;
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lorg/jdom2/output/Format;->setIndent(Ljava/lang/String;)Lorg/jdom2/output/Format;

    .line 207
    sget-object v1, Lorg/jdom2/output/Format$TextMode;->TRIM:Lorg/jdom2/output/Format$TextMode;

    invoke-virtual {v0, v1}, Lorg/jdom2/output/Format;->setTextMode(Lorg/jdom2/output/Format$TextMode;)Lorg/jdom2/output/Format;

    .line 208
    return-object v0
.end method

.method public static getRawFormat()Lorg/jdom2/output/Format;
    .locals 1

    .line 191
    new-instance v0, Lorg/jdom2/output/Format;

    invoke-direct {v0}, Lorg/jdom2/output/Format;-><init>()V

    return-object v0
.end method

.method public static final trimBoth(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 314
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 315
    .local v0, "right":I
    :goto_0
    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 318
    :cond_0
    const/4 v1, 0x0

    .line 319
    .local v1, "left":I
    :goto_1
    if-gt v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 322
    :cond_1
    if-le v1, v0, :cond_2

    .line 323
    const-string v2, ""

    return-object v2

    .line 325
    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final trimLeft(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 295
    .local v0, "right":I
    const/4 v1, 0x0

    .line 296
    .local v1, "left":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_0
    if-lt v1, v0, :cond_1

    .line 300
    const-string v2, ""

    return-object v2

    .line 303
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final trimRight(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 276
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 277
    .local v0, "right":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 280
    :cond_0
    if-gez v0, :cond_1

    .line 281
    const-string v1, ""

    return-object v1

    .line 283
    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

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

    .line 93
    invoke-virtual {p0}, Lorg/jdom2/output/Format;->clone()Lorg/jdom2/output/Format;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/output/Format;
    .locals 2

    .line 933
    const/4 v0, 0x0

    .line 936
    .local v0, "format":Lorg/jdom2/output/Format;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/output/Format;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 940
    goto :goto_0

    .line 938
    :catch_0
    move-exception v1

    .line 942
    :goto_0
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 907
    iget-object v0, p0, Lorg/jdom2/output/Format;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEscapeStrategy()Lorg/jdom2/output/EscapeStrategy;
    .locals 1

    .line 634
    iget-object v0, p0, Lorg/jdom2/output/Format;->escapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    return-object v0
.end method

.method public getExpandEmptyElements()Z
    .locals 1

    .line 798
    iget-boolean v0, p0, Lorg/jdom2/output/Format;->expandEmptyElements:Z

    return v0
.end method

.method public getIgnoreTrAXEscapingPIs()Z
    .locals 1

    .line 839
    iget-boolean v0, p0, Lorg/jdom2/output/Format;->ignoreTrAXEscapingPIs:Z

    return v0
.end method

.method public getIndent()Ljava/lang/String;
    .locals 1

    .line 884
    iget-object v0, p0, Lorg/jdom2/output/Format;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .locals 1

    .line 726
    iget-object v0, p0, Lorg/jdom2/output/Format;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getOmitDeclaration()Z
    .locals 1

    .line 775
    iget-boolean v0, p0, Lorg/jdom2/output/Format;->omitDeclaration:Z

    return v0
.end method

.method public getOmitEncoding()Z
    .locals 1

    .line 751
    iget-boolean v0, p0, Lorg/jdom2/output/Format;->omitEncoding:Z

    return v0
.end method

.method public getTextMode()Lorg/jdom2/output/Format$TextMode;
    .locals 1

    .line 860
    iget-object v0, p0, Lorg/jdom2/output/Format;->mode:Lorg/jdom2/output/Format$TextMode;

    return-object v0
.end method

.method public isSpecifiedAttributesOnly()Z
    .locals 1

    .line 917
    iget-boolean v0, p0, Lorg/jdom2/output/Format;->specifiedAttributesOnly:Z

    return v0
.end method

.method public setEncoding(Ljava/lang/String;)Lorg/jdom2/output/Format;
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .line 896
    iput-object p1, p0, Lorg/jdom2/output/Format;->encoding:Ljava/lang/String;

    .line 897
    invoke-static {p1}, Lorg/jdom2/output/Format;->chooseStrategy(Ljava/lang/String;)Lorg/jdom2/output/EscapeStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/Format;->escapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 898
    return-object p0
.end method

.method public setEscapeStrategy(Lorg/jdom2/output/EscapeStrategy;)Lorg/jdom2/output/Format;
    .locals 0
    .param p1, "strategy"    # Lorg/jdom2/output/EscapeStrategy;

    .line 624
    iput-object p1, p0, Lorg/jdom2/output/Format;->escapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 625
    return-object p0
.end method

.method public setExpandEmptyElements(Z)Lorg/jdom2/output/Format;
    .locals 0
    .param p1, "expandEmptyElements"    # Z

    .line 788
    iput-boolean p1, p0, Lorg/jdom2/output/Format;->expandEmptyElements:Z

    .line 789
    return-object p0
.end method

.method public setIgnoreTrAXEscapingPIs(Z)V
    .locals 0
    .param p1, "ignoreTrAXEscapingPIs"    # Z

    .line 829
    iput-boolean p1, p0, Lorg/jdom2/output/Format;->ignoreTrAXEscapingPIs:Z

    .line 830
    return-void
.end method

.method public setIndent(Ljava/lang/String;)Lorg/jdom2/output/Format;
    .locals 0
    .param p1, "indent"    # Ljava/lang/String;

    .line 874
    iput-object p1, p0, Lorg/jdom2/output/Format;->indent:Ljava/lang/String;

    .line 875
    return-object p0
.end method

.method public setLineSeparator(Ljava/lang/String;)Lorg/jdom2/output/Format;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;

    .line 695
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/jdom2/output/Format;->lineSeparator:Ljava/lang/String;

    .line 696
    return-object p0
.end method

.method public setLineSeparator(Lorg/jdom2/output/LineSeparator;)Lorg/jdom2/output/Format;
    .locals 1
    .param p1, "separator"    # Lorg/jdom2/output/LineSeparator;

    .line 715
    if-nez p1, :cond_0

    sget-object v0, Lorg/jdom2/output/Format;->STANDARD_LINE_SEPARATOR:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/jdom2/output/LineSeparator;->value()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/jdom2/output/Format;->setLineSeparator(Ljava/lang/String;)Lorg/jdom2/output/Format;

    move-result-object v0

    return-object v0
.end method

.method public setOmitDeclaration(Z)Lorg/jdom2/output/Format;
    .locals 0
    .param p1, "omitDeclaration"    # Z

    .line 765
    iput-boolean p1, p0, Lorg/jdom2/output/Format;->omitDeclaration:Z

    .line 766
    return-object p0
.end method

.method public setOmitEncoding(Z)Lorg/jdom2/output/Format;
    .locals 0
    .param p1, "omitEncoding"    # Z

    .line 741
    iput-boolean p1, p0, Lorg/jdom2/output/Format;->omitEncoding:Z

    .line 742
    return-object p0
.end method

.method public setSpecifiedAttributesOnly(Z)V
    .locals 0
    .param p1, "specifiedAttributesOnly"    # Z

    .line 928
    iput-boolean p1, p0, Lorg/jdom2/output/Format;->specifiedAttributesOnly:Z

    .line 929
    return-void
.end method

.method public setTextMode(Lorg/jdom2/output/Format$TextMode;)Lorg/jdom2/output/Format;
    .locals 0
    .param p1, "mode"    # Lorg/jdom2/output/Format$TextMode;

    .line 850
    iput-object p1, p0, Lorg/jdom2/output/Format;->mode:Lorg/jdom2/output/Format$TextMode;

    .line 851
    return-object p0
.end method
