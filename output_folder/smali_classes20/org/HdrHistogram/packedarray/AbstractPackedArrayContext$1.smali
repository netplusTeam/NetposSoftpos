.class Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$1;
.super Ljava/lang/Object;
.source "AbstractPackedArrayContext.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->nonZeroValues()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/HdrHistogram/packedarray/IterationValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;


# direct methods
.method constructor <init>(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;)V
    .locals 0
    .param p1, "this$0"    # Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    .line 930
    iput-object p1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$1;->this$0:Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/HdrHistogram/packedarray/IterationValue;",
            ">;"
        }
    .end annotation

    .line 932
    new-instance v0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;

    iget-object v1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$1;->this$0:Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    invoke-direct {v0, v1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;-><init>(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;)V

    return-object v0
.end method
