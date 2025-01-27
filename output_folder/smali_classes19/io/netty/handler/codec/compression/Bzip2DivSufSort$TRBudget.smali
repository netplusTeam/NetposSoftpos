.class Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;
.super Ljava/lang/Object;
.source "Bzip2DivSufSort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/compression/Bzip2DivSufSort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TRBudget"
.end annotation


# instance fields
.field budget:I

.field chance:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "budget"    # I
    .param p2, "chance"    # I

    .line 1806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1807
    iput p1, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;->budget:I

    .line 1808
    iput p2, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;->chance:I

    .line 1809
    return-void
.end method


# virtual methods
.method update(II)Z
    .locals 3
    .param p1, "size"    # I
    .param p2, "n"    # I

    .line 1812
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;->budget:I

    sub-int/2addr v0, p2

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;->budget:I

    .line 1813
    const/4 v1, 0x1

    if-gtz v0, :cond_1

    .line 1814
    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;->chance:I

    sub-int/2addr v2, v1

    iput v2, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;->chance:I

    if-nez v2, :cond_0

    .line 1815
    const/4 v0, 0x0

    return v0

    .line 1817
    :cond_0
    add-int/2addr v0, p1

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;->budget:I

    .line 1819
    :cond_1
    return v1
.end method
