.class public Lorg/HdrHistogram/DoubleHistogram$Percentiles;
.super Ljava/lang/Object;
.source "DoubleHistogram.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/DoubleHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Percentiles"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/HdrHistogram/DoubleHistogramIterationValue;",
        ">;"
    }
.end annotation


# instance fields
.field final histogram:Lorg/HdrHistogram/DoubleHistogram;

.field final percentileTicksPerHalfDistance:I

.field final synthetic this$0:Lorg/HdrHistogram/DoubleHistogram;


# direct methods
.method private constructor <init>(Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p2, "histogram"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p3, "percentileTicksPerHalfDistance"    # I

    .line 1240
    iput-object p1, p0, Lorg/HdrHistogram/DoubleHistogram$Percentiles;->this$0:Lorg/HdrHistogram/DoubleHistogram;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1241
    iput-object p2, p0, Lorg/HdrHistogram/DoubleHistogram$Percentiles;->histogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 1242
    iput p3, p0, Lorg/HdrHistogram/DoubleHistogram$Percentiles;->percentileTicksPerHalfDistance:I

    .line 1243
    return-void
.end method

.method synthetic constructor <init>(Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram;ILorg/HdrHistogram/DoubleHistogram$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p2, "x1"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/HdrHistogram/DoubleHistogram$1;

    .line 1236
    invoke-direct {p0, p1, p2, p3}, Lorg/HdrHistogram/DoubleHistogram$Percentiles;-><init>(Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram;I)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/HdrHistogram/DoubleHistogramIterationValue;",
            ">;"
        }
    .end annotation

    .line 1249
    new-instance v0, Lorg/HdrHistogram/DoublePercentileIterator;

    iget-object v1, p0, Lorg/HdrHistogram/DoubleHistogram$Percentiles;->histogram:Lorg/HdrHistogram/DoubleHistogram;

    iget v2, p0, Lorg/HdrHistogram/DoubleHistogram$Percentiles;->percentileTicksPerHalfDistance:I

    invoke-direct {v0, v1, v2}, Lorg/HdrHistogram/DoublePercentileIterator;-><init>(Lorg/HdrHistogram/DoubleHistogram;I)V

    return-object v0
.end method
