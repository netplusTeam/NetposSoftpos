.class Lorg/HdrHistogram/packedarray/AbstractPackedLongArray$AllValuesIterator;
.super Ljava/lang/Object;
.source "AbstractPackedLongArray.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AllValuesIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field nextVirtrualIndex:I

.field final synthetic this$0:Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;


# direct methods
.method constructor <init>(Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;)V
    .locals 1
    .param p1, "this$0"    # Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;

    .line 291
    iput-object p1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray$AllValuesIterator;->this$0:Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray$AllValuesIterator;->nextVirtrualIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 305
    iget v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray$AllValuesIterator;->nextVirtrualIndex:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray$AllValuesIterator;->this$0:Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;

    .line 306
    invoke-virtual {v1}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Long;
    .locals 3

    .line 297
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray$AllValuesIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray$AllValuesIterator;->this$0:Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;

    iget v1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray$AllValuesIterator;->nextVirtrualIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray$AllValuesIterator;->nextVirtrualIndex:I

    invoke-virtual {v0, v1}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 298
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 291
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray$AllValuesIterator;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 311
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
