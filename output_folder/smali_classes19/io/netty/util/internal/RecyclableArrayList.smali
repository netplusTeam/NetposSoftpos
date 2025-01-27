.class public final Lio/netty/util/internal/RecyclableArrayList;
.super Ljava/util/ArrayList;
.source "RecyclableArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x8

.field private static final RECYCLER:Lio/netty/util/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool<",
            "Lio/netty/util/internal/RecyclableArrayList;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x776b8c30c8ca0bebL


# instance fields
.field private final handle:Lio/netty/util/internal/ObjectPool$Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/util/internal/RecyclableArrayList;",
            ">;"
        }
    .end annotation
.end field

.field private insertSinceRecycled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lio/netty/util/internal/RecyclableArrayList$1;

    invoke-direct {v0}, Lio/netty/util/internal/RecyclableArrayList$1;-><init>()V

    invoke-static {v0}, Lio/netty/util/internal/ObjectPool;->newPool(Lio/netty/util/internal/ObjectPool$ObjectCreator;)Lio/netty/util/internal/ObjectPool;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/RecyclableArrayList;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    return-void
.end method

.method private constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/util/internal/RecyclableArrayList;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p1, "handle":Lio/netty/util/internal/ObjectPool$Handle;, "Lio/netty/util/internal/ObjectPool$Handle<Lio/netty/util/internal/RecyclableArrayList;>;"
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lio/netty/util/internal/RecyclableArrayList;-><init>(Lio/netty/util/internal/ObjectPool$Handle;I)V

    .line 66
    return-void
.end method

.method private constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;I)V
    .locals 0
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/util/internal/RecyclableArrayList;",
            ">;I)V"
        }
    .end annotation

    .line 69
    .local p1, "handle":Lio/netty/util/internal/ObjectPool$Handle;, "Lio/netty/util/internal/ObjectPool$Handle<Lio/netty/util/internal/RecyclableArrayList;>;"
    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    iput-object p1, p0, Lio/netty/util/internal/RecyclableArrayList;->handle:Lio/netty/util/internal/ObjectPool$Handle;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;Lio/netty/util/internal/RecyclableArrayList$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/util/internal/ObjectPool$Handle;
    .param p2, "x1"    # Lio/netty/util/internal/RecyclableArrayList$1;

    .line 30
    invoke-direct {p0, p1}, Lio/netty/util/internal/RecyclableArrayList;-><init>(Lio/netty/util/internal/ObjectPool$Handle;)V

    return-void
.end method

.method private static checkNullElements(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 94
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    const-string v1, "c contains null values"

    if-eqz v0, :cond_2

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 96
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 97
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 98
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 99
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 103
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 104
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 105
    .local v2, "element":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 108
    .end local v2    # "element":Ljava/lang/Object;
    goto :goto_1

    .line 106
    .restart local v2    # "element":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    .end local v2    # "element":Ljava/lang/Object;
    :cond_4
    :goto_2
    return-void
.end method

.method public static newInstance()Lio/netty/util/internal/RecyclableArrayList;
    .locals 1

    .line 50
    const/16 v0, 0x8

    invoke-static {v0}, Lio/netty/util/internal/RecyclableArrayList;->newInstance(I)Lio/netty/util/internal/RecyclableArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(I)Lio/netty/util/internal/RecyclableArrayList;
    .locals 1
    .param p0, "minCapacity"    # I

    .line 57
    sget-object v0, Lio/netty/util/internal/RecyclableArrayList;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    invoke-virtual {v0}, Lio/netty/util/internal/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/internal/RecyclableArrayList;

    .line 58
    .local v0, "ret":Lio/netty/util/internal/RecyclableArrayList;
    invoke-virtual {v0, p0}, Lio/netty/util/internal/RecyclableArrayList;->ensureCapacity(I)V

    .line 59
    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .line 123
    const-string v0, "element"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/util/internal/RecyclableArrayList;->insertSinceRecycled:Z

    .line 125
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 114
    const-string v0, "element"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/util/internal/RecyclableArrayList;->insertSinceRecycled:Z

    .line 116
    return v0

    .line 118
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 85
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p2}, Lio/netty/util/internal/RecyclableArrayList;->checkNullElements(Ljava/util/Collection;)V

    .line 86
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/util/internal/RecyclableArrayList;->insertSinceRecycled:Z

    .line 88
    return v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 75
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lio/netty/util/internal/RecyclableArrayList;->checkNullElements(Ljava/util/Collection;)V

    .line 76
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/util/internal/RecyclableArrayList;->insertSinceRecycled:Z

    .line 78
    return v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public insertSinceRecycled()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lio/netty/util/internal/RecyclableArrayList;->insertSinceRecycled:Z

    return v0
.end method

.method public recycle()Z
    .locals 1

    .line 145
    invoke-virtual {p0}, Lio/netty/util/internal/RecyclableArrayList;->clear()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/util/internal/RecyclableArrayList;->insertSinceRecycled:Z

    .line 147
    iget-object v0, p0, Lio/netty/util/internal/RecyclableArrayList;->handle:Lio/netty/util/internal/ObjectPool$Handle;

    invoke-interface {v0, p0}, Lio/netty/util/internal/ObjectPool$Handle;->recycle(Ljava/lang/Object;)V

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .line 129
    const-string v0, "element"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "old":Ljava/lang/Object;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/util/internal/RecyclableArrayList;->insertSinceRecycled:Z

    .line 131
    return-object v0
.end method
