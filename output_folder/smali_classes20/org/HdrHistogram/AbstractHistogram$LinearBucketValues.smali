.class public Lorg/HdrHistogram/AbstractHistogram$LinearBucketValues;
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
    name = "LinearBucketValues"
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

.field final synthetic this$0:Lorg/HdrHistogram/AbstractHistogram;

.field final valueUnitsPerBucket:J


# direct methods
.method private constructor <init>(Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram;J)V
    .locals 0
    .param p1, "this$0"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "histogram"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p3, "valueUnitsPerBucket"    # J

    .line 1628
    iput-object p1, p0, Lorg/HdrHistogram/AbstractHistogram$LinearBucketValues;->this$0:Lorg/HdrHistogram/AbstractHistogram;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1629
    iput-object p2, p0, Lorg/HdrHistogram/AbstractHistogram$LinearBucketValues;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    .line 1630
    iput-wide p3, p0, Lorg/HdrHistogram/AbstractHistogram$LinearBucketValues;->valueUnitsPerBucket:J

    .line 1631
    return-void
.end method

.method synthetic constructor <init>(Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram;JLorg/HdrHistogram/AbstractHistogram$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "x1"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p3, "x2"    # J
    .param p5, "x3"    # Lorg/HdrHistogram/AbstractHistogram$1;

    .line 1624
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/AbstractHistogram$LinearBucketValues;-><init>(Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram;J)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/HdrHistogram/HistogramIterationValue;",
            ">;"
        }
    .end annotation

    .line 1637
    new-instance v0, Lorg/HdrHistogram/LinearIterator;

    iget-object v1, p0, Lorg/HdrHistogram/AbstractHistogram$LinearBucketValues;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v2, p0, Lorg/HdrHistogram/AbstractHistogram$LinearBucketValues;->valueUnitsPerBucket:J

    invoke-direct {v0, v1, v2, v3}, Lorg/HdrHistogram/LinearIterator;-><init>(Lorg/HdrHistogram/AbstractHistogram;J)V

    return-object v0
.end method
