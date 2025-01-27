.class public Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;
.super Ljava/lang/Object;
.source "MatchRatingApproachEncoder.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# static fields
.field private static final DOUBLE_CONSONANT:[Ljava/lang/String;

.field private static final ELEVEN:I = 0xb

.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final FIVE:I = 0x5

.field private static final FOUR:I = 0x4

.field private static final ONE:I = 0x1

.field private static final PLAIN_ASCII:Ljava/lang/String; = "AaEeIiOoUuAaEeIiOoUuYyAaEeIiOoUuYyAaOoNnAaEeIiOoUuYyAaCcOoUu"

.field private static final SEVEN:I = 0x7

.field private static final SIX:I = 0x6

.field private static final SPACE:Ljava/lang/String; = " "

.field private static final THREE:I = 0x3

.field private static final TWELVE:I = 0xc

.field private static final TWO:I = 0x2

.field private static final UNICODE:Ljava/lang/String; = "\u00c0\u00e0\u00c8\u00e8\u00cc\u00ec\u00d2\u00f2\u00d9\u00f9\u00c1\u00e1\u00c9\u00e9\u00cd\u00ed\u00d3\u00f3\u00da\u00fa\u00dd\u00fd\u00c2\u00e2\u00ca\u00ea\u00ce\u00ee\u00d4\u00f4\u00db\u00fb\u0176\u0177\u00c3\u00e3\u00d5\u00f5\u00d1\u00f1\u00c4\u00e4\u00cb\u00eb\u00cf\u00ef\u00d6\u00f6\u00dc\u00fc\u0178\u00ff\u00c5\u00e5\u00c7\u00e7\u0150\u0151\u0170\u0171"


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 66
    const-string v0, "BB"

    const-string v1, "CC"

    const-string v2, "DD"

    const-string v3, "FF"

    const-string v4, "GG"

    const-string v5, "HH"

    const-string v6, "JJ"

    const-string v7, "KK"

    const-string v8, "LL"

    const-string v9, "MM"

    const-string v10, "NN"

    const-string v11, "PP"

    const-string v12, "QQ"

    const-string v13, "RR"

    const-string v14, "SS"

    const-string v15, "TT"

    const-string v16, "VV"

    const-string v17, "WW"

    const-string v18, "XX"

    const-string v19, "YY"

    const-string v20, "ZZ"

    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->DOUBLE_CONSONANT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cleanName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 84
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "upperName":Ljava/lang/String;
    const-string v1, "\\-"

    const-string v2, "[&]"

    const-string v3, "\\\'"

    const-string v4, "\\."

    const-string v5, "[\\,]"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "charsToTrim":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const-string v4, ""

    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    .line 88
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .end local v5    # "str":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->removeAccents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v2, "\\s+"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    return-object v0
.end method

.method public final encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 110
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 114
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Match Rating Approach encoder is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 127
    const-string v0, ""

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " "

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->removeVowels(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->removeDoubleConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->getFirst3Last3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    return-object p1

    .line 128
    :cond_1
    :goto_0
    return-object v0
.end method

.method getFirst3Last3(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 162
    .local v0, "nameLength":I
    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 163
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "firstThree":Ljava/lang/String;
    add-int/lit8 v2, v0, -0x3

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "lastThree":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 167
    .end local v1    # "firstThree":Ljava/lang/String;
    .end local v2    # "lastThree":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method getMinRating(I)I
    .locals 2
    .param p1, "sumLength"    # I

    .line 184
    const/4 v0, 0x0

    .line 186
    .local v0, "minRating":I
    const/4 v1, 0x4

    if-gt p1, v1, :cond_0

    .line 187
    const/4 v0, 0x5

    goto :goto_0

    .line 188
    :cond_0
    const/4 v1, 0x7

    if-gt p1, v1, :cond_1

    .line 189
    const/4 v0, 0x4

    goto :goto_0

    .line 190
    :cond_1
    const/16 v1, 0xb

    if-gt p1, v1, :cond_2

    .line 191
    const/4 v0, 0x3

    goto :goto_0

    .line 192
    :cond_2
    const/16 v1, 0xc

    if-ne p1, v1, :cond_3

    .line 193
    const/4 v0, 0x2

    goto :goto_0

    .line 195
    :cond_3
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0
.end method

.method public isEncodeEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "name2"    # Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, " "

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    .line 215
    :cond_0
    if-eqz p2, :cond_7

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 217
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    return v2

    .line 224
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 230
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->removeVowels(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->removeVowels(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 234
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->removeDoubleConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 235
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->removeDoubleConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 238
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->getFirst3Last3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->getFirst3Last3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 243
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_4

    .line 244
    return v0

    .line 249
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 250
    .local v1, "sumLength":I
    const/4 v3, 0x0

    .line 251
    .local v3, "minRating":I
    invoke-virtual {p0, v1}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->getMinRating(I)I

    move-result v3

    .line 255
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->leftToRightThenRightToLeftProcessing(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 259
    .local v4, "count":I
    if-lt v4, v3, :cond_5

    move v0, v2

    :cond_5
    return v0

    .line 218
    .end local v1    # "sumLength":I
    .end local v3    # "minRating":I
    .end local v4    # "count":I
    :cond_6
    :goto_0
    return v0

    .line 216
    :cond_7
    :goto_1
    return v0

    .line 214
    :cond_8
    :goto_2
    return v0
.end method

.method isVowel(Ljava/lang/String;)Z
    .locals 1
    .param p1, "letter"    # Ljava/lang/String;

    .line 276
    const-string v0, "E"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "O"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    const-string v0, "I"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "U"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 276
    :goto_1
    return v0
.end method

.method leftToRightThenRightToLeftProcessing(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "name2"    # Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 295
    .local v0, "name1Char":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 297
    .local v1, "name2Char":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 298
    .local v2, "name1Size":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 300
    .local v3, "name2Size":I
    const-string v4, ""

    .line 301
    .local v4, "name1LtRStart":Ljava/lang/String;
    const-string v5, ""

    .line 303
    .local v5, "name1LtREnd":Ljava/lang/String;
    const-string v6, ""

    .line 304
    .local v6, "name2RtLStart":Ljava/lang/String;
    const-string v7, ""

    .line 306
    .local v7, "name2RtLEnd":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, v0

    if-ge v8, v9, :cond_3

    .line 307
    if-le v8, v3, :cond_0

    .line 308
    goto :goto_1

    .line 311
    :cond_0
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 312
    sub-int v9, v2, v8

    sub-int v10, v2, v8

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 314
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 315
    sub-int v9, v3, v8

    sub-int v10, v3, v8

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 318
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/16 v10, 0x20

    if-eqz v9, :cond_1

    .line 319
    aput-char v10, v0, v8

    .line 320
    aput-char v10, v1, v8

    .line 324
    :cond_1
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 325
    sub-int v9, v2, v8

    aput-char v10, v0, v9

    .line 326
    sub-int v9, v3, v8

    aput-char v10, v1, v9

    .line 306
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 331
    .end local v8    # "i":I
    :cond_3
    :goto_1
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([C)V

    const-string v9, "\\s+"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 332
    .local v8, "strA":Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v11, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 335
    .local v9, "strB":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-le v10, v11, :cond_4

    .line 336
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    rsub-int/lit8 v10, v10, 0x6

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    return v10

    .line 338
    :cond_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    rsub-int/lit8 v10, v10, 0x6

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    return v10
.end method

.method removeAccents(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "accentedWord"    # Ljava/lang/String;

    .line 350
    if-nez p1, :cond_0

    .line 351
    const/4 v0, 0x0

    return-object v0

    .line 354
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 357
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 358
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 359
    .local v3, "c":C
    const-string/jumbo v4, "\u00c0\u00e0\u00c8\u00e8\u00cc\u00ec\u00d2\u00f2\u00d9\u00f9\u00c1\u00e1\u00c9\u00e9\u00cd\u00ed\u00d3\u00f3\u00da\u00fa\u00dd\u00fd\u00c2\u00e2\u00ca\u00ea\u00ce\u00ee\u00d4\u00f4\u00db\u00fb\u0176\u0177\u00c3\u00e3\u00d5\u00f5\u00d1\u00f1\u00c4\u00e4\u00cb\u00eb\u00cf\u00ef\u00d6\u00f6\u00dc\u00fc\u0178\u00ff\u00c5\u00e5\u00c7\u00e7\u0150\u0151\u0170\u0171"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 360
    .local v4, "pos":I
    const/4 v5, -0x1

    if-le v4, v5, :cond_1

    .line 361
    const-string v5, "AaEeIiOoUuAaEeIiOoUuYyAaEeIiOoUuYyAaOoNnAaEeIiOoUuYyAaCcOoUu"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 363
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    .end local v3    # "c":C
    .end local v4    # "pos":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method removeDoubleConsonants(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 383
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "replacedName":Ljava/lang/String;
    sget-object v1, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->DOUBLE_CONSONANT:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 385
    .local v5, "dc":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 386
    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 387
    .local v6, "singleLetter":Ljava/lang/String;
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .end local v5    # "dc":Ljava/lang/String;
    .end local v6    # "singleLetter":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 390
    :cond_1
    return-object v0
.end method

.method removeVowels(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 407
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "firstLetter":Ljava/lang/String;
    const-string v1, "A"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 410
    const-string v1, "E"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 411
    const-string v1, "I"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 412
    const-string v1, "O"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 413
    const-string v1, "U"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 415
    const-string v1, "\\s{2,}\\b"

    const-string v2, " "

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 418
    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->isVowel(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 421
    :cond_0
    return-object p1
.end method
