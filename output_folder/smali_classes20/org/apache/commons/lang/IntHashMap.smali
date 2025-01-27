.class Lorg/apache/commons/lang/IntHashMap;
.super Ljava/lang/Object;
.source "IntHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/IntHashMap$Entry;
    }
.end annotation


# instance fields
.field private transient count:I

.field private final loadFactor:F

.field private transient table:[Lorg/apache/commons/lang/IntHashMap$Entry;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 96
    const/16 v0, 0x14

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/lang/IntHashMap;-><init>(IF)V

    .line 97
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 108
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang/IntHashMap;-><init>(IF)V

    .line 109
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    if-ltz p1, :cond_2

    .line 125
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1

    .line 128
    if-nez p1, :cond_0

    .line 129
    const/4 p1, 0x1

    .line 132
    :cond_0
    iput p2, p0, Lorg/apache/commons/lang/IntHashMap;->loadFactor:F

    .line 133
    new-array v0, p1, [Lorg/apache/commons/lang/IntHashMap$Entry;

    iput-object v0, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 134
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lorg/apache/commons/lang/IntHashMap;->threshold:I

    .line 135
    return-void

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal Load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    .line 357
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 358
    .local v0, "tab":[Lorg/apache/commons/lang/IntHashMap$Entry;
    array-length v1, v0

    .local v1, "index":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 359
    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    .line 361
    .end local v1    # "index":I
    .end local p0    # "this":Lorg/apache/commons/lang/IntHashMap;
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/IntHashMap;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    .line 356
    .end local v0    # "tab":[Lorg/apache/commons/lang/IntHashMap$Entry;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 175
    if-eqz p1, :cond_3

    .line 179
    iget-object v0, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 180
    .local v0, "tab":[Lorg/apache/commons/lang/IntHashMap$Entry;
    array-length v1, v0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_2

    .line 181
    aget-object v1, v0, v2

    .local v1, "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    :goto_1
    if-eqz v1, :cond_1

    .line 182
    iget-object v3, v1, Lorg/apache/commons/lang/IntHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    const/4 v3, 0x1

    return v3

    .line 181
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    goto :goto_1

    :cond_1
    move v1, v2

    .end local v1    # "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    goto :goto_0

    .line 187
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 176
    .end local v0    # "tab":[Lorg/apache/commons/lang/IntHashMap$Entry;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public containsKey(I)Z
    .locals 5
    .param p1, "key"    # I

    .line 216
    iget-object v0, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 217
    .local v0, "tab":[Lorg/apache/commons/lang/IntHashMap$Entry;
    move v1, p1

    .line 218
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 219
    .local v2, "index":I
    aget-object v3, v0, v2

    .local v3, "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    :goto_0
    if-eqz v3, :cond_1

    .line 220
    iget v4, v3, Lorg/apache/commons/lang/IntHashMap$Entry;->hash:I

    if-ne v4, v1, :cond_0

    .line 221
    const/4 v4, 0x1

    return v4

    .line 219
    :cond_0
    iget-object v3, v3, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    goto :goto_0

    .line 224
    .end local v3    # "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 203
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/IntHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # I

    .line 237
    iget-object v0, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 238
    .local v0, "tab":[Lorg/apache/commons/lang/IntHashMap$Entry;
    move v1, p1

    .line 239
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 240
    .local v2, "index":I
    aget-object v3, v0, v2

    .local v3, "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    :goto_0
    if-eqz v3, :cond_1

    .line 241
    iget v4, v3, Lorg/apache/commons/lang/IntHashMap$Entry;->hash:I

    if-ne v4, v1, :cond_0

    .line 242
    iget-object v4, v3, Lorg/apache/commons/lang/IntHashMap$Entry;->value:Ljava/lang/Object;

    return-object v4

    .line 240
    :cond_0
    iget-object v3, v3, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    goto :goto_0

    .line 245
    .end local v3    # "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public isEmpty()Z
    .locals 1

    .line 153
    iget v0, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 297
    .local v0, "tab":[Lorg/apache/commons/lang/IntHashMap$Entry;
    move v1, p1

    .line 298
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int v3, v1, v2

    array-length v4, v0

    rem-int/2addr v3, v4

    .line 299
    .local v3, "index":I
    aget-object v4, v0, v3

    .local v4, "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    :goto_0
    if-eqz v4, :cond_1

    .line 300
    iget v5, v4, Lorg/apache/commons/lang/IntHashMap$Entry;->hash:I

    if-ne v5, v1, :cond_0

    .line 301
    iget-object v2, v4, Lorg/apache/commons/lang/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 302
    .local v2, "old":Ljava/lang/Object;
    iput-object p2, v4, Lorg/apache/commons/lang/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 303
    return-object v2

    .line 299
    .end local v2    # "old":Ljava/lang/Object;
    :cond_0
    iget-object v4, v4, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    goto :goto_0

    .line 307
    .end local v4    # "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    :cond_1
    iget v4, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    iget v5, p0, Lorg/apache/commons/lang/IntHashMap;->threshold:I

    if-lt v4, v5, :cond_2

    .line 309
    invoke-virtual {p0}, Lorg/apache/commons/lang/IntHashMap;->rehash()V

    .line 311
    iget-object v0, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 312
    and-int/2addr v2, v1

    array-length v4, v0

    rem-int v3, v2, v4

    .line 316
    :cond_2
    new-instance v2, Lorg/apache/commons/lang/IntHashMap$Entry;

    aget-object v4, v0, v3

    invoke-direct {v2, v1, p1, p2, v4}, Lorg/apache/commons/lang/IntHashMap$Entry;-><init>(IILjava/lang/Object;Lorg/apache/commons/lang/IntHashMap$Entry;)V

    .line 317
    .local v2, "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    aput-object v2, v0, v3

    .line 318
    iget v4, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    .line 319
    const/4 v4, 0x0

    return-object v4
.end method

.method protected rehash()V
    .locals 9

    .line 258
    iget-object v0, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    array-length v0, v0

    .line 259
    .local v0, "oldCapacity":I
    iget-object v1, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 261
    .local v1, "oldMap":[Lorg/apache/commons/lang/IntHashMap$Entry;
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 262
    .local v2, "newCapacity":I
    new-array v3, v2, [Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 264
    .local v3, "newMap":[Lorg/apache/commons/lang/IntHashMap$Entry;
    int-to-float v4, v2

    iget v5, p0, Lorg/apache/commons/lang/IntHashMap;->loadFactor:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lorg/apache/commons/lang/IntHashMap;->threshold:I

    .line 265
    iput-object v3, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 267
    move v4, v0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "i":I
    .local v5, "i":I
    if-lez v4, :cond_1

    .line 268
    aget-object v4, v1, v5

    .local v4, "old":Lorg/apache/commons/lang/IntHashMap$Entry;
    :goto_1
    if-eqz v4, :cond_0

    .line 269
    move-object v6, v4

    .line 270
    .local v6, "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    iget-object v4, v4, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 272
    iget v7, v6, Lorg/apache/commons/lang/IntHashMap$Entry;->hash:I

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    rem-int/2addr v7, v2

    .line 273
    .local v7, "index":I
    aget-object v8, v3, v7

    iput-object v8, v6, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 274
    aput-object v6, v3, v7

    .line 275
    .end local v6    # "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    .end local v7    # "index":I
    goto :goto_1

    .end local v4    # "old":Lorg/apache/commons/lang/IntHashMap$Entry;
    :cond_0
    move v4, v5

    goto :goto_0

    .line 277
    .end local v5    # "i":I
    :cond_1
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # I

    .line 334
    iget-object v0, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 335
    .local v0, "tab":[Lorg/apache/commons/lang/IntHashMap$Entry;
    move v1, p1

    .line 336
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 337
    .local v2, "index":I
    aget-object v3, v0, v2

    .local v3, "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    const/4 v4, 0x0

    .local v4, "prev":Lorg/apache/commons/lang/IntHashMap$Entry;
    :goto_0
    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 338
    iget v6, v3, Lorg/apache/commons/lang/IntHashMap$Entry;->hash:I

    if-ne v6, v1, :cond_1

    .line 339
    if-eqz v4, :cond_0

    .line 340
    iget-object v6, v3, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    iput-object v6, v4, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    goto :goto_1

    .line 342
    :cond_0
    iget-object v6, v3, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    aput-object v6, v0, v2

    .line 344
    :goto_1
    iget v6, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    .line 345
    iget-object v6, v3, Lorg/apache/commons/lang/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 346
    .local v6, "oldValue":Ljava/lang/Object;
    iput-object v5, v3, Lorg/apache/commons/lang/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 347
    return-object v6

    .line 337
    .end local v6    # "oldValue":Ljava/lang/Object;
    :cond_1
    move-object v4, v3

    iget-object v3, v3, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    goto :goto_0

    .line 350
    .end local v3    # "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    .end local v4    # "prev":Lorg/apache/commons/lang/IntHashMap$Entry;
    :cond_2
    return-object v5
.end method

.method public size()I
    .locals 1

    .line 143
    iget v0, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    return v0
.end method
