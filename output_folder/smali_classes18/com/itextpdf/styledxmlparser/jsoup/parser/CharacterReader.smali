.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;
.super Ljava/lang/Object;
.source "CharacterReader.java"


# static fields
.field static final EOF:C = '\uffff'

.field private static final maxCacheLen:I = 0xc


# instance fields
.field private final input:[C

.field private final length:I

.field private mark:I

.field private pos:I

.field private final stringCache:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 59
    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->mark:I

    .line 60
    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    .line 65
    array-length v0, v0

    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    .line 66
    return-void
.end method

.method private cacheString(II)Ljava/lang/String;
    .locals 7
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 389
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    .line 390
    .local v0, "val":[C
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 393
    .local v1, "cache":[Ljava/lang/String;
    const/16 v2, 0xc

    if-le p2, v2, :cond_0

    .line 394
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 397
    :cond_0
    const/4 v2, 0x0

    .line 398
    .local v2, "hash":I
    move v3, p1

    .line 399
    .local v3, "offset":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p2, :cond_1

    .line 400
    mul-int/lit8 v5, v2, 0x1f

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "offset":I
    .local v6, "offset":I
    aget-char v3, v0, v3

    add-int v2, v5, v3

    .line 399
    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_0

    .line 404
    .end local v4    # "i":I
    .end local v6    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v2

    .line 405
    .local v4, "index":I
    aget-object v5, v1, v4

    .line 407
    .local v5, "cached":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 408
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    move-object v5, v6

    .line 409
    aput-object v5, v1, v4

    goto :goto_1

    .line 411
    :cond_2
    invoke-virtual {p0, p1, p2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->rangeEquals(IILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 412
    return-object v5

    .line 414
    :cond_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    move-object v5, v6

    .line 415
    aput-object v5, v1, v4

    .line 418
    :goto_1
    return-object v5
.end method


# virtual methods
.method advance()V
    .locals 1

    .line 91
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 92
    return-void
.end method

.method consume()C
    .locals 2

    .line 81
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    if-lt v0, v1, :cond_0

    const v1, 0xffff

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    aget-char v1, v1, v0

    .line 82
    .local v1, "val":C
    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 83
    return v1
.end method

.method consumeAsString()Ljava/lang/String;
    .locals 4

    .line 103
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method consumeData()Ljava/lang/String;
    .locals 6

    .line 198
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 199
    .local v0, "start":I
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    .line 200
    .local v1, "remaining":I
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    .line 202
    .local v2, "val":[C
    :goto_0
    iget v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    if-ge v3, v1, :cond_1

    .line 203
    aget-char v4, v2, v3

    .line 204
    .local v4, "c":C
    const/16 v5, 0x26

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_1

    if-nez v4, :cond_0

    .line 205
    goto :goto_1

    .line 206
    :cond_0
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 207
    .end local v4    # "c":C
    goto :goto_0

    .line 209
    :cond_1
    :goto_1
    if-le v3, v0, :cond_2

    sub-int/2addr v3, v0

    invoke-direct {p0, v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v3, ""

    :goto_2
    return-object v3
.end method

.method consumeDigitSequence()Ljava/lang/String;
    .locals 4

    .line 280
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 281
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    aget-char v2, v2, v1

    .line 283
    .local v2, "c":C
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 284
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 287
    .end local v2    # "c":C
    goto :goto_0

    .line 288
    :cond_0
    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method consumeHexSequence()Ljava/lang/String;
    .locals 4

    .line 268
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 269
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_3

    .line 270
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    aget-char v2, v2, v1

    .line 271
    .local v2, "c":C
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x41

    if-lt v2, v3, :cond_1

    const/16 v3, 0x46

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    const/16 v3, 0x66

    if-gt v2, v3, :cond_3

    .line 272
    :cond_2
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 275
    .end local v2    # "c":C
    goto :goto_0

    .line 276
    :cond_3
    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method consumeLetterSequence()Ljava/lang/String;
    .locals 3

    .line 235
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 236
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_3

    .line 237
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    aget-char v1, v2, v1

    .line 238
    .local v1, "c":C
    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    :cond_2
    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 242
    .end local v1    # "c":C
    goto :goto_0

    .line 244
    :cond_3
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method consumeLetterThenDigitSequence()Ljava/lang/String;
    .locals 4

    .line 248
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 249
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_3

    .line 250
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    aget-char v1, v2, v1

    .line 251
    .local v1, "c":C
    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 252
    :cond_2
    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 255
    .end local v1    # "c":C
    goto :goto_0

    .line 256
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 257
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    aget-char v1, v1, v2

    .line 258
    .restart local v1    # "c":C
    const/16 v3, 0x30

    if-lt v1, v3, :cond_4

    const/16 v3, 0x39

    if-gt v1, v3, :cond_4

    .line 259
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 262
    .end local v1    # "c":C
    goto :goto_1

    .line 264
    :cond_4
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method consumeTagName()Ljava/lang/String;
    .locals 6

    .line 214
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 215
    .local v0, "start":I
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    .line 216
    .local v1, "remaining":I
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    .line 218
    .local v2, "val":[C
    :goto_0
    iget v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    if-ge v3, v1, :cond_1

    .line 219
    aget-char v4, v2, v3

    .line 220
    .local v4, "c":C
    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1

    const/16 v5, 0xc

    if-eq v4, v5, :cond_1

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_1

    if-nez v4, :cond_0

    .line 221
    goto :goto_1

    .line 222
    :cond_0
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 223
    .end local v4    # "c":C
    goto :goto_0

    .line 225
    :cond_1
    :goto_1
    if-le v3, v0, :cond_2

    sub-int/2addr v3, v0

    invoke-direct {p0, v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v3, ""

    :goto_2
    return-object v3
.end method

.method consumeTo(C)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # C

    .line 145
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->nextIndexOf(C)I

    move-result v0

    .line 146
    .local v0, "offset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 147
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    invoke-direct {p0, v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "consumed":Ljava/lang/String;
    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 149
    return-object v1

    .line 151
    .end local v1    # "consumed":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "seq"    # Ljava/lang/String;

    .line 156
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v0

    .line 157
    .local v0, "offset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 158
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    invoke-direct {p0, v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "consumed":Ljava/lang/String;
    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 160
    return-object v1

    .line 162
    .end local v1    # "consumed":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method varargs consumeToAny([C)Ljava/lang/String;
    .locals 7
    .param p1, "chars"    # [C

    .line 167
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 168
    .local v0, "start":I
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    .line 169
    .local v1, "remaining":I
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    .line 171
    .local v2, "val":[C
    :goto_0
    iget v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    if-ge v3, v1, :cond_2

    .line 172
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-char v5, p1, v4

    .line 173
    .local v5, "c":C
    iget v6, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    aget-char v6, v2, v6

    if-ne v6, v5, :cond_0

    .line 174
    goto :goto_2

    .line 172
    .end local v5    # "c":C
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 176
    :cond_1
    iget v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 179
    :cond_2
    :goto_2
    iget v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    if-le v3, v0, :cond_3

    sub-int/2addr v3, v0

    invoke-direct {p0, v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    const-string v3, ""

    :goto_3
    return-object v3
.end method

.method varargs consumeToAnySorted([C)Ljava/lang/String;
    .locals 4
    .param p1, "chars"    # [C

    .line 183
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 184
    .local v0, "start":I
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    .line 185
    .local v1, "remaining":I
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    .line 187
    .local v2, "val":[C
    :goto_0
    iget v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    if-ge v3, v1, :cond_1

    .line 188
    aget-char v3, v2, v3

    invoke-static {p1, v3}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v3

    if-ltz v3, :cond_0

    .line 189
    goto :goto_1

    .line 190
    :cond_0
    iget v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 193
    :cond_1
    :goto_1
    iget v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    if-le v3, v0, :cond_2

    sub-int/2addr v3, v0

    invoke-direct {p0, v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v3, ""

    :goto_2
    return-object v3
.end method

.method consumeToEnd()Ljava/lang/String;
    .locals 2

    .line 229
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "data":Ljava/lang/String;
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    iput v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 231
    return-object v0
.end method

.method containsIgnoreCase(Ljava/lang/String;)Z
    .locals 4
    .param p1, "seq"    # Ljava/lang/String;

    .line 371
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "loScan":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "hiScan":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, -0x1

    if-gt v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v2

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method current()C
    .locals 2

    .line 77
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    if-lt v0, v1, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    aget-char v0, v1, v0

    :goto_0
    return v0
.end method

.method isEmpty()Z
    .locals 2

    .line 73
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method mark()V
    .locals 1

    .line 95
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->mark:I

    .line 96
    return-void
.end method

.method matchConsume(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .line 352
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 354
    const/4 v0, 0x1

    return v0

    .line 356
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method matchConsumeIgnoreCase(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .line 361
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 363
    const/4 v0, 0x1

    return v0

    .line 365
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method matches(C)Z
    .locals 2
    .param p1, "c"    # C

    .line 292
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method matches(Ljava/lang/String;)Z
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 298
    .local v0, "scanLength":I
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 299
    return v2

    .line 301
    :cond_0
    const/4 v1, 0x0

    .local v1, "offset":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 302
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    iget v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_1

    .line 303
    return v2

    .line 301
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v1    # "offset":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method varargs matchesAny([C)Z
    .locals 5
    .param p1, "seq"    # [C

    .line 322
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 323
    return v1

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v2

    .line 326
    .local v0, "c":C
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, p1, v3

    .line 327
    .local v4, "seek":C
    if-ne v4, v0, :cond_1

    .line 328
    const/4 v1, 0x1

    return v1

    .line 326
    .end local v4    # "seek":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 330
    :cond_2
    return v1
.end method

.method matchesAnySorted([C)Z
    .locals 2
    .param p1, "seq"    # [C

    .line 334
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method matchesDigit()Z
    .locals 3

    .line 345
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 346
    return v1

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v2

    .line 348
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_1

    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method matchesIgnoreCase(Ljava/lang/String;)Z
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 309
    .local v0, "scanLength":I
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 310
    return v2

    .line 312
    :cond_0
    const/4 v1, 0x0

    .local v1, "offset":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 313
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 314
    .local v3, "upScan":C
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    iget v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 315
    .local v4, "upTarget":C
    if-eq v3, v4, :cond_1

    .line 316
    return v2

    .line 312
    .end local v3    # "upScan":C
    .end local v4    # "upTarget":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v1    # "offset":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method matchesLetter()Z
    .locals 3

    .line 338
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 339
    return v1

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v2

    .line 341
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method nextIndexOf(C)I
    .locals 2
    .param p1, "c"    # C

    .line 113
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    if-ge v0, v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 115
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    sub-int v1, v0, v1

    return v1

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method nextIndexOf(Ljava/lang/CharSequence;)I
    .locals 7
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .line 128
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 129
    .local v0, "startChar":C
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .local v1, "offset":I
    :goto_0
    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_3

    .line 131
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    aget-char v2, v2, v1

    if-eq v0, v2, :cond_0

    .line 132
    :goto_1
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    aget-char v2, v2, v1

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 134
    .local v2, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 135
    .local v3, "last":I
    iget v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v4, :cond_2

    if-gt v3, v4, :cond_2

    .line 136
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_2
    if-ge v2, v3, :cond_1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    aget-char v6, v6, v2

    if-ne v5, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 137
    .end local v4    # "j":I
    :cond_1
    if-ne v2, v3, :cond_2

    .line 138
    iget v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    sub-int v4, v1, v4

    return v4

    .line 129
    .end local v2    # "i":I
    .end local v3    # "last":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "offset":I
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method pos()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    return v0
.end method

.method rangeEquals(IILjava/lang/String;)Z
    .locals 6
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "cached"    # Ljava/lang/String;

    .line 425
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    .line 427
    .local v0, "one":[C
    move v2, p1

    .line 428
    .local v2, "i":I
    const/4 v3, 0x0

    .line 429
    .local v3, "j":I
    :goto_0
    add-int/lit8 v4, p2, -0x1

    .end local p2    # "count":I
    .local v4, "count":I
    if-eqz p2, :cond_1

    .line 430
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "i":I
    .local p2, "i":I
    aget-char v2, v0, v2

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .local v5, "j":I
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    .line 431
    return v1

    .line 430
    :cond_0
    move v2, p2

    move p2, v4

    move v3, v5

    goto :goto_0

    .line 433
    .end local v5    # "j":I
    .end local p2    # "i":I
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    :cond_1
    const/4 p2, 0x1

    return p2

    .line 435
    .end local v0    # "one":[C
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "count":I
    .local p2, "count":I
    :cond_2
    return v1
.end method

.method rewindToMark()V
    .locals 1

    .line 99
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->mark:I

    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 378
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    iget v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->length:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method unconsume()V
    .locals 1

    .line 87
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos:I

    .line 88
    return-void
.end method
