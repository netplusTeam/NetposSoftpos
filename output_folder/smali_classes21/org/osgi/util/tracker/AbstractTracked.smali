.class abstract Lorg/osgi/util/tracker/AbstractTracked;
.super Ljava/lang/Object;
.source "AbstractTracked.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false


# instance fields
.field private final adding:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation
.end field

.field volatile closed:Z

.field private final initial:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final tracked:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TS;TT;>;"
        }
    .end annotation
.end field

.field private trackingCount:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 105
    .local p0, "this":Lorg/osgi/util/tracker/AbstractTracked;, "Lorg/osgi/util/tracker/AbstractTracked<TS;TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/osgi/util/tracker/AbstractTracked;->tracked:Ljava/util/Map;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lorg/osgi/util/tracker/AbstractTracked;->trackingCount:I

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/osgi/util/tracker/AbstractTracked;->adding:Ljava/util/List;

    .line 109
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/osgi/util/tracker/AbstractTracked;->initial:Ljava/util/LinkedList;

    .line 110
    iput-boolean v0, p0, Lorg/osgi/util/tracker/AbstractTracked;->closed:Z

    .line 111
    return-void
.end method

.method private trackAdding(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TR;)V"
        }
    .end annotation

    .line 252
    .local p0, "this":Lorg/osgi/util/tracker/AbstractTracked;, "Lorg/osgi/util/tracker/AbstractTracked<TS;TT;TR;>;"
    .local p1, "item":Ljava/lang/Object;, "TS;"
    .local p2, "related":Ljava/lang/Object;, "TR;"
    const/4 v0, 0x0

    .line 253
    .local v0, "object":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 256
    .local v1, "becameUntracked":Z
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/osgi/util/tracker/AbstractTracked;->customizerAdding(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 262
    .end local v0    # "object":Ljava/lang/Object;, "TT;"
    .local v2, "object":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 263
    :try_start_1
    iget-object v0, p0, Lorg/osgi/util/tracker/AbstractTracked;->adding:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/osgi/util/tracker/AbstractTracked;->closed:Z

    if-nez v0, :cond_0

    .line 268
    if-eqz v2, :cond_1

    .line 269
    iget-object v0, p0, Lorg/osgi/util/tracker/AbstractTracked;->tracked:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-virtual {p0}, Lorg/osgi/util/tracker/AbstractTracked;->modified()V

    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 274
    :cond_0
    const/4 v0, 0x1

    .end local v1    # "becameUntracked":Z
    .local v0, "becameUntracked":Z
    move v1, v0

    .line 276
    .end local v0    # "becameUntracked":Z
    .restart local v1    # "becameUntracked":Z
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    nop

    .line 281
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 286
    invoke-virtual {p0, p1, p2, v2}, Lorg/osgi/util/tracker/AbstractTracked;->customizerRemoved(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 292
    :cond_2
    return-void

    .line 276
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 262
    .end local v2    # "object":Ljava/lang/Object;, "TT;"
    .local v0, "object":Ljava/lang/Object;, "TT;"
    :catchall_1
    move-exception v2

    monitor-enter p0

    .line 263
    :try_start_3
    iget-object v3, p0, Lorg/osgi/util/tracker/AbstractTracked;->adding:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lorg/osgi/util/tracker/AbstractTracked;->closed:Z

    if-nez v3, :cond_3

    .line 268
    if-eqz v0, :cond_4

    .line 269
    iget-object v3, p0, Lorg/osgi/util/tracker/AbstractTracked;->tracked:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-virtual {p0}, Lorg/osgi/util/tracker/AbstractTracked;->modified()V

    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    .line 274
    :cond_3
    const/4 v1, 0x1

    .line 276
    :cond_4
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    :catchall_2
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2
.end method


# virtual methods
.method close()V
    .locals 1

    .line 195
    .local p0, "this":Lorg/osgi/util/tracker/AbstractTracked;, "Lorg/osgi/util/tracker/AbstractTracked<TS;TT;TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osgi/util/tracker/AbstractTracked;->closed:Z

    .line 196
    return-void
.end method

.method copyEntries(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Ljava/util/Map<",
            "-TS;-TT;>;>(TM;)TM;"
        }
    .end annotation

    .line 432
    .local p0, "this":Lorg/osgi/util/tracker/AbstractTracked;, "Lorg/osgi/util/tracker/AbstractTracked<TS;TT;TR;>;"
    .local p1, "map":Ljava/util/Map;, "TM;"
    iget-object v0, p0, Lorg/osgi/util/tracker/AbstractTracked;->tracked:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 433
    return-object p1
.end method

.method copyKeys([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;)[TS;"
        }
    .end annotation

    .line 392
    .local p0, "this":Lorg/osgi/util/tracker/AbstractTracked;, "Lorg/osgi/util/tracker/AbstractTracked<TS;TT;TR;>;"
    .local p1, "list":[Ljava/lang/Object;, "[TS;"
    iget-object v0, p0, Lorg/osgi/util/tracker/AbstractTracked;->tracked:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract customizerAdding(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TR;)TT;"
        }
    .end annotation
.end method

.method abstract customizerModified(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TR;TT;)V"
        }
    .end annotation
.end method

.method abstract customizerRemoved(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TR;TT;)V"
        }
    .end annotation
.end method

.method getCustomizedObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TT;"
        }
    .end annotation

    .line 380
    .local p0, "this":Lorg/osgi/util/tracker/AbstractTracked;, "Lorg/osgi/util/tracker/AbstractTracked<TS;TT;TR;>;"
    .local p1, "item":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lorg/osgi/util/tracker/AbstractTracked;->tracked:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getTrackingCount()I
    .locals 1

    .line 416
    .local p0, "this":Lorg/osgi/util/tracker/AbstractTracked;, "Lorg/osgi/util/tracker/AbstractTracked<TS;TT;TR;>;"
    iget v0, p0, Lorg/osgi/util/tracker/AbstractTracked;->trackingCount:I

    return v0
