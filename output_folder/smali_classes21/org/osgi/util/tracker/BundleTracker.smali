.class public Lorg/osgi/util/tracker/BundleTracker;
.super Ljava/lang/Object;
.source "BundleTracker.java"

# interfaces
.implements Lorg/osgi/util/tracker/BundleTrackerCustomizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osgi/util/tracker/BundleTracker$Tracked;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/osgi/util/tracker/BundleTrackerCustomizer<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false


# instance fields
.field protected final context:Lorg/osgi/framework/BundleContext;

.field final customizer:Lorg/osgi/util/tracker/BundleTrackerCustomizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osgi/util/tracker/BundleTrackerCustomizer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mask:I

.field private volatile tracked:Lorg/osgi/util/tracker/BundleTracker$Tracked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osgi/util/tracker/BundleTracker<",
            "TT;>.Tracked;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/osgi/framework/BundleContext;ILorg/osgi/util/tracker/BundleTrackerCustomizer;)V
    .locals 1
    .param p1, "context"    # Lorg/osgi/framework/BundleContext;
    .param p2, "stateMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/BundleContext;",
            "I",
            "Lorg/osgi/util/tracker/BundleTrackerCustomizer<",
            "TT;>;)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker;, "Lorg/osgi/util/tracker/BundleTracker<TT;>;"
    .local p3, "customizer":Lorg/osgi/util/tracker/BundleTrackerCustomizer;, "Lorg/osgi/util/tracker/BundleTrackerCustomizer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/osgi/util/tracker/BundleTracker;->context:Lorg/osgi/framework/BundleContext;

    .line 108
    iput p2, p0, Lorg/osgi/util/tracker/BundleTracker;->mask:I

    .line 109
    if-nez p3, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lorg/osgi/util/tracker/BundleTracker;->customizer:Lorg/osgi/util/tracker/BundleTrackerCustomizer;

    .line 110
    return-void
.end method

.method private tracked()Lorg/osgi/util/tracker/BundleTracker$Tracked;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/osgi/util/tracker/BundleTracker<",
            "TT;>.Tracked;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker;, "Lorg/osgi/util/tracker/BundleTracker<TT;>;"
    iget-object v0, p0, Lorg/osgi/util/tracker/BundleTracker;->tracked:Lorg/osgi/util/tracker/BundleTracker$Tracked;

    return-object v0
.end method


