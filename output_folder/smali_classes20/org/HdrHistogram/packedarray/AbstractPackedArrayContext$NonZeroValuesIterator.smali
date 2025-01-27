.class Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;
.super Ljava/lang/Object;
.source "AbstractPackedArrayContext.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NonZeroValuesIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/HdrHistogram/packedarray/IterationValue;",
        ">;"
    }
.end annotation


# instance fields
.field final currentIterationValue:Lorg/HdrHistogram/packedarray/IterationValue;

.field nextValue:J

.field nextVirtrualIndex:I

.field final synthetic this$0:Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;


# direct methods
.method constructor <init>(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;)V
    .locals 2
    .param p1, "this$0"    # Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    .line 914
    iput-object p1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->this$0:Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 866
    const/4 v0, 0x0

    iput v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->nextVirtrualIndex:I

    .line 869
    new-instance v1, Lorg/HdrHistogram/packedarray/IterationValue;

    invoke-direct {v1}, Lorg/HdrHistogram/packedarray/IterationValue;-><init>()V

    iput-object v1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->currentIterationValue:Lorg/HdrHistogram/packedarray/IterationValue;

    .line 915
    invoke-direct {p0, v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->findFirstNonZeroValueVirtualIndexStartingAt(I)V

    .line 916
    return-void
.end method

.method private findFirstNonZeroValueVirtualIndexStartingAt(I)V
    .locals 5
    .param p1, "startingVirtualIndex"    # I

    .line 872
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->this$0:Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    invoke-virtual {v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->isPacked()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    .line 874
    iput p1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->nextVirtrualIndex:I

    .line 875
    :goto_0
    iget v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->nextVirtrualIndex:I

    iget-object v3, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->this$0:Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    invoke-virtual {v3}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getVirtualLength()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 877
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->this$0:Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    iget v3, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->nextVirtrualIndex:I

    invoke-virtual {v0, v3}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getAtUnpackedIndex(I)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->nextValue:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 878
    return-void

    .line 876
    :cond_0
    iget v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->nextVirtrualIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->nextVirtrualIndex:I

    goto :goto_0

    .line 881
    :cond_1
    return-void

    .line 884
    :cond_2
    iput p1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->nextVirtrualIndex:I

    .line 886
    :goto_1
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->this$0:Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    iget v3, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->nextVirtrualIndex:I

    invoke-static {v0, v3}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->access$100(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;I)I

    move-result v0

    iput v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->nextVirtrualIndex:I

    .line 887
    iget-object v3, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->this$0:Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    invoke-virtual {v3}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getVirtualLength()I

    move-result v3

    if-lt v0, v3, :cond_3

    goto :goto_2

    .line 888
    :cond_3
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->this$0:Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    iget v3, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->nextVirtrualIndex:I

    invoke-static {v0, v3}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->access$200(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;I)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->nextValue:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    .line 891
    :goto_2
    return-void

    .line 889
    :cond_4
    iget v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->nextVirtrualIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->nextVirtrualIndex:I

    .line 890
    goto :goto_1
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 905
    iget v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->nextVirtrualIndex:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->this$0:Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    .line 906
    invoke-virtual {v1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getVirtualLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 905
    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 864
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->next()Lorg/HdrHistogram/packedarray/IterationValue;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/HdrHistogram/packedarray/IterationValue;
    .locals 4

    .line 895
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->currentIterationValue:Lorg/HdrHistogram/packedarray/IterationValue;

    iget v1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->nextVirtrualIndex:I

    iget-wide v2, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->nextValue:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/HdrHistogram/packedarray/IterationValue;->set(IJ)V

    .line 899
    iget v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->nextVirtrualIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->findFirstNonZeroValueVirtualIndexStartingAt(I)V

    .line 900
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;->currentIterationValue:Lorg/HdrHistogram/packedarray/IterationValue;

    return-object v0

    .line 896
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 911
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
