.class public final Lcom/google/zxing/client/result/VCardResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "VCardResultParser.java"


# static fields
.field private static final BEGIN_VCARD:Ljava/util/regex/Pattern;

.field private static final COMMA:Ljava/util/regex/Pattern;

.field private static final CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

.field private static final EQUALS:Ljava/util/regex/Pattern;

.field private static final NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

.field private static final SEMICOLON:Ljava/util/regex/Pattern;

.field private static final SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

.field private static final UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

.field private static final VCARD_ESCAPES:Ljava/util/regex/Pattern;

.field private static final VCARD_LIKE_DATE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-string v0, "BEGIN:VCARD"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;

    .line 40
    const-string v0, "\\d{4}-?\\d{2}-?\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;

    .line 41
    const-string v0, "\r\n[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "\\\\[nN]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "\\\\([,;\\\\])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;

    .line 46
    const-string v0, "(?<!\\\\);+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    .line 47
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->COMMA:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "[;,]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static decodeQuotedPrintable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "charset"    # Ljava/lang/String;

    .line 224
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 225
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 226
    .local v1, "result":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 227
    .local v2, "fragmentBuffer":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v3, v0, :cond_3

    .line 228
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 229
    .local v4, "c":C
    move v4, v6

    sparse-switch v6, :sswitch_data_0

    .line 248
    invoke-static {v2, p1, v1}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 249
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 234
    :sswitch_0
    add-int/lit8 v6, v0, -0x2

    if-ge v3, v6, :cond_2

    .line 235
    add-int/lit8 v6, v3, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 236
    .local v5, "nextChar":C
    move v5, v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_1

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1

    .line 237
    add-int/lit8 v6, v3, 0x2

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 238
    .local v6, "nextNextChar":C
    invoke-static {v5}, Lcom/google/zxing/client/result/VCardResultParser;->parseHexDigit(C)I

    move-result v7

    .line 239
    .local v7, "firstDigit":I
    invoke-static {v6}, Lcom/google/zxing/client/result/VCardResultParser;->parseHexDigit(C)I

    move-result v8

    .line 240
    .local v8, "secondDigit":I
    if-ltz v7, :cond_0

    if-ltz v8, :cond_0

    .line 241
    shl-int/lit8 v9, v7, 0x4

    add-int/2addr v9, v8

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 243
    :cond_0
    add-int/lit8 v3, v3, 0x2

    .line 245
    .end local v5    # "nextChar":C
    .end local v6    # "nextNextChar":C
    .end local v7    # "firstDigit":I
    .end local v8    # "secondDigit":I
    :cond_1
    goto :goto_1

    .line 232
    :sswitch_1
    nop

    .line 227
    .end local v4    # "c":C
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    .end local v3    # "i":I
    :cond_3
    invoke-static {v2, p1, v1}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method private static formatNames(Ljava/lang/Iterable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 341
    .local p0, "names":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p0, :cond_1

    .line 342
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 343
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 344
    .local v2, "name":Ljava/lang/String;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    .line 345
    .local v4, "components":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 347
    .local v5, "start":I
    const/4 v6, 0x0

    .line 348
    .local v6, "componentIndex":I
    :goto_1
    const/4 v7, 0x4

    if-ge v6, v7, :cond_0

    const/16 v8, 0x3b

    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    move v9, v8

    .local v9, "end":I
    if-ltz v8, :cond_0

    .line 349
    invoke-virtual {v2, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 350
    add-int/lit8 v6, v6, 0x1

    .line 351
    add-int/lit8 v5, v9, 0x1

    goto :goto_1

    .line 353
    .end local v9    # "end":I
    :cond_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    .line 354
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x64

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 355
    .local v8, "newName":Ljava/lang/StringBuilder;
    const/4 v9, 0x3

    invoke-static {v4, v9, v8}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 356
    const/4 v9, 0x1

    invoke-static {v4, v9, v8}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 357
    const/4 v9, 0x2

    invoke-static {v4, v9, v8}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 358
    invoke-static {v4, v3, v8}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 359
    invoke-static {v4, v7, v8}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 360
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 361
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "components":[Ljava/lang/String;
    .end local v5    # "start":I
    .end local v6    # "componentIndex":I
    .end local v8    # "newName":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 363
    :cond_1
    return-void
.end method

.method private static isLikeVCardDate(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 331
    if-eqz p0, :cond_1

    sget-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/CharSequence;
    .param p1, "rawText"    # Ljava/lang/String;
    .param p2, "trim"    # Z
    .param p3, "parseFieldDivider"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 280
    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 281
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method static matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 107
    move-object/from16 v1, p1

    .line 108
    nop

    .line 109
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    move v0, v4

    const/4 v5, 0x0

    .line 111
    :goto_0
    if-ge v0, v2, :cond_16

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(?:^|\n)"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, p0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "(?:;([^:]*))?:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    invoke-static {v6, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 116
    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 117
    if-lez v0, :cond_0

    .line 118
    add-int/lit8 v0, v0, -0x1

    .line 120
    :cond_0
    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 123
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    .line 125
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 126
    nop

    .line 127
    nop

    .line 128
    nop

    .line 129
    nop

    .line 130
    if-eqz v6, :cond_5

    .line 131
    sget-object v10, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    array-length v10, v6

    move v11, v4

    move v13, v11

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v11, v10, :cond_6

    aget-object v3, v6, v11

    .line 132
    if-nez v12, :cond_1

    .line 133
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    :cond_1
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v4, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v3

    .line 137
    array-length v4, v3

    if-le v4, v9, :cond_4

    .line 138
    const/4 v4, 0x0

    aget-object v8, v3, v4

    .line 139
    aget-object v3, v3, v9

    .line 140
    const-string v4, "ENCODING"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "QUOTED-PRINTABLE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    move v13, v9

    goto :goto_2

    .line 142
    :cond_2
    const-string v4, "CHARSET"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    move-object v14, v3

    goto :goto_2

    .line 144
    :cond_3
    const-string v4, "VALUE"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 145
    move-object v15, v3

    .line 131
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x2

    goto :goto_1

    .line 130
    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 151
    :cond_6
    move v3, v0

    .line 153
    :goto_3
    const/16 v4, 0xa

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_b

    .line 154
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v9

    if-ge v3, v4, :cond_8

    add-int/lit8 v4, v3, 0x1

    .line 155
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x20

    if-eq v6, v8, :cond_7

    .line 156
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x9

    if-ne v4, v6, :cond_8

    .line 157
    :cond_7
    add-int/lit8 v3, v3, 0x2

    goto :goto_3

    .line 158
    :cond_8
    if-eqz v13, :cond_b

    const/16 v4, 0x3d

    if-lez v3, :cond_a

    add-int/lit8 v6, v3, -0x1

    .line 159
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v4, :cond_9

    goto :goto_4

    :cond_9
    const/4 v6, 0x2

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v6, 0x2

    if-lt v3, v6, :cond_b

    add-int/lit8 v8, v3, -0x2

    .line 160
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v4, :cond_b

    .line 161
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 167
    :cond_b
    if-gez v3, :cond_c

    .line 169
    move v0, v2

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 170
    :cond_c
    if-le v3, v0, :cond_15

    .line 172
    if-nez v5, :cond_d

    .line 173
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v4

    .line 175
    :cond_d
    if-lez v3, :cond_e

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0xd

    if-ne v4, v6, :cond_e

    .line 176
    add-int/lit8 v3, v3, -0x1

    .line 178
    :cond_e
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 179
    if-eqz p2, :cond_f

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_f
    const-string v4, "\n"

    if-eqz v13, :cond_11

    .line 183
    invoke-static {v0, v14}, Lcom/google/zxing/client/result/VCardResultParser;->decodeQuotedPrintable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    if-eqz p3, :cond_10

    .line 185
    sget-object v6, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_6

    .line 184
    :cond_10
    move-object v4, v0

    goto :goto_6

    .line 188
    :cond_11
    if-eqz p3, :cond_12

    .line 189
    sget-object v6, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_12
    sget-object v6, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    sget-object v6, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    sget-object v4, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v4, "$1"

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 196
    :goto_6
    const-string/jumbo v0, "uri"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 200
    :try_start_0
    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_7

    .line 201
    :catch_0
    move-exception v0

    .line 205
    :cond_13
    :goto_7
    if-nez v12, :cond_14

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const/4 v6, 0x0

    goto :goto_8

    .line 210
    :cond_14
    const/4 v6, 0x0

    invoke-interface {v12, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 211
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :goto_8
    add-int/lit8 v0, v3, 0x1

    .line 214
    move v4, v6

    goto/16 :goto_0

    .line 215
    :cond_15
    const/4 v6, 0x0

    add-int/lit8 v0, v3, 0x1

    .line 218
    move v4, v6

    goto/16 :goto_0

    .line 220
    :cond_16
    return-object v5
.end method

.method private static maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .locals 1
    .param p0, "components"    # [Ljava/lang/String;
    .param p1, "i"    # I
    .param p2, "newName"    # Ljava/lang/StringBuilder;

    .line 366
    aget-object v0, p0, p1

    if-eqz v0, :cond_1

    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 368
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    :cond_0
    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_1
    return-void
.end method

.method private static maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "fragmentBuffer"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 260
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 262
    .local v0, "fragmentBytes":[B
    if-nez p1, :cond_0

    .line 263
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .local v1, "fragment":Ljava/lang/String;
    goto :goto_0

    .line 266
    .end local v1    # "fragment":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .restart local v1    # "fragment":Ljava/lang/String;
    goto :goto_0

    .line 267
    .end local v1    # "fragment":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 268
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 271
    .restart local v1    # "fragment":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 272
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .end local v0    # "fragmentBytes":[B
    .end local v1    # "fragment":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static toPrimaryValue(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 285
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 289
    .local p0, "lists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 292
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 294
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 295
    .local v0, "value":Ljava/lang/String;
    move-object v0, v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 296
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 299
    :cond_2
    sget-object v0, Lcom/google/zxing/client/result/VCardResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 290
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    return-object v0
.end method

.method private static toTypes(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 303
    .local p0, "lists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 306
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v0

    move-object v5, v4

    move v6, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 308
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 309
    .local v4, "value":Ljava/lang/String;
    move-object v4, v7

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 310
    const/4 v7, 0x0

    .line 311
    .local v7, "type":Ljava/lang/String;
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 312
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 313
    .local v5, "metadatum":Ljava/lang/String;
    move-object v5, v9

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 314
    .local v6, "equals":I
    move v6, v9

    if-gez v9, :cond_1

    .line 316
    move-object v7, v5

    .line 317
    goto :goto_2

    .line 319
    :cond_1
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "TYPE"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 320
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 321
    goto :goto_2

    .line 311
    .end local v5    # "metadatum":Ljava/lang/String;
    .end local v6    # "equals":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 324
    .end local v8    # "i":I
    :cond_3
    :goto_2
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "value":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 327
    :cond_5
    sget-object v0, Lcom/google/zxing/client/result/VCardResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 304
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_3
    return-object v0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 34
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 55
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/VCardResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "rawText":Ljava/lang/String;
    sget-object v1, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 57
    .local v3, "m":Ljava/util/regex/Matcher;
    move-object v3, v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 60
    :cond_0
    const-string v1, "FN"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    move-object v6, v2

    .line 61
    .local v6, "names":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v6, v1

    if-nez v1, :cond_1

    .line 63
    const-string v1, "N"

    invoke-static {v1, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 64
    move-object v6, v1

    invoke-static {v1}, Lcom/google/zxing/client/result/VCardResultParser;->formatNames(Ljava/lang/Iterable;)V

    .line 66
    :cond_1
    const-string v1, "NICKNAME"

    invoke-static {v1, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    move-object v7, v2

    .line 67
    .local v7, "nicknameString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v7, v1

    if-nez v1, :cond_2

    move-object v10, v2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/zxing/client/result/VCardResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v1, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 68
    .local v10, "nicknames":[Ljava/lang/String;
    :goto_0
    const-string v1, "TEL"

    invoke-static {v1, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 69
    .local v1, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v8, "EMAIL"

    invoke-static {v8, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v25

    .line 70
    .local v25, "emails":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v8, "NOTE"

    invoke-static {v8, v0, v5, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v26

    .line 71
    .local v26, "note":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "ADR"

    invoke-static {v8, v0, v4, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v27

    .line 72
    .local v27, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v8, "ORG"

    invoke-static {v8, v0, v4, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v28

    .line 73
    .local v28, "org":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "BDAY"

    invoke-static {v8, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v8

    move-object v9, v2

    .line 74
    .local v9, "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v9, v8

    if-eqz v8, :cond_3

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lcom/google/zxing/client/result/VCardResultParser;->isLikeVCardDate(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 75
    const/4 v9, 0x0

    move-object/from16 v29, v9

    goto :goto_1

    .line 77
    :cond_3
    move-object/from16 v29, v9

    .end local v9    # "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v29, "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    const-string v8, "TITLE"

    invoke-static {v8, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v30

    .line 78
    .local v30, "title":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "URL"

    invoke-static {v8, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v31

    .line 79
    .local v31, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v8, "IMPP"

    invoke-static {v8, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v32

    .line 80
    .local v32, "instantMessenger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "GEO"

    invoke-static {v8, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v4

    move-object v8, v2

    .line 81
    .local v8, "geoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v15, v4

    .end local v8    # "geoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "geoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v4, :cond_4

    move-object v4, v2

    goto :goto_2

    :cond_4
    sget-object v4, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v2, "geo":[Ljava/lang/String;
    :goto_2
    move-object v2, v4

    if-eqz v4, :cond_5

    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    .line 83
    const/4 v2, 0x0

    .line 85
    :cond_5
    new-instance v4, Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-object v8, v4

    invoke-static {v6}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    .line 88
    invoke-static {v1}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v12

    .line 89
    invoke-static {v1}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v13

    .line 90
    invoke-static/range {v25 .. v25}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v14

    .line 91
    invoke-static/range {v25 .. v25}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v33, v15

    .end local v15    # "geoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v33, "geoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v15, v5

    .line 92
    invoke-static/range {v32 .. v32}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v16

    .line 93
    invoke-static/range {v26 .. v26}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v17

    .line 94
    invoke-static/range {v27 .. v27}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v18

    .line 95
    invoke-static/range {v27 .. v27}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v19

    .line 96
    invoke-static/range {v28 .. v28}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    .line 97
    invoke-static/range {v29 .. v29}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v21

    .line 98
    invoke-static/range {v30 .. v30}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v22

    .line 99
    invoke-static/range {v31 .. v31}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v2

    invoke-direct/range {v8 .. v24}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 85
    return-object v4

    .line 58
    .end local v1    # "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "geo":[Ljava/lang/String;
    .end local v6    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v7    # "nicknameString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "nicknames":[Ljava/lang/String;
    .end local v25    # "emails":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v26    # "note":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v28    # "org":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "title":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v32    # "instantMessenger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "geoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_3
    return-object v2
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VCardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object p1

    return-object p1
.end method
