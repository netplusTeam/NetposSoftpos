.class public Lorg/apache/commons/lang/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final INDEX_NOT_FOUND:I = -0x1

.field private static final PAD_LIMIT:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    return-void
.end method

.method public static abbreviate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I

    .line 5877
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/StringUtils;->abbreviate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "maxWidth"    # I

    .line 5916
    if-nez p0, :cond_0

    .line 5917
    const/4 v0, 0x0

    return-object v0

    .line 5919
    :cond_0
    const/4 v0, 0x4

    if-lt p2, v0, :cond_7

    .line 5922
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p2, :cond_1

    .line 5923
    return-object p0

    .line 5925
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p1, v1, :cond_2

    .line 5926
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 5928
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v2, p2, -0x3

    if-ge v1, v2, :cond_3

    .line 5929
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p2, -0x3

    sub-int p1, v1, v2

    .line 5931
    :cond_3
    const-string v1, "..."

    if-gt p1, v0, :cond_4

    .line 5932
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5934
    :cond_4
    const/4 v0, 0x7

    if-lt p2, v0, :cond_6

    .line 5937
    add-int/lit8 v0, p2, -0x3

    add-int/2addr v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 5938
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p2, -0x3

    invoke-static {v1, v2}, Lorg/apache/commons/lang/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5940
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p2, -0x3

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5935
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum abbreviation width with offset is 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5920
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum abbreviation width is 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "middle"    # Ljava/lang/String;
    .param p2, "length"    # I

    .line 5973
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5977
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    if-ge p2, v0, :cond_1

    goto :goto_0

    .line 5981
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p2, v0

    .line 5982
    .local v0, "targetSting":I
    div-int/lit8 v1, v0, 0x2

    rem-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    .line 5983
    .local v1, "startOffset":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    .line 5985
    .local v2, "endOffset":I
    new-instance v3, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v3, p2}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 5986
    .local v3, "builder":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 5987
    invoke-virtual {v3, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 5988
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 5990
    invoke-virtual {v3}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 5978
    .end local v0    # "targetSting":I
    .end local v1    # "startOffset":I
    .end local v2    # "endOffset":I
    .end local v3    # "builder":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_2
    :goto_0
    return-object p0

    .line 5974
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static capitalise(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 5185
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitaliseAllWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 5294
    invoke-static {p0}, Lorg/apache/commons/lang/WordUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 5166
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "strLen":I
    if-nez v0, :cond_0

    goto :goto_0

    .line 5169
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5167
    .end local v1    # "strLen":I
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static center(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 4960
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->center(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static center(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 4988
    if-eqz p0, :cond_2

    if-gtz p1, :cond_0

    goto :goto_0

    .line 4991
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4992
    .local v0, "strLen":I
    sub-int v1, p1, v0

    .line 4993
    .local v1, "pads":I
    if-gtz v1, :cond_1

    .line 4994
    return-object p0

    .line 4996
    :cond_1
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 4997
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 4998
    return-object p0

    .line 4989
    .end local v0    # "strLen":I
    .end local v1    # "pads":I
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 5028
    if-eqz p0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_0

    .line 5031
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5032
    const-string p2, " "

    .line 5034
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 5035
    .local v0, "strLen":I
    sub-int v1, p1, v0

    .line 5036
    .local v1, "pads":I
    if-gtz v1, :cond_2

    .line 5037
    return-object p0

    .line 5039
    :cond_2
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5040
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5041
    return-object p0

    .line 5029
    .end local v0    # "strLen":I
    .end local v1    # "pads":I
    :cond_3
    :goto_0
    return-object p0
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 4320
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4321
    return-object p0

    .line 4324
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 4325
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4326
    .local v0, "ch":C
    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 4329
    :cond_1
    return-object p0

    .line 4327
    :cond_2
    :goto_0
    const-string v1, ""

    return-object v1

    .line 4332
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    .line 4333
    .local v0, "lastIdx":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 4335
    .local v4, "last":C
    if-ne v4, v2, :cond_4

    .line 4336
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_5

    .line 4337
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 4339
    :cond_4
    if-eq v4, v3, :cond_5

    .line 4340
    add-int/lit8 v0, v0, 0x1

    .line 4342
    :cond_5
    :goto_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 4372
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 4375
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4376
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4378
    :cond_1
    return-object p0

    .line 4373
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static chompLast(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 4392
    const-string v0, "\n"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->chompLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static chompLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .line 4406
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 4407
    return-object p0

    .line 4409
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4410
    .local v0, "sub":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4411
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4413
    :cond_1
    return-object p0
.end method

.method public static chop(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .line 4504
    if-nez p0, :cond_0

    .line 4505
    const/4 v0, 0x0

    return-object v0

    .line 4507
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4508
    .local v0, "strLen":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 4509
    const-string v1, ""

    return-object v1

    .line 4511
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .line 4512
    .local v1, "lastIdx":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 4513
    .local v3, "ret":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 4514
    .local v4, "last":C
    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 4515
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2

    .line 4516
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4519
    :cond_2
    return-object v3
.end method

.method public static chopNewline(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 4533
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4534
    .local v0, "lastIdx":I
    if-gtz v0, :cond_0

    .line 4535
    const-string v1, ""

    return-object v1

    .line 4537
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4538
    .local v1, "last":C
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 4539
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 4540
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4543
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 4545
    :cond_2
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 286
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static concatenate([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .line 3120
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static contains(Ljava/lang/String;C)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C

    .line 1241
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1242
    return v1

    .line 1244
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .line 1269
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1272
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 1270
    :cond_2
    :goto_0
    return v0
.end method

.method public static containsAny(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;

    .line 1474
    if-nez p1, :cond_0

    .line 1475
    const/4 v0, 0x0

    return v0

    .line 1477
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->containsAny(Ljava/lang/String;[C)Z

    move-result v0

    return v0
.end method

.method public static containsAny(Ljava/lang/String;[C)Z
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # [C

    .line 1417
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1420
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1421
    .local v0, "csLength":I
    array-length v2, p1

    .line 1422
    .local v2, "searchLength":I
    add-int/lit8 v3, v0, -0x1

    .line 1423
    .local v3, "csLast":I
    add-int/lit8 v4, v2, -0x1

    .line 1424
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    .line 1425
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1426
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v2, :cond_4

    .line 1427
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3

    .line 1428
    invoke-static {v6}, Lorg/apache/commons/lang/CharUtils;->isHighSurrogate(C)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    .line 1429
    if-ne v7, v4, :cond_1

    .line 1431
    return v9

    .line 1433
    :cond_1
    if-ge v5, v3, :cond_3

    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_3

    .line 1434
    return v9

    .line 1438
    :cond_2
    return v9

    .line 1426
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1424
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1443
    .end local v5    # "i":I
    :cond_5
    return v1

    .line 1418
    .end local v0    # "csLength":I
    .end local v2    # "searchLength":I
    .end local v3    # "csLast":I
    .end local v4    # "searchLast":I
    :cond_6
    :goto_2
    return v1
.end method

.method public static containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .line 1299
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1302
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 1303
    .local v7, "len":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v8, v1, v7

    .line 1304
    .local v8, "max":I
    const/4 v1, 0x0

    move v9, v1

    .local v9, "i":I
    :goto_0
    if-gt v9, v8, :cond_2

    .line 1305
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v3, v9

    move-object v4, p1

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1306
    const/4 v0, 0x1

    return v0

    .line 1304
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1309
    .end local v9    # "i":I
    :cond_2
    return v0

    .line 1300
    .end local v7    # "len":I
    .end local v8    # "max":I
    :cond_3
    :goto_1
    return v0
.end method

.method public static containsNone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "invalidChars"    # Ljava/lang/String;

    .line 1718
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1721
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->containsNone(Ljava/lang/String;[C)Z

    move-result v0

    return v0

    .line 1719
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static containsNone(Ljava/lang/String;[C)Z
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # [C

    .line 1666
    const/4 v0, 0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 1669
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1670
    .local v1, "csLen":I
    add-int/lit8 v2, v1, -0x1

    .line 1671
    .local v2, "csLast":I
    array-length v3, p1

    .line 1672
    .local v3, "searchLen":I
    add-int/lit8 v4, v3, -0x1

    .line 1673
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_5

    .line 1674
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1675
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_4

    .line 1676
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3

    .line 1677
    invoke-static {v6}, Lorg/apache/commons/lang/CharUtils;->isHighSurrogate(C)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 1678
    if-ne v7, v4, :cond_1

    .line 1680
    return v9

    .line 1682
    :cond_1
    if-ge v5, v2, :cond_3

    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_3

    .line 1683
    return v9

    .line 1687
    :cond_2
    return v9

    .line 1675
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1673
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1692
    .end local v5    # "i":I
    :cond_5
    return v0

    .line 1667
    .end local v1    # "csLen":I
    .end local v2    # "csLast":I
    .end local v3    # "searchLen":I
    .end local v4    # "searchLast":I
    :cond_6
    :goto_2
    return v0
.end method

.method public static containsOnly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "validChars"    # Ljava/lang/String;

    .line 1635
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1638
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->containsOnly(Ljava/lang/String;[C)Z

    move-result v0

    return v0

    .line 1636
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static containsOnly(Ljava/lang/String;[C)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "valid"    # [C

    .line 1600
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p0, :cond_0

    goto :goto_0

    .line 1603
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1604
    return v2

    .line 1606
    :cond_1
    array-length v1, p1

    if-nez v1, :cond_2

    .line 1607
    return v0

    .line 1609
    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->indexOfAnyBut(Ljava/lang/String;[C)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 1601
    :cond_4
    :goto_0
    return v0
.end method

.method public static countMatches(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sub"    # Ljava/lang/String;

    .line 5319
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5322
    :cond_0
    const/4 v0, 0x0

    .line 5323
    .local v0, "count":I
    const/4 v1, 0x0

    .line 5324
    .local v1, "idx":I
    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 5325
    add-int/lit8 v0, v0, 0x1

    .line 5326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 5328
    :cond_1
    return v0

    .line 5320
    .end local v0    # "count":I
    .end local v1    # "idx":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static defaultIfBlank(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultStr"    # Ljava/lang/String;

    .line 5729
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static defaultIfEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultStr"    # Ljava/lang/String;

    .line 5750
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 5686
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultStr"    # Ljava/lang/String;

    .line 5707
    if-nez p0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static deleteSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 3476
    if-nez p0, :cond_0

    .line 3477
    const/4 v0, 0x0

    return-object v0

    .line 3479
    :cond_0
    const-string v0, " \t\r\n\u0008"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/CharSetUtils;->delete(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 3497
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3498
    return-object p0

    .line 3500
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3501
    .local v0, "sz":I
    new-array v1, v0, [C

    .line 3502
    .local v1, "chs":[C
    const/4 v2, 0x0

    .line 3503
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 3504
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3505
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "count":I
    .local v4, "count":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v1, v2

    move v2, v4

    .line 3503
    .end local v4    # "count":I
    .restart local v2    # "count":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3508
    .end local v3    # "i":I
    :cond_2
    if-ne v2, v0, :cond_3

    .line 3509
    return-object p0

    .line 3511
    :cond_3
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method

.method public static difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 6021
    if-nez p0, :cond_0

    .line 6022
    return-object p1

    .line 6024
    :cond_0
    if-nez p1, :cond_1

    .line 6025
    return-object p0

    .line 6027
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->indexOfDifference(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 6028
    .local v0, "at":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 6029
    const-string v1, ""

    return-object v1

    .line 6031
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static endsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .line 6463
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .line 6504
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 6507
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 6508
    return v0

    .line 6510
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 6511
    .local v0, "strOffset":I
    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    move-object v2, p0

    move v3, p2

    move v4, v0

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    return v1

    .line 6505
    .end local v0    # "strOffset":I
    :cond_2
    :goto_0
    if-nez p0, :cond_3

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static endsWithAny(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "searchStrings"    # [Ljava/lang/String;

    .line 6582
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 6585
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 6586
    aget-object v2, p1, v0

    .line 6587
    .local v2, "searchString":Ljava/lang/String;
    invoke-static {p0, v2}, Lorg/apache/commons/lang/StringUtils;->endsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6588
    const/4 v1, 0x1

    return v1

    .line 6585
    .end local v2    # "searchString":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6591
    .end local v0    # "i":I
    :cond_2
    return v1

    .line 6583
    :cond_3
    :goto_1
    return v1
.end method

.method public static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .line 6489
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 661
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 686
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 4567
    invoke-static {p0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .line 4429
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 4430
    .local v0, "idx":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4431
    return-object p1

    .line 4432
    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4433
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4435
    :cond_1
    const-string v1, ""

    return-object v1
.end method

.method public static getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "strs"    # [Ljava/lang/String;

    .line 6199
    const-string v0, ""

    if-eqz p0, :cond_4

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 6202
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->indexOfDifference([Ljava/lang/String;)I

    move-result v1

    .line 6203
    .local v1, "smallestIndexOfDiff":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 6205
    aget-object v2, p0, v3

    if-nez v2, :cond_1

    .line 6206
    return-object v0

    .line 6208
    :cond_1
    aget-object v0, p0, v3

    return-object v0

    .line 6209
    :cond_2
    if-nez v1, :cond_3

    .line 6211
    return-object v0

    .line 6214
    :cond_3
    aget-object v0, p0, v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6200
    .end local v1    # "smallestIndexOfDiff":I
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static getLevenshteinDistance(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .line 6255
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 6276
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 6277
    .local v0, "n":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 6279
    .local v1, "m":I
    if-nez v0, :cond_0

    .line 6280
    return v1

    .line 6281
    :cond_0
    if-nez v1, :cond_1

    .line 6282
    return v0

    .line 6285
    :cond_1
    if-le v0, v1, :cond_2

    .line 6287
    move-object v2, p0

    .line 6288
    .local v2, "tmp":Ljava/lang/String;
    move-object p0, p1

    .line 6289
    move-object p1, v2

    .line 6290
    move v0, v1

    .line 6291
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 6294
    .end local v2    # "tmp":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [I

    .line 6295
    .local v2, "p":[I
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [I

    .line 6306
    .local v3, "d":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-gt v4, v0, :cond_3

    .line 6307
    aput v4, v2, v4

    .line 6306
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6310
    :cond_3
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_1
    if-gt v5, v1, :cond_6

    .line 6311
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 6312
    .local v6, "t_j":C
    const/4 v7, 0x0

    aput v5, v3, v7

    .line 6314
    const/4 v4, 0x1

    :goto_2
    if-gt v4, v0, :cond_5

    .line 6315
    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v6, :cond_4

    move v8, v7

    goto :goto_3

    :cond_4
    move v8, v9

    .line 6317
    .local v8, "cost":I
    :goto_3
    add-int/lit8 v10, v4, -0x1

    aget v10, v3, v10

    add-int/2addr v10, v9

    aget v11, v2, v4

    add-int/2addr v11, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/lit8 v10, v4, -0x1

    aget v10, v2, v10

    add-int/2addr v10, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    aput v9, v3, v4

    .line 6314
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6321
    .end local v8    # "cost":I
    :cond_5
    move-object v7, v2

    .line 6322
    .local v7, "_d":[I
    move-object v2, v3

    .line 6323
    move-object v3, v7

    .line 6310
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 6328
    .end local v6    # "t_j":C
    .end local v7    # "_d":[I
    :cond_6
    aget v6, v2, v0

    return v6

    .line 6256
    .end local v0    # "n":I
    .end local v1    # "m":I
    .end local v2    # "p":[I
    .end local v3    # "d":[I
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNestedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .line 2360
    invoke-static {p0, p1, p1}, Lorg/apache/commons/lang/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNestedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .line 2390
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrechomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .line 4471
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 4472
    .local v0, "idx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4473
    const-string v1, ""

    return-object v1

    .line 4475
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static indexOf(Ljava/lang/String;C)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C

    .line 711
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    const/4 v0, -0x1

    return v0

    .line 714
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/String;CI)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C
    .param p2, "startPos"    # I

    .line 743
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    const/4 v0, -0x1

    return v0

    .line 746
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .line 773
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 776
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 774
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .line 886
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 890
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 891
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 893
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 887
    :cond_2
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;

    .line 1385
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1388
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->indexOfAny(Ljava/lang/String;[C)I

    move-result v0

    return v0

    .line 1386
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOfAny(Ljava/lang/String;[C)I
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # [C

    .line 1337
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_5

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1340
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1341
    .local v0, "csLen":I
    add-int/lit8 v2, v0, -0x1

    .line 1342
    .local v2, "csLast":I
    array-length v3, p1

    .line 1343
    .local v3, "searchLen":I
    add-int/lit8 v4, v3, -0x1

    .line 1344
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_4

    .line 1345
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1346
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_3

    .line 1347
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_2

    .line 1348
    if-ge v5, v2, :cond_1

    if-ge v7, v4, :cond_1

    invoke-static {v6}, Lorg/apache/commons/lang/CharUtils;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1350
    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_2

    .line 1351
    return v5

    .line 1354
    :cond_1
    return v5

    .line 1346
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1344
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1359
    .end local v5    # "i":I
    :cond_4
    return v1

    .line 1338
    .end local v0    # "csLen":I
    .end local v2    # "csLast":I
    .end local v3    # "searchLen":I
    .end local v4    # "searchLast":I
    :cond_5
    :goto_2
    return v1
.end method

.method public static indexOfAny(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStrs"    # [Ljava/lang/String;

    .line 1753
    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    .line 1756
    :cond_0
    array-length v1, p1

    .line 1759
    .local v1, "sz":I
    const v2, 0x7fffffff

    .line 1761
    .local v2, "ret":I
    const/4 v3, 0x0

    .line 1762
    .local v3, "tmp":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 1763
    aget-object v5, p1, v4

    .line 1764
    .local v5, "search":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 1765
    goto :goto_1

    .line 1767
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1768
    if-ne v3, v0, :cond_2

    .line 1769
    goto :goto_1

    .line 1772
    :cond_2
    if-ge v3, v2, :cond_3

    .line 1773
    move v2, v3

    .line 1762
    .end local v5    # "search":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1777
    .end local v4    # "i":I
    :cond_4
    const v4, 0x7fffffff

    if-ne v2, v4, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    return v0

    .line 1754
    .end local v1    # "sz":I
    .end local v2    # "ret":I
    .end local v3    # "tmp":I
    :cond_6
    :goto_3
    return v0
.end method

.method public static indexOfAnyBut(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;

    .line 1554
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 1557
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1558
    .local v0, "strLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 1559
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1560
    .local v3, "ch":C
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 1561
    .local v4, "chFound":Z
    :goto_1
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v0, :cond_3

    invoke-static {v3}, Lorg/apache/commons/lang/CharUtils;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1562
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1563
    .local v5, "ch2":C
    if-eqz v4, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_2

    .line 1564
    return v2

    .line 1566
    .end local v5    # "ch2":C
    :cond_2
    goto :goto_2

    .line 1567
    :cond_3
    if-nez v4, :cond_4

    .line 1568
    return v2

    .line 1558
    .end local v3    # "ch":C
    .end local v4    # "chFound":Z
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1572
    .end local v2    # "i":I
    :cond_5
    return v1

    .line 1555
    .end local v0    # "strLen":I
    :cond_6
    :goto_3
    return v1
.end method

.method public static indexOfAnyBut(Ljava/lang/String;[C)I
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # [C

    .line 1505
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_5

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1508
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1509
    .local v0, "csLen":I
    add-int/lit8 v2, v0, -0x1

    .line 1510
    .local v2, "csLast":I
    array-length v3, p1

    .line 1511
    .local v3, "searchLen":I
    add-int/lit8 v4, v3, -0x1

    .line 1513
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_4

    .line 1514
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1515
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_3

    .line 1516
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_2

    .line 1517
    if-ge v5, v2, :cond_1

    if-ge v7, v4, :cond_1

    invoke-static {v6}, Lorg/apache/commons/lang/CharUtils;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1518
    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_2

    .line 1513
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1515
    .restart local v6    # "ch":C
    .restart local v7    # "j":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1526
    .end local v7    # "j":I
    :cond_3
    return v5

    .line 1528
    .end local v5    # "i":I
    .end local v6    # "ch":C
    :cond_4
    return v1

    .line 1506
    .end local v0    # "csLen":I
    .end local v2    # "csLast":I
    .end local v3    # "searchLen":I
    .end local v4    # "searchLast":I
    :cond_5
    :goto_2
    return v1
.end method

.method public static indexOfDifference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 6058
    const/4 v0, -0x1

    if-ne p0, p1, :cond_0

    .line 6059
    return v0

    .line 6061
    :cond_0
    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_3

    .line 6065
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 6066
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    .line 6067
    goto :goto_1

    .line 6065
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6070
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    goto :goto_2

    .line 6073
    :cond_4
    return v0

    .line 6071
    :cond_5
    :goto_2
    return v1

    .line 6062
    .end local v1    # "i":I
    :cond_6
    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method public static indexOfDifference([Ljava/lang/String;)I
    .locals 12
    .param p0, "strs"    # [Ljava/lang/String;

    .line 6108
    const/4 v0, -0x1

    if-eqz p0, :cond_b

    array-length v1, p0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_7

    .line 6111
    :cond_0
    const/4 v1, 0x0

    .line 6112
    .local v1, "anyStringNull":Z
    const/4 v2, 0x1

    .line 6113
    .local v2, "allStringsNull":Z
    array-length v3, p0

    .line 6114
    .local v3, "arrayLen":I
    const v4, 0x7fffffff

    .line 6115
    .local v4, "shortestStrLen":I
    const/4 v5, 0x0

    .line 6120
    .local v5, "longestStrLen":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_2

    .line 6121
    aget-object v7, p0, v6

    if-nez v7, :cond_1

    .line 6122
    const/4 v1, 0x1

    .line 6123
    const/4 v4, 0x0

    goto :goto_1

    .line 6125
    :cond_1
    const/4 v2, 0x0

    .line 6126
    aget-object v7, p0, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 6127
    aget-object v7, p0, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 6120
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 6132
    .end local v6    # "i":I
    :cond_2
    if-nez v2, :cond_a

    if-nez v5, :cond_3

    if-nez v1, :cond_3

    goto :goto_6

    .line 6137
    :cond_3
    const/4 v6, 0x0

    if-nez v4, :cond_4

    .line 6138
    return v6

    .line 6142
    :cond_4
    const/4 v7, -0x1

    .line 6143
    .local v7, "firstDiff":I
    const/4 v8, 0x0

    .local v8, "stringPos":I
    :goto_2
    if-ge v8, v4, :cond_8

    .line 6144
    aget-object v9, p0, v6

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 6145
    .local v9, "comparisonChar":C
    const/4 v10, 0x1

    .local v10, "arrayPos":I
    :goto_3
    if-ge v10, v3, :cond_6

    .line 6146
    aget-object v11, p0, v10

    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v9, :cond_5

    .line 6147
    move v7, v8

    .line 6148
    goto :goto_4

    .line 6145
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 6151
    .end local v10    # "arrayPos":I
    :cond_6
    :goto_4
    if-eq v7, v0, :cond_7

    .line 6152
    goto :goto_5

    .line 6143
    .end local v9    # "comparisonChar":C
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 6156
    .end local v8    # "stringPos":I
    :cond_8
    :goto_5
    if-ne v7, v0, :cond_9

    if-eq v4, v5, :cond_9

    .line 6160
    return v4

    .line 6162
    :cond_9
    return v7

    .line 6133
    .end local v7    # "firstDiff":I
    :cond_a
    :goto_6
    return v0

    .line 6109
    .end local v1    # "anyStringNull":Z
    .end local v2    # "allStringsNull":Z
    .end local v3    # "arrayLen":I
    .end local v4    # "shortestStrLen":I
    .end local v5    # "longestStrLen":I
    :cond_b
    :goto_7
    return v0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .line 921
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .line 956
    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 959
    :cond_0
    if-gez p2, :cond_1

    .line 960
    const/4 p2, 0x0

    .line 962
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 963
    .local v1, "endLimit":I
    if-le p2, v1, :cond_2

    .line 964
    return v0

    .line 966
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 967
    return p2

    .line 969
    :cond_3
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 970
    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, p0

    move v5, v2

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 971
    return v2

    .line 969
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 974
    .end local v2    # "i":I
    :cond_5
    return v0

    .line 957
    .end local v1    # "endLimit":I
    :cond_6
    :goto_1
    return v0
.end method

.method public static isAllLowerCase(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 5624
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 5627
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5628
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 5629
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5630
    return v0

    .line 5628
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5633
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 5625
    .end local v1    # "sz":I
    :cond_3
    :goto_1
    return v0
.end method

.method public static isAllUpperCase(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 5655
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 5658
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5659
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 5660
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5661
    return v0

    .line 5659
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5664
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 5656
    .end local v1    # "sz":I
    :cond_3
    :goto_1
    return v0
.end method

.method public static isAlpha(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 5352
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5353
    return v0

    .line 5355
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5356
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 5357
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5358
    return v0

    .line 5356
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5361
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isAlphaSpace(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 5386
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5387
    return v0

    .line 5389
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5390
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 5391
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    .line 5392
    return v0

    .line 5390
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5395
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isAlphanumeric(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 5419
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5420
    return v0

    .line 5422
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5423
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 5424
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5425
    return v0

    .line 5423
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5428
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isAlphanumericSpace(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 5453
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5454
    return v0

    .line 5456
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5457
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 5458
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    .line 5459
    return v0

    .line 5457
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5462
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isAsciiPrintable(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 5491
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5492
    return v0

    .line 5494
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5495
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 5496
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/lang/CharUtils;->isAsciiPrintable(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5497
    return v0

    .line 5495
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5500
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 233
    const/4 v0, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v1

    .local v2, "strLen":I
    if-nez v1, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 237
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 238
    const/4 v0, 0x0

    return v0

    .line 236
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "i":I
    :cond_2
    return v0

    .line 234
    .end local v2    # "strLen":I
    :cond_3
    :goto_1
    return v0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 195
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

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

.method public static isNotBlank(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 261
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 213
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 5525
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5526
    return v0

    .line 5528
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5529
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 5530
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5531
    return v0

    .line 5529
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5534
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isNumericSpace(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 5561
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5562
    return v0

    .line 5564
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5565
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 5566
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    .line 5567
    return v0

    .line 5565
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5570
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isWhitespace(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 5593
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5594
    return v0

    .line 5596
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5597
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 5598
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5599
    return v0

    .line 5597
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5602
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static join(Ljava/util/Collection;C)Ljava/lang/String;
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "separator"    # C

    .line 3420
    if-nez p0, :cond_0

    .line 3421
    const/4 v0, 0x0

    return-object v0

    .line 3423
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "separator"    # Ljava/lang/String;

    .line 3441
    if-nez p0, :cond_0

    .line 3442
    const/4 v0, 0x0

    return-object v0

    .line 3444
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .locals 3
    .param p0, "iterator"    # Ljava/util/Iterator;
    .param p1, "separator"    # C

    .line 3332
    if-nez p0, :cond_0

    .line 3333
    const/4 v0, 0x0

    return-object v0

    .line 3335
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3336
    const-string v0, ""

    return-object v0

    .line 3338
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3339
    .local v0, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3340
    invoke-static {v0}, Lorg/apache/commons/lang/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3344
    :cond_2
    new-instance v1, Lorg/apache/commons/lang/text/StrBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 3345
    .local v1, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    if-eqz v0, :cond_3

    .line 3346
    invoke-virtual {v1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3349
    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3350
    invoke-virtual {v1, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3351
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3352
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 3353
    invoke-virtual {v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3355
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_4
    goto :goto_0

    .line 3357
    :cond_5
    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "iterator"    # Ljava/util/Iterator;
    .param p1, "separator"    # Ljava/lang/String;

    .line 3376
    if-nez p0, :cond_0

    .line 3377
    const/4 v0, 0x0

    return-object v0

    .line 3379
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3380
    const-string v0, ""

    return-object v0

    .line 3382
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3383
    .local v0, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3384
    invoke-static {v0}, Lorg/apache/commons/lang/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3388
    :cond_2
    new-instance v1, Lorg/apache/commons/lang/text/StrBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 3389
    .local v1, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    if-eqz v0, :cond_3

    .line 3390
    invoke-virtual {v1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3393
    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3394
    if-eqz p1, :cond_4

    .line 3395
    invoke-virtual {v1, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3397
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3398
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 3399
    invoke-virtual {v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3401
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_5
    goto :goto_0

    .line 3402
    :cond_6
    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .line 3144
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # C

    .line 3170
    if-nez p0, :cond_0

    .line 3171
    const/4 v0, 0x0

    return-object v0

    .line 3174
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;CII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 3204
    if-nez p0, :cond_0

    .line 3205
    const/4 v0, 0x0

    return-object v0

    .line 3207
    :cond_0
    sub-int v0, p3, p2

    .line 3208
    .local v0, "bufSize":I
    if-gtz v0, :cond_1

    .line 3209
    const-string v1, ""

    return-object v1

    .line 3212
    :cond_1
    aget-object v1, p0, p2

    if-nez v1, :cond_2

    const/16 v1, 0x10

    goto :goto_0

    :cond_2
    aget-object v1, p0, p2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    .line 3213
    new-instance v1, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 3215
    .local v1, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    move v2, p2

    .local v2, "i":I
    :goto_1
    if-ge v2, p3, :cond_5

    .line 3216
    if-le v2, p2, :cond_3

    .line 3217
    invoke-virtual {v1, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3219
    :cond_3
    aget-object v3, p0, v2

    if-eqz v3, :cond_4

    .line 3220
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3215
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3223
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;

    .line 3251
    if-nez p0, :cond_0

    .line 3252
    const/4 v0, 0x0

    return-object v0

    .line 3254
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 3285
    if-nez p0, :cond_0

    .line 3286
    const/4 v0, 0x0

    return-object v0

    .line 3288
    :cond_0
    if-nez p1, :cond_1

    .line 3289
    const-string p1, ""

    .line 3294
    :cond_1
    sub-int v0, p3, p2

    .line 3295
    .local v0, "bufSize":I
    if-gtz v0, :cond_2

    .line 3296
    const-string v1, ""

    return-object v1

    .line 3299
    :cond_2
    aget-object v1, p0, p2

    if-nez v1, :cond_3

    const/16 v1, 0x10

    goto :goto_0

    :cond_3
    aget-object v1, p0, p2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    .line 3302
    new-instance v1, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 3304
    .local v1, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    move v2, p2

    .local v2, "i":I
    :goto_1
    if-ge v2, p3, :cond_6

    .line 3305
    if-le v2, p2, :cond_4

    .line 3306
    invoke-virtual {v1, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3308
    :cond_4
    aget-object v3, p0, v2

    if-eqz v3, :cond_5

    .line 3309
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3304
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3312
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static lastIndexOf(Ljava/lang/String;C)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C

    .line 999
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    const/4 v0, -0x1

    return v0

    .line 1002
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/String;CI)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C
    .param p2, "startPos"    # I

    .line 1033
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    const/4 v0, -0x1

    return v0

    .line 1036
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .line 1062
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1065
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1063
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .line 1134
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1137
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 1135
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static lastIndexOfAny(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStrs"    # [Ljava/lang/String;

    .line 1806
    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 1809
    :cond_0
    array-length v0, p1

    .line 1810
    .local v0, "sz":I
    const/4 v1, -0x1

    .line 1811
    .local v1, "ret":I
    const/4 v2, 0x0

    .line 1812
    .local v2, "tmp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 1813
    aget-object v4, p1, v3

    .line 1814
    .local v4, "search":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1815
    goto :goto_1

    .line 1817
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1818
    if-le v2, v1, :cond_2

    .line 1819
    move v1, v2

    .line 1812
    .end local v4    # "search":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1822
    .end local v3    # "i":I
    :cond_3
    return v1

    .line 1807
    .end local v0    # "sz":I
    .end local v1    # "ret":I
    .end local v2    # "tmp":I
    :cond_4
    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .line 1163
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1166
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->lastIndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 1164
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .line 1198
    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 1201
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_1

    .line 1202
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int p2, v1, v2

    .line 1204
    :cond_1
    if-gez p2, :cond_2

    .line 1205
    return v0

    .line 1207
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1208
    return p2

    .line 1211
    :cond_3
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    .line 1212
    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    move-object v2, p0

    move v4, v1

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1213
    return v1

    .line 1211
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1216
    .end local v1    # "i":I
    :cond_5
    return v0

    .line 1199
    :cond_6
    :goto_1
    return v0
.end method

.method public static lastOrdinalIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    .line 1102
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->ordinalIndexOf(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public static left(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 1962
    if-nez p0, :cond_0

    .line 1963
    const/4 v0, 0x0

    return-object v0

    .line 1965
    :cond_0
    if-gez p1, :cond_1

    .line 1966
    const-string v0, ""

    return-object v0

    .line 1968
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_2

    .line 1969
    return-object p0

    .line 1971
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 4830
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 4855
    if-nez p0, :cond_0

    .line 4856
    const/4 v0, 0x0

    return-object v0

    .line 4858
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 4859
    .local v0, "pads":I
    if-gtz v0, :cond_1

    .line 4860
    return-object p0

    .line 4862
    :cond_1
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 4863
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4865
    :cond_2
    invoke-static {v0, p2}, Lorg/apache/commons/lang/StringUtils;->padding(IC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 4892
    if-nez p0, :cond_0

    .line 4893
    const/4 v0, 0x0

    return-object v0

    .line 4895
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4896
    const-string p2, " "

    .line 4898
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 4899
    .local v0, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4900
    .local v1, "strLen":I
    sub-int v2, p1, v1

    .line 4901
    .local v2, "pads":I
    if-gtz v2, :cond_2

    .line 4902
    return-object p0

    .line 4904
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const/16 v4, 0x2000

    if-gt v2, v4, :cond_3

    .line 4905
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {p0, p1, v3}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4908
    :cond_3
    if-ne v2, v0, :cond_4

    .line 4909
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4910
    :cond_4
    if-ge v2, v0, :cond_5

    .line 4911
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4913
    :cond_5
    new-array v3, v2, [C

    .line 4914
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 4915
    .local v4, "padChars":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_6

    .line 4916
    rem-int v6, v5, v0

    aget-char v6, v4, v6

    aput-char v6, v3, v5

    .line 4915
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4918
    .end local v5    # "i":I
    :cond_6
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static length(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 4931
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 5115
    if-nez p0, :cond_0

    .line 5116
    const/4 v0, 0x0

    return-object v0

    .line 5118
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 5138
    if-nez p0, :cond_0

    .line 5139
    const/4 v0, 0x0

    return-object v0

    .line 5141
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mid(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "len"    # I

    .line 2033
    if-nez p0, :cond_0

    .line 2034
    const/4 v0, 0x0

    return-object v0

    .line 2036
    :cond_0
    if-ltz p2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 2039
    :cond_1
    if-gez p1, :cond_2

    .line 2040
    const/4 p1, 0x0

    .line 2042
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, p2

    if-gt v0, v1, :cond_3

    .line 2043
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2045
    :cond_3
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2037
    :cond_4
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static normalizeSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 6545
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6546
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    goto :goto_2

    .line 6549
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 6550
    .local v0, "b":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 6551
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 6552
    .local v2, "c":C
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6553
    if-lez v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6554
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_1

    .line 6557
    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 6550
    .end local v2    # "c":C
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6560
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6547
    .end local v0    # "b":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_4
    :goto_2
    return-object p0
.end method

.method public static ordinalIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    .line 813
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->ordinalIndexOf(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method private static ordinalIndexOf(Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "ordinal"    # I
    .param p3, "lastIndex"    # Z

    .line 831
    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    if-gtz p2, :cond_0

    goto :goto_2

    .line 834
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 835
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 837
    :cond_2
    const/4 v1, 0x0

    .line 838
    .local v1, "found":I
    if-eqz p3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 840
    .local v0, "index":I
    :cond_3
    if-eqz p3, :cond_4

    .line 841
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 843
    :cond_4
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 845
    :goto_1
    if-gez v0, :cond_5

    .line 846
    return v0

    .line 848
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 849
    if-lt v1, p2, :cond_3

    .line 850
    return v0

    .line 832
    .end local v0    # "index":I
    .end local v1    # "found":I
    :cond_6
    :goto_2
    return v0
.end method

.method public static overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "overlay"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 4261
    if-nez p0, :cond_0

    .line 4262
    const/4 v0, 0x0

    return-object v0

    .line 4264
    :cond_0
    if-nez p1, :cond_1

    .line 4265
    const-string p1, ""

    .line 4267
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4268
    .local v0, "len":I
    if-gez p2, :cond_2

    .line 4269
    const/4 p2, 0x0

    .line 4271
    :cond_2
    if-le p2, v0, :cond_3

    .line 4272
    move p2, v0

    .line 4274
    :cond_3
    if-gez p3, :cond_4

    .line 4275
    const/4 p3, 0x0

    .line 4277
    :cond_4
    if-le p3, v0, :cond_5

    .line 4278
    move p3, v0

    .line 4280
    :cond_5
    if-le p2, p3, :cond_6

    .line 4281
    move v1, p2

    .line 4282
    .local v1, "temp":I
    move p2, p3

    .line 4283
    move p3, v1

    .line 4285
    .end local v1    # "temp":I
    :cond_6
    new-instance v1, Lorg/apache/commons/lang/text/StrBuilder;

    add-int v2, v0, p2

    sub-int/2addr v2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static overlayString(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "overlay"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 4224
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static padding(IC)Ljava/lang/String;
    .locals 3
    .param p0, "repeat"    # I
    .param p1, "padChar"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 4688
    if-ltz p0, :cond_1

    .line 4691
    new-array v0, p0, [C

    .line 4692
    .local v0, "buf":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 4693
    aput-char p1, v0, v1

    .line 4692
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4695
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 4689
    .end local v0    # "buf":[C
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot pad a negative amount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static prechomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .line 4451
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 4452
    .local v0, "idx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4453
    return-object p0

    .line 4455
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # C

    .line 3705
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 3708
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3709
    .local v0, "chars":[C
    const/4 v1, 0x0

    .line 3710
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 3711
    aget-char v3, v0, v2

    if-eq v3, p1, :cond_1

    .line 3712
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pos":I
    .local v3, "pos":I
    aget-char v4, v0, v2

    aput-char v4, v0, v1

    move v1, v3

    .line 3710
    .end local v3    # "pos":I
    .restart local v1    # "pos":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3715
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 3706
    .end local v0    # "chars":[C
    .end local v1    # "pos":I
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3679
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3682
    :cond_0
    const/4 v0, -0x1

    const-string v1, ""

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3680
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3610
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3613
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3614
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3616
    :cond_1
    return-object p0

    .line 3611
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3646
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3649
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3650
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3652
    :cond_1
    return-object p0

    .line 3647
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3541
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3544
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3545
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3547
    :cond_1
    return-object p0

    .line 3542
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3576
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3579
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3580
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3582
    :cond_1
    return-object p0

    .line 3577
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "repeat"    # I

    .line 4593
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 4594
    return-object v0

    .line 4596
    :cond_0
    if-gtz p1, :cond_1

    .line 4597
    const-string v0, ""

    return-object v0

    .line 4599
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4600
    .local v1, "inputLength":I
    const/4 v2, 0x1

    if-eq p1, v2, :cond_7

    if-nez v1, :cond_2

    goto :goto_3

    .line 4603
    :cond_2
    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    const/16 v4, 0x2000

    if-gt p1, v4, :cond_3

    .line 4604
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang/StringUtils;->padding(IC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4607
    :cond_3
    mul-int v4, v1, p1

    .line 4608
    .local v4, "outputLength":I
    packed-switch v1, :pswitch_data_0

    move v2, v3

    .local v2, "ch0":C
    move v5, v3

    .local v5, "ch":C
    move-object v6, v0

    .line 4626
    .local v0, "output1":[C
    .local v3, "ch1":C
    .local v6, "output2":[C
    new-instance v7, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v7, v4}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 4627
    .local v7, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v8, 0x0

    .local v8, "i":I
    goto :goto_2

    .line 4608
    .end local v0    # "output1":[C
    .end local v2    # "ch0":C
    .end local v3    # "ch1":C
    .end local v5    # "ch":C
    .end local v6    # "output2":[C
    .end local v7    # "buf":Lorg/apache/commons/lang/text/StrBuilder;
    .end local v8    # "i":I
    :pswitch_0
    move v5, v3

    .line 4617
    .restart local v0    # "output1":[C
    .restart local v5    # "ch":C
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4618
    .local v3, "ch0":C
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4619
    .local v2, "ch1":C
    new-array v6, v4, [C

    .line 4620
    .restart local v6    # "output2":[C
    mul-int/lit8 v7, p1, 0x2

    add-int/lit8 v7, v7, -0x2

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_4

    .line 4621
    aput-char v3, v6, v7

    .line 4622
    add-int/lit8 v8, v7, 0x1

    aput-char v2, v6, v8

    .line 4620
    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 4624
    .end local v7    # "i":I
    :cond_4
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([C)V

    return-object v7

    .line 4610
    .end local v0    # "output1":[C
    .end local v2    # "ch1":C
    .end local v3    # "ch0":C
    .end local v5    # "ch":C
    .end local v6    # "output2":[C
    :pswitch_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4611
    .local v0, "ch":C
    new-array v2, v4, [C

    .line 4612
    .local v2, "output1":[C
    add-int/lit8 v3, p1, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 4613
    aput-char v0, v2, v3

    .line 4612
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 4615
    .end local v3    # "i":I
    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 4627
    .local v0, "output1":[C
    .local v2, "ch0":C
    .local v3, "ch1":C
    .restart local v5    # "ch":C
    .restart local v6    # "output2":[C
    .local v7, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    .restart local v8    # "i":I
    :goto_2
    if-ge v8, p1, :cond_6

    .line 4628
    invoke-virtual {v7, p0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 4627
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 4630
    .end local v8    # "i":I
    :cond_6
    invoke-virtual {v7}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 4601
    .end local v0    # "output1":[C
    .end local v2    # "ch0":C
    .end local v3    # "ch1":C
    .end local v4    # "outputLength":I
    .end local v5    # "ch":C
    .end local v6    # "output2":[C
    .end local v7    # "buf":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_7
    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "repeat"    # I

    .line 4655
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4659
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4660
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/apache/commons/lang/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4656
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {p0, p2}, Lorg/apache/commons/lang/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 3771
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "max"    # I

    .line 3803
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto :goto_4

    .line 3806
    :cond_0
    const/4 v0, 0x0

    .line 3807
    .local v0, "start":I
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 3808
    .local v1, "end":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3809
    return-object p0

    .line 3811
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 3812
    .local v3, "replLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 3813
    .local v4, "increase":I
    if-gez v4, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    move v4, v5

    .line 3814
    const/16 v5, 0x40

    if-gez p3, :cond_3

    const/16 v5, 0x10

    goto :goto_1

    :cond_3
    if-le p3, v5, :cond_4

    goto :goto_1

    :cond_4
    move v5, p3

    :goto_1
    mul-int/2addr v4, v5

    .line 3815
    new-instance v5, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-direct {v5, v6}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 3816
    .local v5, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    :goto_2
    if-eq v1, v2, :cond_6

    .line 3817
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3818
    add-int v0, v1, v3

    .line 3819
    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_5

    .line 3820
    goto :goto_3

    .line 3822
    :cond_5
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2

    .line 3824
    :cond_6
    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 3825
    invoke-virtual {v5}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3804
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v3    # "replLength":I
    .end local v4    # "increase":I
    .end local v5    # "buf":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_7
    :goto_4
    return-object p0
.end method

.method public static replaceChars(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C
    .param p2, "replaceChar"    # C

    .line 4125
    if-nez p0, :cond_0

    .line 4126
    const/4 v0, 0x0

    return-object v0

    .line 4128
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;
    .param p2, "replaceChars"    # Ljava/lang/String;

    .line 4168
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 4171
    :cond_0
    if-nez p2, :cond_1

    .line 4172
    const-string p2, ""

    .line 4174
    :cond_1
    const/4 v0, 0x0

    .line 4175
    .local v0, "modified":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 4176
    .local v1, "replaceCharsLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 4177
    .local v2, "strLength":I
    new-instance v3, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v3, v2}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 4178
    .local v3, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 4179
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 4180
    .local v5, "ch":C
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 4181
    .local v6, "index":I
    if-ltz v6, :cond_2

    .line 4182
    const/4 v0, 0x1

    .line 4183
    if-ge v6, v1, :cond_3

    .line 4184
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v3, v7}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_1

    .line 4187
    :cond_2
    invoke-virtual {v3, v5}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 4178
    .end local v5    # "ch":C
    .end local v6    # "index":I
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4190
    .end local v4    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 4191
    invoke-virtual {v3}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 4193
    :cond_5
    return-object p0

    .line 4169
    .end local v0    # "modified":Z
    .end local v1    # "replaceCharsLength":I
    .end local v2    # "strLength":I
    .end local v3    # "buf":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_6
    :goto_2
    return-object p0
.end method

.method public static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .line 3868
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 18
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;
    .param p3, "repeat"    # Z
    .param p4, "timeToLive"    # I

    .line 3978
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    if-eqz v0, :cond_16

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_16

    if-eqz v1, :cond_16

    array-length v5, v1

    if-eqz v5, :cond_16

    if-eqz v2, :cond_16

    array-length v5, v2

    if-nez v5, :cond_0

    goto/16 :goto_9

    .line 3985
    :cond_0
    if-ltz v4, :cond_15

    .line 3989
    array-length v5, v1

    .line 3990
    .local v5, "searchLength":I
    array-length v6, v2

    .line 3993
    .local v6, "replacementLength":I
    if-ne v5, v6, :cond_14

    .line 4001
    new-array v7, v5, [Z

    .line 4004
    .local v7, "noMoreMatchesForReplIndex":[Z
    const/4 v8, -0x1

    .line 4005
    .local v8, "textIndex":I
    const/4 v9, -0x1

    .line 4006
    .local v9, "replaceIndex":I
    const/4 v10, -0x1

    .line 4010
    .local v10, "tempIndex":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ge v11, v5, :cond_5

    .line 4011
    aget-boolean v14, v7, v11

    if-nez v14, :cond_4

    aget-object v14, v1, v11

    if-eqz v14, :cond_4

    aget-object v14, v1, v11

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_4

    aget-object v14, v2, v11

    if-nez v14, :cond_1

    .line 4014
    goto :goto_1

    .line 4016
    :cond_1
    aget-object v14, v1, v11

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 4019
    if-ne v10, v12, :cond_2

    .line 4020
    aput-boolean v13, v7, v11

    goto :goto_1

    .line 4022
    :cond_2
    if-eq v8, v12, :cond_3

    if-ge v10, v8, :cond_4

    .line 4023
    :cond_3
    move v8, v10

    .line 4024
    move v9, v11

    .line 4010
    :cond_4
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 4031
    .end local v11    # "i":I
    :cond_5
    if-ne v8, v12, :cond_6

    .line 4032
    return-object v0

    .line 4035
    :cond_6
    const/4 v11, 0x0

    .line 4038
    .local v11, "start":I
    const/4 v14, 0x0

    .line 4041
    .local v14, "increase":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    array-length v13, v1

    if-ge v15, v13, :cond_9

    .line 4042
    aget-object v13, v1, v15

    if-eqz v13, :cond_8

    aget-object v13, v2, v15

    if-nez v13, :cond_7

    .line 4043
    goto :goto_3

    .line 4045
    :cond_7
    aget-object v13, v2, v15

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    aget-object v17, v1, v15

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v13, v13, v17

    .line 4046
    .local v13, "greater":I
    if-lez v13, :cond_8

    .line 4047
    mul-int/lit8 v17, v13, 0x3

    add-int v14, v14, v17

    .line 4041
    .end local v13    # "greater":I
    :cond_8
    :goto_3
    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x1

    goto :goto_2

    .line 4051
    .end local v15    # "i":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    div-int/lit8 v13, v13, 0x5

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 4053
    .end local v14    # "increase":I
    .local v13, "increase":I
    new-instance v14, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v13

    invoke-direct {v14, v15}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 4055
    .local v14, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    :goto_4
    if-eq v8, v12, :cond_11

    .line 4057
    move v15, v11

    .restart local v15    # "i":I
    :goto_5
    if-ge v15, v8, :cond_a

    .line 4058
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v14, v12}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 4057
    add-int/lit8 v15, v15, 0x1

    const/4 v12, -0x1

    goto :goto_5

    .line 4060
    .end local v15    # "i":I
    :cond_a
    aget-object v12, v2, v9

    invoke-virtual {v14, v12}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 4062
    aget-object v12, v1, v9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int v11, v8, v12

    .line 4064
    const/4 v8, -0x1

    .line 4065
    const/4 v9, -0x1

    .line 4066
    const/4 v10, -0x1

    .line 4069
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_6
    if-ge v12, v5, :cond_10

    .line 4070
    aget-boolean v15, v7, v12

    if-nez v15, :cond_e

    aget-object v15, v1, v12

    if-eqz v15, :cond_e

    aget-object v15, v1, v12

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_e

    aget-object v15, v2, v12

    if-nez v15, :cond_b

    .line 4073
    const/4 v15, -0x1

    const/16 v16, 0x1

    goto :goto_7

    .line 4075
    :cond_b
    aget-object v15, v1, v12

    invoke-virtual {v0, v15, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 4078
    const/4 v15, -0x1

    if-ne v10, v15, :cond_c

    .line 4079
    const/16 v16, 0x1

    aput-boolean v16, v7, v12

    goto :goto_7

    .line 4081
    :cond_c
    const/16 v16, 0x1

    if-eq v8, v15, :cond_d

    if-ge v10, v8, :cond_f

    .line 4082
    :cond_d
    move v8, v10

    .line 4083
    move v9, v12

    goto :goto_7

    .line 4070
    :cond_e
    const/4 v15, -0x1

    const/16 v16, 0x1

    .line 4069
    :cond_f
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_10
    const/4 v15, -0x1

    const/16 v16, 0x1

    move v12, v15

    .end local v12    # "i":I
    goto :goto_4

    .line 4090
    :cond_11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    .line 4091
    .local v12, "textLength":I
    move v15, v11

    .restart local v15    # "i":I
    :goto_8
    if-ge v15, v12, :cond_12

    .line 4092
    move-object/from16 v16, v7

    .end local v7    # "noMoreMatchesForReplIndex":[Z
    .local v16, "noMoreMatchesForReplIndex":[Z
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v14, v7}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 4091
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v16

    goto :goto_8

    .end local v16    # "noMoreMatchesForReplIndex":[Z
    .restart local v7    # "noMoreMatchesForReplIndex":[Z
    :cond_12
    move-object/from16 v16, v7

    .line 4094
    .end local v7    # "noMoreMatchesForReplIndex":[Z
    .end local v15    # "i":I
    .restart local v16    # "noMoreMatchesForReplIndex":[Z
    invoke-virtual {v14}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4095
    .local v7, "result":Ljava/lang/String;
    if-nez v3, :cond_13

    .line 4096
    return-object v7

    .line 4099
    :cond_13
    add-int/lit8 v15, v4, -0x1

    invoke-static {v7, v1, v2, v3, v15}, Lorg/apache/commons/lang/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 3994
    .end local v7    # "result":Ljava/lang/String;
    .end local v8    # "textIndex":I
    .end local v9    # "replaceIndex":I
    .end local v10    # "tempIndex":I
    .end local v11    # "start":I
    .end local v12    # "textLength":I
    .end local v13    # "increase":I
    .end local v14    # "buf":Lorg/apache/commons/lang/text/StrBuilder;
    .end local v16    # "noMoreMatchesForReplIndex":[Z
    :cond_14
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Search and Replace array lengths don\'t match: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " vs "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3986
    .end local v5    # "searchLength":I
    .end local v6    # "replacementLength":I
    :cond_15
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "TimeToLive of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " is less than 0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3981
    :cond_16
    :goto_9
    return-object v0
.end method

.method public static replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .line 3919
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p1

    .line 3920
    .local v0, "timeToLive":I
    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 3744
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 5770
    if-nez p0, :cond_0

    .line 5771
    const/4 v0, 0x0

    return-object v0

    .line 5773
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->reverse()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 5796
    if-nez p0, :cond_0

    .line 5797
    const/4 v0, 0x0

    return-object v0

    .line 5801
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 5802
    .local v0, "strs":[Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang/ArrayUtils;->reverse([Ljava/lang/Object;)V

    .line 5803
    invoke-static {v0, p1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static reverseDelimitedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .line 5829
    if-nez p0, :cond_0

    .line 5830
    const/4 v0, 0x0

    return-object v0

    .line 5834
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5835
    .local v0, "strs":[Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang/ArrayUtils;->reverse([Ljava/lang/Object;)V

    .line 5836
    if-nez p1, :cond_1

    .line 5837
    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5839
    :cond_1
    invoke-static {v0, p1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static right(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 1995
    if-nez p0, :cond_0

    .line 1996
    const/4 v0, 0x0

    return-object v0

    .line 1998
    :cond_0
    if-gez p1, :cond_1

    .line 1999
    const-string v0, ""

    return-object v0

    .line 2001
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_2

    .line 2002
    return-object p0

    .line 2004
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 4718
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 4743
    if-nez p0, :cond_0

    .line 4744
    const/4 v0, 0x0

    return-object v0

    .line 4746
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 4747
    .local v0, "pads":I
    if-gtz v0, :cond_1

    .line 4748
    return-object p0

    .line 4750
    :cond_1
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 4751
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4753
    :cond_2
    invoke-static {v0, p2}, Lorg/apache/commons/lang/StringUtils;->padding(IC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 4780
    if-nez p0, :cond_0

    .line 4781
    const/4 v0, 0x0

    return-object v0

    .line 4783
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4784
    const-string p2, " "

    .line 4786
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 4787
    .local v0, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4788
    .local v1, "strLen":I
    sub-int v2, p1, v1

    .line 4789
    .local v2, "pads":I
    if-gtz v2, :cond_2

    .line 4790
    return-object p0

    .line 4792
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const/16 v4, 0x2000

    if-gt v2, v4, :cond_3

    .line 4793
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {p0, p1, v3}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4796
    :cond_3
    if-ne v2, v0, :cond_4

    .line 4797
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4798
    :cond_4
    if-ge v2, v0, :cond_5

    .line 4799
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4801
    :cond_5
    new-array v3, v2, [C

    .line 4802
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 4803
    .local v4, "padChars":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_6

    .line 4804
    rem-int v6, v5, v0

    aget-char v6, v4, v6

    aput-char v6, v3, v5

    .line 4803
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4806
    .end local v5    # "i":I
    :cond_6
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 2418
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 2446
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .line 2475
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 2509
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 3020
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "camelCase"    # Z

    .line 3066
    if-nez p0, :cond_0

    .line 3067
    const/4 v0, 0x0

    return-object v0

    .line 3069
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 3070
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 3072
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3073
    .local v0, "c":[C
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3074
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x0

    .line 3075
    .local v2, "tokenStart":I
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v3

    .line 3076
    .local v3, "currentType":I
    add-int/lit8 v4, v2, 0x1

    .local v4, "pos":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 3077
    aget-char v5, v0, v4

    invoke-static {v5}, Ljava/lang/Character;->getType(C)I

    move-result v5

    .line 3078
    .local v5, "type":I
    if-ne v5, v3, :cond_2

    .line 3079
    goto :goto_2

    .line 3081
    :cond_2
    if-eqz p1, :cond_4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    const/4 v6, 0x1

    if-ne v3, v6, :cond_4

    .line 3082
    add-int/lit8 v6, v4, -0x1

    .line 3083
    .local v6, "newTokenStart":I
    if-eq v6, v2, :cond_3

    .line 3084
    new-instance v7, Ljava/lang/String;

    sub-int v8, v6, v2

    invoke-direct {v7, v0, v2, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3085
    move v2, v6

    .line 3087
    .end local v6    # "newTokenStart":I
    :cond_3
    goto :goto_1

    .line 3088
    :cond_4
    new-instance v6, Ljava/lang/String;

    sub-int v7, v4, v2

    invoke-direct {v6, v0, v2, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3089
    move v2, v4

    .line 3091
    :goto_1
    move v3, v5

    .line 3076
    .end local v5    # "type":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3093
    .end local v4    # "pos":I
    :cond_5
    new-instance v4, Ljava/lang/String;

    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-direct {v4, v0, v2, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3094
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public static splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 3048
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2536
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 2567
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2596
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 2629
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .line 2649
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2650
    return-object v0

    .line 2653
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2655
    .local v1, "len":I
    if-nez v1, :cond_1

    .line 2656
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 2659
    :cond_1
    if-eqz p1, :cond_9

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 2664
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2666
    .local v0, "separatorLength":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2667
    .local v3, "substrings":Ljava/util/ArrayList;
    const/4 v4, 0x0

    .line 2668
    .local v4, "numberOfSubstrings":I
    const/4 v5, 0x0

    .line 2669
    .local v5, "beg":I
    const/4 v6, 0x0

    .line 2670
    .local v6, "end":I
    :goto_0
    if-ge v6, v1, :cond_8

    .line 2671
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 2673
    const/4 v7, -0x1

    if-le v6, v7, :cond_7

    .line 2674
    if-le v6, v5, :cond_4

    .line 2675
    add-int/lit8 v4, v4, 0x1

    .line 2677
    if-ne v4, p2, :cond_3

    .line 2678
    move v6, v1

    .line 2679
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2683
    :cond_3
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2688
    add-int v5, v6, v0

    goto :goto_0

    .line 2692
    :cond_4
    if-eqz p3, :cond_6

    .line 2693
    add-int/lit8 v4, v4, 0x1

    .line 2694
    if-ne v4, p2, :cond_5

    .line 2695
    move v6, v1

    .line 2696
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2698
    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2701
    :cond_6
    :goto_1
    add-int v5, v6, v0

    goto :goto_0

    .line 2705
    :cond_7
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2706
    move v6, v1

    goto :goto_0

    .line 2710
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 2661
    .end local v0    # "separatorLength":I
    .end local v3    # "substrings":Ljava/util/ArrayList;
    .end local v4    # "numberOfSubstrings":I
    .end local v5    # "beg":I
    .end local v6    # "end":I
    :cond_9
    :goto_2
    invoke-static {p0, v0, p2, p3}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 2739
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 2775
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .line 2858
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 2898
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C
    .param p2, "preserveAllTokens"    # Z

    .line 2793
    if-nez p0, :cond_0

    .line 2794
    const/4 v0, 0x0

    return-object v0

    .line 2796
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2797
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 2798
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v1

    .line 2800
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2801
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .line 2802
    .local v3, "start":I
    const/4 v4, 0x0

    .line 2803
    .local v4, "match":Z
    const/4 v5, 0x0

    .line 2804
    .local v5, "lastMatch":Z
    :goto_0
    if-ge v2, v0, :cond_5

    .line 2805
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_4

    .line 2806
    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    .line 2807
    :cond_2
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2808
    const/4 v4, 0x0

    .line 2809
    const/4 v5, 0x1

    .line 2811
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 2812
    goto :goto_0

    .line 2814
    :cond_4
    const/4 v5, 0x0

    .line 2815
    const/4 v4, 0x1

    .line 2816
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2818
    :cond_5
    if-nez v4, :cond_6

    if-eqz p2, :cond_7

    if-eqz v5, :cond_7

    .line 2819
    :cond_6
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2821
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method private static splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .line 2920
    if-nez p0, :cond_0

    .line 2921
    const/4 v0, 0x0

    return-object v0

    .line 2923
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2924
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 2925
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v1

    .line 2927
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2928
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x1

    .line 2929
    .local v2, "sizePlus1":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .line 2930
    .local v4, "start":I
    const/4 v5, 0x0

    .line 2931
    .local v5, "match":Z
    const/4 v6, 0x0

    .line 2932
    .local v6, "lastMatch":Z
    const/4 v7, 0x1

    if-nez p1, :cond_6

    .line 2934
    :goto_0
    if-ge v3, v0, :cond_11

    .line 2935
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2936
    if-nez v5, :cond_2

    if-eqz p3, :cond_4

    .line 2937
    :cond_2
    const/4 v6, 0x1

    .line 2938
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "sizePlus1":I
    .local v8, "sizePlus1":I
    if-ne v2, p2, :cond_3

    .line 2939
    move v2, v0

    .line 2940
    .end local v3    # "i":I
    .local v2, "i":I
    const/4 v6, 0x0

    move v3, v2

    .line 2942
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_3
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2943
    const/4 v2, 0x0

    move v5, v2

    move v2, v8

    .line 2945
    .end local v8    # "sizePlus1":I
    .local v2, "sizePlus1":I
    :cond_4
    add-int/2addr v3, v7

    move v4, v3

    .line 2946
    goto :goto_0

    .line 2948
    :cond_5
    const/4 v6, 0x0

    .line 2949
    const/4 v5, 0x1

    .line 2950
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2952
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v7, :cond_c

    .line 2954
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2955
    .local v8, "sep":C
    :goto_1
    if-ge v3, v0, :cond_b

    .line 2956
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_a

    .line 2957
    if-nez v5, :cond_7

    if-eqz p3, :cond_9

    .line 2958
    :cond_7
    const/4 v6, 0x1

    .line 2959
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "sizePlus1":I
    .local v9, "sizePlus1":I
    if-ne v2, p2, :cond_8

    .line 2960
    move v2, v0

    .line 2961
    .end local v3    # "i":I
    .local v2, "i":I
    const/4 v6, 0x0

    move v3, v2

    .line 2963
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_8
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2964
    const/4 v2, 0x0

    move v5, v2

    move v2, v9

    .line 2966
    .end local v9    # "sizePlus1":I
    .local v2, "sizePlus1":I
    :cond_9
    add-int/2addr v3, v7

    move v4, v3

    .line 2967
    goto :goto_1

    .line 2969
    :cond_a
    const/4 v6, 0x0

    .line 2970
    const/4 v5, 0x1

    .line 2971
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2973
    .end local v8    # "sep":C
    :cond_b
    goto :goto_3

    .line 2975
    :cond_c
    :goto_2
    if-ge v3, v0, :cond_11

    .line 2976
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_10

    .line 2977
    if-nez v5, :cond_d

    if-eqz p3, :cond_f

    .line 2978
    :cond_d
    const/4 v6, 0x1

    .line 2979
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "sizePlus1":I
    .local v8, "sizePlus1":I
    if-ne v2, p2, :cond_e

    .line 2980
    move v2, v0

    .line 2981
    .end local v3    # "i":I
    .local v2, "i":I
    const/4 v6, 0x0

    move v3, v2

    .line 2983
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_e
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2984
    const/4 v2, 0x0

    move v5, v2

    move v2, v8

    .line 2986
    .end local v8    # "sizePlus1":I
    .local v2, "sizePlus1":I
    :cond_f
    add-int/2addr v3, v7

    move v4, v3

    .line 2987
    goto :goto_2

    .line 2989
    :cond_10
    const/4 v6, 0x0

    .line 2990
    const/4 v5, 0x1

    .line 2991
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2994
    :cond_11
    :goto_3
    if-nez v5, :cond_12

    if-eqz p3, :cond_13

    if-eqz v6, :cond_13

    .line 2995
    :cond_12
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2997
    :cond_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method public static startsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 6356
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .line 6396
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 6399
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 6400
    return v0

    .line 6402
    :cond_1
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, p0

    move v4, p2

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    .line 6397
    :cond_2
    :goto_0
    if-nez p0, :cond_3

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static startsWithAny(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "searchStrings"    # [Ljava/lang/String;

    .line 6425
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 6428
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 6429
    aget-object v2, p1, v0

    .line 6430
    .local v2, "searchString":Ljava/lang/String;
    invoke-static {p0, v2}, Lorg/apache/commons/lang/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6431
    const/4 v1, 0x1

    return v1

    .line 6428
    .end local v2    # "searchString":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6434
    .end local v0    # "i":I
    :cond_2
    return v1

    .line 6426
    :cond_3
    :goto_1
    return v1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 6381
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 393
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 480
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    return-object p0

    .line 483
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 484
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAll([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "strs"    # [Ljava/lang/String;

    .line 598
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "strs"    # [Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 628
    if-eqz p0, :cond_2

    array-length v0, p0

    move v1, v0

    .local v1, "strsLen":I
    if-nez v0, :cond_0

    goto :goto_1

    .line 631
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    .line 632
    .local v0, "newArr":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 633
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 632
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 635
    .end local v2    # "i":I
    :cond_1
    return-object v0

    .line 629
    .end local v0    # "newArr":[Ljava/lang/String;
    .end local v1    # "strsLen":I
    :cond_2
    :goto_1
    return-object p0
.end method

.method public static stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 558
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "end":I
    if-nez v0, :cond_0

    goto :goto_2

    .line 562
    :cond_0
    if-nez p1, :cond_1

    .line 563
    :goto_0
    if-eqz v1, :cond_3

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 564
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 566
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 567
    return-object p0

    .line 569
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 570
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 573
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 559
    .end local v1    # "end":I
    :cond_4
    :goto_2
    return-object p0
.end method

.method public static stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 513
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "strLen":I
    if-nez v0, :cond_0

    goto :goto_2

    .line 516
    :cond_0
    const/4 v0, 0x0

    .line 517
    .local v0, "start":I
    if-nez p1, :cond_1

    .line 518
    :goto_0
    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 522
    return-object p0

    .line 524
    :cond_2
    :goto_1
    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 528
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 514
    .end local v0    # "start":I
    .end local v1    # "strLen":I
    :cond_4
    :goto_2
    return-object p0
.end method

.method public static stripToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 450
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stripToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 420
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 421
    return-object v0

    .line 423
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 424
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I

    .line 1852
    if-nez p0, :cond_0

    .line 1853
    const/4 v0, 0x0

    return-object v0

    .line 1857
    :cond_0
    if-gez p1, :cond_1

    .line 1858
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 1861
    :cond_1
    if-gez p1, :cond_2

    .line 1862
    const/4 p1, 0x0

    .line 1864
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 1865
    const-string v0, ""

    return-object v0

    .line 1868
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1907
    if-nez p0, :cond_0

    .line 1908
    const/4 v0, 0x0

    return-object v0

    .line 1912
    :cond_0
    if-gez p2, :cond_1

    .line 1913
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    .line 1915
    :cond_1
    if-gez p1, :cond_2

    .line 1916
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 1920
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 1921
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 1925
    :cond_3
    if-le p1, p2, :cond_4

    .line 1926
    const-string v0, ""

    return-object v0

    .line 1929
    :cond_4
    if-gez p1, :cond_5

    .line 1930
    const/4 p1, 0x0

    .line 1932
    :cond_5
    if-gez p2, :cond_6

    .line 1933
    const/4 p2, 0x0

    .line 1936
    :cond_6
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2120
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2121
    return-object p0

    .line 2123
    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    .line 2124
    return-object v0

    .line 2126
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2127
    .local v1, "pos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 2128
    return-object v0

    .line 2130
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2201
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2202
    return-object p0

    .line 2204
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 2205
    return-object v1

    .line 2207
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2208
    .local v0, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 2211
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2209
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2078
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 2081
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2082
    const-string v0, ""

    return-object v0

    .line 2084
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2085
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2086
    return-object p0

    .line 2088
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2079
    .end local v0    # "pos":I
    :cond_3
    :goto_0
    return-object p0
.end method

.method public static substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2161
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2164
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2165
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2166
    return-object p0

    .line 2168
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2162
    .end local v0    # "pos":I
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .line 2238
    invoke-static {p0, p1, p1}, Lorg/apache/commons/lang/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .line 2269
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2272
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2273
    .local v1, "start":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2274
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 2275
    .local v3, "end":I
    if-eq v3, v2, :cond_1

    .line 2276
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2279
    .end local v3    # "end":I
    :cond_1
    return-object v0

    .line 2270
    .end local v1    # "start":I
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .line 2305
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2308
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2309
    .local v1, "strLen":I
    if-nez v1, :cond_1

    .line 2310
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 2312
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2313
    .local v2, "closeLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2314
    .local v3, "openLen":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2315
    .local v4, "list":Ljava/util/List;
    const/4 v5, 0x0

    .line 2316
    .local v5, "pos":I
    :goto_0
    sub-int v6, v1, v2

    if-ge v5, v6, :cond_4

    .line 2317
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 2318
    .local v6, "start":I
    if-gez v6, :cond_2

    .line 2319
    goto :goto_1

    .line 2321
    :cond_2
    add-int/2addr v6, v3

    .line 2322
    invoke-virtual {p0, p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 2323
    .local v7, "end":I
    if-gez v7, :cond_3

    .line 2324
    goto :goto_1

    .line 2326
    :cond_3
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2327
    add-int v5, v7, v2

    .line 2328
    .end local v6    # "start":I
    .end local v7    # "end":I
    goto :goto_0

    .line 2329
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2330
    return-object v0

    .line 2332
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 2306
    .end local v1    # "strLen":I
    .end local v2    # "closeLen":I
    .end local v3    # "openLen":I
    .end local v4    # "list":Ljava/util/List;
    .end local v5    # "pos":I
    :cond_6
    :goto_2
    return-object v0
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 5261
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "strLen":I
    if-nez v0, :cond_0

    goto :goto_2

    .line 5264
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 5266
    .local v0, "buffer":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v2, 0x0

    .line 5267
    .local v2, "ch":C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 5268
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 5269
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5270
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    goto :goto_1

    .line 5271
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5272
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    goto :goto_1

    .line 5273
    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5274
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 5276
    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 5267
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5278
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5262
    .end local v0    # "buffer":Lorg/apache/commons/lang/text/StrBuilder;
    .end local v1    # "strLen":I
    .end local v2    # "ch":C
    :cond_5
    :goto_2
    return-object p0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 313
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 365
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 339
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "ts":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static uncapitalise(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 5229
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->uncapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 5210
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "strLen":I
    if-nez v0, :cond_0

    goto :goto_0

    .line 5213
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5211
    .end local v1    # "strLen":I
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static upperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 5066
    if-nez p0, :cond_0

    .line 5067
    const/4 v0, 0x0

    return-object v0

    .line 5069
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 5089
    if-nez p0, :cond_0

    .line 5090
    const/4 v0, 0x0

    return-object v0

    .line 5092
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
