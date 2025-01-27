.class public Lcom/sleepycat/util/keyrange/KeyRange;
.super Ljava/lang/Object;
.source "KeyRange.java"


# static fields
.field public static final ZERO_LENGTH_BYTE_ARRAY:[B


# instance fields
.field beginInclusive:Z

.field beginKey:Lcom/sleepycat/je/DatabaseEntry;

.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field

.field endInclusive:Z

.field endKey:Lcom/sleepycat/je/DatabaseEntry;

.field singleKey:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/sleepycat/util/keyrange/KeyRange;->ZERO_LENGTH_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "[B>;)V"
        }
    .end annotation

    .line 40
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sleepycat/util/keyrange/KeyRange;->comparator:Ljava/util/Comparator;

    .line 42
    return-void
.end method

.method public static compareBytes([BII[BII)I
    .locals 5
    .param p0, "data1"    # [B
    .param p1, "offset1"    # I
    .param p2, "size1"    # I
    .param p3, "data2"    # [B
    .param p4, "offset2"    # I
    .param p5, "size2"    # I

    .line 223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ge v0, p2, :cond_2

    if-ge v0, p5, :cond_2

    .line 225
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 226
    .local v3, "b1":I
    add-int v4, p4, v0

    aget-byte v4, p3, v4

    and-int/lit16 v4, v4, 0xff

    .line 227
    .local v4, "b2":I
    if-ge v3, v4, :cond_0

    .line 228
    return v1

    .line 229
    :cond_0
    if-le v3, v4, :cond_1

    .line 230
    return v2

    .line 223
    .end local v3    # "b1":I
    .end local v4    # "b2":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "i":I
    :cond_2
    if-ge p2, p5, :cond_3

    .line 234
    return v1

    .line 235
    :cond_3
    if-le p2, p5, :cond_4

    .line 236
    return v2

    .line 238
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public static copy(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/DatabaseEntry;
    .locals 2
    .param p0, "from"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 261
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {p0}, Lcom/sleepycat/util/keyrange/KeyRange;->getByteArray(Lcom/sleepycat/je/DatabaseEntry;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    return-object v0
.end method

.method public static copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 1
    .param p0, "from"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p1, "to"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 268
    invoke-static {p0}, Lcom/sleepycat/util/keyrange/KeyRange;->getByteArray(Lcom/sleepycat/je/DatabaseEntry;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/DatabaseEntry;->setOffset(I)V

    .line 270
    return-void
.end method

.method public static copyBytes([B)[B
    .locals 3
    .param p0, "bytes"    # [B

    .line 211
    array-length v0, p0

    new-array v0, v0, [B

    .line 212
    .local v0, "a":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    return-object v0
.end method

.method public static equalBytes(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 11
    .param p0, "e1"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p1, "e2"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 305
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 306
    return v0

    .line 308
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_8

    if-nez p1, :cond_1

    goto :goto_2

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v2

    .line 313
    .local v2, "d1":[B
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v3

    .line 314
    .local v3, "d2":[B
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v4

    .line 315
    .local v4, "s1":I
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v5

    .line 316
    .local v5, "s2":I
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v6

    .line 317
    .local v6, "o1":I
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v7

    .line 319
    .local v7, "o2":I
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    .line 320
    return v0

    .line 322
    :cond_2
    if-eqz v2, :cond_7

    if-nez v3, :cond_3

    goto :goto_1

    .line 325
    :cond_3
    if-eq v4, v5, :cond_4

    .line 326
    return v1

    .line 328
    :cond_4
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_6

    .line 329
    add-int v9, v6, v8

    aget-byte v9, v2, v9

    add-int v10, v7, v8

    aget-byte v10, v3, v10

    if-eq v9, v10, :cond_5

    .line 330
    return v1

    .line 328
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 333
    .end local v8    # "i":I
    :cond_6
    return v0

    .line 323
    :cond_7
    :goto_1
    return v1

    .line 309
    .end local v2    # "d1":[B
    .end local v3    # "d2":[B
    .end local v4    # "s1":I
    .end local v5    # "s2":I
    .end local v6    # "o1":I
    .end local v7    # "o2":I
    :cond_8
    :goto_2
    return v1
.end method

.method public static equalBytes([BII[BII)Z
    .locals 4
    .param p0, "data1"    # [B
    .param p1, "offset1"    # I
    .param p2, "size1"    # I
    .param p3, "data2"    # [B
    .param p4, "offset2"    # I
    .param p5, "size2"    # I

    .line 246
    const/4 v0, 0x0

    if-eq p2, p5, :cond_0

    .line 247
    return v0

    .line 249
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 250
    add-int v2, v1, p1

    aget-byte v2, p0, v2

    add-int v3, v1, p4

    aget-byte v3, p3, v3

    if-eq v2, v3, :cond_1

    .line 251
    return v0

    .line 249
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static getByteArray(Lcom/sleepycat/je/DatabaseEntry;)[B
    .locals 1
    .param p0, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 277
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lcom/sleepycat/util/keyrange/KeyRange;->getByteArrayInternal(Lcom/sleepycat/je/DatabaseEntry;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getByteArray(Lcom/sleepycat/je/DatabaseEntry;I)[B
    .locals 1
    .param p0, "entry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p1, "maxBytes"    # I

    .line 281
    invoke-static {p0, p1}, Lcom/sleepycat/util/keyrange/KeyRange;->getByteArrayInternal(Lcom/sleepycat/je/DatabaseEntry;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static getByteArrayInternal(Lcom/sleepycat/je/DatabaseEntry;I)[B
    .locals 5
    .param p0, "entry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p1, "maxBytes"    # I

    .line 287
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    .line 288
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 291
    .local v1, "size":I
    if-nez v1, :cond_1

    .line 292
    sget-object v2, Lcom/sleepycat/util/keyrange/KeyRange;->ZERO_LENGTH_BYTE_ARRAY:[B

    .local v2, "data":[B
    goto :goto_0

    .line 294
    .end local v2    # "data":[B
    :cond_1
    new-array v2, v1, [B

    .line 295
    .restart local v2    # "data":[B
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    :goto_0
    return-object v2
.end method

.method public static toString(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/String;
    .locals 7
    .param p0, "dbt"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 346
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v0

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 347
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 348
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v2

    .line 349
    .local v2, "data":[B
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v3

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 350
    aget-byte v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, "num":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .end local v4    # "num":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 354
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public check(Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 130
    iget-boolean v0, p0, Lcom/sleepycat/util/keyrange/KeyRange;->singleKey:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/util/keyrange/KeyRange;->compare(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 133
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->checkBegin(Lcom/sleepycat/je/DatabaseEntry;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->checkEnd(Lcom/sleepycat/je/DatabaseEntry;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public check(Lcom/sleepycat/je/DatabaseEntry;Z)Z
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "inclusive"    # Z

    .line 142
    iget-boolean v0, p0, Lcom/sleepycat/util/keyrange/KeyRange;->singleKey:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/util/keyrange/KeyRange;->compare(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 145
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/util/keyrange/KeyRange;->checkBegin(Lcom/sleepycat/je/DatabaseEntry;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/util/keyrange/KeyRange;->checkEnd(Lcom/sleepycat/je/DatabaseEntry;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public checkBegin(Lcom/sleepycat/je/DatabaseEntry;Z)Z
    .locals 4
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "inclusive"    # Z

    .line 167
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 168
    return v1

    .line 169
    :cond_0
    iget-boolean v2, p0, Lcom/sleepycat/util/keyrange/KeyRange;->beginInclusive:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    .line 170
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/util/keyrange/KeyRange;->compare(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    .line 172
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/util/keyrange/KeyRange;->compare(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v0

    if-ltz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1
.end method

.method public checkEnd(Lcom/sleepycat/je/DatabaseEntry;Z)Z
    .locals 4
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "inclusive"    # Z

    .line 182
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/KeyRange;->endKey:Lcom/sleepycat/je/DatabaseEntry;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 183
    return v1

    .line 184
    :cond_0
    iget-boolean v2, p0, Lcom/sleepycat/util/keyrange/KeyRange;->endInclusive:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    .line 185
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/util/keyrange/KeyRange;->compare(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    .line 187
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/util/keyrange/KeyRange;->compare(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v0

    if-gtz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1
.end method

.method public compare(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)I
    .locals 7
    .param p1, "key1"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "key2"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 196
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/KeyRange;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 197
    invoke-static {p1}, Lcom/sleepycat/util/keyrange/KeyRange;->getByteArray(Lcom/sleepycat/je/DatabaseEntry;)[B

    move-result-object v1

    invoke-static {p2}, Lcom/sleepycat/util/keyrange/KeyRange;->getByteArray(Lcom/sleepycat/je/DatabaseEntry;)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 199
    :cond_0
    nop

    .line 200
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v3

    .line 201
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v4

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v5

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v6

    .line 200
    invoke-static/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/KeyRange;->compareBytes([BII[BII)I

    move-result v0

    .line 199
    return v0
.end method

.method public final getSingleKey()Lcom/sleepycat/je/DatabaseEntry;
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/sleepycat/util/keyrange/KeyRange;->singleKey:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final hasBound()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/KeyRange;->endKey:Lcom/sleepycat/je/DatabaseEntry;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    if-eqz v0, :cond_0

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

.method public final isSingleKey()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/sleepycat/util/keyrange/KeyRange;->singleKey:Z

    return v0
.end method

.method public subRange(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/util/keyrange/KeyRange;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/util/keyrange/KeyRangeException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/KeyRange;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/sleepycat/util/keyrange/KeyRange;-><init>(Ljava/util/Comparator;)V

    .line 54
    .local v0, "range":Lcom/sleepycat/util/keyrange/KeyRange;
    iput-object p1, v0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 55
    iput-object p1, v0, Lcom/sleepycat/util/keyrange/KeyRange;->endKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sleepycat/util/keyrange/KeyRange;->beginInclusive:Z

    .line 57
    iput-boolean v1, v0, Lcom/sleepycat/util/keyrange/KeyRange;->endInclusive:Z

    .line 58
    iput-boolean v1, v0, Lcom/sleepycat/util/keyrange/KeyRange;->singleKey:Z

    .line 59
    return-object v0

    .line 51
    .end local v0    # "range":Lcom/sleepycat/util/keyrange/KeyRange;
    :cond_0
    new-instance v0, Lcom/sleepycat/util/keyrange/KeyRangeException;

    const-string v1, "singleKey out of range"

    invoke-direct {v0, v1}, Lcom/sleepycat/util/keyrange/KeyRangeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subRange(Lcom/sleepycat/je/DatabaseEntry;ZLcom/sleepycat/je/DatabaseEntry;Z)Lcom/sleepycat/util/keyrange/KeyRange;
    .locals 2
    .param p1, "beginKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "beginInclusive"    # Z
    .param p3, "endKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "endInclusive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/util/keyrange/KeyRangeException;
        }
    .end annotation

    .line 70
    if-nez p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 72
    iget-boolean p2, p0, Lcom/sleepycat/util/keyrange/KeyRange;->beginInclusive:Z

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    :goto_0
    if-nez p3, :cond_1

    .line 77
    iget-object p3, p0, Lcom/sleepycat/util/keyrange/KeyRange;->endKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 78
    iget-boolean p4, p0, Lcom/sleepycat/util/keyrange/KeyRange;->endInclusive:Z

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {p0, p3, p4}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    :goto_1
    new-instance v0, Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/KeyRange;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/sleepycat/util/keyrange/KeyRange;-><init>(Ljava/util/Comparator;)V

    .line 83
    .local v0, "range":Lcom/sleepycat/util/keyrange/KeyRange;
    iput-object p1, v0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 84
    iput-object p3, v0, Lcom/sleepycat/util/keyrange/KeyRange;->endKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 85
    iput-boolean p2, v0, Lcom/sleepycat/util/keyrange/KeyRange;->beginInclusive:Z

    .line 86
    iput-boolean p4, v0, Lcom/sleepycat/util/keyrange/KeyRange;->endInclusive:Z

    .line 87
    return-object v0

    .line 80
    .end local v0    # "range":Lcom/sleepycat/util/keyrange/KeyRange;
    :cond_2
    new-instance v0, Lcom/sleepycat/util/keyrange/KeyRangeException;

    const-string v1, "endKey out of range"

    invoke-direct {v0, v1}, Lcom/sleepycat/util/keyrange/KeyRangeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_3
    new-instance v0, Lcom/sleepycat/util/keyrange/KeyRangeException;

    const-string v1, "beginKey out of range"

    invoke-direct {v0, v1}, Lcom/sleepycat/util/keyrange/KeyRangeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KeyRange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sleepycat/util/keyrange/KeyRange;->beginInclusive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/KeyRange;->endKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/util/keyrange/KeyRange;->endInclusive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/util/keyrange/KeyRange;->singleKey:Z

    if-eqz v1, :cond_0

    const-string v1, " single"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
