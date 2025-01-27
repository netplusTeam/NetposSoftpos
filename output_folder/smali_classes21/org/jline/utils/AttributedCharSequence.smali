.class public abstract Lorg/jline/utils/AttributedCharSequence;
.super Ljava/lang/Object;
.source "AttributedCharSequence.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/utils/AttributedCharSequence$ForceMode;
    }
.end annotation


# static fields
.field static final DISABLE_ALTERNATE_CHARSET:Z

.field private static final HIGH_COLORS:I = 0x7fff

.field public static final TRUE_COLORS:I = 0x1000000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-string v0, "org.jline.utils.disableAlternateCharset"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/jline/utils/AttributedCharSequence;->DISABLE_ALTERNATE_CHARSET:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "first"    # Z

    .line 288
    if-nez p2, :cond_0

    .line 289
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public static rgbColor(I)I
    .locals 1
    .param p0, "col"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    invoke-static {p0}, Lorg/jline/utils/Colors;->rgbColor(I)I

    move-result v0

    return v0
.end method

.method public static roundColor(II)I
    .locals 1
    .param p0, "col"    # I
    .param p1, "max"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    invoke-static {p0, p1}, Lorg/jline/utils/Colors;->roundColor(II)I

    move-result v0

    return v0
.end method

.method public static roundRgbColor(IIII)I
    .locals 1
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "max"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    invoke-static {p0, p1, p2, p3}, Lorg/jline/utils/Colors;->roundRgbColor(IIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract buffer()[C
.end method

.method public charAt(I)C
    .locals 2
    .param p1, "index"    # I

    .line 334
    invoke-virtual {p0}, Lorg/jline/utils/AttributedCharSequence;->buffer()[C

    move-result-object v0

    invoke-virtual {p0}, Lorg/jline/utils/AttributedCharSequence;->offset()I

    move-result v1

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public codePointAt(I)I
    .locals 2
    .param p1, "index"    # I

    .line 338
    invoke-virtual {p0}, Lorg/jline/utils/AttributedCharSequence;->buffer()[C

    move-result-object v0

    invoke-virtual {p0}, Lorg/jline/utils/AttributedCharSequence;->offset()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v0

    return v0
.end method

.method public codePointBefore(I)I
    .locals 2
    .param p1, "index"    # I

    .line 351
    invoke-virtual {p0}, Lorg/jline/utils/AttributedCharSequence;->buffer()[C

    move-result-object v0

    invoke-virtual {p0}, Lorg/jline/utils/AttributedCharSequence;->offset()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore([CI)I

    move-result v0

    return v0
.end method

.method public codePointCount(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 355
    invoke-virtual {p0}, Lorg/jline/utils/AttributedCharSequence;->buffer()[C

    move-result-object v0

    invoke-virtual {p0}, Lorg/jline/utils/AttributedCharSequence;->offset()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1, p2}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    return v0
.end method

.method public columnLength()I
    .locals 5

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "cols":I
    invoke-virtual {p0}, Lorg/jline/utils/AttributedCharSequence;->length()I

    move-result v1

    .line 361
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "cur":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 362
    invoke-virtual {p0, v2}, Lorg/jline/utils/AttributedCharSequence;->codePointAt(I)I

    move-result v3

    .line 363
    .local v3, "cp":I
    invoke-virtual {p0, v2}, Lorg/jline/utils/AttributedCharSequence;->isHidden(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 364
    invoke-static {v3}, Lorg/jline/utils/WCWidth;->wcwidth(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 365
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 366
    .end local v3    # "cp":I
    goto :goto_0

    .line 367
    .end local v2    # "cur":I
    :cond_1
    return v0
.end method

.method public columnSplitLength(I)Ljava/util/List;
    .locals 2
    .param p1, "columns"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;"
        }
    .end annotation

    .line 398
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jline/utils/AttributedCharSequence;->columnSplitLength(IZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public columnSplitLength(IZZ)Ljava/util/List;
    .locals 7
    .param p1, "columns"    # I
    .param p2, "includeNewlines"    # Z
    .param p3, "delayLineWrap"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;"
        }
    .end annotation

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v0, "strings":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    const/4 v1, 0x0

    .line 404
    .local v1, "cur":I
    move v2, v1

    .line 405
    .local v2, "beg":I
    const/4 v3, 0x0

    .line 406
    .local v3, "col":I
    :goto_0
    invoke-virtual {p0}, Lorg/jline/utils/AttributedCharSequence;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 407
    invoke-virtual {p0, v1}, Lorg/jline/utils/AttributedCharSequence;->codePointAt(I)I

    move-result v4

    .line 408
    .local v4, "cp":I
    invoke-virtual {p0, v1}, Lorg/jline/utils/AttributedCharSequence;->isHidden(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lorg/jline/utils/WCWidth;->wcwidth(I)I

    move-result v5

    .line 409
    .local v5, "w":I
    :goto_1
    const/16 v6, 0xa

    if-ne v4, v6, :cond_2

    .line 410
    if-eqz p2, :cond_1

    add-int/lit8 v6, v1, 0x1

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    invoke-virtual {p0, v2, v6}, Lorg/jline/utils/AttributedCharSequence;->subSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    add-int/lit8 v2, v1, 0x1

    .line 412
    const/4 v3, 0x0

    goto :goto_3

    .line 413
    :cond_2
    add-int v6, v3, v5

    move v3, v6

    if-le v6, p1, :cond_3

    .line 414
    invoke-virtual {p0, v2, v1}, Lorg/jline/utils/AttributedCharSequence;->subSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    move v2, v1

    .line 416
    move v3, v5

    .line 418
    :cond_3
    :goto_3
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 419
    .end local v4    # "cp":I
    .end local v5    # "w":I
    goto :goto_0

    .line 420
    :cond_4
    invoke-virtual {p0, v2, v1}, Lorg/jline/utils/AttributedCharSequence;->subSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    return-object v0
.end method

.method public columnSubSequence(II)Lorg/jline/utils/AttributedString;
    .locals 7
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "begin":I
    const/4 v1, 0x0

    .line 373
    .local v1, "col":I
    :goto_0
    invoke-virtual {p0}, Lorg/jline/utils/AttributedCharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    .line 374
    invoke-virtual {p0, v0}, Lorg/jline/utils/AttributedCharSequence;->codePointAt(I)I

    move-result v2

    .line 375
    .local v2, "cp":I
    invoke-virtual {p0, v0}, Lorg/jline/utils/AttributedCharSequence;->isHidden(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lorg/jline/utils/WCWidth;->wcwidth(I)I

    move-result v4

    .line 376
    .local v4, "w":I
    :goto_1
    add-int v5, v1, v4

    if-le v5, p1, :cond_1

    .line 377
    goto :goto_2

    .line 379
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 380
    add-int/2addr v1, v4

    .line 381
    .end local v2    # "cp":I
    .end local v4    # "w":I
    goto :goto_0

    .line 382
    :cond_2
    :goto_2
    move v2, v0

    .line 383
    .local v2, "end":I
    :goto_3
    invoke-virtual {p0}, Lorg/jline/utils/AttributedCharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 384
    invoke-virtual {p0, v2}, Lorg/jline/utils/AttributedCharSequence;->codePointAt(I)I

    move-result v4

    .line 385
    .local v4, "cp":I
    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    .line 386
    goto :goto_5

    .line 387
    :cond_3
    invoke-virtual {p0, v2}, Lorg/jline/utils/AttributedCharSequence;->isHidden(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_4

    :cond_4
    invoke-static {v4}, Lorg/jline/utils/WCWidth;->wcwidth(I)I

    move-result v5

    .line 388
    .local v5, "w":I
    :goto_4
    add-int v6, v1, v5

    if-le v6, p2, :cond_5

    .line 389
    goto :goto_5

    .line 391
    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v2, v6

    .line 392
    add-int/2addr v1, v5

    .line 393
    .end local v4    # "cp":I
    .end local v5    # "w":I
    goto :goto_3

    .line 394
    :cond_6
    :goto_5
    invoke-virtual {p0, v0, v2}, Lorg/jline/utils/AttributedCharSequence;->subSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    return-object v3
.end method

.method public contains(C)Z
    .locals 2
    .param p1, "c"    # C

    .line 342
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/jline/utils/AttributedCharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 343
    invoke-virtual {p0, v0}, Lorg/jline/utils/AttributedCharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    .line 344
    const/4 v1, 0x1

    return v1

    .line 342
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 302
    invoke-virtual {p0, p1}, Lorg/jline/utils/AttributedCharSequence;->styleCodeAt(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract offset()I
.end method

.method public print(Lorg/jline/terminal/Terminal;)V
    .locals 2
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;

    .line 55
    invoke-interface {p1}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/jline/utils/AttributedCharSequence;->toAnsi(Lorg/jline/terminal/Terminal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public println(Lorg/jline/terminal/Terminal;)V
    .locals 2
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;

    .line 59
    invoke-interface {p1}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/jline/utils/AttributedCharSequence;->toAnsi(Lorg/jline/terminal/Terminal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public runLimit(I)I
    .locals 2
    .param p1, "index"    # I

    .line 314
    invoke-virtual {p0, p1}, Lorg/jline/utils/AttributedCharSequence;->styleAt(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    .line 315
    .local v0, "style":Lorg/jline/utils/AttributedStyle;
    :goto_0
    invoke-virtual {p0}, Lorg/jline/utils/AttributedCharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lorg/jline/utils/AttributedCharSequence;->styleAt(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jline/utils/AttributedStyle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 318
    :cond_0
    add-int/lit8 v1, p1, 0x1

    return v1
.end method

.method public runStart(I)I
    .locals 2
    .param p1, "index"    # I

    .line 306
    invoke-virtual {p0, p1}, Lorg/jline/utils/AttributedCharSequence;->styleAt(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    .line 307
    .local v0, "style":Lorg/jline/utils/AttributedStyle;
    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lorg/jline/utils/AttributedCharSequence;->styleAt(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jline/utils/AttributedStyle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 310
    :cond_0
    return p1
.end method

.method public abstract styleAt(I)Lorg/jline/utils/AttributedStyle;
.end method

.method styleCodeAt(I)J
    .locals 2
    .param p1, "index"    # I

    .line 298
    invoke-virtual {p0, p1}, Lorg/jline/utils/AttributedCharSequence;->styleAt(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/utils/AttributedStyle;->getStyle()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/jline/utils/AttributedCharSequence;->subSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object p1

    return-object p1
.end method

.method public abstract subSequence(II)Lorg/jline/utils/AttributedString;
.end method

.method public substring(II)Lorg/jline/utils/AttributedString;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 325
    invoke-virtual {p0, p1, p2}, Lorg/jline/utils/AttributedCharSequence;->subSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method

.method public toAnsi()Ljava/lang/String;
    .locals 1

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jline/utils/AttributedCharSequence;->toAnsi(Lorg/jline/terminal/Terminal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toAnsi(ILorg/jline/utils/AttributedCharSequence$ForceMode;)Ljava/lang/String;
    .locals 6
    .param p1, "colors"    # I
    .param p2, "force"    # Lorg/jline/utils/AttributedCharSequence$ForceMode;

    .line 103
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/jline/utils/AttributedCharSequence;->toAnsi(ILorg/jline/utils/AttributedCharSequence$ForceMode;Lorg/jline/utils/ColorPalette;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toAnsi(ILorg/jline/utils/AttributedCharSequence$ForceMode;Lorg/jline/utils/ColorPalette;)Ljava/lang/String;
    .locals 6
    .param p1, "colors"    # I
    .param p2, "force"    # Lorg/jline/utils/AttributedCharSequence$ForceMode;
    .param p3, "palette"    # Lorg/jline/utils/ColorPalette;

    .line 107
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jline/utils/AttributedCharSequence;->toAnsi(ILorg/jline/utils/AttributedCharSequence$ForceMode;Lorg/jline/utils/ColorPalette;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toAnsi(ILorg/jline/utils/AttributedCharSequence$ForceMode;Lorg/jline/utils/ColorPalette;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 38
    .param p1, "colors"    # I
    .param p2, "force"    # Lorg/jline/utils/AttributedCharSequence$ForceMode;
    .param p3, "palette"    # Lorg/jline/utils/ColorPalette;
    .param p4, "altIn"    # Ljava/lang/String;
    .param p5, "altOut"    # Ljava/lang/String;

    .line 111
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v5, 0x0

    .line 113
    .local v5, "style":J
    const-wide/16 v7, 0x0

    .line 114
    .local v7, "foreground":J
    const-wide/16 v9, 0x0

    .line 115
    .local v9, "background":J
    const/4 v11, 0x0

    .line 116
    .local v11, "alt":Z
    if-nez p3, :cond_0

    .line 117
    sget-object v12, Lorg/jline/utils/ColorPalette;->DEFAULT:Lorg/jline/utils/ColorPalette;

    .end local p3    # "palette":Lorg/jline/utils/ColorPalette;
    .local v12, "palette":Lorg/jline/utils/ColorPalette;
    goto :goto_0

    .line 116
    .end local v12    # "palette":Lorg/jline/utils/ColorPalette;
    .restart local p3    # "palette":Lorg/jline/utils/ColorPalette;
    :cond_0
    move-object/from16 v12, p3

    .line 119
    .end local p3    # "palette":Lorg/jline/utils/ColorPalette;
    .restart local v12    # "palette":Lorg/jline/utils/ColorPalette;
    :goto_0
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/jline/utils/AttributedCharSequence;->length()I

    move-result v14

    const-string v15, "\u001b[0m"

    const-wide/16 v16, 0x0

    if-ge v13, v14, :cond_2e

    .line 120
    invoke-virtual {v0, v13}, Lorg/jline/utils/AttributedCharSequence;->charAt(I)C

    move-result v14

    .line 121
    .local v14, "c":C
    if-eqz p4, :cond_4

    if-eqz v3, :cond_4

    .line 122
    move/from16 p3, v14

    .line 123
    .local p3, "pc":C
    sparse-switch v14, :sswitch_data_0

    goto :goto_2

    .line 128
    :sswitch_0
    const/16 v14, 0x6e

    goto :goto_2

    .line 132
    :sswitch_1
    const/16 v14, 0x76

    goto :goto_2

    .line 133
    :sswitch_2
    const/16 v14, 0x77

    goto :goto_2

    .line 131
    :sswitch_3
    const/16 v14, 0x75

    goto :goto_2

    .line 130
    :sswitch_4
    const/16 v14, 0x74

    goto :goto_2

    .line 124
    :sswitch_5
    const/16 v14, 0x6a

    goto :goto_2

    .line 127
    :sswitch_6
    const/16 v14, 0x6d

    goto :goto_2

    .line 125
    :sswitch_7
    const/16 v14, 0x6b

    goto :goto_2

    .line 126
    :sswitch_8
    const/16 v14, 0x6c

    goto :goto_2

    .line 134
    :sswitch_9
    const/16 v14, 0x78

    goto :goto_2

    .line 129
    :sswitch_a
    const/16 v14, 0x71

    .line 136
    :goto_2
    move/from16 v18, v11

    .line 137
    .local v18, "oldalt":Z
    move/from16 v3, p3

    .end local p3    # "pc":C
    .local v3, "pc":C
    if-eq v14, v3, :cond_1

    const/16 v19, 0x1

    goto :goto_3

    :cond_1
    const/16 v19, 0x0

    :goto_3
    move/from16 v11, v19

    .line 138
    xor-int v19, v18, v11

    if-eqz v19, :cond_3

    .line 139
    move/from16 v19, v3

    if-eqz v11, :cond_2

    move-object/from16 v3, p4

    goto :goto_4

    :cond_2
    move-object/from16 v3, p5

    .end local v3    # "pc":C
    .local v19, "pc":C
    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 138
    .end local v19    # "pc":C
    .restart local v3    # "pc":C
    :cond_3
    move/from16 v19, v3

    .line 142
    .end local v3    # "pc":C
    .end local v18    # "oldalt":Z
    :cond_4
    :goto_5
    invoke-virtual {v0, v13}, Lorg/jline/utils/AttributedCharSequence;->styleCodeAt(I)J

    move-result-wide v18

    const-wide/16 v20, -0x1001

    and-long v18, v18, v20

    .line 143
    .local v18, "s":J
    cmp-long v3, v5, v18

    if-eqz v3, :cond_2d

    .line 144
    xor-long v20, v5, v18

    const-wide/16 v22, 0x1fff

    and-long v20, v20, v22

    .line 145
    .local v20, "d":J
    const-wide/16 v22, 0x300

    and-long v22, v18, v22

    cmp-long v3, v22, v16

    if-eqz v3, :cond_5

    const-wide v22, 0x7fffff8300L

    and-long v22, v18, v22

    goto :goto_6

    :cond_5
    move-wide/from16 v22, v16

    .line 146
    .local v22, "fg":J
    :goto_6
    const-wide/16 v24, 0xc00

    and-long v24, v18, v24

    cmp-long v3, v24, v16

    if-eqz v3, :cond_6

    const-wide v24, 0x7fffff8000000c00L

    and-long v24, v18, v24

    goto :goto_7

    :cond_6
    move-wide/from16 v24, v16

    .line 147
    .local v24, "bg":J
    :goto_7
    cmp-long v3, v18, v16

    if-nez v3, :cond_7

    .line 148
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    move-wide/from16 v9, v16

    move-wide/from16 v7, v16

    move-wide/from16 v28, v5

    move/from16 p3, v11

    move/from16 v32, v13

    move/from16 v37, v14

    goto/16 :goto_1a

    .line 151
    :cond_7
    const-string v3, "\u001b["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const/4 v3, 0x1

    .line 153
    .local v3, "first":Z
    const-wide/16 v26, 0x4

    and-long v28, v20, v26

    cmp-long v15, v28, v16

    const-string v0, "3"

    if-eqz v15, :cond_9

    .line 154
    and-long v26, v18, v26

    cmp-long v15, v26, v16

    if-eqz v15, :cond_8

    move-object v15, v0

    goto :goto_8

    :cond_8
    const-string v15, "23"

    :goto_8
    invoke-static {v4, v15, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v3

    .line 156
    :cond_9
    const-wide/16 v26, 0x8

    and-long v28, v20, v26

    cmp-long v15, v28, v16

    move/from16 p3, v11

    .end local v11    # "alt":Z
    .local p3, "alt":Z
    const-string v11, "4"

    if-eqz v15, :cond_b

    .line 157
    and-long v26, v18, v26

    cmp-long v15, v26, v16

    if-eqz v15, :cond_a

    move-object v15, v11

    goto :goto_9

    :cond_a
    const-string v15, "24"

    :goto_9
    invoke-static {v4, v15, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v3

    .line 159
    :cond_b
    const-wide/16 v26, 0x10

    and-long v28, v20, v26

    cmp-long v15, v28, v16

    if-eqz v15, :cond_d

    .line 160
    and-long v26, v18, v26

    cmp-long v15, v26, v16

    if-eqz v15, :cond_c

    const-string v15, "5"

    goto :goto_a

    :cond_c
    const-string v15, "25"

    :goto_a
    invoke-static {v4, v15, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v3

    .line 162
    :cond_d
    const-wide/16 v26, 0x20

    and-long v28, v20, v26

    cmp-long v15, v28, v16

    if-eqz v15, :cond_f

    .line 163
    and-long v26, v18, v26

    cmp-long v15, v26, v16

    if-eqz v15, :cond_e

    const-string v15, "7"

    goto :goto_b

    :cond_e
    const-string v15, "27"

    :goto_b
    invoke-static {v4, v15, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v3

    .line 165
    :cond_f
    const-wide/16 v26, 0x40

    and-long v28, v20, v26

    cmp-long v15, v28, v16

    if-eqz v15, :cond_11

    .line 166
    and-long v26, v18, v26

    cmp-long v15, v26, v16

    if-eqz v15, :cond_10

    const-string v15, "8"

    goto :goto_c

    :cond_10
    const-string v15, "28"

    :goto_c
    invoke-static {v4, v15, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v3

    .line 168
    :cond_11
    const-wide/16 v26, 0x80

    and-long v28, v20, v26

    cmp-long v15, v28, v16

    move-wide/from16 v28, v5

    .end local v5    # "style":J
    .local v28, "style":J
    const-string v5, "9"

    if-eqz v15, :cond_13

    .line 169
    and-long v26, v18, v26

    cmp-long v6, v26, v16

    if-eqz v6, :cond_12

    move-object v6, v5

    goto :goto_d

    :cond_12
    const-string v6, "29"

    :goto_d
    invoke-static {v4, v6, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v3

    .line 171
    :cond_13
    cmp-long v6, v7, v22

    const-wide/16 v30, 0x1

    const-string v15, ";"

    if-eqz v6, :cond_1d

    .line 172
    cmp-long v6, v22, v16

    if-lez v6, :cond_1c

    .line 173
    const/4 v6, -0x1

    .line 174
    .local v6, "rounded":I
    const-wide/16 v32, 0x200

    and-long v32, v22, v32

    cmp-long v32, v32, v16

    move/from16 v33, v6

    .end local v6    # "rounded":I
    .local v33, "rounded":I
    const-string v6, "38;2;"

    const/16 v34, 0xf

    if-eqz v32, :cond_15

    .line 175
    const/16 v32, 0x1f

    move-wide/from16 v35, v7

    .end local v7    # "foreground":J
    .local v35, "foreground":J
    shr-long v7, v22, v32

    long-to-int v7, v7

    and-int/lit16 v7, v7, 0xff

    .line 176
    .local v7, "r":I
    const/16 v8, 0x17

    move/from16 v32, v13

    move/from16 v37, v14

    .end local v13    # "i":I
    .end local v14    # "c":C
    .local v32, "i":I
    .local v37, "c":C
    shr-long v13, v22, v8

    long-to-int v8, v13

    and-int/lit16 v8, v8, 0xff

    .line 177
    .local v8, "g":I
    shr-long v13, v22, v34

    long-to-int v13, v13

    and-int/lit16 v13, v13, 0xff

    .line 178
    .local v13, "b":I
    const/16 v14, 0x7fff

    if-lt v1, v14, :cond_14

    .line 179
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v3

    move/from16 v14, v33

    goto :goto_e

    .line 181
    :cond_14
    invoke-virtual {v12, v7, v8, v13}, Lorg/jline/utils/ColorPalette;->round(III)I

    move-result v14

    .line 183
    .end local v7    # "r":I
    .end local v8    # "g":I
    .end local v13    # "b":I
    .end local v33    # "rounded":I
    .local v14, "rounded":I
    :goto_e
    goto :goto_f

    .end local v32    # "i":I
    .end local v35    # "foreground":J
    .end local v37    # "c":C
    .local v7, "foreground":J
    .local v13, "i":I
    .local v14, "c":C
    .restart local v33    # "rounded":I
    :cond_15
    move-wide/from16 v35, v7

    move/from16 v32, v13

    move/from16 v37, v14

    .end local v7    # "foreground":J
    .end local v13    # "i":I
    .end local v14    # "c":C
    .restart local v32    # "i":I
    .restart local v35    # "foreground":J
    .restart local v37    # "c":C
    const-wide/16 v7, 0x100

    and-long v7, v22, v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_16

    .line 184
    shr-long v7, v22, v34

    long-to-int v7, v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v12, v7}, Lorg/jline/utils/ColorPalette;->round(I)I

    move-result v7

    move v14, v7

    .end local v33    # "rounded":I
    .local v7, "rounded":I
    goto :goto_f

    .line 183
    .end local v7    # "rounded":I
    .restart local v33    # "rounded":I
    :cond_16
    move/from16 v14, v33

    .line 186
    .end local v33    # "rounded":I
    .local v14, "rounded":I
    :goto_f
    if-ltz v14, :cond_1b

    .line 187
    const/16 v7, 0x7fff

    if-lt v1, v7, :cond_17

    sget-object v7, Lorg/jline/utils/AttributedCharSequence$ForceMode;->ForceTrueColors:Lorg/jline/utils/AttributedCharSequence$ForceMode;

    if-ne v2, v7, :cond_17

    .line 188
    invoke-virtual {v12, v14}, Lorg/jline/utils/ColorPalette;->getColor(I)I

    move-result v0

    .line 189
    .local v0, "col":I
    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 190
    .local v5, "r":I
    shr-int/lit8 v7, v0, 0x8

    and-int/lit16 v7, v7, 0xff

    .line 191
    .local v7, "g":I
    and-int/lit16 v8, v0, 0xff

    .line 192
    .local v8, "b":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v3

    .line 193
    .end local v0    # "col":I
    .end local v5    # "r":I
    .end local v7    # "g":I
    .end local v8    # "b":I
    goto :goto_11

    :cond_17
    sget-object v6, Lorg/jline/utils/AttributedCharSequence$ForceMode;->Force256Colors:Lorg/jline/utils/AttributedCharSequence$ForceMode;

    if-eq v2, v6, :cond_1a

    const/16 v6, 0x10

    if-lt v14, v6, :cond_18

    goto :goto_10

    .line 195
    :cond_18
    const/16 v6, 0x8

    if-lt v14, v6, :cond_19

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v5, v14, -0x8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v3

    .line 198
    and-long v5, v18, v30

    or-long v5, v20, v5

    move-wide/from16 v20, v5

    .end local v20    # "d":J
    .local v5, "d":J
    goto :goto_11

    .line 200
    .end local v5    # "d":J
    .restart local v20    # "d":J
    :cond_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v3

    .line 202
    and-long v5, v18, v30

    or-long v5, v20, v5

    move-wide/from16 v20, v5

    .end local v20    # "d":J
    .restart local v5    # "d":J
    goto :goto_11

    .line 194
    .end local v5    # "d":J
    .restart local v20    # "d":J
    :cond_1a
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "38;5;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v3

    .line 205
    .end local v14    # "rounded":I
    :cond_1b
    :goto_11
    goto :goto_12

    .line 206
    .end local v32    # "i":I
    .end local v35    # "foreground":J
    .end local v37    # "c":C
    .local v7, "foreground":J
    .restart local v13    # "i":I
    .local v14, "c":C
    :cond_1c
    move-wide/from16 v35, v7

    move/from16 v32, v13

    move/from16 v37, v14

    .end local v7    # "foreground":J
    .end local v13    # "i":I
    .end local v14    # "c":C
    .restart local v32    # "i":I
    .restart local v35    # "foreground":J
    .restart local v37    # "c":C
    const-string v0, "39"

    invoke-static {v4, v0, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    .line 208
    :goto_12
    move-wide/from16 v7, v22

    .end local v35    # "foreground":J
    .restart local v7    # "foreground":J
    goto :goto_13

    .line 171
    .end local v32    # "i":I
    .end local v37    # "c":C
    .restart local v13    # "i":I
    .restart local v14    # "c":C
    :cond_1d
    move-wide/from16 v35, v7

    move/from16 v32, v13

    move/from16 v37, v14

    .line 210
    .end local v13    # "i":I
    .end local v14    # "c":C
    .restart local v32    # "i":I
    .restart local v37    # "c":C
    :goto_13
    cmp-long v0, v9, v24

    if-eqz v0, :cond_27

    .line 211
    cmp-long v0, v24, v16

    if-lez v0, :cond_26

    .line 212
    const/4 v0, -0x1

    .line 213
    .local v0, "rounded":I
    const-wide/16 v5, 0x800

    and-long v5, v24, v5

    cmp-long v5, v5, v16

    const/16 v6, 0x27

    if-eqz v5, :cond_1f

    .line 214
    const/16 v5, 0x37

    shr-long v13, v24, v5

    long-to-int v5, v13

    and-int/lit16 v5, v5, 0xff

    .line 215
    .local v5, "r":I
    const/16 v13, 0x2f

    shr-long v13, v24, v13

    long-to-int v13, v13

    and-int/lit16 v13, v13, 0xff

    .line 216
    .local v13, "g":I
    move-wide/from16 v33, v7

    .end local v7    # "foreground":J
    .local v33, "foreground":J
    shr-long v6, v24, v6

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    .line 217
    .local v6, "b":I
    const/16 v7, 0x7fff

    if-lt v1, v7, :cond_1e

    .line 218
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "48;2;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_14

    .line 220
    :cond_1e
    invoke-virtual {v12, v5, v13, v6}, Lorg/jline/utils/ColorPalette;->round(III)I

    move-result v0

    goto :goto_14

    .line 222
    .end local v5    # "r":I
    .end local v6    # "b":I
    .end local v13    # "g":I
    .end local v33    # "foreground":J
    .restart local v7    # "foreground":J
    :cond_1f
    move-wide/from16 v33, v7

    .end local v7    # "foreground":J
    .restart local v33    # "foreground":J
    const-wide/16 v7, 0x400

    and-long v7, v24, v7

    cmp-long v5, v7, v16

    if-eqz v5, :cond_20

    .line 223
    shr-long v5, v24, v6

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v12, v5}, Lorg/jline/utils/ColorPalette;->round(I)I

    move-result v0

    goto :goto_15

    .line 222
    :cond_20
    :goto_14
    nop

    .line 225
    :goto_15
    if-ltz v0, :cond_25

    .line 226
    const/16 v5, 0x7fff

    if-lt v1, v5, :cond_21

    sget-object v5, Lorg/jline/utils/AttributedCharSequence$ForceMode;->ForceTrueColors:Lorg/jline/utils/AttributedCharSequence$ForceMode;

    if-ne v2, v5, :cond_21

    .line 227
    invoke-virtual {v12, v0}, Lorg/jline/utils/ColorPalette;->getColor(I)I

    move-result v5

    .line 228
    .local v5, "col":I
    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    .line 229
    .local v6, "r":I
    shr-int/lit8 v7, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    .line 230
    .local v7, "g":I
    and-int/lit16 v8, v5, 0xff

    .line 231
    .restart local v8    # "b":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "48;2;"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v3

    .line 232
    .end local v5    # "col":I
    .end local v6    # "r":I
    .end local v7    # "g":I
    .end local v8    # "b":I
    goto :goto_17

    :cond_21
    sget-object v5, Lorg/jline/utils/AttributedCharSequence$ForceMode;->Force256Colors:Lorg/jline/utils/AttributedCharSequence$ForceMode;

    if-eq v2, v5, :cond_24

    const/16 v5, 0x10

    if-lt v0, v5, :cond_22

    goto :goto_16

    .line 234
    :cond_22
    const/16 v5, 0x8

    if-lt v0, v5, :cond_23

    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "10"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, -0x8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_17

    .line 237
    :cond_23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_17

    .line 233
    :cond_24
    :goto_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "48;5;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v3

    .line 240
    .end local v0    # "rounded":I
    :cond_25
    :goto_17
    goto :goto_18

    .line 241
    .end local v33    # "foreground":J
    .local v7, "foreground":J
    :cond_26
    move-wide/from16 v33, v7

    .end local v7    # "foreground":J
    .restart local v33    # "foreground":J
    const-string v0, "49"

    invoke-static {v4, v0, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    .line 243
    :goto_18
    move-wide/from16 v9, v24

    goto :goto_19

    .line 210
    .end local v33    # "foreground":J
    .restart local v7    # "foreground":J
    :cond_27
    move-wide/from16 v33, v7

    .line 245
    .end local v7    # "foreground":J
    .restart local v33    # "foreground":J
    :goto_19
    const-wide/16 v5, 0x3

    and-long v5, v20, v5

    cmp-long v0, v5, v16

    if-eqz v0, :cond_2c

    .line 246
    and-long v5, v20, v30

    cmp-long v0, v5, v16

    const-wide/16 v5, 0x2

    if-eqz v0, :cond_28

    and-long v7, v18, v30

    cmp-long v0, v7, v16

    if-eqz v0, :cond_29

    :cond_28
    and-long v7, v20, v5

    cmp-long v0, v7, v16

    if-eqz v0, :cond_2a

    and-long v7, v18, v5

    cmp-long v0, v7, v16

    if-nez v0, :cond_2a

    .line 248
    :cond_29
    const-string v0, "22"

    invoke-static {v4, v0, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v3

    .line 250
    :cond_2a
    and-long v7, v20, v30

    cmp-long v0, v7, v16

    if-eqz v0, :cond_2b

    and-long v7, v18, v30

    cmp-long v0, v7, v16

    if-eqz v0, :cond_2b

    .line 251
    const-string v0, "1"

    invoke-static {v4, v0, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    .line 253
    :cond_2b
    and-long v7, v20, v5

    cmp-long v0, v7, v16

    if-eqz v0, :cond_2c

    and-long v5, v18, v5

    cmp-long v0, v5, v16

    if-eqz v0, :cond_2c

    .line 254
    const-string v0, "2"

    invoke-static {v4, v0, v3}, Lorg/jline/utils/AttributedCharSequence;->attr(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v3

    .line 257
    :cond_2c
    const-string v0, "m"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v33

    .line 259
    .end local v3    # "first":Z
    .end local v33    # "foreground":J
    .restart local v7    # "foreground":J
    :goto_1a
    move-wide/from16 v5, v18

    .end local v28    # "style":J
    .local v5, "style":J
    goto :goto_1b

    .line 143
    .end local v20    # "d":J
    .end local v22    # "fg":J
    .end local v24    # "bg":J
    .end local v32    # "i":I
    .end local v37    # "c":C
    .end local p3    # "alt":Z
    .restart local v11    # "alt":Z
    .local v13, "i":I
    .restart local v14    # "c":C
    :cond_2d
    move-wide/from16 v28, v5

    move-wide/from16 v35, v7

    move/from16 p3, v11

    move/from16 v32, v13

    move/from16 v37, v14

    .line 261
    .end local v11    # "alt":Z
    .end local v13    # "i":I
    .end local v14    # "c":C
    .restart local v32    # "i":I
    .restart local v37    # "c":C
    .restart local p3    # "alt":Z
    :goto_1b
    move/from16 v14, v37

    .end local v37    # "c":C
    .restart local v14    # "c":C
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .end local v14    # "c":C
    .end local v18    # "s":J
    add-int/lit8 v13, v32, 0x1

    move-object/from16 v0, p0

    move/from16 v11, p3

    move-object/from16 v3, p5

    .end local v32    # "i":I
    .restart local v13    # "i":I
    goto/16 :goto_1

    .end local p3    # "alt":Z
    .restart local v11    # "alt":Z
    :cond_2e
    move-wide/from16 v28, v5

    move-wide/from16 v35, v7

    move/from16 v32, v13

    .line 263
    .end local v5    # "style":J
    .end local v7    # "foreground":J
    .end local v13    # "i":I
    .restart local v28    # "style":J
    .restart local v35    # "foreground":J
    if-eqz v11, :cond_2f

    .line 264
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 263
    :cond_2f
    move-object/from16 v0, p5

    .line 266
    :goto_1c
    cmp-long v3, v28, v16

    if-eqz v3, :cond_30

    .line 267
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x2500 -> :sswitch_a
        0x2502 -> :sswitch_9
        0x250c -> :sswitch_8
        0x2510 -> :sswitch_7
        0x2514 -> :sswitch_6
        0x2518 -> :sswitch_5
        0x251c -> :sswitch_4
        0x2524 -> :sswitch_3
        0x252c -> :sswitch_2
        0x2534 -> :sswitch_1
        0x253c -> :sswitch_0
    .end sparse-switch
.end method

.method public toAnsi(IZ)Ljava/lang/String;
    .locals 1
    .param p1, "colors"    # I
    .param p2, "force256colors"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/jline/utils/AttributedCharSequence;->toAnsi(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toAnsi(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "colors"    # I
    .param p2, "force256colors"    # Z
    .param p3, "altIn"    # Ljava/lang/String;
    .param p4, "altOut"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    if-eqz p2, :cond_0

    sget-object v0, Lorg/jline/utils/AttributedCharSequence$ForceMode;->Force256Colors:Lorg/jline/utils/AttributedCharSequence$ForceMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jline/utils/AttributedCharSequence$ForceMode;->None:Lorg/jline/utils/AttributedCharSequence$ForceMode;

    :goto_0
    move-object v3, v0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/jline/utils/AttributedCharSequence;->toAnsi(ILorg/jline/utils/AttributedCharSequence$ForceMode;Lorg/jline/utils/ColorPalette;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toAnsi(Lorg/jline/terminal/Terminal;)Ljava/lang/String;
    .locals 12
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;

    .line 67
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/jline/terminal/Terminal;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dumb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/jline/utils/AttributedCharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    const/16 v0, 0x100

    .line 71
    .local v0, "colors":I
    sget-object v1, Lorg/jline/utils/AttributedCharSequence$ForceMode;->None:Lorg/jline/utils/AttributedCharSequence$ForceMode;

    .line 72
    .local v1, "forceMode":Lorg/jline/utils/AttributedCharSequence$ForceMode;
    const/4 v2, 0x0

    .line 73
    .local v2, "palette":Lorg/jline/utils/ColorPalette;
    const/4 v3, 0x0

    .local v3, "alternateIn":Ljava/lang/String;
    const/4 v4, 0x0

    .line 74
    .local v4, "alternateOut":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 75
    sget-object v5, Lorg/jline/utils/InfoCmp$Capability;->max_colors:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {p1, v5}, Lorg/jline/terminal/Terminal;->getNumericCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/Integer;

    move-result-object v5

    .line 76
    .local v5, "max_colors":Ljava/lang/Integer;
    if-eqz v5, :cond_1

    .line 77
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    :cond_1
    invoke-interface {p1}, Lorg/jline/terminal/Terminal;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "windows-256color"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 80
    invoke-interface {p1}, Lorg/jline/terminal/Terminal;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "windows-conemu"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 81
    :cond_2
    sget-object v1, Lorg/jline/utils/AttributedCharSequence$ForceMode;->Force256Colors:Lorg/jline/utils/AttributedCharSequence$ForceMode;

    .line 83
    :cond_3
    invoke-interface {p1}, Lorg/jline/terminal/Terminal;->getPalette()Lorg/jline/utils/ColorPalette;

    move-result-object v2

    .line 84
    sget-boolean v6, Lorg/jline/utils/AttributedCharSequence;->DISABLE_ALTERNATE_CHARSET:Z

    if-nez v6, :cond_4

    .line 85
    sget-object v6, Lorg/jline/utils/InfoCmp$Capability;->enter_alt_charset_mode:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {p1, v6}, Lorg/jline/terminal/Terminal;->getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, v8}, Lorg/jline/utils/Curses;->tputs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 86
    sget-object v6, Lorg/jline/utils/InfoCmp$Capability;->exit_alt_charset_mode:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {p1, v6}, Lorg/jline/terminal/Terminal;->getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lorg/jline/utils/Curses;->tputs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .end local v5    # "max_colors":Ljava/lang/Integer;
    :cond_4
    move-object v6, p0

    move v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-virtual/range {v6 .. v11}, Lorg/jline/utils/AttributedCharSequence;->toAnsi(ILorg/jline/utils/AttributedCharSequence$ForceMode;Lorg/jline/utils/ColorPalette;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public toAttributedString()Lorg/jline/utils/AttributedString;
    .locals 2

    .line 430
    invoke-virtual {p0}, Lorg/jline/utils/AttributedCharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/jline/utils/AttributedCharSequence;->substring(II)Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 426
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/jline/utils/AttributedCharSequence;->buffer()[C

    move-result-object v1

    invoke-virtual {p0}, Lorg/jline/utils/AttributedCharSequence;->offset()I

    move-result v2

    invoke-virtual {p0}, Lorg/jline/utils/AttributedCharSequence;->length()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
