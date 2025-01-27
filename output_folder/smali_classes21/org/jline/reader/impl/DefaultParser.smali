.class public Lorg/jline/reader/impl/DefaultParser;
.super Ljava/lang/Object;
.source "DefaultParser.java"

# interfaces
.implements Lorg/jline/reader/Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/reader/impl/DefaultParser$ArgumentList;,
        Lorg/jline/reader/impl/DefaultParser$BracketChecker;,
        Lorg/jline/reader/impl/DefaultParser$Bracket;
    }
.end annotation


# instance fields
.field private closingBrackets:[C

.field private commandGroup:I

.field private eofOnEscapedNewLine:Z

.field private eofOnUnclosedQuote:Z

.field private escapeChars:[C

.field private openingBrackets:[C

.field private quoteChars:[C

.field private regexCommand:Ljava/lang/String;

.field private regexVariable:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/jline/reader/impl/DefaultParser;->quoteChars:[C

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    iput-object v0, p0, Lorg/jline/reader/impl/DefaultParser;->escapeChars:[C

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/reader/impl/DefaultParser;->openingBrackets:[C

    .line 40
    iput-object v0, p0, Lorg/jline/reader/impl/DefaultParser;->closingBrackets:[C

    .line 42
    const-string v0, "[a-zA-Z_]+[a-zA-Z0-9_-]*((\\.|\\[\'|\\[\"|\\[)[a-zA-Z0-9_-]*(|\']|\"]|]))?"

    iput-object v0, p0, Lorg/jline/reader/impl/DefaultParser;->regexVariable:Ljava/lang/String;

    .line 43
    const-string v0, "[:]?[a-zA-Z]+[a-zA-Z0-9_-]*"

    iput-object v0, p0, Lorg/jline/reader/impl/DefaultParser;->regexCommand:Ljava/lang/String;

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Lorg/jline/reader/impl/DefaultParser;->commandGroup:I

    return-void

    :array_0
    .array-data 2
        0x27s
        0x22s
    .end array-data
.end method

.method static synthetic access$000(Lorg/jline/reader/impl/DefaultParser;)[C
    .locals 1
    .param p0, "x0"    # Lorg/jline/reader/impl/DefaultParser;

    .line 21
    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser;->openingBrackets:[C

    return-object v0
.end method

.method static synthetic access$100(Lorg/jline/reader/impl/DefaultParser;)[C
    .locals 1
    .param p0, "x0"    # Lorg/jline/reader/impl/DefaultParser;

    .line 21
    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser;->closingBrackets:[C

    return-object v0
.end method

.method static synthetic access$200(Lorg/jline/reader/impl/DefaultParser;)[C
    .locals 1
    .param p0, "x0"    # Lorg/jline/reader/impl/DefaultParser;

    .line 21
    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser;->escapeChars:[C

    return-object v0
.end method

.method static synthetic access$300(Lorg/jline/reader/impl/DefaultParser;C)Z
    .locals 1
    .param p0, "x0"    # Lorg/jline/reader/impl/DefaultParser;
    .param p1, "x1"    # C

    .line 21
    invoke-direct {p0, p1}, Lorg/jline/reader/impl/DefaultParser;->isRawEscapeChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/jline/reader/impl/DefaultParser;C)Z
    .locals 1
    .param p0, "x0"    # Lorg/jline/reader/impl/DefaultParser;
    .param p1, "x1"    # C

    .line 21
    invoke-direct {p0, p1}, Lorg/jline/reader/impl/DefaultParser;->isRawQuoteChar(C)Z

    move-result v0

    return v0
.end method

.method private isRawEscapeChar(C)Z
    .locals 5
    .param p1, "key"    # C

    .line 417
    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser;->escapeChars:[C

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 418
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-char v4, v0, v3

    .line 419
    .local v4, "e":C
    if-ne v4, p1, :cond_0

    .line 420
    const/4 v0, 0x1

    return v0

    .line 418
    .end local v4    # "e":C
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 424
    :cond_1
    return v1
.end method

.method private isRawQuoteChar(C)Z
    .locals 5
    .param p1, "key"    # C

    .line 428
    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser;->quoteChars:[C

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 429
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-char v4, v0, v3

    .line 430
    .local v4, "e":C
    if-ne v4, p1, :cond_0

    .line 431
    const/4 v0, 0x1

    return v0

    .line 429
    .end local v4    # "e":C
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 435
    :cond_1
    return v1
.end method


# virtual methods
.method public commandGroup(I)Lorg/jline/reader/impl/DefaultParser;
    .locals 0
    .param p1, "commandGroup"    # I

    .line 86
    iput p1, p0, Lorg/jline/reader/impl/DefaultParser;->commandGroup:I

    .line 87
    return-object p0
.end method

.method public eofOnEscapedNewLine(Z)Lorg/jline/reader/impl/DefaultParser;
    .locals 0
    .param p1, "eofOnEscapedNewLine"    # Z

    .line 71
    iput-boolean p1, p0, Lorg/jline/reader/impl/DefaultParser;->eofOnEscapedNewLine:Z

    .line 72
    return-object p0
.end method

.method public varargs eofOnUnclosedBracket([Lorg/jline/reader/impl/DefaultParser$Bracket;)Lorg/jline/reader/impl/DefaultParser;
    .locals 0
    .param p1, "brackets"    # [Lorg/jline/reader/impl/DefaultParser$Bracket;

    .line 66
    invoke-virtual {p0, p1}, Lorg/jline/reader/impl/DefaultParser;->setEofOnUnclosedBracket([Lorg/jline/reader/impl/DefaultParser$Bracket;)V

    .line 67
    return-object p0
.end method

.method public eofOnUnclosedQuote(Z)Lorg/jline/reader/impl/DefaultParser;
    .locals 0
    .param p1, "eofOnUnclosedQuote"    # Z

    .line 61
    iput-boolean p1, p0, Lorg/jline/reader/impl/DefaultParser;->eofOnUnclosedQuote:Z

    .line 62
    return-object p0
.end method

.method public escapeChars([C)Lorg/jline/reader/impl/DefaultParser;
    .locals 0
    .param p1, "chars"    # [C

    .line 56
    iput-object p1, p0, Lorg/jline/reader/impl/DefaultParser;->escapeChars:[C

    .line 57
    return-object p0
.end method

.method public getCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "line"    # Ljava/lang/String;

    .line 184
    const-string v0, ""

    .line 185
    .local v0, "out":Ljava/lang/String;
    iget-object v1, p0, Lorg/jline/reader/impl/DefaultParser;->regexVariable:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 186
    .local v1, "checkCommandOnly":Z
    :goto_0
    if-nez v1, :cond_2

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^\\s*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jline/reader/impl/DefaultParser;->regexVariable:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jline/reader/impl/DefaultParser;->regexCommand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")(\\s+|$)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 188
    .local v3, "patternCommand":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 189
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 190
    iget v5, p0, Lorg/jline/reader/impl/DefaultParser;->commandGroup:I

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 192
    :cond_1
    const/4 v1, 0x1

    .line 195
    .end local v3    # "patternCommand":Ljava/util/regex/Pattern;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v2

    .line 197
    iget-object v2, p0, Lorg/jline/reader/impl/DefaultParser;->regexCommand:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 198
    const-string v0, ""

    .line 201
    :cond_3
    return-object v0
.end method

.method public getEscapeChars()[C
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser;->escapeChars:[C

    return-object v0
.end method

.method public getQuoteChars()[C
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser;->quoteChars:[C

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "line"    # Ljava/lang/String;

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "out":Ljava/lang/String;
    iget-object v1, p0, Lorg/jline/reader/impl/DefaultParser;->regexVariable:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^\\s*("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/reader/impl/DefaultParser;->regexVariable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\\s*=[^=~].*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 209
    .local v1, "patternCommand":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 210
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    .end local v1    # "patternCommand":Ljava/util/regex/Pattern;
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    return-object v0
.end method

.method public isDelimiter(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # I

    .line 333
    invoke-virtual {p0, p1, p2}, Lorg/jline/reader/impl/DefaultParser;->isQuoted(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/jline/reader/impl/DefaultParser;->isEscaped(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/jline/reader/impl/DefaultParser;->isDelimiterChar(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDelimiterChar(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # I

    .line 413
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    return v0
.end method

.method public isEofOnEscapedNewLine()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lorg/jline/reader/impl/DefaultParser;->eofOnEscapedNewLine:Z

    return v0
.end method

.method public isEofOnUnclosedQuote()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lorg/jline/reader/impl/DefaultParser;->eofOnUnclosedQuote:Z

    return v0
.end method

.method public isEscapeChar(C)Z
    .locals 5
    .param p1, "ch"    # C

    .line 356
    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser;->escapeChars:[C

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 357
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-char v4, v0, v3

    .line 358
    .local v4, "e":C
    if-ne v4, p1, :cond_0

    .line 359
    const/4 v0, 0x1

    return v0

    .line 357
    .end local v4    # "e":C
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 363
    :cond_1
    return v1
.end method

.method public isEscapeChar(Ljava/lang/CharSequence;I)Z
    .locals 3
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # I

    .line 377
    const/4 v0, 0x0

    if-gez p2, :cond_0

    .line 378
    return v0

    .line 380
    :cond_0
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 381
    .local v1, "ch":C
    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/DefaultParser;->isEscapeChar(C)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/jline/reader/impl/DefaultParser;->isEscaped(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isEscaped(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # I

    .line 395
    if-gtz p2, :cond_0

    .line 396
    const/4 v0, 0x0

    return v0

    .line 398
    :cond_0
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/jline/reader/impl/DefaultParser;->isEscapeChar(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public isQuoteChar(Ljava/lang/CharSequence;I)Z
    .locals 6
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # I

    .line 341
    const/4 v0, 0x0

    if-gez p2, :cond_0

    .line 342
    return v0

    .line 344
    :cond_0
    iget-object v1, p0, Lorg/jline/reader/impl/DefaultParser;->quoteChars:[C

    if-eqz v1, :cond_2

    .line 345
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, v1, v3

    .line 346
    .local v4, "e":C
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_1

    .line 347
    invoke-virtual {p0, p1, p2}, Lorg/jline/reader/impl/DefaultParser;->isEscaped(Ljava/lang/CharSequence;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 345
    .end local v4    # "e":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 351
    :cond_2
    return v0
.end method

.method public isQuoted(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # I

    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/lang/String;ILorg/jline/reader/Parser$ParseContext;)Lorg/jline/reader/ParsedLine;
    .locals 29
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "cursor"    # I
    .param p3, "context"    # Lorg/jline/reader/Parser$ParseContext;

    .line 218
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v14, v0

    .line 219
    .local v14, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v0

    .line 220
    .local v15, "current":Ljava/lang/StringBuilder;
    const/4 v0, -0x1

    .line 221
    .local v0, "wordCursor":I
    const/4 v1, -0x1

    .line 222
    .local v1, "wordIndex":I
    const/4 v2, -0x1

    .line 223
    .local v2, "quoteStart":I
    const/4 v3, -0x1

    .line 224
    .local v3, "rawWordCursor":I
    const/4 v4, -0x1

    .line 225
    .local v4, "rawWordLength":I
    const/4 v5, 0x0

    .line 226
    .local v5, "rawWordStart":I
    new-instance v6, Lorg/jline/reader/impl/DefaultParser$BracketChecker;

    invoke-direct {v6, v10, v12}, Lorg/jline/reader/impl/DefaultParser$BracketChecker;-><init>(Lorg/jline/reader/impl/DefaultParser;I)V

    move-object v9, v6

    .line 227
    .local v9, "bracketChecker":Lorg/jline/reader/impl/DefaultParser$BracketChecker;
    const/4 v6, 0x0

    .line 229
    .local v6, "quotedWord":Z
    const/4 v7, 0x0

    move v8, v2

    move/from16 v16, v5

    move/from16 v17, v6

    .end local v2    # "quoteStart":I
    .end local v5    # "rawWordStart":I
    .end local v6    # "quotedWord":Z
    .local v7, "i":I
    .local v8, "quoteStart":I
    .local v16, "rawWordStart":I
    .local v17, "quotedWord":Z
    :goto_0
    if-eqz v11, :cond_c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v7, v2, :cond_c

    .line 232
    if-ne v7, v12, :cond_0

    .line 233
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    .line 236
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 237
    sub-int v2, v7, v16

    move v3, v2

    .line 240
    :cond_0
    if-gez v8, :cond_3

    invoke-virtual {v10, v11, v7}, Lorg/jline/reader/impl/DefaultParser;->isQuoteChar(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 242
    move v2, v7

    .line 243
    .end local v8    # "quoteStart":I
    .restart local v2    # "quoteStart":I
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 244
    const/4 v5, 0x1

    .line 245
    .end local v17    # "quotedWord":Z
    .local v5, "quotedWord":Z
    sget-object v6, Lorg/jline/reader/Parser$ParseContext;->SPLIT_LINE:Lorg/jline/reader/Parser$ParseContext;

    if-ne v13, v6, :cond_1

    .line 246
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    :cond_1
    move v8, v2

    move/from16 v17, v5

    goto/16 :goto_3

    .line 249
    .end local v5    # "quotedWord":Z
    .restart local v17    # "quotedWord":Z
    :cond_2
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v2

    goto/16 :goto_3

    .line 251
    .end local v2    # "quoteStart":I
    .restart local v8    # "quoteStart":I
    :cond_3
    if-ltz v8, :cond_7

    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v2, v5, :cond_7

    invoke-virtual {v10, v11, v7}, Lorg/jline/reader/impl/DefaultParser;->isEscaped(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 253
    if-eqz v17, :cond_5

    sget-object v2, Lorg/jline/reader/Parser$ParseContext;->SPLIT_LINE:Lorg/jline/reader/Parser$ParseContext;

    if-ne v13, v2, :cond_4

    goto :goto_1

    .line 255
    :cond_4
    if-ltz v3, :cond_6

    if-gez v4, :cond_6

    .line 256
    sub-int v2, v7, v16

    add-int/lit8 v4, v2, 0x1

    goto :goto_2

    .line 254
    :cond_5
    :goto_1
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    :cond_6
    :goto_2
    const/4 v2, -0x1

    .line 259
    .end local v8    # "quoteStart":I
    .restart local v2    # "quoteStart":I
    const/4 v5, 0x0

    move v8, v2

    move/from16 v17, v5

    .end local v17    # "quotedWord":Z
    .restart local v5    # "quotedWord":Z
    goto :goto_3

    .line 260
    .end local v2    # "quoteStart":I
    .end local v5    # "quotedWord":Z
    .restart local v8    # "quoteStart":I
    .restart local v17    # "quotedWord":Z
    :cond_7
    if-gez v8, :cond_9

    invoke-virtual {v10, v11, v7}, Lorg/jline/reader/impl/DefaultParser;->isDelimiter(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 262
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 263
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 265
    if-ltz v3, :cond_8

    if-gez v4, :cond_8

    .line 266
    sub-int v4, v7, v16

    .line 269
    :cond_8
    add-int/lit8 v2, v7, 0x1

    move/from16 v16, v2

    .end local v16    # "rawWordStart":I
    .local v2, "rawWordStart":I
    goto :goto_3

    .line 271
    .end local v2    # "rawWordStart":I
    .restart local v16    # "rawWordStart":I
    :cond_9
    invoke-virtual {v10, v11, v7}, Lorg/jline/reader/impl/DefaultParser;->isEscapeChar(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 272
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    if-gez v8, :cond_b

    .line 274
    invoke-virtual {v9, v11, v7}, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->check(Ljava/lang/CharSequence;I)V

    goto :goto_3

    .line 276
    :cond_a
    sget-object v2, Lorg/jline/reader/Parser$ParseContext;->SPLIT_LINE:Lorg/jline/reader/Parser$ParseContext;

    if-ne v13, v2, :cond_b

    .line 277
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    :cond_b
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 282
    .end local v7    # "i":I
    :cond_c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-gtz v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v12, v2, :cond_e

    .line 283
    :cond_d
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    if-ltz v3, :cond_e

    if-gez v4, :cond_e

    .line 285
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v4, v2, v16

    .line 289
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v12, v2, :cond_f

    .line 290
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 291
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 292
    sub-int v3, v12, v16

    .line 293
    move v4, v3

    move/from16 v18, v0

    move/from16 v19, v1

    move/from16 v20, v3

    move/from16 v21, v4

    goto :goto_4

    .line 289
    :cond_f
    move/from16 v18, v0

    move/from16 v19, v1

    move/from16 v20, v3

    move/from16 v21, v4

    .line 296
    .end local v0    # "wordCursor":I
    .end local v1    # "wordIndex":I
    .end local v3    # "rawWordCursor":I
    .end local v4    # "rawWordLength":I
    .local v18, "wordCursor":I
    .local v19, "wordIndex":I
    .local v20, "rawWordCursor":I
    .local v21, "rawWordLength":I
    :goto_4
    sget-object v0, Lorg/jline/reader/Parser$ParseContext;->COMPLETE:Lorg/jline/reader/Parser$ParseContext;

    if-eq v13, v0, :cond_16

    sget-object v0, Lorg/jline/reader/Parser$ParseContext;->SPLIT_LINE:Lorg/jline/reader/Parser$ParseContext;

    if-eq v13, v0, :cond_16

    .line 297
    iget-boolean v0, v10, Lorg/jline/reader/impl/DefaultParser;->eofOnEscapedNewLine:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v11, v0}, Lorg/jline/reader/impl/DefaultParser;->isEscapeChar(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_5

    .line 298
    :cond_10
    new-instance v0, Lorg/jline/reader/EOFError;

    const-string v2, "Escaped new line"

    const-string v3, "newline"

    invoke-direct {v0, v1, v1, v2, v3}, Lorg/jline/reader/EOFError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_11
    :goto_5
    iget-boolean v0, v10, Lorg/jline/reader/impl/DefaultParser;->eofOnUnclosedQuote:Z

    if-eqz v0, :cond_13

    if-ltz v8, :cond_13

    .line 301
    new-instance v0, Lorg/jline/reader/EOFError;

    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_12

    .line 302
    const-string v2, "quote"

    goto :goto_6

    :cond_12
    const-string v2, "dquote"

    :goto_6
    const-string v3, "Missing closing quote"

    invoke-direct {v0, v1, v1, v3, v2}, Lorg/jline/reader/EOFError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_13
    invoke-virtual {v9}, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->isClosingBracketMissing()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v9}, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->isOpeningBracketMissing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 305
    :cond_14
    const/4 v0, 0x0

    .line 306
    .local v0, "message":Ljava/lang/String;
    const/4 v1, 0x0

    .line 307
    .local v1, "missing":Ljava/lang/String;
    invoke-virtual {v9}, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->isClosingBracketMissing()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 308
    const-string v0, "Missing closing brackets"

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->getMissingClosingBrackets()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 311
    :cond_15
    const-string v0, "Missing opening bracket"

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->getMissingOpeningBracket()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    :goto_7
    new-instance v2, Lorg/jline/reader/EOFError;

    const/16 v23, -0x1

    const/16 v24, -0x1

    .line 315
    invoke-virtual {v9}, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->getOpenBrackets()I

    move-result v27

    invoke-virtual {v9}, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->getNextClosingBracket()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v22, v2

    move-object/from16 v25, v0

    move-object/from16 v26, v1

    invoke-direct/range {v22 .. v28}, Lorg/jline/reader/EOFError;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    throw v2

    .line 319
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "missing":Ljava/lang/String;
    :cond_16
    if-eqz v17, :cond_17

    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v11, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_17
    const/4 v0, 0x0

    :goto_8
    move-object v7, v0

    .line 320
    .local v7, "openingQuote":Ljava/lang/String;
    new-instance v22, Lorg/jline/reader/impl/DefaultParser$ArgumentList;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move/from16 v4, v19

    move/from16 v5, v18

    move/from16 v6, p2

    move/from16 v23, v8

    .end local v8    # "quoteStart":I
    .local v23, "quoteStart":I
    move/from16 v8, v20

    move-object/from16 v24, v9

    .end local v9    # "bracketChecker":Lorg/jline/reader/impl/DefaultParser$BracketChecker;
    .local v24, "bracketChecker":Lorg/jline/reader/impl/DefaultParser$BracketChecker;
    move/from16 v9, v21

    invoke-direct/range {v0 .. v9}, Lorg/jline/reader/impl/DefaultParser$ArgumentList;-><init>(Lorg/jline/reader/impl/DefaultParser;Ljava/lang/String;Ljava/util/List;IIILjava/lang/String;II)V

    return-object v22
.end method

.method public quoteChars([C)Lorg/jline/reader/impl/DefaultParser;
    .locals 0
    .param p1, "chars"    # [C

    .line 51
    iput-object p1, p0, Lorg/jline/reader/impl/DefaultParser;->quoteChars:[C

    .line 52
    return-object p0
.end method

.method public regexCommand(Ljava/lang/String;)Lorg/jline/reader/impl/DefaultParser;
    .locals 0
    .param p1, "regexCommand"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lorg/jline/reader/impl/DefaultParser;->regexCommand:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public regexVariable(Ljava/lang/String;)Lorg/jline/reader/impl/DefaultParser;
    .locals 0
    .param p1, "regexVariable"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lorg/jline/reader/impl/DefaultParser;->regexVariable:Ljava/lang/String;

    .line 77
    return-object p0
.end method

.method public setCommandGroup(I)V
    .locals 0
    .param p1, "commandGroup"    # I

    .line 168
    iput p1, p0, Lorg/jline/reader/impl/DefaultParser;->commandGroup:I

    .line 169
    return-void
.end method

.method public setEofOnEscapedNewLine(Z)V
    .locals 0
    .param p1, "eofOnEscapedNewLine"    # Z

    .line 119
    iput-boolean p1, p0, Lorg/jline/reader/impl/DefaultParser;->eofOnEscapedNewLine:Z

    .line 120
    return-void
.end method

.method public varargs setEofOnUnclosedBracket([Lorg/jline/reader/impl/DefaultParser$Bracket;)V
    .locals 6
    .param p1, "brackets"    # [Lorg/jline/reader/impl/DefaultParser$Bracket;

    .line 127
    if-nez p1, :cond_0

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/reader/impl/DefaultParser;->openingBrackets:[C

    .line 129
    iput-object v0, p0, Lorg/jline/reader/impl/DefaultParser;->closingBrackets:[C

    goto :goto_2

    .line 131
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 132
    .local v0, "bs":Ljava/util/Set;, "Ljava/util/Set<Lorg/jline/reader/impl/DefaultParser$Bracket;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/jline/reader/impl/DefaultParser;->openingBrackets:[C

    .line 133
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/jline/reader/impl/DefaultParser;->closingBrackets:[C

    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/reader/impl/DefaultParser$Bracket;

    .line 136
    .local v3, "b":Lorg/jline/reader/impl/DefaultParser$Bracket;
    sget-object v4, Lorg/jline/reader/impl/DefaultParser$1;->$SwitchMap$org$jline$reader$impl$DefaultParser$Bracket:[I

    invoke-virtual {v3}, Lorg/jline/reader/impl/DefaultParser$Bracket;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 150
    :pswitch_0
    iget-object v4, p0, Lorg/jline/reader/impl/DefaultParser;->openingBrackets:[C

    const/16 v5, 0x3c

    aput-char v5, v4, v1

    .line 151
    iget-object v4, p0, Lorg/jline/reader/impl/DefaultParser;->closingBrackets:[C

    const/16 v5, 0x3e

    aput-char v5, v4, v1

    goto :goto_1

    .line 146
    :pswitch_1
    iget-object v4, p0, Lorg/jline/reader/impl/DefaultParser;->openingBrackets:[C

    const/16 v5, 0x5b

    aput-char v5, v4, v1

    .line 147
    iget-object v4, p0, Lorg/jline/reader/impl/DefaultParser;->closingBrackets:[C

    const/16 v5, 0x5d

    aput-char v5, v4, v1

    .line 148
    goto :goto_1

    .line 142
    :pswitch_2
    iget-object v4, p0, Lorg/jline/reader/impl/DefaultParser;->openingBrackets:[C

    const/16 v5, 0x7b

    aput-char v5, v4, v1

    .line 143
    iget-object v4, p0, Lorg/jline/reader/impl/DefaultParser;->closingBrackets:[C

    const/16 v5, 0x7d

    aput-char v5, v4, v1

    .line 144
    goto :goto_1

    .line 138
    :pswitch_3
    iget-object v4, p0, Lorg/jline/reader/impl/DefaultParser;->openingBrackets:[C

    const/16 v5, 0x28

    aput-char v5, v4, v1

    .line 139
    iget-object v4, p0, Lorg/jline/reader/impl/DefaultParser;->closingBrackets:[C

    const/16 v5, 0x29

    aput-char v5, v4, v1

    .line 140
    nop

    .line 154
    :goto_1
    nop

    .end local v3    # "b":Lorg/jline/reader/impl/DefaultParser$Bracket;
    add-int/lit8 v1, v1, 0x1

    .line 155
    goto :goto_0

    .line 157
    .end local v0    # "bs":Ljava/util/Set;, "Ljava/util/Set<Lorg/jline/reader/impl/DefaultParser$Bracket;>;"
    .end local v1    # "i":I
    :cond_1
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEofOnUnclosedQuote(Z)V
    .locals 0
    .param p1, "eofOnUnclosedQuote"    # Z

    .line 111
    iput-boolean p1, p0, Lorg/jline/reader/impl/DefaultParser;->eofOnUnclosedQuote:Z

    .line 112
    return-void
.end method

.method public setEscapeChars([C)V
    .locals 0
    .param p1, "chars"    # [C

    .line 103
    iput-object p1, p0, Lorg/jline/reader/impl/DefaultParser;->escapeChars:[C

    .line 104
    return-void
.end method

.method public setQuoteChars([C)V
    .locals 0
    .param p1, "chars"    # [C

    .line 95
    iput-object p1, p0, Lorg/jline/reader/impl/DefaultParser;->quoteChars:[C

    .line 96
    return-void
.end method

.method public setRegexCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "regexCommand"    # Ljava/lang/String;

    .line 164
    iput-object p1, p0, Lorg/jline/reader/impl/DefaultParser;->regexCommand:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setRegexVariable(Ljava/lang/String;)V
    .locals 0
    .param p1, "regexVariable"    # Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lorg/jline/reader/impl/DefaultParser;->regexVariable:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public validCommandName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 173
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser;->regexCommand:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public validVariableName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 178
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser;->regexVariable:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
