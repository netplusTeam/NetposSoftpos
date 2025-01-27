.class final Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;
.super Ljava/lang/Object;
.source "CodecOutputList.java"

# interfaces
.implements Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/CodecOutputList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodecOutputLists"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private count:I

.field private currentIdx:I

.field private final elements:[Lio/netty/handler/codec/CodecOutputList;

.field private final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lio/netty/handler/codec/CodecOutputList;

    return-void
.end method

.method constructor <init>(I)V
    .locals 5
    .param p1, "numElements"    # I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lio/netty/util/internal/MathUtil;->safeFindNextPositivePowerOfTwo(I)I

    move-result v0

    new-array v0, v0, [Lio/netty/handler/codec/CodecOutputList;

    iput-object v0, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->elements:[Lio/netty/handler/codec/CodecOutputList;

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->elements:[Lio/netty/handler/codec/CodecOutputList;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 62
    new-instance v2, Lio/netty/handler/codec/CodecOutputList;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lio/netty/handler/codec/CodecOutputList;-><init>(Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;ILio/netty/handler/codec/CodecOutputList$1;)V

    aput-object v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "i":I
    :cond_0
    array-length v0, v1

    iput v0, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->count:I

    .line 65
    array-length v0, v1

    iput v0, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->currentIdx:I

    .line 66
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->mask:I

    .line 67
    return-void
.end method


# virtual methods
.method public getOrCreate()Lio/netty/handler/codec/CodecOutputList;
    .locals 4

    .line 70
    iget v0, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->count:I

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lio/netty/handler/codec/CodecOutputList;

    invoke-static {}, Lio/netty/handler/codec/CodecOutputList;->access$100()Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/CodecOutputList;-><init>(Lio/netty/handler/codec/CodecOutputList$CodecOutputListRecycler;ILio/netty/handler/codec/CodecOutputList$1;)V

    return-object v0

    .line 75
    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->count:I

    .line 77
    iget v0, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->currentIdx:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->mask:I

    and-int/2addr v0, v1

    .line 78
    .local v0, "idx":I
    iget-object v1, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->elements:[Lio/netty/handler/codec/CodecOutputList;

    aget-object v1, v1, v0

    .line 79
    .local v1, "list":Lio/netty/handler/codec/CodecOutputList;
    iput v0, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->currentIdx:I

    .line 80
    return-object v1
.end method

.method public recycle(Lio/netty/handler/codec/CodecOutputList;)V
    .locals 4
    .param p1, "codecOutputList"    # Lio/netty/handler/codec/CodecOutputList;

    .line 85
    iget v0, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->currentIdx:I

    .line 86
    .local v0, "idx":I
    iget-object v1, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->elements:[Lio/netty/handler/codec/CodecOutputList;

    aput-object p1, v1, v0

    .line 87
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->mask:I

    and-int/2addr v2, v3

    iput v2, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->currentIdx:I

    .line 88
    iget v2, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/netty/handler/codec/CodecOutputList$CodecOutputLists;->count:I

    .line 89
    array-length v1, v1

    if-gt v2, v1, :cond_0

    .line 90
    return-void

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
