.class public Lorg/osgi/util/tracker/ServiceTracker;
.super Ljava/lang/Object;
.source "ServiceTracker.java"

# interfaces
.implements Lorg/osgi/util/tracker/ServiceTrackerCustomizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osgi/util/tracker/ServiceTracker$AllTracked;,
        Lorg/osgi/util/tracker/ServiceTracker$Tracked;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/osgi/util/tracker/ServiceTrackerCustomizer<",
        "TS;TT;>;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false


# instance fields
.field private volatile cachedReference:Lorg/osgi/framework/ServiceReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;"
        }
    .end annotation
.end field

.field private volatile cachedService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final context:Lorg/osgi/framework/BundleContext;

.field final customizer:Lorg/osgi/util/tracker/ServiceTrackerCustomizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osgi/util/tracker/ServiceTrackerCustomizer<",
            "TS;TT;>;"
        }
    .end annotation
.end field

.field protected final filter:Lorg/osgi/framework/Filter;

.field final listenerFilter:Ljava/lang/String;

.field private final trackClass:Ljava/lang/String;

.field private final trackReference:Lorg/osgi/framework/ServiceReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;"
        }
    .end annotation
.end field

.field private volatile tracked:Lorg/osgi/util/tracker/ServiceTracker$Tracked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osgi/util/tracker/ServiceTracker<",
            "TS;TT;>.Tracked;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/osgi/framework/BundleContext;Ljava/lang/Class;Lorg/osgi/util/tracker/ServiceTrackerCustomizer;)V
    .locals 1
    .param p1, "context"    # Lorg/osgi/framework/BundleContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/BundleContext;",
            "Ljava/lang/Class<",
            "TS;>;",
            "Lorg/osgi/util/tracker/ServiceTrackerCustomizer<",
            "TS;TT;>;)V"
        }
    .end annotation

    .line 247
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    .local p3, "customizer":Lorg/osgi/util/tracker/ServiceTrackerCustomizer;, "Lorg/osgi/util/tracker/ServiceTrackerCustomizer<TS;TT;>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lorg/osgi/util/tracker/ServiceTracker;-><init>(Lorg/osgi/framework/BundleContext;Ljava/lang/String;Lorg/osgi/util/tracker/ServiceTrackerCustomizer;)V

    .line 248
    return-void
.end method

