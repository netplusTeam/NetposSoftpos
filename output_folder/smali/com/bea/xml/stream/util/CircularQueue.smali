.class public final Lcom/bea/xml/stream/util/CircularQueue;
.super Ljava/util/AbstractCollection;
.source "CircularQueue.java"


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x100

.field private static final MAX_CAPACITY:I = 0x40000000


# instance fields
.field private bitmask:I

.field private capacity:I

.field private consumerIndex:I

.field private maxCapacity:I

.field private producerIndex:I

.field private q:[Ljava/lang/Object;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/util/CircularQueue;-><init>(I)V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "c"    # I

    .line 52
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, p1, v0}, Lcom/bea/xml/stream/util/CircularQueue;-><init>(II)V

    .line 53
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "c"    # I
    .param p2, "mc"    # I

    .line 55
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->size:I

    .line 31
    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->producerIndex:I

    .line 32
    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->consumerIndex:I

    .line 56
    if-gt p1, p2, :cond_3

    .line 60
    const/high16 v0, 0x40000000    # 2.0f

    if-gt p2, v0, :cond_2

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->capacity:I

    :goto_0
    iget v1, p0, Lcom/bea/xml/stream/util/CircularQueue;->capacity:I

    if-ge v1, p1, :cond_0

    shl-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bea/xml/stream/util/CircularQueue;->capacity:I

    goto :goto_0

    .line 66
    :cond_0
    nop

    :goto_1
    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->maxCapacity:I

    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->maxCapacity:I

    if-ge v0, p2, :cond_1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_1
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->capacity:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/bea/xml/stream/util/CircularQueue;->bitmask:I

    .line 69
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->q:[Ljava/lang/Object;

    .line 70
    return-void

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum capacity greater than allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Capacity greater than maximum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lcom/bea/xml/stream/util/CircularQueue;)V
    .locals 4
    .param p1, "oldQueue"    # Lcom/bea/xml/stream/util/CircularQueue;

    .line 73
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->size:I

    .line 31
    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->producerIndex:I

    .line 32
    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->consumerIndex:I

    .line 74
    iget v1, p1, Lcom/bea/xml/stream/util/CircularQueue;->size:I

    iput v1, p0, Lcom/bea/xml/stream/util/CircularQueue;->size:I

    .line 75
    iget v1, p1, Lcom/bea/xml/stream/util/CircularQueue;->producerIndex:I

    iput v1, p0, Lcom/bea/xml/stream/util/CircularQueue;->producerIndex:I

    .line 76
    iget v1, p1, Lcom/bea/xml/stream/util/CircularQueue;->consumerIndex:I

    iput v1, p0, Lcom/bea/xml/stream/util/CircularQueue;->consumerIndex:I

    .line 77
    iget v1, p1, Lcom/bea/xml/stream/util/CircularQueue;->capacity:I

    iput v1, p0, Lcom/bea/xml/stream/util/CircularQueue;->capacity:I

    .line 78
    iget v1, p1, Lcom/bea/xml/stream/util/CircularQueue;->maxCapacity:I

    iput v1, p0, Lcom/bea/xml/stream/util/CircularQueue;->maxCapacity:I

    .line 79
    iget v1, p1, Lcom/bea/xml/stream/util/CircularQueue;->bitmask:I

    iput v1, p0, Lcom/bea/xml/stream/util/CircularQueue;->bitmask:I

    .line 80
    iget-object v1, p1, Lcom/bea/xml/stream/util/CircularQueue;->q:[Ljava/lang/Object;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/bea/xml/stream/util/CircularQueue;->q:[Ljava/lang/Object;

    .line 81
    iget-object v2, p1, Lcom/bea/xml/stream/util/CircularQueue;->q:[Ljava/lang/Object;

    array-length v3, v1

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/bea/xml/stream/util/CircularQueue;)I
    .locals 1
    .param p0, "x0"    # Lcom/bea/xml/stream/util/CircularQueue;

    .line 24
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->consumerIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/bea/xml/stream/util/CircularQueue;)I
    .locals 1
    .param p0, "x0"    # Lcom/bea/xml/stream/util/CircularQueue;

    .line 24
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->producerIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/bea/xml/stream/util/CircularQueue;)I
    .locals 1
    .param p0, "x0"    # Lcom/bea/xml/stream/util/CircularQueue;

    .line 24
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->size:I

    return v0
.end method