.end method

.method isEmpty()Z
    .locals 1

    .line 368
    .local p0, "this":Lorg/osgi/util/tracker/AbstractTracked;, "Lorg/osgi/util/tracker/AbstractTracked<TS;TT;TR;>;"
    iget-object v0, p0, Lorg/osgi/util/tracker/AbstractTracked;->tracked:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method modified()V
    .locals 1

    .line 402
    .local p0, "this":Lorg/osgi/util/tracker/AbstractTracked;, "Lorg/osgi/util/tracker/AbstractTracked<TS;TT;TR;>;"
    iget v0, p0, Lorg/osgi/util/tracker/AbstractTracked;->trackingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/osgi/util/tracker/AbstractTracked;->trackingCount:I

    .line 403
    return-void
.end method

.method setInitial([Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;)V"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/osgi/util/tracker/AbstractTracked;, "Lorg/osgi/util/tracker/AbstractTracked<TS;TT;TR;>;"
    .local p1, "list":[Ljava/lang/Object;, "[TS;"
    if-nez p1, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 129
    .local v3, "item":Ljava/lang/Object;, "TS;"
    if-nez v3, :cond_1

    .line 130
    goto :goto_1

    .line 135
    :cond_1
    iget-object v4, p0, Lorg/osgi/util/tracker/AbstractTracked;->initial:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v3    # "item":Ljava/lang/Object;, "TS;"
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    return-void
.end method

.method size()I
    .locals 1

    .line 356
    .local p0, "this":Lorg/osgi/util/tracker/AbstractTracked;, "Lorg/osgi/util/tracker/AbstractTracked<TS;TT;TR;>;"
    iget-object v0, p0, Lorg/osgi/util/tracker/AbstractTracked;->tracked:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method track(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TR;)V"
        }
    .end annotation

    .line 206
    .local p0, "this":Lorg/osgi/util/tracker/AbstractTracked;, "Lorg/osgi/util/tracker/AbstractTracked<TS;TT;TR;>;"
    .local p1, "item":Ljava/lang/Object;, "TS;"
    .local p2, "related":Ljava/lang/Object;, "TR;"
    monitor-enter p0

    .line 207
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lorg/osgi/util/tracker/AbstractTracked;->closed:Z

    if-eqz v1, :cond_0

    .line 208
    monitor-exit p0

    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lorg/osgi/util/tracker/AbstractTracked;->tracked:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .local v0, "object":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_2

    .line 212
    :try_start_1
    iget-object v1, p0, Lorg/osgi/util/tracker/AbstractTracked;->adding:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    monitor-exit p0

    return-void

    .line 219
    :cond_1
    iget-object v1, p0, Lorg/osgi/util/tracker/AbstractTracked;->adding:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {p0}, Lorg/osgi/util/tracker/AbstractTracked;->modified()V

    .line 226
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    if-nez v0, :cond_3

    .line 229
    invoke-direct {p0, p1, p2}, Lorg/osgi/util/tracker/AbstractTracked;->trackAdding(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 232
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lorg/osgi/util/tracker/AbstractTracked;->customizerModified(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    :goto_1
    return-void

    .line 226
    .end local v0    # "object":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    .restart local v0    # "object":Ljava/lang/Object;, "TT;"
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_2
.end method

.method trackInitial()V
    .locals 3

    .local p0, "this":Lorg/osgi/util/tracker/AbstractTracked;, "Lorg/osgi/util/tracker/AbstractTracked<TS;TT;TR;>;"
    const/4 v0, 0x0

    move-object v1, v0

    .line 150
    :goto_0
    monitor-enter p0

    .line 151
    :try_start_0
    iget-boolean v2, p0, Lorg/osgi/util/tracker/AbstractTracked;->closed:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/osgi/util/tracker/AbstractTracked;->initial:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    iget-object v2, p0, Lorg/osgi/util/tracker/AbstractTracked;->initial:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    .local v1, "item":Ljava/lang/Object;, "TS;"
    :try_start_1
    iget-object v2, p0, Lorg/osgi/util/tracker/AbstractTracked;->tracked:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 167
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 169
    :cond_1
    :try_start_3
    iget-object v2, p0, Lorg/osgi/util/tracker/AbstractTracked;->adding:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    .line 176
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 178
    :cond_2
    :try_start_5
    iget-object v2, p0, Lorg/osgi/util/tracker/AbstractTracked;->adding:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 183
    invoke-direct {p0, v1, v0}, Lorg/osgi/util/tracker/AbstractTracked;->trackAdding(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .end local v1    # "item":Ljava/lang/Object;, "TS;"
    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 155
    :cond_3
    :goto_1
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    .line 179
    :catchall_1
    move-exception v0

    .restart local v1    # "item":Ljava/lang/Object;, "TS;"
    :goto_2
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method untrack(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TR;)V"
        }
    .end annotation

    .line 302
    .local p0, "this":Lorg/osgi/util/tracker/AbstractTracked;, "Lorg/osgi/util/tracker/AbstractTracked<TS;TT;TR;>;"
    .local p1, "item":Ljava/lang/Object;, "TS;"
    .local p2, "related":Ljava/lang/Object;, "TR;"
    monitor-enter p0

    .line 303
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/osgi/util/tracker/AbstractTracked;->initial:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    monitor-exit p0

    return-void

    .line 316
    :cond_0
    iget-object v1, p0, Lorg/osgi/util/tracker/AbstractTracked;->adding:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    monitor-exit p0

    return-void

    .line 328
    :cond_1
    iget-object v1, p0, Lorg/osgi/util/tracker/AbstractTracked;->tracked:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    .local v0, "object":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_2

    .line 333
    :try_start_1
    monitor-exit p0

    return-void

    .line 335
    :cond_2
    invoke-virtual {p0}, Lorg/osgi/util/tracker/AbstractTracked;->modified()V

    .line 336
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 341
    invoke-virtual {p0, p1, p2, v0}, Lorg/osgi/util/tracker/AbstractTracked;->customizerRemoved(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 346
    return-void

    .line 336
    .end local v0    # "object":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    .restart local v0    # "object":Ljava/lang/Object;, "TT;"
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_0
.end method