.method public constructor <init>(Lorg/osgi/framework/BundleContext;Ljava/lang/String;Lorg/osgi/util/tracker/ServiceTrackerCustomizer;)V
    .locals 4
    .param p1, "context"    # Lorg/osgi/framework/BundleContext;
    .param p2, "clazz"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/BundleContext;",
            "Ljava/lang/String;",
            "Lorg/osgi/util/tracker/ServiceTrackerCustomizer<",
            "TS;TT;>;)V"
        }
    .end annotation

    .line 176
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    .local p3, "customizer":Lorg/osgi/util/tracker/ServiceTrackerCustomizer;, "Lorg/osgi/util/tracker/ServiceTrackerCustomizer<TS;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lorg/osgi/util/tracker/ServiceTracker;->context:Lorg/osgi/framework/BundleContext;

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->trackReference:Lorg/osgi/framework/ServiceReference;

    .line 179
    iput-object p2, p0, Lorg/osgi/util/tracker/ServiceTracker;->trackClass:Ljava/lang/String;

    .line 180
    if-nez p3, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->customizer:Lorg/osgi/util/tracker/ServiceTrackerCustomizer;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(objectClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->listenerFilter:Ljava/lang/String;

    .line 184
    :try_start_0
    invoke-interface {p1, v0}, Lorg/osgi/framework/BundleContext;->createFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;

    move-result-object v0

    iput-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->filter:Lorg/osgi/framework/Filter;
    :try_end_0
    .catch Lorg/osgi/framework/InvalidSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    nop

    .line 194
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Lorg/osgi/framework/InvalidSyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected InvalidSyntaxException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/osgi/framework/InvalidSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 191
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 192
    throw v1
.end method

.method public constructor <init>(Lorg/osgi/framework/BundleContext;Lorg/osgi/framework/Filter;Lorg/osgi/util/tracker/ServiceTrackerCustomizer;)V
    .locals 1
    .param p1, "context"    # Lorg/osgi/framework/BundleContext;
    .param p2, "filter"    # Lorg/osgi/framework/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/BundleContext;",
            "Lorg/osgi/framework/Filter;",
            "Lorg/osgi/util/tracker/ServiceTrackerCustomizer<",
            "TS;TT;>;)V"
        }
    .end annotation

    .line 213
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    .local p3, "customizer":Lorg/osgi/util/tracker/ServiceTrackerCustomizer;, "Lorg/osgi/util/tracker/ServiceTrackerCustomizer<TS;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lorg/osgi/util/tracker/ServiceTracker;->context:Lorg/osgi/framework/BundleContext;

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->trackReference:Lorg/osgi/framework/ServiceReference;

    .line 216
    iput-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->trackClass:Ljava/lang/String;

    .line 217
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->listenerFilter:Ljava/lang/String;

    .line 218
    iput-object p2, p0, Lorg/osgi/util/tracker/ServiceTracker;->filter:Lorg/osgi/framework/Filter;

    .line 219
    if-nez p3, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->customizer:Lorg/osgi/util/tracker/ServiceTrackerCustomizer;

    .line 220
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 226
    return-void

    .line 224
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lorg/osgi/framework/BundleContext;Lorg/osgi/framework/ServiceReference;Lorg/osgi/util/tracker/ServiceTrackerCustomizer;)V
    .locals 4
    .param p1, "context"    # Lorg/osgi/framework/BundleContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/BundleContext;",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;",
            "Lorg/osgi/util/tracker/ServiceTrackerCustomizer<",
            "TS;TT;>;)V"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    .local p2, "reference":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<TS;>;"
    .local p3, "customizer":Lorg/osgi/util/tracker/ServiceTrackerCustomizer;, "Lorg/osgi/util/tracker/ServiceTrackerCustomizer<TS;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lorg/osgi/util/tracker/ServiceTracker;->context:Lorg/osgi/framework/BundleContext;

    .line 142
    iput-object p2, p0, Lorg/osgi/util/tracker/ServiceTracker;->trackReference:Lorg/osgi/framework/ServiceReference;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->trackClass:Ljava/lang/String;

    .line 144
    if-nez p3, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->customizer:Lorg/osgi/util/tracker/ServiceTrackerCustomizer;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(service.id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "service.id"

    invoke-interface {p2, v1}, Lorg/osgi/framework/ServiceReference;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->listenerFilter:Ljava/lang/String;

    .line 147
    :try_start_0
    invoke-interface {p1, v0}, Lorg/osgi/framework/BundleContext;->createFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;

    move-result-object v0

    iput-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->filter:Lorg/osgi/framework/Filter;
    :try_end_0
    .catch Lorg/osgi/framework/InvalidSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    nop

    .line 157
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Lorg/osgi/framework/InvalidSyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected InvalidSyntaxException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/osgi/framework/InvalidSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 155
    throw v1
.end method

.method private getInitialReferences(ZLjava/lang/String;Ljava/lang/String;)[Lorg/osgi/framework/ServiceReference;
    .locals 1
    .param p1, "trackAllServices"    # Z
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "filterString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")[",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/InvalidSyntaxException;
        }
    .end annotation

    .line 336
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    iget-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->context:Lorg/osgi/framework/BundleContext;

    if-eqz p1, :cond_0

    invoke-interface {v0, p2, p3}, Lorg/osgi/framework/BundleContext;->getAllServiceReferences(Ljava/lang/String;Ljava/lang/String;)[Lorg/osgi/framework/ServiceReference;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2, p3}, Lorg/osgi/framework/BundleContext;->getServiceReferences(Ljava/lang/String;Ljava/lang/String;)[Lorg/osgi/framework/ServiceReference;

    move-result-object v0

    :goto_0
    check-cast v0, [Lorg/osgi/framework/ServiceReference;

    .line 337
    .local v0, "result":[Lorg/osgi/framework/ServiceReference;, "[Lorg/osgi/framework/ServiceReference<TS;>;"
    return-object v0
.end method

.method private tracked()Lorg/osgi/util/tracker/ServiceTracker$Tracked;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/osgi/util/tracker/ServiceTracker<",
            "TS;TT;>.Tracked;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    iget-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->tracked:Lorg/osgi/util/tracker/ServiceTracker$Tracked;

    return-object v0
.end method


# virtual methods
.method public addingService(Lorg/osgi/framework/ServiceReference;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;)TT;"
        }
    .end annotation

    .line 414
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    .local p1, "reference":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<TS;>;"
    iget-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->context:Lorg/osgi/framework/BundleContext;

    invoke-interface {v0, p1}, Lorg/osgi/framework/BundleContext;->getService(Lorg/osgi/framework/ServiceReference;)Ljava/lang/Object;

    move-result-object v0

    .line 415
    .local v0, "result":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public close()V
    .locals 6

    .line 354
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    monitor-enter p0

    .line 355
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/osgi/util/tracker/ServiceTracker;->tracked:Lorg/osgi/util/tracker/ServiceTracker$Tracked;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 356
    .local v1, "outgoing":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    if-nez v1, :cond_0

    .line 357
    :try_start_1
    monitor-exit p0

    return-void

    .line 362
    :cond_0
    invoke-virtual {v1}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->close()V

    .line 363
    invoke-virtual {p0}, Lorg/osgi/util/tracker/ServiceTracker;->getServiceReferences()[Lorg/osgi/framework/ServiceReference;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 364
    .local v2, "references":[Lorg/osgi/framework/ServiceReference;, "[Lorg/osgi/framework/ServiceReference<TS;>;"
    :try_start_2
    iput-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->tracked:Lorg/osgi/util/tracker/ServiceTracker$Tracked;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 366
    :try_start_3
    iget-object v3, p0, Lorg/osgi/util/tracker/ServiceTracker;->context:Lorg/osgi/framework/BundleContext;

    invoke-interface {v3, v1}, Lorg/osgi/framework/BundleContext;->removeServiceListener(Lorg/osgi/framework/ServiceListener;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 369
    goto :goto_0

    .line 367
    :catch_0
    move-exception v3

    .line 370
    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 371
    invoke-virtual {p0}, Lorg/osgi/util/tracker/ServiceTracker;->modified()V

    .line 372
    monitor-enter v1

    .line 373
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 374
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 375
    if-eqz v2, :cond_1

    .line 376
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 377
    aget-object v4, v2, v3

    invoke-virtual {v1, v4, v0}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->untrack(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 376
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 385
    .end local v3    # "i":I
    :cond_1
    return-void

    .line 374
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 370
    :catchall_1
    move-exception v0

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    .end local v2    # "references":[Lorg/osgi/framework/ServiceReference;, "[Lorg/osgi/framework/ServiceReference<TS;>;"
    :catchall_2
    move-exception v2

    .local v0, "references":[Lorg/osgi/framework/ServiceReference;, "[Lorg/osgi/framework/ServiceReference<TS;>;"
    goto :goto_2

    .end local v0    # "references":[Lorg/osgi/framework/ServiceReference;, "[Lorg/osgi/framework/ServiceReference<TS;>;"
    .end local v1    # "outgoing":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    :catchall_3
    move-exception v2

    move-object v1, v0

    .local v1, "references":[Lorg/osgi/framework/ServiceReference;, "[Lorg/osgi/framework/ServiceReference<TS;>;"
    move-object v5, v1

    move-object v0, v5

    .restart local v0    # "references":[Lorg/osgi/framework/ServiceReference;, "[Lorg/osgi/framework/ServiceReference<TS;>;"
    .local v1, "outgoing":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    :goto_2
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v2

    :catchall_4
    move-exception v2

    goto :goto_2
.end method

.method public getService()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 673
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    iget-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->cachedService:Ljava/lang/Object;

    .line 674
    .local v0, "service":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 678
    return-object v0

    .line 683
    :cond_0
    invoke-virtual {p0}, Lorg/osgi/util/tracker/ServiceTracker;->getServiceReference()Lorg/osgi/framework/ServiceReference;

    move-result-object v1

    .line 684
    .local v1, "reference":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<TS;>;"
    if-nez v1, :cond_1

    .line 685
    const/4 v2, 0x0

    return-object v2

    .line 687
    :cond_1
    invoke-virtual {p0, v1}, Lorg/osgi/util/tracker/ServiceTracker;->getService(Lorg/osgi/framework/ServiceReference;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/osgi/util/tracker/ServiceTracker;->cachedService:Ljava/lang/Object;

    return-object v2
.end method

.method public getService(Lorg/osgi/framework/ServiceReference;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;)TT;"
        }
    .end annotation

    .line 620
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    .local p1, "reference":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<TS;>;"
    invoke-direct {p0}, Lorg/osgi/util/tracker/ServiceTracker;->tracked()Lorg/osgi/util/tracker/ServiceTracker$Tracked;

    move-result-object v0

    .line 621
    .local v0, "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    if-nez v0, :cond_0

    .line 622
    const/4 v1, 0x0

    return-object v1

    .line 624
    :cond_0
    monitor-enter v0

    .line 625
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->getCustomizedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 626
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServiceReference()Lorg/osgi/framework/ServiceReference;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;"
        }
    .end annotation

    .line 560
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    iget-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->cachedReference:Lorg/osgi/framework/ServiceReference;

    .line 561
    .local v0, "reference":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<TS;>;"
    if-eqz v0, :cond_0

    .line 565
    return-object v0

    .line 570
    :cond_0
    invoke-virtual {p0}, Lorg/osgi/util/tracker/ServiceTracker;->getServiceReferences()[Lorg/osgi/framework/ServiceReference;

    move-result-object v1

    .line 571
    .local v1, "references":[Lorg/osgi/framework/ServiceReference;, "[Lorg/osgi/framework/ServiceReference<TS;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    array-length v3, v1

    .line 572
    .local v3, "length":I
    :goto_0
    if-nez v3, :cond_2

    .line 573
    const/4 v2, 0x0

    return-object v2

    .line 575
    :cond_2
    const/4 v4, 0x0

    .line 576
    .local v4, "index":I
    const/4 v5, 0x1

    if-le v3, v5, :cond_8

    .line 577
    new-array v6, v3, [I

    .line 578
    .local v6, "rankings":[I
    const/4 v7, 0x0

    .line 579
    .local v7, "count":I
    const/high16 v8, -0x80000000

    .line 580
    .local v8, "maxRanking":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v3, :cond_6

    .line 581
    aget-object v10, v1, v9

    const-string v11, "service.ranking"

    invoke-interface {v10, v11}, Lorg/osgi/framework/ServiceReference;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 582
    .local v10, "property":Ljava/lang/Object;
    instance-of v11, v10, Ljava/lang/Integer;

    if-eqz v11, :cond_3

    move-object v11, v10

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_2

    :cond_3
    move v11, v2

    .line 583
    .local v11, "ranking":I
    :goto_2
    aput v11, v6, v9

    .line 584
    if-le v11, v8, :cond_4

    .line 585
    move v4, v9

    .line 586
    move v8, v11

    .line 587
    const/4 v7, 0x1

    goto :goto_3

    .line 589
    :cond_4
    if-ne v11, v8, :cond_5

    .line 590
    add-int/lit8 v7, v7, 0x1

    .line 580
    .end local v10    # "property":Ljava/lang/Object;
    .end local v11    # "ranking":I
    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 594
    .end local v9    # "i":I
    :cond_6
    if-le v7, v5, :cond_8

    .line 595
    const-wide v9, 0x7fffffffffffffffL

    .line 596
    .local v9, "minId":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v3, :cond_8

    .line 597
    aget v5, v6, v2

    if-ne v5, v8, :cond_7

    .line 598
    aget-object v5, v1, v2

    const-string v11, "service.id"

    invoke-interface {v5, v11}, Lorg/osgi/framework/ServiceReference;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    move-object v11, v5

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 599
    .local v11, "id":J
    cmp-long v5, v11, v9

    if-gez v5, :cond_7

    .line 600
    move v4, v2

    .line 601
    move-wide v9, v11

    .line 596
    .end local v11    # "id":J
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 607
    .end local v2    # "i":I
    .end local v6    # "rankings":[I
    .end local v7    # "count":I
    .end local v8    # "maxRanking":I
    .end local v9    # "minId":J
    :cond_8
    aget-object v2, v1, v4

    iput-object v2, p0, Lorg/osgi/util/tracker/ServiceTracker;->cachedReference:Lorg/osgi/framework/ServiceReference;

    return-object v2
.end method

.method public getServiceReferences()[Lorg/osgi/framework/ServiceReference;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;"
        }
    .end annotation

    .line 524
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    invoke-direct {p0}, Lorg/osgi/util/tracker/ServiceTracker;->tracked()Lorg/osgi/util/tracker/ServiceTracker$Tracked;

    move-result-object v0

    .line 525
    .local v0, "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 526
    return-object v1

    .line 528
    :cond_0
    monitor-enter v0

    .line 529
    :try_start_0
    invoke-virtual {v0}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->size()I

    move-result v2

    .line 530
    .local v2, "length":I
    if-nez v2, :cond_1

    .line 531
    monitor-exit v0

    return-object v1

    .line 534
    :cond_1
    new-array v1, v2, [Lorg/osgi/framework/ServiceReference;

    .line 535
    .local v1, "result":[Lorg/osgi/framework/ServiceReference;, "[Lorg/osgi/framework/ServiceReference<TS;>;"
    invoke-virtual {v0, v1}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->copyKeys([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/osgi/framework/ServiceReference;

    monitor-exit v0

    return-object v3

    .line 536
    .end local v1    # "result":[Lorg/osgi/framework/ServiceReference;, "[Lorg/osgi/framework/ServiceReference<TS;>;"
    .end local v2    # "length":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServices()[Ljava/lang/Object;
    .locals 6

    .line 643
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    invoke-direct {p0}, Lorg/osgi/util/tracker/ServiceTracker;->tracked()Lorg/osgi/util/tracker/ServiceTracker$Tracked;

    move-result-object v0

    .line 644
    .local v0, "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 645
    return-object v1

    .line 647
    :cond_0
    monitor-enter v0

    .line 648
    :try_start_0
    invoke-virtual {p0}, Lorg/osgi/util/tracker/ServiceTracker;->getServiceReferences()[Lorg/osgi/framework/ServiceReference;

    move-result-object v2

    .line 649
    .local v2, "references":[Lorg/osgi/framework/ServiceReference;, "[Lorg/osgi/framework/ServiceReference<TS;>;"
    if-nez v2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    array-length v3, v2

    .line 650
    .local v3, "length":I
    :goto_0
    if-nez v3, :cond_2

    .line 651
    monitor-exit v0

    return-object v1

    .line 653
    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    .line 654
    .local v1, "objects":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 655
    aget-object v5, v2, v4

    invoke-virtual {p0, v5}, Lorg/osgi/util/tracker/ServiceTracker;->getService(Lorg/osgi/framework/ServiceReference;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    .line 654
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 657
    .end local v4    # "i":I
    :cond_3
    monitor-exit v0

    return-object v1

    .line 658
    .end local v1    # "objects":[Ljava/lang/Object;
    .end local v2    # "references":[Lorg/osgi/framework/ServiceReference;, "[Lorg/osgi/framework/ServiceReference<TS;>;"
    .end local v3    # "length":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServices([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 833
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Lorg/osgi/util/tracker/ServiceTracker;->tracked()Lorg/osgi/util/tracker/ServiceTracker$Tracked;

    move-result-object v0

    .line 834
    .local v0, "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 835
    array-length v3, p1

    if-lez v3, :cond_0

    .line 836
    aput-object v1, p1, v2

    .line 838
    :cond_0
    return-object p1

    .line 840
    :cond_1
    monitor-enter v0

    .line 841
    :try_start_0
    invoke-virtual {p0}, Lorg/osgi/util/tracker/ServiceTracker;->getServiceReferences()[Lorg/osgi/framework/ServiceReference;

    move-result-object v3

    .line 842
    .local v3, "references":[Lorg/osgi/framework/ServiceReference;, "[Lorg/osgi/framework/ServiceReference<TS;>;"
    if-nez v3, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    array-length v4, v3

    .line 843
    .local v4, "length":I
    :goto_0
    if-nez v4, :cond_4

    .line 844
    array-length v5, p1

    if-lez v5, :cond_3

    .line 845
    aput-object v1, p1, v2

    .line 847
    :cond_3
    monitor-exit v0

    return-object p1

    .line 849
    :cond_4
    array-length v2, p1

    if-le v4, v2, :cond_5

    .line 851
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 852
    .local v2, "newInstance":[Ljava/lang/Object;, "[TT;"
    move-object p1, v2

    .line 854
    .end local v2    # "newInstance":[Ljava/lang/Object;, "[TT;"
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_6

    .line 855
    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Lorg/osgi/util/tracker/ServiceTracker;->getService(Lorg/osgi/framework/ServiceReference;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v2

    .line 854
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 857
    .end local v2    # "i":I
    :cond_6
    array-length v2, p1

    if-le v2, v4, :cond_7

    .line 858
    aput-object v1, p1, v4

    .line 860
    :cond_7
    monitor-exit v0

    return-object p1

    .line 861
    .end local v3    # "references":[Lorg/osgi/framework/ServiceReference;, "[Lorg/osgi/framework/ServiceReference<TS;>;"
    .end local v4    # "length":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTracked()Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;TT;>;"
        }
    .end annotation

    .line 784
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 785
    .local v0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Lorg/osgi/framework/ServiceReference<TS;>;TT;>;"
    invoke-direct {p0}, Lorg/osgi/util/tracker/ServiceTracker;->tracked()Lorg/osgi/util/tracker/ServiceTracker$Tracked;

    move-result-object v1

    .line 786
    .local v1, "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    if-nez v1, :cond_0

    .line 787
    return-object v0

    .line 789
    :cond_0
    monitor-enter v1

    .line 790
    :try_start_0
    invoke-virtual {v1, v0}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->copyEntries(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    check-cast v2, Ljava/util/SortedMap;

    monitor-exit v1

    return-object v2

    .line 791
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getTrackingCount()I
    .locals 2

    .line 744
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    invoke-direct {p0}, Lorg/osgi/util/tracker/ServiceTracker;->tracked()Lorg/osgi/util/tracker/ServiceTracker$Tracked;

    move-result-object v0

    .line 745
    .local v0, "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    if-nez v0, :cond_0

    .line 746
    const/4 v1, -0x1

    return v1

    .line 748
    :cond_0
    monitor-enter v0

    .line 749
    :try_start_0
    invoke-virtual {v0}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->getTrackingCount()I

    move-result v1

    monitor-exit v0

    return v1

    .line 750
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 802
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    invoke-direct {p0}, Lorg/osgi/util/tracker/ServiceTracker;->tracked()Lorg/osgi/util/tracker/ServiceTracker$Tracked;

    move-result-object v0

    .line 803
    .local v0, "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    if-nez v0, :cond_0

    .line 804
    const/4 v1, 0x1

    return v1

    .line 806
    :cond_0
    monitor-enter v0

    .line 807
    :try_start_0
    invoke-virtual {v0}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 808
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method modified()V
    .locals 1

    .line 763
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->cachedReference:Lorg/osgi/framework/ServiceReference;

    .line 764
    iput-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->cachedService:Ljava/lang/Object;

    .line 768
    return-void
.end method

.method public modifiedService(Lorg/osgi/framework/ServiceReference;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;TT;)V"
        }
    .end annotation

    .line 435
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    .local p1, "reference":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<TS;>;"
    .local p2, "service":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public open()V
    .locals 1

    .line 261
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/osgi/util/tracker/ServiceTracker;->open(Z)V

    .line 262
    return-void
.end method

.method public open(Z)V
    .locals 6
    .param p1, "trackAllServices"    # Z

    .line 284
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    monitor-enter p0

    .line 285
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/osgi/util/tracker/ServiceTracker;->tracked:Lorg/osgi/util/tracker/ServiceTracker$Tracked;

    if-eqz v1, :cond_0

    .line 286
    monitor-exit p0

    return-void

    .line 291
    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Lorg/osgi/util/tracker/ServiceTracker$AllTracked;

    invoke-direct {v1, p0}, Lorg/osgi/util/tracker/ServiceTracker$AllTracked;-><init>(Lorg/osgi/util/tracker/ServiceTracker;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/osgi/util/tracker/ServiceTracker$Tracked;

    invoke-direct {v1, p0}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;-><init>(Lorg/osgi/util/tracker/ServiceTracker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 292
    .local v1, "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    :goto_0
    :try_start_1
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 294
    :try_start_2
    iget-object v2, p0, Lorg/osgi/util/tracker/ServiceTracker;->context:Lorg/osgi/framework/BundleContext;

    iget-object v3, p0, Lorg/osgi/util/tracker/ServiceTracker;->listenerFilter:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lorg/osgi/framework/BundleContext;->addServiceListener(Lorg/osgi/framework/ServiceListener;Ljava/lang/String;)V

    .line 295
    const/4 v2, 0x0

    .line 296
    .local v2, "references":[Lorg/osgi/framework/ServiceReference;, "[Lorg/osgi/framework/ServiceReference<TS;>;"
    iget-object v3, p0, Lorg/osgi/util/tracker/ServiceTracker;->trackClass:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 297
    invoke-direct {p0, p1, v3, v0}, Lorg/osgi/util/tracker/ServiceTracker;->getInitialReferences(ZLjava/lang/String;Ljava/lang/String;)[Lorg/osgi/framework/ServiceReference;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 299
    :cond_2
    iget-object v3, p0, Lorg/osgi/util/tracker/ServiceTracker;->trackReference:Lorg/osgi/framework/ServiceReference;

    if-eqz v3, :cond_3

    .line 300
    invoke-interface {v3}, Lorg/osgi/framework/ServiceReference;->getBundle()Lorg/osgi/framework/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 302
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/osgi/framework/ServiceReference;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/osgi/util/tracker/ServiceTracker;->trackReference:Lorg/osgi/framework/ServiceReference;

    aput-object v4, v0, v3

    .line 303
    .local v0, "single":[Lorg/osgi/framework/ServiceReference;, "[Lorg/osgi/framework/ServiceReference<TS;>;"
    move-object v2, v0

    .line 304
    .end local v0    # "single":[Lorg/osgi/framework/ServiceReference;, "[Lorg/osgi/framework/ServiceReference<TS;>;"
    goto :goto_1

    .line 306
    :cond_3
    iget-object v3, p0, Lorg/osgi/util/tracker/ServiceTracker;->listenerFilter:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v3}, Lorg/osgi/util/tracker/ServiceTracker;->getInitialReferences(ZLjava/lang/String;Ljava/lang/String;)[Lorg/osgi/framework/ServiceReference;

    move-result-object v0

    move-object v2, v0

    .line 310
    :cond_4
    :goto_1
    invoke-virtual {v1, v2}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->setInitial([Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/osgi/framework/InvalidSyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    .end local v2    # "references":[Lorg/osgi/framework/ServiceReference;, "[Lorg/osgi/framework/ServiceReference<TS;>;"
    nop

    .line 314
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    :try_start_4
    iput-object v1, p0, Lorg/osgi/util/tracker/ServiceTracker;->tracked:Lorg/osgi/util/tracker/ServiceTracker$Tracked;

    .line 316
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 318
    invoke-virtual {v1}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->trackInitial()V

    .line 319
    return-void

    .line 314
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Lorg/osgi/framework/InvalidSyntaxException;
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected InvalidSyntaxException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/osgi/framework/InvalidSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    .end local p1    # "trackAllServices":Z
    throw v2

    .line 314
    .end local v0    # "e":Lorg/osgi/framework/InvalidSyntaxException;
    .restart local v1    # "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    .restart local p1    # "trackAllServices":Z
    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v1    # "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    .end local p1    # "trackAllServices":Z
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 316
    .restart local v1    # "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    .restart local p1    # "trackAllServices":Z
    :catchall_1
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .end local v1    # "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    :catchall_2
    move-exception v1

    .local v0, "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1

    :catchall_3
    move-exception v1

    goto :goto_3
.end method

.method public remove(Lorg/osgi/framework/ServiceReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;)V"
        }
    .end annotation

    .line 701
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    .local p1, "reference":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<TS;>;"
    invoke-direct {p0}, Lorg/osgi/util/tracker/ServiceTracker;->tracked()Lorg/osgi/util/tracker/ServiceTracker$Tracked;

    move-result-object v0

    .line 702
    .local v0, "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    if-nez v0, :cond_0

    .line 703
    return-void

    .line 705
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->untrack(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 706
    return-void
.end method

.method public removedService(Lorg/osgi/framework/ServiceReference;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;TT;)V"
        }
    .end annotation

    .line 459
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    .local p1, "reference":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<TS;>;"
    .local p2, "service":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker;->context:Lorg/osgi/framework/BundleContext;

    invoke-interface {v0, p1}, Lorg/osgi/framework/BundleContext;->ungetService(Lorg/osgi/framework/ServiceReference;)Z

    .line 460
    return-void
.end method

.method public size()I
    .locals 2

    .line 715
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    invoke-direct {p0}, Lorg/osgi/util/tracker/ServiceTracker;->tracked()Lorg/osgi/util/tracker/ServiceTracker$Tracked;

    move-result-object v0

    .line 716
    .local v0, "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    if-nez v0, :cond_0

    .line 717
    const/4 v1, 0x0

    return v1

    .line 719
    :cond_0
    monitor-enter v0

    .line 720
    :try_start_0
    invoke-virtual {v0}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 721
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitForService(J)Ljava/lang/Object;
    .locals 8
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 485
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_7

    .line 489
    invoke-virtual {p0}, Lorg/osgi/util/tracker/ServiceTracker;->getService()Ljava/lang/Object;

    move-result-object v2

    .line 490
    .local v2, "object":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_0

    .line 491
    return-object v2

    .line 494
    :cond_0
    cmp-long v3, p1, v0

    if-nez v3, :cond_1

    move-wide v3, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p1

    :goto_0
    move-wide v5, p1

    .line 496
    .end local p1    # "timeout":J
    .local v3, "endTime":J
    .local v5, "timeout":J
    :cond_2
    invoke-direct {p0}, Lorg/osgi/util/tracker/ServiceTracker;->tracked()Lorg/osgi/util/tracker/ServiceTracker$Tracked;

    move-result-object v7

    .line 497
    .local v7, "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    if-nez v7, :cond_3

    .line 498
    const/4 p1, 0x0

    return-object p1

    .line 500
    :cond_3
    monitor-enter v7

    .line 501
    :try_start_0
    invoke-virtual {v7}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 502
    invoke-virtual {v7, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 504
    :cond_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    invoke-virtual {p0}, Lorg/osgi/util/tracker/ServiceTracker;->getService()Ljava/lang/Object;

    move-result-object v2

    .line 506
    cmp-long p1, v3, v0

    if-lez p1, :cond_6

    .line 507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long p1, v3, p1

    .line 508
    .end local v5    # "timeout":J
    .restart local p1    # "timeout":J
    cmp-long v5, p1, v0

    if-gtz v5, :cond_5

    .line 509
    goto :goto_1

    .line 508
    :cond_5
    move-wide v5, p1

    .line 512
    .end local v7    # "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    .end local p1    # "timeout":J
    .restart local v5    # "timeout":J
    :cond_6
    if-eqz v2, :cond_2

    move-wide p1, v5

    .line 513
    .end local v5    # "timeout":J
    .restart local p1    # "timeout":J
    :goto_1
    return-object v2

    .line 504
    .end local p1    # "timeout":J
    .restart local v5    # "timeout":J
    .restart local v7    # "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 486
    .end local v2    # "object":Ljava/lang/Object;, "TT;"
    .end local v3    # "endTime":J
    .end local v5    # "timeout":J
    .end local v7    # "t":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    .restart local p1    # "timeout":J
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout value is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
