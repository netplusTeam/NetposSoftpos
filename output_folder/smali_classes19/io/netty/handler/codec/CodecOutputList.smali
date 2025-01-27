.class final Lio/netty/handler/codec/CodecOutputList;
.super Ljava/util/AbstractList;
.source "CodecOutputList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;,
        Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final CODEC_OUTPUT_LISTS_POOL:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOOP_RECYCLER:Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;


# instance fields
.field private array:[Ljava/lang/Object;

.field private insertSinceRecycled:Z

.field private final recycler:Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lio/netty/handler/codec/CodecOutputList$1;

    invoke-direct {v0}, Lio/netty/handler/codec/CodecOutputList$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/CodecOutputList;->NOOP_RECYCLER:Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;

    .line 38
    new-instance v0, Lio/netty/handler/codec/CodecOutputList$2;

    invoke-direct {v0}, Lio/netty/handler/codec/CodecOutputList$2;-><init>()V

    sput-object v0, Lio/netty/handler/codec/CodecOutputList;->CODEC_OUTPUT_LISTS_POOL:Lio/netty/util/concurrent/FastThreadLocal;

    return-void
.end method

.method private constructor <init>(Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;I)V
    .locals 1
    .param p1, "recycler"    # Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;
    .param p2, "size"    # I

    .line 102
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 103
    iput-object p1, p0, Lio/netty/handler/codec/CodecOutputList;->recycler:Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;

    .line 104
    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;ILio/netty/handler/codec/CodecOutputList$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/netty/handler/codec/CodecOutputList$1;

    .line 29
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/CodecOutputList;-><init>(Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;I)V

    return-void
.end method

.method static synthetic access$100()Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;
    .locals 1

    .line 29
    sget-object v0, Lio/netty/handler/codec/CodecOutputList;->NOOP_RECYCLER:Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;

    return-object v0
.end method

.method private checkIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 208
    iget v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    if-ge p1, v0, :cond_0

    .line 211
    return-void

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private expandArray()V
    .locals 5

    .line 220
    iget-object v0, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    .line 222
    .local v1, "newCapacity":I
    if-ltz v1, :cond_0

    .line 226
    new-array v2, v1, [Ljava/lang/Object;

    .line 227
    .local v2, "newArray":[Ljava/lang/Object;
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iput-object v2, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    .line 230
    return-void

    .line 223
    .end local v2    # "newArray":[Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0
.end method

.method private insert(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/CodecOutputList;->insertSinceRecycled:Z

    .line 216
    return-void
.end method

.method static newInstance()Lio/netty/handler/codec/CodecOutputList;
    .locals 1

    .line 94
    sget-object v0, Lio/netty/handler/codec/CodecOutputList;->CODEC_OUTPUT_LISTS_POOL:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;

    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->getOrCreate()Lio/netty/handler/codec/CodecOutputList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .line 144
    const-string v0, "element"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    invoke-direct {p0, p1}, Lio/netty/handler/codec/CodecOutputList;->checkIndex(I)V

    .line 147
    iget v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    iget-object v1, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 148
    invoke-direct {p0}, Lio/netty/handler/codec/CodecOutputList;->expandArray()V

    .line 151
    :cond_0
    iget v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    if-eq p1, v0, :cond_1

    .line 152
    iget-object v1, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/CodecOutputList;->insert(ILjava/lang/Object;)V

    .line 156
    iget v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    .line 157
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .line 120
    const-string v0, "element"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    :try_start_0
    iget v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/CodecOutputList;->insert(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "ignore":Ljava/lang/IndexOutOfBoundsException;
    invoke-direct {p0}, Lio/netty/handler/codec/CodecOutputList;->expandArray()V

    .line 126
    iget v1, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    invoke-direct {p0, v1, p1}, Lio/netty/handler/codec/CodecOutputList;->insert(ILjava/lang/Object;)V

    .line 128
    .end local v0    # "ignore":Ljava/lang/IndexOutOfBoundsException;
    :goto_0
    iget v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    .line 129
    return v1
.end method

.method public clear()V
    .locals 1

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    .line 178
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 109
    invoke-direct {p0, p1}, Lio/netty/handler/codec/CodecOutputList;->checkIndex(I)V

    .line 110
    iget-object v0, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getUnsafe(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 204
    iget-object v0, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method insertSinceRecycled()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lio/netty/handler/codec/CodecOutputList;->insertSinceRecycled:Z

    return v0
.end method

.method recycle()V
    .locals 3

    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    if-ge v0, v1, :cond_0

    .line 192
    iget-object v1, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    .line 195
    iput-boolean v0, p0, Lio/netty/handler/codec/CodecOutputList;->insertSinceRecycled:Z

    .line 197
    iget-object v0, p0, Lio/netty/handler/codec/CodecOutputList;->recycler:Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;

    invoke-interface {v0, p0}, Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;->recycle(Lio/netty/handler/codec/CodecOutputList;)V

    .line 198
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I

    .line 161
    invoke-direct {p0, p1}, Lio/netty/handler/codec/CodecOutputList;->checkIndex(I)V

    .line 162
    iget-object v0, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 164
    .local v1, "old":Ljava/lang/Object;
    iget v2, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 165
    .local v2, "len":I
    if-lez v2, :cond_0

    .line 166
    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    iget v3, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    const/4 v4, 0x0

    aput-object v4, v0, v3

    .line 170
    return-object v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .line 134
    const-string v0, "element"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    invoke-direct {p0, p1}, Lio/netty/handler/codec/CodecOutputList;->checkIndex(I)V

    .line 137
    iget-object v0, p0, Lio/netty/handler/codec/CodecOutputList;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 138
    .local v0, "old":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/CodecOutputList;->insert(ILjava/lang/Object;)V

    .line 139
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 115
    iget v0, p0, Lio/netty/handler/codec/CodecOutputList;->size:I

    return v0
.end method
