.class public Lorg/HdrHistogram/AbstractHistogram$Percentiles;
.super Ljava/lang/Object;
.source "AbstractHistogram.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/AbstractHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Percentiles"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/HdrHistogram/HistogramIterationValue;",
        ">;"
    }
.end annotation


# instance fields
.field final histogram:Lorg/HdrHistogram/AbstractHistogram;

.field final percentileTicksPerHalfDistance:I

.field final synthetic this$0:Lorg/HdrHistogram/AbstractHistogram;


# direct methods
.method private constructor <init>(Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "histogram"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p3, "percentileTicksPerHalfDistance"    # I

    .line 1604
    iput-object p1, p0, Lorg/HdrHistogram/AbstractHistogram$Percentiles;->this$0:Lorg/HdrHistogram/AbstractHistogram;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1605
    iput-object p2, p0, Lorg/HdrHistogram/AbstractHistogram$Percentiles;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    .line 1606
    iput p3, p0, Lorg/HdrHistogram/AbstractHistogram$Percentiles;->percentileTicksPerHalfDistance:I

    .line 1607
    return-void
.end method

.method synthetic constructor <init>(Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram;ILorg/HdrHistogram/AbstractHistogram$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "x1"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/HdrHistogram/AbstractHistogram$1;

    .line 1600
    invoke-direct {p0, p1, p2, p3}, Lorg/HdrHistogram/AbstractHistogram$Percentiles;-><init>(Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram;I)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/HdrHistogram/HistogramIterationValue;",
            ">;"
        }
    .end annotation

    .line 1614
    new-instance v0, Lorg/HdrHistogram/PercentileIterator;

    iget-object v1, p0, Lorg/HdrHistogram/AbstractHistogram$Percentiles;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    iget v2, p0, Lorg/HdrHistogram/AbstractHistogram$Percentiles;->percentileTicksPerHalfDistance:I

    invoke-direct {v0, v1, v2}, Lorg/HdrHistogram/PercentileIterator;-><init>(Lorg/HdrHistogram/AbstractHistogram;I)V

    return-object v0
.end method
