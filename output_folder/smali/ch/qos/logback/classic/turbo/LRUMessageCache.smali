.class Lch/qos/logback/classic/turbo/LRUMessageCache;
.super Ljava/util/LinkedHashMap;
.source "LRUMessageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final cacheSize:I


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "cacheSize"    # I

    .line 29
    int-to-float v0, p1

    const v1, 0x3faaaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 30
    if-lt p1, v2, :cond_0

    .line 33
    iput p1, p0, Lch/qos/logback/classic/turbo/LRUMessageCache;->cacheSize:I

    .line 34
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cache size cannot be smaller than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 64
    :try_start_0
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 63
    .end local p0    # "this":Lch/qos/logback/classic/turbo/LRUMessageCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getMessageCountAndThenIncrement(Ljava/lang/String;)I
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 39
    return v0

    .line 44
    :cond_0
    monitor-enter p0

    .line 45
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 46
    .local v1, "i":Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v1    # "i":Ljava/lang/Integer;
    .local v0, "i":Ljava/lang/Integer;
    goto :goto_0

    .line 49
    .end local v0    # "i":Ljava/lang/Integer;
    .restart local v1    # "i":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 51
    .end local v1    # "i":Ljava/lang/Integer;
    .restart local v0    # "i":Ljava/lang/Integer;
    :goto_0
    invoke-super {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 52
    .end local v0    # "i":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .param p1, "eldest"    # Ljava/util/Map$Entry;

    .line 59
    invoke-virtual {p0}, Lch/qos/logback/classic/turbo/LRUMessageCache;->size()I

    move-result v0

    iget v1, p0, Lch/qos/logback/classic/turbo/LRUMessageCache;->cacheSize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
