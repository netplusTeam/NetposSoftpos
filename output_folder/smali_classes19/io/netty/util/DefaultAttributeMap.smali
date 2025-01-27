.class public Lio/netty/util/DefaultAttributeMap;
.super Ljava/lang/Object;
.source "DefaultAttributeMap.java"

# interfaces
.implements Lio/netty/util/AttributeMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    }
.end annotation


# static fields
.field private static final BUCKET_SIZE:I = 0x4

.field private static final MASK:I = 0x3

.field private static final updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/util/DefaultAttributeMap;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    const-class v0, Lio/netty/util/DefaultAttributeMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 32
    const-string v2, "attributes"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/util/DefaultAttributeMap;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static index(Lio/netty/util/AttributeKey;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/AttributeKey<",
            "*>;)I"
        }
    .end annotation

    .line 122
    .local p0, "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<*>;"
    invoke-virtual {p0}, Lio/netty/util/AttributeKey;->id()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method public attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)",
            "Lio/netty/util/Attribute<",
            "TT;>;"
        }
    .end annotation

    .line 44
    .local p1, "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<TT;>;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap;->attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 46
    .local v0, "attributes":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    move-object v0, v2

    .line 50
    sget-object v2, Lio/netty/util/DefaultAttributeMap;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap;->attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 55
    :cond_0
    invoke-static {p1}, Lio/netty/util/DefaultAttributeMap;->index(Lio/netty/util/AttributeKey;)I

    move-result v2

    .line 56
    .local v2, "i":I
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 57
    .local v3, "head":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;"
    if-nez v3, :cond_2

    .line 60
    new-instance v4, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-direct {v4}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;-><init>()V

    move-object v3, v4

    .line 61
    new-instance v4, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-direct {v4, v3, p1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;-><init>(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/AttributeKey;)V

    .line 62
    .local v4, "attr":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    invoke-static {v3, v4}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$002(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 63
    invoke-static {v4, v3}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$102(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 64
    invoke-static {v0, v2, v1, v3}, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    return-object v4

    .line 68
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 72
    .end local v4    # "attr":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    :cond_2
    monitor-enter v3

    .line 73
    move-object v1, v3

    .line 75
    .local v1, "curr":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;"
    :goto_0
    :try_start_0
    invoke-static {v1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    move-result-object v4

    .line 76
    .local v4, "next":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;"
    if-nez v4, :cond_3

    .line 77
    new-instance v5, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-direct {v5, v3, p1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;-><init>(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/AttributeKey;)V

    .line 78
    .local v5, "attr":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    invoke-static {v1, v5}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$002(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 79
    invoke-static {v5, v1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$102(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 80
    monitor-exit v3

    return-object v5

    .line 83
    .end local v5    # "attr":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    :cond_3
    invoke-static {v4}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$200(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;

    move-result-object v5

    if-ne v5, p1, :cond_4

    invoke-static {v4}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$300(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 84
    monitor-exit v3

    return-object v4

    .line 86
    :cond_4
    move-object v1, v4

    .line 87
    .end local v4    # "next":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;"
    goto :goto_0

    .line 88
    .end local v1    # "curr":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;"
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasAttr(Lio/netty/util/AttributeKey;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)Z"
        }
    .end annotation

    .line 93
    .local p1, "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<TT;>;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap;->attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 95
    .local v0, "attributes":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 97
    return v1

    .line 100
    :cond_0
    invoke-static {p1}, Lio/netty/util/DefaultAttributeMap;->index(Lio/netty/util/AttributeKey;)I

    move-result v2

    .line 101
    .local v2, "i":I
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 102
    .local v3, "head":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;"
    if-nez v3, :cond_1

    .line 104
    return v1

    .line 108
    :cond_1
    monitor-enter v3

    .line 110
    :try_start_0
    invoke-static {v3}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    move-result-object v4

    .line 111
    .local v4, "curr":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;"
    :goto_0
    if-eqz v4, :cond_3

    .line 112
    invoke-static {v4}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$200(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;

    move-result-object v5

    if-ne v5, p1, :cond_2

    invoke-static {v4}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$300(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 113
    const/4 v1, 0x1

    monitor-exit v3

    return v1

    .line 115
    :cond_2
    invoke-static {v4}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    .line 117
    :cond_3
    monitor-exit v3

    return v1

    .line 118
    .end local v4    # "curr":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;"
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
