.class public Lcom/sleepycat/je/cleaner/ExpirationTracker;
.super Ljava/lang/Object;
.source "ExpirationTracker.java"


# instance fields
.field private final fileNum:J

.field private volatile map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private pendingTrackCalls:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .param p1, "fileNum"    # J

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationTracker;->map:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationTracker;->pendingTrackCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    iput-wide p1, p0, Lcom/sleepycat/je/cleaner/ExpirationTracker;->fileNum:J

    .line 70
    return-void
.end method

.method static getExpiredBytes([BII)I
    .locals 6
    .param p0, "serializedForm"    # [B
    .param p1, "dayLimit"    # I
    .param p2, "hourLimit"    # I

    .line 256
    nop

    .line 257
    invoke-static {p0}, Lcom/sleepycat/je/cleaner/ExpirationTracker;->isExpirationInHours([B)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    .line 260
    .local v0, "expLimit":I
    :goto_0
    new-instance v1, Lcom/sleepycat/bind/tuple/TupleInput;

    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v1, p0, v3, v2}, Lcom/sleepycat/bind/tuple/TupleInput;-><init>([BII)V

    .line 263
    .local v1, "in":Lcom/sleepycat/bind/tuple/TupleInput;
    const/4 v2, 0x0

    .line 264
    .local v2, "expiredSize":I
    const/4 v3, 0x0

    .line 266
    .local v3, "prevExp":I
    :goto_1
    invoke-virtual {v1}, Lcom/sleepycat/bind/tuple/TupleInput;->available()I

    move-result v4

    if-lez v4, :cond_2

    .line 267
    invoke-virtual {v1}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    move-result v4

    add-int/2addr v4, v3

    .line 268
    .local v4, "exp":I
    if-le v4, v0, :cond_1

    .line 269
    goto :goto_2

    .line 271
    :cond_1
    invoke-virtual {v1}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    move-result v5

    add-int/2addr v2, v5

    .line 272
    move v3, v4

    .line 273
    .end local v4    # "exp":I
    goto :goto_1

    .line 275
    :cond_2
    :goto_2
    return v2
.end method

.method static isExpirationInHours([B)Z
    .locals 3
    .param p0, "serialized"    # [B

    .line 333
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 8
    .param p0, "serializedForm"    # [B

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{ExpSerialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-instance v1, Lcom/sleepycat/bind/tuple/TupleInput;

    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v1, p0, v3, v2}, Lcom/sleepycat/bind/tuple/TupleInput;-><init>([BII)V

    .line 234
    .local v1, "in":Lcom/sleepycat/bind/tuple/TupleInput;
    invoke-static {p0}, Lcom/sleepycat/je/cleaner/ExpirationTracker;->isExpirationInHours([B)Z

    move-result v2

    .line 235
    .local v2, "hours":Z
    const/4 v3, 0x0

    .line 237
    .local v3, "prevExp":I
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/bind/tuple/TupleInput;->available()I

    move-result v4

    if-lez v4, :cond_0

    .line 238
    invoke-virtual {v1}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    move-result v4

    add-int/2addr v4, v3

    .line 239
    .local v4, "exp":I
    invoke-virtual {v1}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    move-result v5

    .line 240
    .local v5, "size":I
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4, v2}, Lcom/sleepycat/je/dbi/TTL;->formatExpiration(IZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    move v3, v4

    .line 243
    .end local v4    # "exp":I
    .end local v5    # "size":I
    goto :goto_0

    .line 245
    :cond_0
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private track(IZI)V
    .locals 5
    .param p1, "expiration"    # I
    .param p2, "expirationInHours"    # Z
    .param p3, "size"    # I

    .line 137
    if-eqz p2, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, p1, 0x18

    .line 138
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 140
    .local v0, "expInHours":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExpirationTracker;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 149
    .local v1, "counter":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v1, :cond_2

    .line 150
    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExpirationTracker;->map:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v1, v2

    .line 157
    if-nez v1, :cond_1

    .line 158
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExpirationTracker;->map:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 160
    .local v2, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v1, v3

    .line 161
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iput-object v2, p0, Lcom/sleepycat/je/cleaner/ExpirationTracker;->map:Ljava/util/Map;

    .line 164
    .end local v2    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 167
    :cond_2
    :goto_1
    invoke-virtual {v1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 168
    return-void
.end method


# virtual methods
.method public getExpiredBytes(J)I
    .locals 6
    .param p1, "time"    # J

    .line 193
    const-wide/32 v0, 0x36ee80

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 195
    .local v0, "expLimit":I
    const/4 v1, 0x0

    .line 197
    .local v1, "expiredSize":I
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExpirationTracker;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 198
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 199
    .local v4, "exp":I
    if-le v4, v0, :cond_0

    .line 200
    goto :goto_0

    .line 202
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    add-int/2addr v1, v5

    .line 203
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    .end local v4    # "exp":I
    goto :goto_0

    .line 205
    :cond_1
    return v1
.end method

.method public getFileNum()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/sleepycat/je/cleaner/ExpirationTracker;->fileNum:J

    return-wide v0
.end method

.method hasPendingTrackCalls()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationTracker;->pendingTrackCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public incrementPendingTrackCalls()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationTracker;->pendingTrackCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 177
    return-void
.end method

.method serialize()[B
    .locals 9

    .line 293
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationTracker;->map:Ljava/util/Map;

    .line 295
    .local v0, "myMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    sget-object v1, Lcom/sleepycat/je/tree/Key;->EMPTY_KEY:[B

    return-object v1

    .line 299
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 300
    .local v1, "expList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 301
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 303
    const/4 v2, 0x0

    .line 304
    .local v2, "hours":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 305
    .local v4, "exp":I
    rem-int/lit8 v5, v4, 0x18

    if-eqz v5, :cond_1

    .line 306
    const/4 v2, 0x1

    .line 307
    goto :goto_1

    .line 309
    .end local v4    # "exp":I
    :cond_1
    goto :goto_0

    .line 311
    :cond_2
    :goto_1
    new-instance v3, Lcom/sleepycat/bind/tuple/TupleOutput;

    invoke-direct {v3}, Lcom/sleepycat/bind/tuple/TupleOutput;-><init>()V

    .line 312
    .local v3, "out":Lcom/sleepycat/bind/tuple/TupleOutput;
    invoke-virtual {v3, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->write(I)V

    .line 313
    const/4 v4, 0x0

    .line 315
    .local v4, "prevExp":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 316
    .local v6, "exp":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 317
    .local v7, "counter":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v2, :cond_3

    .line 318
    div-int/lit8 v6, v6, 0x18

    .line 320
    :cond_3
    sub-int v8, v6, v4

    invoke-virtual {v3, v8}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 321
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 322
    move v4, v6

    .line 323
    .end local v6    # "exp":I
    .end local v7    # "counter":Ljava/util/concurrent/atomic/AtomicInteger;
    goto :goto_2

    .line 325
    :cond_4
    invoke-virtual {v3}, Lcom/sleepycat/bind/tuple/TupleOutput;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{ExpTracker file= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/cleaner/ExpirationTracker;->fileNum:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 215
    new-instance v1, Ljava/util/TreeMap;

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExpirationTracker;->map:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 217
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 218
    .local v3, "exp":I
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/sleepycat/je/dbi/TTL;->formatExpiration(IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    .end local v3    # "exp":I
    goto :goto_0

    .line 222
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public track(Lcom/sleepycat/je/log/entry/LogEntry;I)V
    .locals 7
    .param p1, "entry"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .param p2, "size"    # I

    .line 86
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExpirationTracker;->pendingTrackCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 88
    invoke-interface {p1}, Lcom/sleepycat/je/log/entry/LogEntry;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    .line 90
    .local v0, "type":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->isUserLNType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 93
    .local v1, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getExpiration()I

    move-result v2

    .line 95
    .local v2, "expiration":I
    if-nez v2, :cond_0

    .line 96
    return-void

    .line 99
    :cond_0
    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isExpirationInHours()Z

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Lcom/sleepycat/je/cleaner/ExpirationTracker;->track(IZI)V

    .line 100
    return-void

    .line 103
    .end local v1    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local v2    # "expiration":I
    :cond_1
    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    .line 104
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 105
    return-void

    .line 108
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/log/entry/INLogEntry;

    .line 109
    .local v1, "inEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<*>;"
    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/INLogEntry;->getBINWithExpiration()Lcom/sleepycat/je/tree/BIN;

    move-result-object v2

    .line 111
    .local v2, "bin":Lcom/sleepycat/je/tree/BIN;
    if-nez v2, :cond_3

    .line 112
    return-void

    .line 115
    :cond_3
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v3

    .line 116
    .local v3, "inHours":Z
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v4

    div-int v4, p2, v4

    .line 118
    .local v4, "entrySize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 120
    invoke-virtual {v2, v5}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v6

    .line 122
    .local v6, "expiration":I
    if-nez v6, :cond_4

    .line 123
    goto :goto_1

    .line 126
    :cond_4
    invoke-direct {p0, v6, v3, v4}, Lcom/sleepycat/je/cleaner/ExpirationTracker;->track(IZI)V

    .line 118
    .end local v6    # "expiration":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 128
    .end local v5    # "i":I
    :cond_5
    return-void
.end method