# virtual methods
.method public addingBundle(Lorg/osgi/framework/Bundle;Lorg/osgi/framework/BundleEvent;)Ljava/lang/Object;
    .locals 1
    .param p1, "bundle"    # Lorg/osgi/framework/Bundle;
    .param p2, "event"    # Lorg/osgi/framework/BundleEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/Bundle;",
            "Lorg/osgi/framework/BundleEvent;",
            ")TT;"
        }
    .end annotation

    .line 222
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker;, "Lorg/osgi/util/tracker/BundleTracker<TT;>;"
    move-object v0, p1

    .line 223
    .local v0, "result":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public close()V
    .locals 6

    .line 173
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker;, "Lorg/osgi/util/tracker/BundleTracker<TT;>;"
    monitor-enter p0

    .line 174
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/osgi/util/tracker/BundleTracker;->tracked:Lorg/osgi/util/tracker/BundleTracker$Tracked;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 175
    .local v1, "outgoing":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    if-nez v1, :cond_0

    .line 176
    :try_start_1
    monitor-exit p0

    return-void

    .line 181
    :cond_0
    invoke-virtual {v1}, Lorg/osgi/util/tracker/BundleTracker$Tracked;->close()V

    .line 182
    invoke-virtual {p0}, Lorg/osgi/util/tracker/BundleTracker;->getBundles()[Lorg/osgi/framework/Bundle;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    .local v2, "bundles":[Lorg/osgi/framework/Bundle;
    :try_start_2
    iput-object v0, p0, Lorg/osgi/util/tracker/BundleTracker;->tracked:Lorg/osgi/util/tracker/BundleTracker$Tracked;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    :try_start_3
    iget-object v3, p0, Lorg/osgi/util/tracker/BundleTracker;->context:Lorg/osgi/framework/BundleContext;

    invoke-interface {v3, v1}, Lorg/osgi/framework/BundleContext;->removeBundleListener(Lorg/osgi/framework/BundleListener;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    goto :goto_0

    .line 186
    :catch_0
    move-exception v3

    .line 189
    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    if-eqz v2, :cond_1

    .line 191
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 192
    aget-object v4, v2, v3

    invoke-virtual {v1, v4, v0}, Lorg/osgi/util/tracker/BundleTracker$Tracked;->untrack(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 195
    .end local v3    # "i":I
    :cond_1
    return-void

    .line 189
    :catchall_0
    move-exception v0

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    .end local v2    # "bundles":[Lorg/osgi/framework/Bundle;
    :catchall_1
    move-exception v2

    goto :goto_2

    .end local v1    # "outgoing":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    :catchall_2
    move-exception v2

    move-object v1, v0

    .local v0, "bundles":[Lorg/osgi/framework/Bundle;
    .restart local v1    # "outgoing":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v2

    :catchall_3
    move-exception v2

    goto :goto_2
.end method

.method public getBundles()[Lorg/osgi/framework/Bundle;
    .locals 3

    .line 278
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker;, "Lorg/osgi/util/tracker/BundleTracker<TT;>;"
    invoke-direct {p0}, Lorg/osgi/util/tracker/BundleTracker;->tracked()Lorg/osgi/util/tracker/BundleTracker$Tracked;

    move-result-object v0

    .line 279
    .local v0, "t":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 280
    return-object v1

    .line 282
    :cond_0
    monitor-enter v0

    .line 283
    :try_start_0
    invoke-virtual {v0}, Lorg/osgi/util/tracker/BundleTracker$Tracked;->size()I

    move-result v2

    .line 284
    .local v2, "length":I
    if-nez v2, :cond_1

    .line 285
    monitor-exit v0

    return-object v1

    .line 287
    :cond_1
    new-array v1, v2, [Lorg/osgi/framework/Bundle;

    invoke-virtual {v0, v1}, Lorg/osgi/util/tracker/BundleTracker$Tracked;->copyKeys([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/osgi/framework/Bundle;

    monitor-exit v0

    return-object v1

    .line 288
    .end local v2    # "length":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getObject(Lorg/osgi/framework/Bundle;)Ljava/lang/Object;
    .locals 2
    .param p1, "bundle"    # Lorg/osgi/framework/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/Bundle;",
            ")TT;"
        }
    .end annotation

    .line 301
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker;, "Lorg/osgi/util/tracker/BundleTracker<TT;>;"
    invoke-direct {p0}, Lorg/osgi/util/tracker/BundleTracker;->tracked()Lorg/osgi/util/tracker/BundleTracker$Tracked;

    move-result-object v0

    .line 302
    .local v0, "t":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    if-nez v0, :cond_0

    .line 303
    const/4 v1, 0x0

    return-object v1

    .line 305
    :cond_0
    monitor-enter v0

    .line 306
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/osgi/util/tracker/BundleTracker$Tracked;->getCustomizedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 307
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTracked()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/osgi/framework/Bundle;",
            "TT;>;"
        }
    .end annotation

    .line 381
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker;, "Lorg/osgi/util/tracker/BundleTracker<TT;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 382
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/osgi/framework/Bundle;TT;>;"
    invoke-direct {p0}, Lorg/osgi/util/tracker/BundleTracker;->tracked()Lorg/osgi/util/tracker/BundleTracker$Tracked;

    move-result-object v1

    .line 383
    .local v1, "t":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    if-nez v1, :cond_0

    .line 384
    return-object v0

    .line 386
    :cond_0
    monitor-enter v1

    .line 387
    :try_start_0
    invoke-virtual {v1, v0}, Lorg/osgi/util/tracker/BundleTracker$Tracked;->copyEntries(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 388
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getTrackingCount()I
    .locals 2

    .line 362
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker;, "Lorg/osgi/util/tracker/BundleTracker<TT;>;"
    invoke-direct {p0}, Lorg/osgi/util/tracker/BundleTracker;->tracked()Lorg/osgi/util/tracker/BundleTracker$Tracked;

    move-result-object v0

    .line 363
    .local v0, "t":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    if-nez v0, :cond_0

    .line 364
    const/4 v1, -0x1

    return v1

    .line 366
    :cond_0
    monitor-enter v0

    .line 367
    :try_start_0
    invoke-virtual {v0}, Lorg/osgi/util/tracker/BundleTracker$Tracked;->getTrackingCount()I

    move-result v1

    monitor-exit v0

    return v1

    .line 368
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 399
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker;, "Lorg/osgi/util/tracker/BundleTracker<TT;>;"
    invoke-direct {p0}, Lorg/osgi/util/tracker/BundleTracker;->tracked()Lorg/osgi/util/tracker/BundleTracker$Tracked;

    move-result-object v0

    .line 400
    .local v0, "t":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    if-nez v0, :cond_0

    .line 401
    const/4 v1, 0x1

    return v1

    .line 403
    :cond_0
    monitor-enter v0

    .line 404
    :try_start_0
    invoke-virtual {v0}, Lorg/osgi/util/tracker/BundleTracker$Tracked;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 405
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public modifiedBundle(Lorg/osgi/framework/Bundle;Lorg/osgi/framework/BundleEvent;Ljava/lang/Object;)V
    .locals 0
    .param p1, "bundle"    # Lorg/osgi/framework/Bundle;
    .param p2, "event"    # Lorg/osgi/framework/BundleEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/Bundle;",
            "Lorg/osgi/framework/BundleEvent;",
            "TT;)V"
        }
    .end annotation

    .line 246
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker;, "Lorg/osgi/util/tracker/BundleTracker<TT;>;"
    .local p3, "object":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public open()V
    .locals 8

    .line 129
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker;, "Lorg/osgi/util/tracker/BundleTracker<TT;>;"
    monitor-enter p0

    .line 130
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/osgi/util/tracker/BundleTracker;->tracked:Lorg/osgi/util/tracker/BundleTracker$Tracked;

    if-eqz v1, :cond_0

    .line 131
    monitor-exit p0

    return-void

    .line 136
    :cond_0
    new-instance v1, Lorg/osgi/util/tracker/BundleTracker$Tracked;

    invoke-direct {v1, p0}, Lorg/osgi/util/tracker/BundleTracker$Tracked;-><init>(Lorg/osgi/util/tracker/BundleTracker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 137
    .local v1, "t":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    :try_start_1
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    :try_start_2
    iget-object v2, p0, Lorg/osgi/util/tracker/BundleTracker;->context:Lorg/osgi/framework/BundleContext;

    invoke-interface {v2, v1}, Lorg/osgi/framework/BundleContext;->addBundleListener(Lorg/osgi/framework/BundleListener;)V

    .line 139
    iget-object v2, p0, Lorg/osgi/util/tracker/BundleTracker;->context:Lorg/osgi/framework/BundleContext;

    invoke-interface {v2}, Lorg/osgi/framework/BundleContext;->getBundles()[Lorg/osgi/framework/Bundle;

    move-result-object v2

    .line 140
    .local v2, "bundles":[Lorg/osgi/framework/Bundle;
    if-eqz v2, :cond_3

    .line 141
    array-length v3, v2

    .line 142
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 143
    aget-object v5, v2, v4

    invoke-interface {v5}, Lorg/osgi/framework/Bundle;->getState()I

    move-result v5

    .line 144
    .local v5, "state":I
    iget v6, p0, Lorg/osgi/util/tracker/BundleTracker;->mask:I

    and-int/2addr v6, v5

    if-nez v6, :cond_1

    .line 146
    aput-object v0, v2, v4

    .line 142
    .end local v5    # "state":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v1, v2}, Lorg/osgi/util/tracker/BundleTracker$Tracked;->setInitial([Ljava/lang/Object;)V

    .line 152
    .end local v2    # "bundles":[Lorg/osgi/framework/Bundle;
    .end local v3    # "length":I
    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :try_start_3
    iput-object v1, p0, Lorg/osgi/util/tracker/BundleTracker;->tracked:Lorg/osgi/util/tracker/BundleTracker$Tracked;

    .line 154
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    invoke-virtual {v1}, Lorg/osgi/util/tracker/BundleTracker$Tracked;->trackInitial()V

    .line 157
    return-void

    .line 152
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "t":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 154
    .restart local v1    # "t":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    :catchall_1
    move-exception v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1

    .end local v1    # "t":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    :catchall_2
    move-exception v1

    .local v0, "t":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    :goto_1
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    :catchall_3
    move-exception v1

    goto :goto_1
.end method

.method public remove(Lorg/osgi/framework/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Lorg/osgi/framework/Bundle;

    .line 321
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker;, "Lorg/osgi/util/tracker/BundleTracker<TT;>;"
    invoke-direct {p0}, Lorg/osgi/util/tracker/BundleTracker;->tracked()Lorg/osgi/util/tracker/BundleTracker$Tracked;

    move-result-object v0

    .line 322
    .local v0, "t":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    if-nez v0, :cond_0

    .line 323
    return-void

    .line 325
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/osgi/util/tracker/BundleTracker$Tracked;->untrack(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 326
    return-void
.end method

.method public removedBundle(Lorg/osgi/framework/Bundle;Lorg/osgi/framework/BundleEvent;Ljava/lang/Object;)V
    .locals 0
    .param p1, "bundle"    # Lorg/osgi/framework/Bundle;
    .param p2, "event"    # Lorg/osgi/framework/BundleEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/Bundle;",
            "Lorg/osgi/framework/BundleEvent;",
            "TT;)V"
        }
    .end annotation

    .line 268
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker;, "Lorg/osgi/util/tracker/BundleTracker<TT;>;"
    .local p3, "object":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public size()I
    .locals 2

    .line 334
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker;, "Lorg/osgi/util/tracker/BundleTracker<TT;>;"
    invoke-direct {p0}, Lorg/osgi/util/tracker/BundleTracker;->tracked()Lorg/osgi/util/tracker/BundleTracker$Tracked;

    move-result-object v0

    .line 335
    .local v0, "t":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    if-nez v0, :cond_0

    .line 336
    const/4 v1, 0x0

    return v1

    .line 338
    :cond_0
    monitor-enter v0

    .line 339
    :try_start_0
    invoke-virtual {v0}, Lorg/osgi/util/tracker/BundleTracker$Tracked;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
