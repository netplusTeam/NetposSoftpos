.class Lorg/simpleframework/xml/util/WeakCache$Segment;
.super Ljava/util/WeakHashMap;
.source "WeakCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/util/WeakCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/WeakHashMap<",
        "Ljava/lang/Object;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/xml/util/WeakCache;


# direct methods
.method private constructor <init>(Lorg/simpleframework/xml/util/WeakCache;)V
    .locals 0

    .line 233
    .local p0, "this":Lorg/simpleframework/xml/util/WeakCache$Segment;, "Lorg/simpleframework/xml/util/WeakCache<TT;>.Segment;"
    iput-object p1, p0, Lorg/simpleframework/xml/util/WeakCache$Segment;->this$0:Lorg/simpleframework/xml/util/WeakCache;

    invoke-direct {p0}, Ljava/util/WeakHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/xml/util/WeakCache;Lorg/simpleframework/xml/util/WeakCache$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/simpleframework/xml/util/WeakCache;
    .param p2, "x1"    # Lorg/simpleframework/xml/util/WeakCache$1;

    .line 233
    .local p0, "this":Lorg/simpleframework/xml/util/WeakCache$Segment;, "Lorg/simpleframework/xml/util/WeakCache<TT;>.Segment;"
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/util/WeakCache$Segment;-><init>(Lorg/simpleframework/xml/util/WeakCache;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized cache(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .local p0, "this":Lorg/simpleframework/xml/util/WeakCache$Segment;, "Lorg/simpleframework/xml/util/WeakCache<TT;>.Segment;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 245
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/util/WeakCache$Segment;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 244
    .end local p0    # "this":Lorg/simpleframework/xml/util/WeakCache$Segment;, "Lorg/simpleframework/xml/util/WeakCache<TT;>.Segment;"
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .local p0, "this":Lorg/simpleframework/xml/util/WeakCache$Segment;, "Lorg/simpleframework/xml/util/WeakCache<TT;>.Segment;"
    monitor-enter p0

    .line 284
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/WeakCache$Segment;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 284
    .end local p0    # "this":Lorg/simpleframework/xml/util/WeakCache$Segment;, "Lorg/simpleframework/xml/util/WeakCache<TT;>.Segment;"
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized fetch(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .local p0, "this":Lorg/simpleframework/xml/util/WeakCache$Segment;, "Lorg/simpleframework/xml/util/WeakCache<TT;>.Segment;"
    monitor-enter p0

    .line 258
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/WeakCache$Segment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 258
    .end local p0    # "this":Lorg/simpleframework/xml/util/WeakCache$Segment;, "Lorg/simpleframework/xml/util/WeakCache<TT;>.Segment;"
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized take(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .local p0, "this":Lorg/simpleframework/xml/util/WeakCache$Segment;, "Lorg/simpleframework/xml/util/WeakCache<TT;>.Segment;"
    monitor-enter p0

    .line 271
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/WeakCache$Segment;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 271
    .end local p0    # "this":Lorg/simpleframework/xml/util/WeakCache$Segment;, "Lorg/simpleframework/xml/util/WeakCache<TT;>.Segment;"
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
