.class public final Lcom/google/common/primitives/Chars;
.super Ljava/lang/Object;
.source "Chars.java"


# annotations
.annotation runtime Lcom/google/common/primitives/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Chars$CharArrayAsList;,
        Lcom/google/common/primitives/Chars$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([CCII)I
    .locals 1
    .param p0, "x0"    # [C
    .param p1, "x1"    # C
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->indexOf([CCII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([CCII)I
    .locals 1
    .param p0, "x0"    # [C
    .param p1, "x1"    # C
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->lastIndexOf([CCII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([C)Ljava/util/List;
    .locals 1
    .param p0, "backingArray"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 504
    array-length v0, p0

    if-nez v0, :cond_0

    .line 505
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 507
    :cond_0
    new-instance v0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([C)V

    return-object v0
.end method

.method public static checkedCast(J)C
    .locals 3
    .param p0, "value"    # J

    .line 82
    long-to-int v0, p0

    int-to-char v0, v0

    .line 83
    .local v0, "result":C
    int-to-long v1, v0

    cmp-long v1, v1, p0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Out of range: %s"

    invoke-static {v1, v2, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 84
    return v0
.end method

.method public static compare(CC)I
    .locals 1
    .param p0, "a"    # C
    .param p1, "b"    # C

    .line 118
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs concat([[C)[C
    .locals 8
    .param p0, "arrays"    # [[C

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "length":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 277
    .local v4, "array":[C
    array-length v5, v4

    add-int/2addr v0, v5

    .line 276
    .end local v4    # "array":[C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 279
    :cond_0
    new-array v1, v0, [C

    .line 280
    .local v1, "result":[C
    const/4 v3, 0x0

    .line 281
    .local v3, "pos":I
    array-length v4, p0

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, p0, v5

    .line 282
    .local v6, "array":[C
    array-length v7, v6

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    array-length v7, v6

    add-int/2addr v3, v7

    .line 281
    .end local v6    # "array":[C
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 285
    :cond_1
    return-object v1
.end method

.method public static constrainToRange(CCC)C
    .locals 2
    .param p0, "value"    # C
    .param p1, "min"    # C
    .param p2, "max"    # C

    .line 263
    if-gt p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "min (%s) must be less than or equal to max (%s)"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;CC)V

    .line 264
    if-ge p0, p1, :cond_1

    move v0, p1

    goto :goto_1

    :cond_1
    if-ge p0, p2, :cond_2

    move v0, p0

    goto :goto_1

    :cond_2
    move v0, p2

    :goto_1
    return v0
.end method

.method public static contains([CC)Z
    .locals 4
    .param p0, "array"    # [C
    .param p1, "target"    # C

    .line 129
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v3, p0, v2

    .line 130
    .local v3, "value":C
    if-ne v3, p1, :cond_0

    .line 131
    const/4 v0, 0x1

    return v0

    .line 129
    .end local v3    # "value":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_1
    return v1
.end method

.method public static ensureCapacity([CII)[C
    .locals 4
    .param p0, "array"    # [C
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .line 343
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    invoke-static {v2, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 344
    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "Invalid padding: %s"

    invoke-static {v0, v1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 345
    array-length v0, p0

    if-ge v0, p1, :cond_2

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p0

    :goto_2
    return-object v0
.end method

.method public static fromByteArray([B)C
    .locals 6
    .param p0, "bytes"    # [B

    .line 314
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    array-length v4, p0

    const-string v5, "array too small: %s < %s"

    invoke-static {v0, v5, v4, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 315
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Chars;->fromBytes(BB)C

    move-result v0

    return v0
.end method

.method public static fromBytes(BB)C
    .locals 2
    .param p0, "b1"    # B
    .param p1, "b2"    # B

    .line 326
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static hashCode(C)I
    .locals 0
    .param p0, "value"    # C

    .line 70
    return p0
.end method

.method public static indexOf([CC)I
    .locals 2
    .param p0, "array"    # [C
    .param p1, "target"    # C

    .line 146
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Chars;->indexOf([CCII)I

    move-result v0

    return v0
.end method

.method private static indexOf([CCII)I
    .locals 2
    .param p0, "array"    # [C
    .param p1, "target"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 151
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 152
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 153
    return v0

    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([C[C)I
    .locals 4
    .param p0, "array"    # [C
    .param p1, "target"    # [C

    .line 170
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    array-length v0, p1

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x0

    return v0

    .line 177
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_3

    .line 178
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 179
    add-int v2, v0, v1

    aget-char v2, p0, v2

    aget-char v3, p1, v1

    if-eq v2, v3, :cond_1

    .line 180
    nop

    .line 177
    .end local v1    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .restart local v1    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    .end local v1    # "j":I
    :cond_2
    return v0

    .line 185
    .end local v0    # "i":I
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 5
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [C

    .line 357
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    array-length v0, p1

    .line 359
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 360
    const-string v1, ""

    return-object v1

    .line 363
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 364
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-char v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 366
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-char v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static lastIndexOf([CC)I
    .locals 2
    .param p0, "array"    # [C
    .param p1, "target"    # C

    .line 197
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Chars;->lastIndexOf([CCII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([CCII)I
    .locals 2
    .param p0, "array"    # [C
    .param p1, "target"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 202
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 203
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 204
    return v0

    .line 202
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 207
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[C>;"
        }
    .end annotation

    .line 386
    sget-object v0, Lcom/google/common/primitives/Chars$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Chars$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([C)C
    .locals 3
    .param p0, "array"    # [C

    .line 238
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 239
    aget-char v0, p0, v1

    .line 240
    .local v0, "max":C
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 241
    aget-char v2, p0, v1

    if-le v2, v0, :cond_1

    .line 242
    aget-char v0, p0, v1

    .line 240
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 245
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static varargs min([C)C
    .locals 3
    .param p0, "array"    # [C

    .line 219
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 220
    aget-char v0, p0, v1

    .line 221
    .local v0, "min":C
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 222
    aget-char v2, p0, v1

    if-ge v2, v0, :cond_1

    .line 223
    aget-char v0, p0, v1

    .line 221
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 226
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static reverse([C)V
    .locals 2
    .param p0, "array"    # [C

    .line 467
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/common/primitives/Chars;->reverse([CII)V

    .line 469
    return-void
.end method

.method public static reverse([CII)V
    .locals 4
    .param p0, "array"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 482
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 484
    move v0, p1

    .local v0, "i":I
    add-int/lit8 v1, p2, -0x1

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 485
    aget-char v2, p0, v0

    .line 486
    .local v2, "tmp":C
    aget-char v3, p0, v1

    aput-char v3, p0, v0

    .line 487
    aput-char v2, p0, v1

    .line 484
    .end local v2    # "tmp":C
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 489
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_0
    return-void
.end method

.method public static saturatedCast(J)C
    .locals 2
    .param p0, "value"    # J

    .line 96
    const-wide/32 v0, 0xffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 97
    const v0, 0xffff

    return v0

    .line 99
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 100
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_1
    long-to-int v0, p0

    int-to-char v0, v0

    return v0
.end method

.method public static sortDescending([C)V
    .locals 2
    .param p0, "array"    # [C

    .line 443
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/common/primitives/Chars;->sortDescending([CII)V

    .line 445
    return-void
.end method

.method public static sortDescending([CII)V
    .locals 1
    .param p0, "array"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 454
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 456
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([CII)V

    .line 457
    invoke-static {p0, p1, p2}, Lcom/google/common/primitives/Chars;->reverse([CII)V

    .line 458
    return-void
.end method

.method public static toArray(Ljava/util/Collection;)[C
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;)[C"
        }
    .end annotation

    .line 423
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    instance-of v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    if-eqz v0, :cond_0

    .line 424
    move-object v0, p0

    check-cast v0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    invoke-virtual {v0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->toCharArray()[C

    move-result-object v0

    return-object v0

    .line 427
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 428
    .local v0, "boxedArray":[Ljava/lang/Object;
    array-length v1, v0

    .line 429
    .local v1, "len":I
    new-array v2, v1, [C

    .line 430
    .local v2, "array":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 432
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    aput-char v4, v2, v3

    .line 430
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 434
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public static toByteArray(C)[B
    .locals 3
    .param p0, "value"    # C

    .line 299
    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte v1, p0

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method
