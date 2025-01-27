.class public Lorg/apache/commons/lang/CharSetUtils;
.super Ljava/lang/Object;
.source "CharSetUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static count(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # Ljava/lang/String;

    .line 166
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 170
    .local v0, "strs":[Ljava/lang/String;
    aput-object p1, v0, v1

    .line 171
    invoke-static {p0, v0}, Lorg/apache/commons/lang/CharSetUtils;->count(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 167
    .end local v0    # "strs":[Ljava/lang/String;
    :cond_1
    :goto_0
    return v1
.end method

.method public static count(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .line 189
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 192
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang/CharSet;

    move-result-object v0

    .line 193
    .local v0, "chars":Lorg/apache/commons/lang/CharSet;
    const/4 v1, 0x0

    .line 194
    .local v1, "count":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 195
    .local v2, "chrs":[C
    array-length v3, v2

    .line 196
    .local v3, "sz":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 197
    aget-char v5, v2, v4

    invoke-virtual {v0, v5}, Lorg/apache/commons/lang/CharSet;->contains(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 198
    add-int/lit8 v1, v1, 0x1

    .line 196
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 201
    .end local v4    # "i":I
    :cond_2
    return v1

    .line 190
    .end local v0    # "chars":Lorg/apache/commons/lang/CharSet;
    .end local v1    # "count":I
    .end local v2    # "chrs":[C
    .end local v3    # "sz":I
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # Ljava/lang/String;

    .line 284
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 288
    .local v0, "strs":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 289
    invoke-static {p0, v0}, Lorg/apache/commons/lang/CharSetUtils;->delete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 285
    .end local v0    # "strs":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static delete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .line 308
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 309
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static evaluateSet([Ljava/lang/String;)Lorg/apache/commons/lang/CharSet;
    .locals 1
    .param p0, "set"    # [Ljava/lang/String;

    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/CharSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/CharSet;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static keep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # Ljava/lang/String;

    .line 226
    if-nez p0, :cond_0

    .line 227
    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 232
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 233
    .local v0, "strs":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 234
    invoke-static {p0, v0}, Lorg/apache/commons/lang/CharSetUtils;->keep(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 230
    .end local v0    # "strs":[Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static keep(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .line 254
    if-nez p0, :cond_0

    .line 255
    const/4 v0, 0x0

    return-object v0

    .line 257
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 260
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 258
    :cond_2
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private static modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;
    .param p2, "expect"    # Z

    .line 324
    invoke-static {p1}, Lorg/apache/commons/lang/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang/CharSet;

    move-result-object v0

    .line 325
    .local v0, "chars":Lorg/apache/commons/lang/CharSet;
    new-instance v1, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 326
    .local v1, "buffer":Lorg/apache/commons/lang/text/StrBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 327
    .local v2, "chrs":[C
    array-length v3, v2

    .line 328
    .local v3, "sz":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 329
    aget-char v5, v2, v4

    invoke-virtual {v0, v5}, Lorg/apache/commons/lang/CharSet;->contains(C)Z

    move-result v5

    if-ne v5, p2, :cond_0

    .line 330
    aget-char v5, v2, v4

    invoke-virtual {v1, v5}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 328
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 333
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static squeeze(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # Ljava/lang/String;

    .line 100
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 104
    .local v0, "strs":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 105
    invoke-static {p0, v0}, Lorg/apache/commons/lang/CharSetUtils;->squeeze(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 101
    .end local v0    # "strs":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static squeeze(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .line 123
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 126
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang/CharSet;

    move-result-object v0

    .line 127
    .local v0, "chars":Lorg/apache/commons/lang/CharSet;
    new-instance v1, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 128
    .local v1, "buffer":Lorg/apache/commons/lang/text/StrBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 129
    .local v2, "chrs":[C
    array-length v3, v2

    .line 130
    .local v3, "sz":I
    const/16 v4, 0x20

    .line 131
    .local v4, "lastChar":C
    const/16 v5, 0x20

    .line 132
    .local v5, "ch":C
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_2

    .line 133
    aget-char v5, v2, v6

    .line 134
    invoke-virtual {v0, v5}, Lorg/apache/commons/lang/CharSet;->contains(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 135
    if-ne v5, v4, :cond_1

    if-eqz v6, :cond_1

    .line 136
    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {v1, v5}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 140
    move v4, v5

    .line 132
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 142
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 124
    .end local v0    # "chars":Lorg/apache/commons/lang/CharSet;
    .end local v1    # "buffer":Lorg/apache/commons/lang/text/StrBuilder;
    .end local v2    # "chrs":[C
    .end local v3    # "sz":I
    .end local v4    # "lastChar":C
    .end local v5    # "ch":C
    :cond_3
    :goto_2
    return-object p0
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;
    .param p2, "replaceChars"    # Ljava/lang/String;

    .line 371
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    return-object p0

    .line 374
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 375
    .local v0, "buffer":Lorg/apache/commons/lang/text/StrBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 376
    .local v1, "chrs":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 377
    .local v2, "withChrs":[C
    array-length v3, v1

    .line 378
    .local v3, "sz":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 379
    .local v4, "withMax":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 380
    aget-char v6, v1, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 381
    .local v6, "idx":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 382
    if-le v6, v4, :cond_1

    .line 383
    move v6, v4

    .line 385
    :cond_1
    aget-char v7, v2, v6

    invoke-virtual {v0, v7}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_1

    .line 387
    :cond_2
    aget-char v7, v1, v5

    invoke-virtual {v0, v7}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 379
    .end local v6    # "idx":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 390
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
