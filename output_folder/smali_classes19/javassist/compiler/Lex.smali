.class public Ljavassist/compiler/Lex;
.super Ljava/lang/Object;
.source "Lex.java"

# interfaces
.implements Ljavassist/compiler/TokenId;


# static fields
.field private static final equalOps:[I

.field private static final ktable:Ljavassist/compiler/KeywordTable;


# instance fields
.field private currentToken:Ljavassist/compiler/Token;

.field private input:Ljava/lang/String;

.field private lastChar:I

.field private lineNumber:I

.field private lookAheadTokens:Ljavassist/compiler/Token;

.field private maxlen:I

.field private position:I

.field private textBuffer:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 345
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljavassist/compiler/Lex;->equalOps:[I

    .line 440
    new-instance v0, Ljavassist/compiler/KeywordTable;

    invoke-direct {v0}, Ljavassist/compiler/KeywordTable;-><init>()V

    sput-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    .line 443
    const-string v1, "abstract"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 444
    const-string v1, "boolean"

    const/16 v2, 0x12d

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 445
    const-string v1, "break"

    const/16 v2, 0x12e

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 446
    const-string v1, "byte"

    const/16 v2, 0x12f

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 447
    const-string v1, "case"

    const/16 v2, 0x130

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 448
    const-string v1, "catch"

    const/16 v2, 0x131

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 449
    const-string v1, "char"

    const/16 v2, 0x132

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 450
    const-string v1, "class"

    const/16 v2, 0x133

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 451
    const-string v1, "const"

    const/16 v2, 0x134

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 452
    const-string v1, "continue"

    const/16 v2, 0x135

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 453
    const-string v1, "default"

    const/16 v2, 0x136

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 454
    const-string v1, "do"

    const/16 v2, 0x137

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 455
    const-string v1, "double"

    const/16 v2, 0x138

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 456
    const-string v1, "else"

    const/16 v2, 0x139

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 457
    const-string v1, "extends"

    const/16 v2, 0x13a

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 458
    const-string v1, "false"

    const/16 v2, 0x19b

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 459
    const-string v1, "final"

    const/16 v2, 0x13b

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 460
    const-string v1, "finally"

    const/16 v2, 0x13c

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 461
    const-string v1, "float"

    const/16 v2, 0x13d

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 462
    const-string v1, "for"

    const/16 v2, 0x13e

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 463
    const-string v1, "goto"

    const/16 v2, 0x13f

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 464
    const-string v1, "if"

    const/16 v2, 0x140

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 465
    const-string v1, "implements"

    const/16 v2, 0x141

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 466
    const-string v1, "import"

    const/16 v2, 0x142

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 467
    const-string v1, "instanceof"

    const/16 v2, 0x143

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 468
    const-string v1, "int"

    const/16 v2, 0x144

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 469
    const-string v1, "interface"

    const/16 v2, 0x145

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 470
    const-string v1, "long"

    const/16 v2, 0x146

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 471
    const-string v1, "native"

    const/16 v2, 0x147

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 472
    const-string v1, "new"

    const/16 v2, 0x148

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 473
    const-string v1, "null"

    const/16 v2, 0x19c

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 474
    const-string v1, "package"

    const/16 v2, 0x149

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 475
    const-string v1, "private"

    const/16 v2, 0x14a

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 476
    const-string v1, "protected"

    const/16 v2, 0x14b

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 477
    const-string v1, "public"

    const/16 v2, 0x14c

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 478
    const-string v1, "return"

    const/16 v2, 0x14d

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 479
    const-string v1, "short"

    const/16 v2, 0x14e

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 480
    const-string v1, "static"

    const/16 v2, 0x14f

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 481
    const-string v1, "strictfp"

    const/16 v2, 0x15b

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 482
    const-string v1, "super"

    const/16 v2, 0x150

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 483
    const-string v1, "switch"

    const/16 v2, 0x151

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 484
    const-string v1, "synchronized"

    const/16 v2, 0x152

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 485
    const-string v1, "this"

    const/16 v2, 0x153

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 486
    const-string v1, "throw"

    const/16 v2, 0x154

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 487
    const-string v1, "throws"

    const/16 v2, 0x155

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 488
    const-string v1, "transient"

    const/16 v2, 0x156

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 489
    const-string v1, "true"

    const/16 v2, 0x19a

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 490
    const-string v1, "try"

    const/16 v2, 0x157

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 491
    const-string v1, "void"

    const/16 v2, 0x158

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 492
    const-string v1, "volatile"

    const/16 v2, 0x159

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 493
    const-string v1, "while"

    const/16 v2, 0x15a

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 494
    return-void

    :array_0
    .array-data 4
        0x15e
        0x0
        0x0
        0x0
        0x15f
        0x160
        0x0
        0x0
        0x0
        0x161
        0x162
        0x0
        0x163
        0x0
        0x164
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x165
        0x166
        0x167
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Ljavassist/compiler/Lex;->lastChar:I

    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljavassist/compiler/Lex;->textBuffer:Ljava/lang/StringBuffer;

    .line 44
    new-instance v0, Ljavassist/compiler/Token;

    invoke-direct {v0}, Ljavassist/compiler/Token;-><init>()V

    iput-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/compiler/Lex;->lookAheadTokens:Ljavassist/compiler/Token;

    .line 47
    iput-object p1, p0, Ljavassist/compiler/Lex;->input:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/Lex;->position:I

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Ljavassist/compiler/Lex;->maxlen:I

    .line 50
    iput v0, p0, Ljavassist/compiler/Lex;->lineNumber:I

    .line 51
    return-void
.end method

.method private get(Ljavassist/compiler/Token;)I
    .locals 2
    .param p1, "token"    # Ljavassist/compiler/Token;

    .line 103
    :goto_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->readLine(Ljavassist/compiler/Token;)I

    move-result v0

    .line 104
    .local v0, "t":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 105
    iput v0, p1, Ljavassist/compiler/Token;->tokenId:I

    .line 106
    return v0

    .line 104
    :cond_0
    goto :goto_0
.end method

.method private getNextNonWhiteChar()I
    .locals 5

    .line 142
    :goto_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    .line 143
    .local v0, "c":I
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_6

    .line 144
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    .line 145
    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    .line 147
    :cond_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    .line 148
    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 149
    :cond_1
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_5

    .line 151
    :cond_2
    :goto_1
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    .line 152
    if-ne v0, v2, :cond_3

    .line 153
    goto :goto_2

    .line 154
    :cond_3
    if-ne v0, v3, :cond_2

    .line 155
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v4

    move v0, v4

    if-ne v4, v1, :cond_4

    .line 156
    const/16 v0, 0x20

    .line 157
    goto :goto_2

    .line 160
    :cond_4
    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->ungetc(I)V

    goto :goto_1

    .line 163
    :cond_5
    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 164
    const/16 v0, 0x2f

    .line 167
    :cond_6
    :goto_2
    invoke-static {v0}, Ljavassist/compiler/Lex;->isBlank(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 168
    return v0

    .line 167
    :cond_7
    goto :goto_0
.end method

.method private getc()I
    .locals 3

    .line 523
    iget v0, p0, Ljavassist/compiler/Lex;->lastChar:I

    const/4 v1, -0x1

    if-gez v0, :cond_1

    .line 524
    iget v0, p0, Ljavassist/compiler/Lex;->position:I

    iget v2, p0, Ljavassist/compiler/Lex;->maxlen:I

    if-ge v0, v2, :cond_0

    .line 525
    iget-object v1, p0, Ljavassist/compiler/Lex;->input:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljavassist/compiler/Lex;->position:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 527
    :cond_0
    return v1

    .line 528
    :cond_1
    iget v0, p0, Ljavassist/compiler/Lex;->lastChar:I

    .line 529
    .local v0, "c":I
    iput v1, p0, Ljavassist/compiler/Lex;->lastChar:I

    .line 530
    return v0
.end method

.method private static isBlank(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 497
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isDigit(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 503
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readCharConst(Ljavassist/compiler/Token;)I
    .locals 5
    .param p1, "token"    # Ljavassist/compiler/Token;

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "value":I
    :goto_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    const/16 v3, 0x27

    if-eq v1, v3, :cond_3

    .line 175
    const/16 v1, 0x5c

    if-ne v2, v1, :cond_0

    .line 176
    invoke-direct {p0}, Ljavassist/compiler/Lex;->readEscapeChar()I

    move-result v0

    goto :goto_0

    .line 177
    :cond_0
    const/16 v1, 0x20

    if-ge v2, v1, :cond_2

    .line 178
    const/16 v1, 0xa

    if-ne v2, v1, :cond_1

    .line 179
    iget v1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    .line 181
    :cond_1
    const/16 v1, 0x1f4

    return v1

    .line 184
    :cond_2
    move v0, v2

    goto :goto_0

    .line 186
    :cond_3
    int-to-long v3, v0

    iput-wide v3, p1, Ljavassist/compiler/Token;->longValue:J

    .line 187
    const/16 v1, 0x191

    return v1
.end method

.method private readDouble(Ljava/lang/StringBuffer;ILjavassist/compiler/Token;)I
    .locals 7
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .param p2, "c"    # I
    .param p3, "token"    # Ljavassist/compiler/Token;

    .line 304
    const/16 v0, 0x39

    const/16 v1, 0x30

    const/16 v2, 0x64

    const/16 v3, 0x44

    const/16 v4, 0x65

    const/16 v5, 0x45

    if-eq p2, v5, :cond_0

    if-eq p2, v4, :cond_0

    if-eq p2, v3, :cond_0

    if-eq p2, v2, :cond_0

    .line 305
    int-to-char v6, p2

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 307
    :goto_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p2

    .line 308
    if-gt v1, p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 309
    int-to-char v6, p2

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 315
    :cond_0
    if-eq p2, v5, :cond_1

    if-ne p2, v4, :cond_4

    .line 316
    :cond_1
    int-to-char v4, p2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 317
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p2

    .line 318
    const/16 v4, 0x2b

    if-eq p2, v4, :cond_2

    const/16 v4, 0x2d

    if-ne p2, v4, :cond_3

    .line 319
    :cond_2
    int-to-char v4, p2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 320
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p2

    .line 323
    :cond_3
    :goto_1
    if-gt v1, p2, :cond_4

    if-gt p2, v0, :cond_4

    .line 324
    int-to-char v4, p2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 325
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p2

    goto :goto_1

    .line 330
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Ljavassist/compiler/Token;->doubleValue:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    nop

    .line 336
    const/16 v0, 0x46

    if-eq p2, v0, :cond_7

    const/16 v0, 0x66

    if-ne p2, v0, :cond_5

    goto :goto_2

    .line 338
    :cond_5
    if-eq p2, v3, :cond_6

    if-eq p2, v2, :cond_6

    .line 339
    invoke-direct {p0, p2}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 341
    :cond_6
    const/16 v0, 0x195

    return v0

    .line 337
    :cond_7
    :goto_2
    const/16 v0, 0x194

    return v0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/16 v1, 0x1f4

    return v1
.end method

.method private readEscapeChar()I
    .locals 2

    .line 191
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    .line 192
    .local v0, "c":I
    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    .line 193
    const/16 v0, 0xa

    goto :goto_0

    .line 194
    :cond_0
    const/16 v1, 0x74

    if-ne v0, v1, :cond_1

    .line 195
    const/16 v0, 0x9

    goto :goto_0

    .line 196
    :cond_1
    const/16 v1, 0x72

    if-ne v0, v1, :cond_2

    .line 197
    const/16 v0, 0xd

    goto :goto_0

    .line 198
    :cond_2
    const/16 v1, 0x66

    if-ne v0, v1, :cond_3

    .line 199
    const/16 v0, 0xc

    goto :goto_0

    .line 200
    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 201
    iget v1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    .line 203
    :cond_4
    :goto_0
    return v0
.end method

.method private readIdentifier(ILjavassist/compiler/Token;)I
    .locals 4
    .param p1, "c"    # I
    .param p2, "token"    # Ljavassist/compiler/Token;

    .line 415
    iget-object v0, p0, Ljavassist/compiler/Lex;->textBuffer:Ljava/lang/StringBuffer;

    .line 416
    .local v0, "tbuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 419
    :goto_0
    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 420
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p1

    .line 421
    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 423
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    invoke-virtual {v2, v1}, Ljavassist/compiler/KeywordTable;->lookup(Ljava/lang/String;)I

    move-result v2

    .line 427
    .local v2, "t":I
    if-ltz v2, :cond_0

    .line 428
    return v2

    .line 436
    :cond_0
    iput-object v1, p2, Ljavassist/compiler/Token;->textValue:Ljava/lang/String;

    .line 437
    const/16 v3, 0x190

    return v3

    .line 421
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "t":I
    :cond_1
    goto :goto_0
.end method

.method private readLine(Ljavassist/compiler/Token;)I
    .locals 4
    .param p1, "token"    # Ljavassist/compiler/Token;

    .line 110
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getNextNonWhiteChar()I

    move-result v0

    .line 111
    .local v0, "c":I
    if-gez v0, :cond_0

    .line 112
    return v0

    .line 113
    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 114
    iget v2, p0, Ljavassist/compiler/Lex;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavassist/compiler/Lex;->lineNumber:I

    .line 115
    return v1

    .line 117
    :cond_1
    const/16 v1, 0x27

    if-ne v0, v1, :cond_2

    .line 118
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->readCharConst(Ljavassist/compiler/Token;)I

    move-result v1

    return v1

    .line 119
    :cond_2
    const/16 v1, 0x22

    if-ne v0, v1, :cond_3

    .line 120
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->readStringL(Ljavassist/compiler/Token;)I

    move-result v1

    return v1

    .line 121
    :cond_3
    const/16 v1, 0x39

    const/16 v2, 0x30

    if-gt v2, v0, :cond_4

    if-gt v0, v1, :cond_4

    .line 122
    invoke-direct {p0, v0, p1}, Ljavassist/compiler/Lex;->readNumber(ILjavassist/compiler/Token;)I

    move-result v1

    return v1

    .line 123
    :cond_4
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_6

    .line 124
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    .line 125
    if-gt v2, v0, :cond_5

    if-gt v0, v1, :cond_5

    .line 126
    iget-object v1, p0, Ljavassist/compiler/Lex;->textBuffer:Ljava/lang/StringBuffer;

    .line 127
    .local v1, "tbuf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 129
    invoke-direct {p0, v1, v0, p1}, Ljavassist/compiler/Lex;->readDouble(Ljava/lang/StringBuffer;ILjavassist/compiler/Token;)I

    move-result v2

    return v2

    .line 131
    .end local v1    # "tbuf":Ljava/lang/StringBuffer;
    :cond_5
    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 132
    invoke-direct {p0, v3}, Ljavassist/compiler/Lex;->readSeparator(I)I

    move-result v1

    return v1

    .line 134
    :cond_6
    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 135
    invoke-direct {p0, v0, p1}, Ljavassist/compiler/Lex;->readIdentifier(ILjavassist/compiler/Token;)I

    move-result v1

    return v1

    .line 136
    :cond_7
    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->readSeparator(I)I

    move-result v1

    return v1
.end method

.method private readNumber(ILjavassist/compiler/Token;)I
    .locals 16
    .param p1, "c"    # I
    .param p2, "token"    # Ljavassist/compiler/Token;

    .line 241
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-wide/16 v3, 0x0

    .line 242
    .local v3, "value":J
    invoke-direct/range {p0 .. p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v5

    .line 243
    .local v5, "c2":I
    const/16 v6, 0x66

    const/16 v7, 0x39

    const/16 v8, 0x46

    const/16 v9, 0x192

    const/16 v10, 0x6c

    const/16 v11, 0x193

    const/16 v12, 0x4c

    const/16 v13, 0x30

    if-ne v1, v13, :cond_a

    .line 244
    const/16 v14, 0x58

    if-eq v5, v14, :cond_4

    const/16 v14, 0x78

    if-ne v5, v14, :cond_0

    goto :goto_2

    .line 261
    :cond_0
    if-gt v13, v5, :cond_a

    const/16 v14, 0x37

    if-gt v5, v14, :cond_a

    .line 262
    add-int/lit8 v6, v5, -0x30

    int-to-long v3, v6

    .line 264
    .end local p1    # "c":I
    .local v1, "c":I
    :goto_0
    invoke-direct/range {p0 .. p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v1

    .line 265
    if-gt v13, v1, :cond_1

    if-gt v1, v14, :cond_1

    .line 266
    const-wide/16 v6, 0x8

    mul-long/2addr v6, v3

    add-int/lit8 v8, v1, -0x30

    int-to-long v14, v8

    add-long v3, v6, v14

    const/16 v14, 0x37

    goto :goto_0

    .line 268
    :cond_1
    iput-wide v3, v2, Ljavassist/compiler/Token;->longValue:J

    .line 269
    if-eq v1, v12, :cond_3

    if-ne v1, v10, :cond_2

    goto :goto_1

    .line 271
    :cond_2
    invoke-direct {v0, v1}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 272
    return v9

    .line 270
    :cond_3
    :goto_1
    return v11

    .line 246
    :cond_4
    :goto_2
    invoke-direct/range {p0 .. p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v1

    .line 247
    const-wide/16 v14, 0x10

    if-gt v13, v1, :cond_5

    if-gt v1, v7, :cond_5

    .line 248
    mul-long/2addr v14, v3

    add-int/lit8 v7, v1, -0x30

    int-to-long v9, v7

    add-long v3, v14, v9

    const/16 v7, 0x39

    const/16 v9, 0x192

    const/16 v10, 0x6c

    goto :goto_2

    .line 249
    :cond_5
    const/16 v7, 0x41

    if-gt v7, v1, :cond_6

    if-gt v1, v8, :cond_6

    .line 250
    mul-long/2addr v14, v3

    add-int/lit8 v7, v1, -0x41

    add-int/lit8 v7, v7, 0xa

    int-to-long v9, v7

    add-long v3, v14, v9

    const/16 v7, 0x39

    const/16 v9, 0x192

    const/16 v10, 0x6c

    goto :goto_2

    .line 251
    :cond_6
    const/16 v7, 0x61

    if-gt v7, v1, :cond_7

    if-gt v1, v6, :cond_7

    .line 252
    mul-long/2addr v14, v3

    add-int/lit8 v7, v1, -0x61

    add-int/lit8 v7, v7, 0xa

    int-to-long v9, v7

    add-long v3, v14, v9

    const/16 v7, 0x39

    const/16 v9, 0x192

    const/16 v10, 0x6c

    goto :goto_2

    .line 254
    :cond_7
    iput-wide v3, v2, Ljavassist/compiler/Token;->longValue:J

    .line 255
    if-eq v1, v12, :cond_9

    const/16 v6, 0x6c

    if-ne v1, v6, :cond_8

    goto :goto_3

    .line 257
    :cond_8
    invoke-direct {v0, v1}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 258
    const/16 v6, 0x192

    return v6

    .line 256
    :cond_9
    :goto_3
    return v11

    .line 277
    .end local v1    # "c":I
    .restart local p1    # "c":I
    :cond_a
    add-int/lit8 v7, v1, -0x30

    int-to-long v3, v7

    .line 278
    :goto_4
    if-gt v13, v5, :cond_b

    const/16 v7, 0x39

    if-gt v5, v7, :cond_b

    .line 279
    const-wide/16 v9, 0xa

    mul-long/2addr v9, v3

    int-to-long v14, v5

    add-long/2addr v9, v14

    const-wide/16 v14, 0x30

    sub-long v3, v9, v14

    .line 280
    invoke-direct/range {p0 .. p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v5

    goto :goto_4

    .line 283
    :cond_b
    iput-wide v3, v2, Ljavassist/compiler/Token;->longValue:J

    .line 284
    if-eq v5, v8, :cond_11

    if-ne v5, v6, :cond_c

    goto :goto_7

    .line 288
    :cond_c
    const/16 v6, 0x45

    if-eq v5, v6, :cond_10

    const/16 v6, 0x65

    if-eq v5, v6, :cond_10

    const/16 v6, 0x44

    if-eq v5, v6, :cond_10

    const/16 v6, 0x64

    if-eq v5, v6, :cond_10

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_d

    goto :goto_6

    .line 295
    :cond_d
    if-eq v5, v12, :cond_f

    const/16 v6, 0x6c

    if-ne v5, v6, :cond_e

    goto :goto_5

    .line 298
    :cond_e
    invoke-direct {v0, v5}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 299
    const/16 v6, 0x192

    return v6

    .line 296
    :cond_f
    :goto_5
    return v11

    .line 290
    :cond_10
    :goto_6
    iget-object v6, v0, Ljavassist/compiler/Lex;->textBuffer:Ljava/lang/StringBuffer;

    .line 291
    .local v6, "tbuf":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 292
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 293
    invoke-direct {v0, v6, v5, v2}, Ljavassist/compiler/Lex;->readDouble(Ljava/lang/StringBuffer;ILjavassist/compiler/Token;)I

    move-result v7

    return v7

    .line 285
    .end local v6    # "tbuf":Ljava/lang/StringBuffer;
    :cond_11
    :goto_7
    long-to-double v6, v3

    iput-wide v6, v2, Ljavassist/compiler/Token;->doubleValue:D

    .line 286
    const/16 v6, 0x194

    return v6
.end method

.method private readSeparator(I)I
    .locals 5
    .param p1, "c"    # I

    .line 353
    const/16 v0, 0x21

    const/16 v1, 0x3d

    if-gt v0, p1, :cond_7

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_7

    .line 354
    sget-object v0, Ljavassist/compiler/Lex;->equalOps:[I

    add-int/lit8 v2, p1, -0x21

    aget v0, v0, v2

    .line 355
    .local v0, "t":I
    if-nez v0, :cond_0

    .line 356
    return p1

    .line 357
    :cond_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v2

    .line 358
    .local v2, "c2":I
    if-ne p1, v2, :cond_5

    .line 359
    sparse-switch p1, :sswitch_data_0

    .line 390
    goto :goto_0

    .line 375
    :sswitch_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v3

    .line 376
    .local v3, "c3":I
    if-ne v3, v1, :cond_1

    .line 377
    const/16 v1, 0x16f

    return v1

    .line 378
    :cond_1
    const/16 v4, 0x3e

    if-ne v3, v4, :cond_3

    .line 379
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v3

    .line 380
    if-ne v3, v1, :cond_2

    .line 381
    const/16 v1, 0x173

    return v1

    .line 382
    :cond_2
    invoke-direct {p0, v3}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 383
    const/16 v1, 0x172

    return v1

    .line 386
    :cond_3
    invoke-direct {p0, v3}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 387
    const/16 v1, 0x16e

    return v1

    .line 361
    .end local v3    # "c3":I
    :sswitch_1
    const/16 v1, 0x166

    return v1

    .line 369
    :sswitch_2
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v3

    .line 370
    .restart local v3    # "c3":I
    if-ne v3, v1, :cond_4

    .line 371
    const/16 v1, 0x16d

    return v1

    .line 372
    :cond_4
    invoke-direct {p0, v3}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 373
    const/16 v1, 0x16c

    return v1

    .line 365
    .end local v3    # "c3":I
    :sswitch_3
    const/16 v1, 0x16b

    return v1

    .line 363
    :sswitch_4
    const/16 v1, 0x16a

    return v1

    .line 367
    :sswitch_5
    const/16 v1, 0x171

    return v1

    .line 392
    :cond_5
    if-ne v2, v1, :cond_6

    .line 393
    return v0

    .line 394
    .end local v0    # "t":I
    :cond_6
    :goto_0
    goto :goto_1

    .line 395
    .end local v2    # "c2":I
    :cond_7
    const/16 v0, 0x5e

    if-ne p1, v0, :cond_8

    .line 396
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v2

    .line 397
    .restart local v2    # "c2":I
    if-ne v2, v1, :cond_a

    .line 398
    const/16 v0, 0x168

    return v0

    .line 400
    .end local v2    # "c2":I
    :cond_8
    const/16 v0, 0x7c

    if-ne p1, v0, :cond_b

    .line 401
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v2

    .line 402
    .restart local v2    # "c2":I
    if-ne v2, v1, :cond_9

    .line 403
    const/16 v0, 0x169

    return v0

    .line 404
    :cond_9
    if-ne v2, v0, :cond_a

    .line 405
    const/16 v0, 0x170

    return v0

    .line 410
    :cond_a
    :goto_1
    invoke-direct {p0, v2}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 411
    return p1

    .line 408
    .end local v2    # "c2":I
    :cond_b
    return p1

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_5
        0x2b -> :sswitch_4
        0x2d -> :sswitch_3
        0x3c -> :sswitch_2
        0x3d -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method private readStringL(Ljavassist/compiler/Token;)I
    .locals 5
    .param p1, "token"    # Ljavassist/compiler/Token;

    .line 208
    iget-object v0, p0, Ljavassist/compiler/Lex;->textBuffer:Ljava/lang/StringBuffer;

    .line 209
    .local v0, "tbuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 211
    :cond_0
    :goto_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    const/16 v3, 0xa

    const/16 v4, 0x22

    if-eq v1, v4, :cond_4

    .line 212
    const/16 v1, 0x5c

    if-ne v2, v1, :cond_1

    .line 213
    invoke-direct {p0}, Ljavassist/compiler/Lex;->readEscapeChar()I

    move-result v2

    goto :goto_1

    .line 214
    :cond_1
    if-eq v2, v3, :cond_3

    if-gez v2, :cond_2

    goto :goto_2

    .line 219
    :cond_2
    :goto_1
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 215
    :cond_3
    :goto_2
    iget v1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    .line 216
    const/16 v1, 0x1f4

    return v1

    .line 223
    :cond_4
    :goto_3
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v2

    .line 224
    if-ne v2, v3, :cond_5

    .line 225
    iget v1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    goto :goto_3

    .line 226
    :cond_5
    invoke-static {v2}, Ljavassist/compiler/Lex;->isBlank(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 227
    nop

    .line 230
    if-eq v2, v4, :cond_0

    .line 231
    invoke-direct {p0, v2}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 232
    nop

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Ljavassist/compiler/Token;->textValue:Ljava/lang/String;

    .line 237
    const/16 v1, 0x196

    return v1

    .line 226
    :cond_6
    goto :goto_3
.end method

.method private ungetc(I)V
    .locals 0
    .param p1, "c"    # I

    .line 507
    iput p1, p0, Ljavassist/compiler/Lex;->lastChar:I

    .line 508
    return-void
.end method


# virtual methods
.method public get()I
    .locals 2

    .line 54
    iget-object v0, p0, Ljavassist/compiler/Lex;->lookAheadTokens:Ljavassist/compiler/Token;

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->get(Ljavassist/compiler/Token;)I

    move-result v0

    return v0

    .line 57
    :cond_0
    move-object v1, v0

    .local v1, "t":Ljavassist/compiler/Token;
    iput-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    .line 58
    iget-object v0, v0, Ljavassist/compiler/Token;->next:Ljavassist/compiler/Token;

    iput-object v0, p0, Ljavassist/compiler/Lex;->lookAheadTokens:Ljavassist/compiler/Token;

    .line 59
    iget v0, v1, Ljavassist/compiler/Token;->tokenId:I

    return v0
.end method

.method public getDouble()D
    .locals 2

    .line 97
    iget-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    iget-wide v0, v0, Ljavassist/compiler/Token;->doubleValue:D

    return-wide v0
.end method

.method public getLong()J
    .locals 2

    .line 93
    iget-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    iget-wide v0, v0, Ljavassist/compiler/Token;->longValue:J

    return-wide v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    iget-object v0, v0, Ljavassist/compiler/Token;->textValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAround()Ljava/lang/String;
    .locals 3

    .line 511
    iget v0, p0, Ljavassist/compiler/Lex;->position:I

    add-int/lit8 v1, v0, -0xa

    .line 512
    .local v1, "begin":I
    if-gez v1, :cond_0

    .line 513
    const/4 v1, 0x0

    .line 515
    :cond_0
    add-int/lit8 v0, v0, 0xa

    .line 516
    .local v0, "end":I
    iget v2, p0, Ljavassist/compiler/Lex;->maxlen:I

    if-le v0, v2, :cond_1

    .line 517
    iget v0, p0, Ljavassist/compiler/Lex;->maxlen:I

    .line 519
    :cond_1
    iget-object v2, p0, Ljavassist/compiler/Lex;->input:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public lookAhead()I
    .locals 1

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v0

    return v0
.end method

.method public lookAhead(I)I
    .locals 3
    .param p1, "i"    # I

    .line 70
    iget-object v0, p0, Ljavassist/compiler/Lex;->lookAheadTokens:Ljavassist/compiler/Token;

    .line 71
    .local v0, "tk":Ljavassist/compiler/Token;
    if-nez v0, :cond_0

    .line 72
    iget-object v1, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    move-object v0, v1

    iput-object v1, p0, Ljavassist/compiler/Lex;->lookAheadTokens:Ljavassist/compiler/Token;

    .line 73
    const/4 v1, 0x0

    iput-object v1, v0, Ljavassist/compiler/Token;->next:Ljavassist/compiler/Token;

    .line 74
    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->get(Ljavassist/compiler/Token;)I

    .line 77
    :cond_0
    :goto_0
    add-int/lit8 v1, p1, -0x1

    .end local p1    # "i":I
    .local v1, "i":I
    if-lez p1, :cond_2

    .line 78
    iget-object p1, v0, Ljavassist/compiler/Token;->next:Ljavassist/compiler/Token;

    if-nez p1, :cond_1

    .line 80
    new-instance p1, Ljavassist/compiler/Token;

    invoke-direct {p1}, Ljavassist/compiler/Token;-><init>()V

    move-object v2, p1

    .local v2, "tk2":Ljavassist/compiler/Token;
    iput-object p1, v0, Ljavassist/compiler/Token;->next:Ljavassist/compiler/Token;

    .line 81
    invoke-direct {p0, v2}, Ljavassist/compiler/Lex;->get(Ljavassist/compiler/Token;)I

    .line 77
    .end local v2    # "tk2":Ljavassist/compiler/Token;
    :cond_1
    iget-object v0, v0, Ljavassist/compiler/Token;->next:Ljavassist/compiler/Token;

    move p1, v1

    goto :goto_0

    .line 84
    :cond_2
    iput-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    .line 85
    iget p1, v0, Ljavassist/compiler/Token;->tokenId:I

    return p1
.end method