.method static synthetic access$300(Lcom/bea/xml/stream/util/CircularQueue;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/bea/xml/stream/util/CircularQueue;

    .line 24
    iget-object v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->q:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bea/xml/stream/util/CircularQueue;)I
    .locals 1
    .param p0, "x0"    # Lcom/bea/xml/stream/util/CircularQueue;

    .line 24
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->bitmask:I

    return v0
.end method

.method private expandQueue()Z
    .locals 6

    .line 88
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->capacity:I

    iget v1, p0, Lcom/bea/xml/stream/util/CircularQueue;->maxCapacity:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 89
    return v2

    .line 92
    :cond_0
    iget v1, p0, Lcom/bea/xml/stream/util/CircularQueue;->capacity:I

    .line 93
    .local v1, "old_capacity":I
    iget-object v3, p0, Lcom/bea/xml/stream/util/CircularQueue;->q:[Ljava/lang/Object;

    .line 95
    .local v3, "old_q":[Ljava/lang/Object;
    add-int/2addr v0, v0

    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->capacity:I

    .line 96
    add-int/lit8 v4, v0, -0x1

    iput v4, p0, Lcom/bea/xml/stream/util/CircularQueue;->bitmask:I

    .line 97
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->q:[Ljava/lang/Object;

    .line 99
    iget v4, p0, Lcom/bea/xml/stream/util/CircularQueue;->consumerIndex:I

    sub-int v5, v1, v4

    invoke-static {v3, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->consumerIndex:I

    if-eqz v0, :cond_1

    .line 102
    iget-object v4, p0, Lcom/bea/xml/stream/util/CircularQueue;->q:[Ljava/lang/Object;

    sub-int v5, v1, v0

    invoke-static {v3, v2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    :cond_1
    iput v2, p0, Lcom/bea/xml/stream/util/CircularQueue;->consumerIndex:I

    .line 107
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->size:I

    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->producerIndex:I

    .line 109
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 113
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->size:I

    iget v1, p0, Lcom/bea/xml/stream/util/CircularQueue;->capacity:I

    if-ne v0, v1, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/bea/xml/stream/util/CircularQueue;->expandQueue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 118
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->size:I

    .line 119
    iget-object v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->q:[Ljava/lang/Object;

    iget v2, p0, Lcom/bea/xml/stream/util/CircularQueue;->producerIndex:I

    aput-object p1, v0, v2

    .line 121
    add-int/2addr v2, v1

    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->bitmask:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->producerIndex:I

    .line 123
    return v1
.end method

.method public capacity()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->capacity:I

    return v0
.end method

.method public clear()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->q:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->size:I

    .line 154
    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->producerIndex:I

    .line 155
    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->consumerIndex:I

    .line 156
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 159
    new-instance v0, Lcom/bea/xml/stream/util/CircularQueue;

    invoke-direct {v0, p0}, Lcom/bea/xml/stream/util/CircularQueue;-><init>(Lcom/bea/xml/stream/util/CircularQueue;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 140
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 179
    new-instance v0, Lcom/bea/xml/stream/util/CircularQueue$1;

    invoke-direct {v0, p0}, Lcom/bea/xml/stream/util/CircularQueue$1;-><init>(Lcom/bea/xml/stream/util/CircularQueue;)V

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2

    .line 147
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->q:[Ljava/lang/Object;

    iget v1, p0, Lcom/bea/xml/stream/util/CircularQueue;->consumerIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 4

    .line 129
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 131
    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->size:I

    .line 132
    iget-object v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->q:[Ljava/lang/Object;

    iget v2, p0, Lcom/bea/xml/stream/util/CircularQueue;->consumerIndex:I

    aget-object v3, v0, v2

    .line 133
    .local v3, "obj":Ljava/lang/Object;
    aput-object v1, v0, v2

    .line 135
    add-int/lit8 v2, v2, 0x1

    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->bitmask:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->consumerIndex:I

    .line 137
    return-object v3
.end method

.method public size()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/bea/xml/stream/util/CircularQueue;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 163
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " - capacity: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/util/CircularQueue;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' size: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/util/CircularQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "s":Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/bea/xml/stream/util/CircularQueue;->size:I

    if-lez v1, :cond_0

    .line 167
    const-string v1, " elements:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/bea/xml/stream/util/CircularQueue;->size:I

    if-ge v1, v2, :cond_0

    .line 169
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 170
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 171
    iget-object v2, p0, Lcom/bea/xml/stream/util/CircularQueue;->q:[Ljava/lang/Object;

    iget v3, p0, Lcom/bea/xml/stream/util/CircularQueue;->consumerIndex:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/bea/xml/stream/util/CircularQueue;->bitmask:I

    and-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
