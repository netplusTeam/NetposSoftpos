.class public Lorg/apache/commons/lang/RandomStringUtils;
.super Ljava/lang/Object;
.source "RandomStringUtils.java"


# static fields
.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/RandomStringUtils;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static random(I)Ljava/lang/String;
    .locals 1
    .param p0, "count"    # I

    .line 72
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(IIIZZ)Ljava/lang/String;
    .locals 7
    .param p0, "count"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "letters"    # Z
    .param p4, "numbers"    # Z

    .line 166
    sget-object v6, Lorg/apache/commons/lang/RandomStringUtils;->RANDOM:Ljava/util/Random;

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(IIIZZ[C)Ljava/lang/String;
    .locals 7
    .param p0, "count"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "letters"    # Z
    .param p4, "numbers"    # Z
    .param p5, "chars"    # [C

    .line 190
    sget-object v6, Lorg/apache/commons/lang/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;
    .locals 7
    .param p0, "count"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "letters"    # Z
    .param p4, "numbers"    # Z
    .param p5, "chars"    # [C
    .param p6, "random"    # Ljava/util/Random;

    .line 228
    if-nez p0, :cond_0

    .line 229
    const-string v0, ""

    return-object v0

    .line 230
    :cond_0
    if-ltz p0, :cond_d

    .line 233
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 234
    const/16 p2, 0x7b

    .line 235
    const/16 p1, 0x20

    .line 236
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 237
    const/4 p1, 0x0

    .line 238
    const p2, 0x7fffffff

    .line 242
    :cond_1
    new-array v0, p0, [C

    .line 243
    .local v0, "buffer":[C
    sub-int v1, p2, p1

    .line 245
    .local v1, "gap":I
    :goto_0
    add-int/lit8 v2, p0, -0x1

    .end local p0    # "count":I
    .local v2, "count":I
    if-eqz p0, :cond_c

    .line 247
    if-nez p5, :cond_2

    .line 248
    invoke-virtual {p6, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p0, p1

    int-to-char p0, p0

    .local p0, "ch":C
    goto :goto_1

    .line 250
    .end local p0    # "ch":C
    :cond_2
    invoke-virtual {p6, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p0, p1

    aget-char p0, p5, p0

    .line 252
    .restart local p0    # "ch":C
    :goto_1
    if-eqz p3, :cond_3

    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    if-eqz p4, :cond_4

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    if-nez p3, :cond_b

    if-nez p4, :cond_b

    .line 256
    :cond_5
    const/16 v3, 0x80

    const v4, 0xd800

    const v5, 0xdc00

    if-lt p0, v5, :cond_7

    const v6, 0xdfff

    if-gt p0, v6, :cond_7

    .line 257
    if-nez v2, :cond_6

    .line 258
    add-int/lit8 v2, v2, 0x1

    move p0, v2

    goto :goto_2

    .line 261
    :cond_6
    aput-char p0, v0, v2

    .line 262
    add-int/lit8 v2, v2, -0x1

    .line 263
    invoke-virtual {p6, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v2

    move p0, v2

    goto :goto_2

    .line 265
    :cond_7
    if-lt p0, v4, :cond_9

    const v4, 0xdb7f

    if-gt p0, v4, :cond_9

    .line 266
    if-nez v2, :cond_8

    .line 267
    add-int/lit8 v2, v2, 0x1

    move p0, v2

    goto :goto_2

    .line 270
    :cond_8
    invoke-virtual {p6, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v5

    int-to-char v3, v3

    aput-char v3, v0, v2

    .line 271
    add-int/lit8 v2, v2, -0x1

    .line 272
    aput-char p0, v0, v2

    move p0, v2

    goto :goto_2

    .line 274
    :cond_9
    const v3, 0xdb80

    if-lt p0, v3, :cond_a

    const v3, 0xdbff

    if-gt p0, v3, :cond_a

    .line 276
    add-int/lit8 v2, v2, 0x1

    move p0, v2

    goto :goto_2

    .line 278
    :cond_a
    aput-char p0, v0, v2

    move p0, v2

    goto :goto_2

    .line 281
    :cond_b
    add-int/lit8 v2, v2, 0x1

    move p0, v2

    .line 283
    .end local v2    # "count":I
    .local p0, "count":I
    :goto_2
    goto :goto_0

    .line 284
    .end local p0    # "count":I
    .restart local v2    # "count":I
    :cond_c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 231
    .end local v0    # "buffer":[C
    .end local v1    # "gap":I
    .end local v2    # "count":I
    .restart local p0    # "count":I
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Requested random string length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is less than 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static random(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "count"    # I
    .param p1, "chars"    # Ljava/lang/String;

    .line 301
    if-nez p1, :cond_0

    .line 302
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lorg/apache/commons/lang/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 304
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/RandomStringUtils;->random(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(IZZ)Ljava/lang/String;
    .locals 1
    .param p0, "count"    # I
    .param p1, "letters"    # Z
    .param p2, "numbers"    # Z

    .line 146
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1, p2}, Lorg/apache/commons/lang/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(I[C)Ljava/lang/String;
    .locals 8
    .param p0, "count"    # I
    .param p1, "chars"    # [C

    .line 320
    if-nez p1, :cond_0

    .line 321
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lorg/apache/commons/lang/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 323
    :cond_0
    const/4 v2, 0x0

    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v7, Lorg/apache/commons/lang/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v1, p0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/lang/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAlphabetic(I)Ljava/lang/String;
    .locals 2
    .param p0, "count"    # I

    .line 100
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAlphanumeric(I)Ljava/lang/String;
    .locals 1
    .param p0, "count"    # I

    .line 114
    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAscii(I)Ljava/lang/String;
    .locals 3
    .param p0, "count"    # I

    .line 86
    const/16 v0, 0x20

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Lorg/apache/commons/lang/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomNumeric(I)Ljava/lang/String;
    .locals 2
    .param p0, "count"    # I

    .line 128
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
