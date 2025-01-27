.class public Lcom/sleepycat/je/tree/INKeyRep$Default;
.super Lcom/sleepycat/je/tree/INKeyRep;
.source "INKeyRep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/tree/INKeyRep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final keys:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    const-class v0, Lcom/sleepycat/je/tree/INKeyRep;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "nodeMaxEntries"    # I

    .line 99
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INKeyRep;-><init>()V

    .line 100
    new-array v0, p1, [[B

    iput-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/SizeofMarker;)V
    .locals 1
    .param p1, "marker"    # Lcom/sleepycat/je/utilint/SizeofMarker;

    .line 103
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INKeyRep;-><init>()V

    .line 104
    invoke-static {}, Lcom/sleepycat/je/tree/INKeyRep;->access$000()[[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    .line 105
    return-void
.end method

.method private constructor <init>([[B)V
    .locals 0
    .param p1, "keys"    # [[B

    .line 107
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INKeyRep;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    .line 109
    return-void
.end method

.method private compactToMaxKeySizeRep(ILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;
    .locals 4
    .param p1, "maxKeyLength"    # I
    .param p2, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 338
    new-instance v0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;

    iget-object v1, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    array-length v1, v1

    int-to-short v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;-><init>(IS)V

    .line 341
    .local v0, "newRep":Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 342
    aget-object v2, v2, v1

    invoke-virtual {v0, v1, v2, p2}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->set(I[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object v2

    .line 343
    .local v2, "rep":Lcom/sleepycat/je/tree/INKeyRep;
    if-ne v2, v0, :cond_0

    .line 341
    .end local v2    # "rep":Lcom/sleepycat/je/tree/INKeyRep;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .restart local v2    # "rep":Lcom/sleepycat/je/tree/INKeyRep;
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 346
    .end local v1    # "i":I
    .end local v2    # "rep":Lcom/sleepycat/je/tree/INKeyRep;
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/sleepycat/je/tree/INKeyRep$Default;->noteRepChange(Lcom/sleepycat/je/tree/INArrayRep;Lcom/sleepycat/je/tree/IN;)V

    .line 348
    return-object v0
.end method

.method private compareSuffixes([BIIIZ)I
    .locals 8
    .param p1, "searchKey"    # [B
    .param p2, "searchKeyOff"    # I
    .param p3, "searchKeyLen"    # I
    .param p4, "idx"    # I
    .param p5, "embeddedData"    # Z

    .line 262
    iget-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    aget-object v0, v0, p4

    .line 265
    .local v0, "myKey":[B
    if-nez v0, :cond_0

    .line 266
    sget-object v0, Lcom/sleepycat/je/tree/Key;->EMPTY_KEY:[B

    .line 267
    const/4 v1, 0x0

    .local v1, "myKeyLen":I
    goto :goto_0

    .line 268
    .end local v1    # "myKeyLen":I
    :cond_0
    if-eqz p5, :cond_1

    .line 269
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/dbi/DupKeyData;->getKeyLength([BII)I

    move-result v1

    .restart local v1    # "myKeyLen":I
    goto :goto_0

    .line 271
    .end local v1    # "myKeyLen":I
    :cond_1
    array-length v1, v0

    .line 274
    .restart local v1    # "myKeyLen":I
    :goto_0
    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Lcom/sleepycat/je/tree/Key;->compareUnsignedBytes([BII[BII)I

    move-result v2

    return v2
.end method


# virtual methods
.method public accountsForKeyByteMemUsage()Z
    .locals 1

    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public calculateMemorySize()J
    .locals 2

    .line 358
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->DEFAULT_KEYVALS_OVERHEAD:I

    iget-object v1, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    array-length v1, v1

    .line 359
    invoke-static {v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->objectArraySize(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 358
    return-wide v0
.end method

.method public compact(Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;
    .locals 9
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 294
    iget-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    array-length v0, v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    .line 295
    return-object p0

    .line 298
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getCompactMaxKeyLength()I

    move-result v0

    .line 299
    .local v0, "compactMaxKeyLength":I
    if-gtz v0, :cond_1

    .line 300
    return-object p0

    .line 303
    :cond_1
    const/4 v1, 0x0

    .line 304
    .local v1, "keyCount":I
    const/4 v2, 0x0

    .line 305
    .local v2, "maxKeyLength":I
    const/4 v3, 0x0

    .line 307
    .local v3, "defaultKeyBytes":I
    iget-object v4, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 308
    .local v7, "key":[B
    if-eqz v7, :cond_3

    .line 309
    add-int/lit8 v1, v1, 0x1

    .line 310
    array-length v8, v7

    if-le v8, v2, :cond_2

    .line 311
    array-length v2, v7

    .line 312
    if-le v2, v0, :cond_2

    .line 313
    return-object p0

    .line 316
    :cond_2
    array-length v8, v7

    invoke-static {v8}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v8

    add-int/2addr v3, v8

    .line 307
    .end local v7    # "key":[B
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 320
    :cond_4
    if-nez v1, :cond_5

    .line 321
    return-object p0

    .line 324
    :cond_5
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/INKeyRep$Default;->calculateMemorySize()J

    move-result-wide v4

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 326
    .local v4, "defaultSizeWithKeys":J
    iget-object v6, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    array-length v6, v6

    .line 327
    invoke-static {v6, v2}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->access$100(II)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-lez v6, :cond_6

    .line 328
    invoke-direct {p0, v2, p1}, Lcom/sleepycat/je/tree/INKeyRep$Default;->compactToMaxKeySizeRep(ILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;

    move-result-object v6

    return-object v6

    .line 331
    :cond_6
    return-object p0
.end method

.method public bridge synthetic compact(Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INKeyRep$Default;->compact(Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object p1

    return-object p1
.end method

.method public compareKeys([B[BIZLjava/util/Comparator;)I
    .locals 15
    .param p1, "searchKey"    # [B
    .param p2, "prefix"    # [B
    .param p3, "idx"    # I
    .param p4, "embeddedData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BIZ",
            "Ljava/util/Comparator<",
            "[B>;)I"
        }
    .end annotation

    .line 225
    .local p5, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    if-eqz v8, :cond_0

    .line 226
    move-object v9, p0

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual {p0, v7, v10, v11}, Lcom/sleepycat/je/tree/INKeyRep$Default;->getFullKey([BIZ)[B

    move-result-object v0

    .line 227
    .local v0, "myKey":[B
    invoke-static {v6, v0, v8}, Lcom/sleepycat/je/tree/Key;->compareKeys([B[BLjava/util/Comparator;)I

    move-result v1

    return v1

    .line 230
    .end local v0    # "myKey":[B
    :cond_0
    move-object v9, p0

    move/from16 v10, p3

    move/from16 v11, p4

    const/4 v12, 0x0

    .line 232
    .local v12, "cmp":I
    if-eqz v7, :cond_3

    array-length v0, v7

    if-nez v0, :cond_1

    goto :goto_0

    .line 238
    :cond_1
    const/4 v1, 0x0

    array-length v0, v6

    array-length v2, v7

    .line 239
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    array-length v5, v7

    .line 238
    move-object/from16 v0, p1

    move-object/from16 v3, p2

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/tree/Key;->compareUnsignedBytes([BII[BII)I

    move-result v12

    .line 242
    if-nez v12, :cond_2

    .line 244
    array-length v13, v7

    .line 245
    .local v13, "searchKeyOffset":I
    array-length v0, v6

    array-length v1, v7

    sub-int v14, v0, v1

    .line 247
    .local v14, "searchKeyLen":I
    move-object v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/tree/INKeyRep$Default;->compareSuffixes([BIIIZ)I

    move-result v0

    return v0

    .line 252
    .end local v13    # "searchKeyOffset":I
    .end local v14    # "searchKeyLen":I
    :cond_2
    return v12

    .line 234
    :cond_3
    :goto_0
    const/4 v2, 0x0

    array-length v3, v6

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/tree/INKeyRep$Default;->compareSuffixes([BIIIZ)I

    move-result v0

    return v0
.end method

.method public copy(IIILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "n"    # I
    .param p4, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 281
    iget-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    invoke-static {v0, p1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    return-object p0
.end method

.method public bridge synthetic copy(IIILcom/sleepycat/je/tree/IN;)Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/tree/INKeyRep$Default;->copy(IIILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INKeyRep$Default;->get(I)[B

    move-result-object p1

    return-object p1
.end method

.method public get(I)[B
    .locals 1
    .param p1, "idx"    # I

    .line 160
    iget-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getData(I)[B
    .locals 3
    .param p1, "idx"    # I

    .line 166
    iget-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 167
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/dbi/DupKeyData;->getData([BII)[B

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getFullKey([BIZ)[B
    .locals 5
    .param p1, "prefix"    # [B
    .param p2, "idx"    # I
    .param p3, "embeddedData"    # Z

    .line 190
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    aget-object v0, v0, p2

    .line 196
    .local v0, "suffix":[B
    if-nez v0, :cond_2

    .line 197
    if-nez p3, :cond_1

    .line 198
    sget-object v0, Lcom/sleepycat/je/tree/Key;->EMPTY_KEY:[B

    goto :goto_0

    .line 197
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 201
    :cond_2
    :goto_0
    array-length v1, p1

    .line 204
    .local v1, "prefixLen":I
    const/4 v2, 0x0

    if-eqz p3, :cond_3

    .line 205
    array-length v3, v0

    invoke-static {v0, v2, v3}, Lcom/sleepycat/je/dbi/DupKeyData;->getKeyLength([BII)I

    move-result v3

    .local v3, "suffixLen":I
    goto :goto_1

    .line 207
    .end local v3    # "suffixLen":I
    :cond_3
    array-length v3, v0

    .line 210
    .restart local v3    # "suffixLen":I
    :goto_1
    add-int v4, v1, v3

    new-array v4, v4, [B

    .line 211
    .local v4, "key":[B
    invoke-static {p1, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    invoke-static {v0, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    return-object v4

    .line 191
    .end local v0    # "suffix":[B
    .end local v1    # "prefixLen":I
    .end local v3    # "suffixLen":I
    .end local v4    # "key":[B
    :cond_4
    :goto_2
    invoke-virtual {p0, p2, p3}, Lcom/sleepycat/je/tree/INKeyRep$Default;->getKey(IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public getKey(IZ)[B
    .locals 3
    .param p1, "idx"    # I
    .param p2, "embeddedData"    # Z

    .line 173
    iget-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    aget-object v0, v0, p1

    .line 175
    .local v0, "suffix":[B
    if-nez v0, :cond_0

    .line 176
    sget-object v1, Lcom/sleepycat/je/tree/Key;->EMPTY_KEY:[B

    return-object v1

    .line 177
    :cond_0
    if-eqz p2, :cond_1

    .line 178
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/dbi/DupKeyData;->getKey([BII)[B

    move-result-object v1

    return-object v1

    .line 180
    :cond_1
    return-object v0
.end method

.method public getType()Lcom/sleepycat/je/tree/INKeyRep$Type;
    .locals 1

    .line 118
    sget-object v0, Lcom/sleepycat/je/tree/INKeyRep$Type;->DEFAULT:Lcom/sleepycat/je/tree/INKeyRep$Type;

    return-object v0
.end method

.method public bridge synthetic getType()Ljava/lang/Object;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/INKeyRep$Default;->getType()Lcom/sleepycat/je/tree/INKeyRep$Type;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    array-length v0, v0

    return v0
.end method

.method public resize(I)Lcom/sleepycat/je/tree/INKeyRep;
    .locals 3
    .param p1, "capacity"    # I

    .line 113
    new-instance v0, Lcom/sleepycat/je/tree/INKeyRep$Default;

    iget-object v1, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    invoke-direct {v0, v1}, Lcom/sleepycat/je/tree/INKeyRep$Default;-><init>([[B)V

    return-object v0
.end method

.method public bridge synthetic resize(I)Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INKeyRep$Default;->resize(I)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object p1

    return-object p1
.end method

.method public set(I[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;
    .locals 1
    .param p1, "idx"    # I
    .param p2, "key"    # [B
    .param p3, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    aput-object p2, v0, p1

    .line 129
    return-object p0
.end method

.method public set(I[B[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;
    .locals 2
    .param p1, "idx"    # I
    .param p2, "key"    # [B
    .param p3, "data"    # [B
    .param p4, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 135
    if-eqz p3, :cond_1

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    invoke-static {p2, p3}, Lcom/sleepycat/je/dbi/DupKeyData;->combine([B[B)[B

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_1

    .line 136
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    aput-object p2, v0, p1

    .line 140
    :goto_1
    return-object p0
.end method

.method public bridge synthetic set(ILjava/lang/Object;Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;
    .locals 0

    .line 95
    check-cast p2, [B

    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/tree/INKeyRep$Default;->set(I[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object p1

    return-object p1
.end method

.method public setData(I[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;
    .locals 1
    .param p1, "idx"    # I
    .param p2, "data"    # [B
    .param p3, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/tree/INKeyRep$Default;->getKey(IZ)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sleepycat/je/tree/INKeyRep$Default;->set(I[B[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object v0

    return-object v0
.end method

.method public size(I)I
    .locals 1
    .param p1, "idx"    # I

    .line 155
    iget-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$Default;->keys:[[B

    aget-object v0, v0, p1

    array-length v0, v0

    return v0
.end method

.method updateCacheStats(ZLcom/sleepycat/je/evictor/Evictor;)V
    .locals 0
    .param p1, "increment"    # Z
    .param p2, "evictor"    # Lcom/sleepycat/je/evictor/Evictor;

    .line 371
    return-void
.end method
