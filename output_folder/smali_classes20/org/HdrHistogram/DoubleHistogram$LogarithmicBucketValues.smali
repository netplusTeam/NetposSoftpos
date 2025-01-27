.class public Lorg/HdrHistogram/DoubleHistogram$LogarithmicBucketValues;
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
    name = "LogarithmicBucketValues"
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

.field final logBase:D

.field final synthetic this$0:Lorg/HdrHistogram/DoubleHistogram;

.field final valueUnitsInFirstBucket:D


# direct methods
.method private constructor <init>(Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram;DD)V
    .locals 0
    .param p1, "this$0"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p2, "histogram"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p3, "valueUnitsInFirstBucket"    # D
    .param p5, "logBase"    # D

    .line 1288
    iput-object p1, p0, Lorg/HdrHistogram/DoubleHistogram$LogarithmicBucketValues;->this$0:Lorg/HdrHistogram/DoubleHistogram;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1289
    iput-object p2, p0, Lorg/HdrHistogram/DoubleHistogram$LogarithmicBucketValues;->histogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 1290
    iput-wide p3, p0, Lorg/HdrHistogram/DoubleHistogram$LogarithmicBucketValues;->valueUnitsInFirstBucket:D

    .line 1291
    iput-wide p5, p0, Lorg/HdrHistogram/DoubleHistogram$LogarithmicBucketValues;->logBase:D

    .line 1292
    return-void
.end method

.method synthetic constructor <init>(Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram;DDLorg/HdrHistogram/DoubleHistogram$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p2, "x1"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p3, "x2"    # D
    .param p5, "x3"    # D
    .param p7, "x4"    # Lorg/HdrHistogram/DoubleHistogram$1;

    .line 1282
    invoke-direct/range {p0 .. p6}, Lorg/HdrHistogram/DoubleHistogram$LogarithmicBucketValues;-><init>(Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram;DD)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/HdrHistogram/DoubleHistogramIterationValue;",
            ">;"
        }
    .end annotation

    .line 1298
    new-instance v6, Lorg/HdrHistogram/DoubleLogarithmicIterator;

    iget-object v1, p0, Lorg/HdrHistogram/DoubleHistogram$LogarithmicBucketValues;->histogram:Lorg/HdrHistogram/DoubleHistogram;

    iget-wide v2, p0, Lorg/HdrHistogram/DoubleHistogram$LogarithmicBucketValues;->valueUnitsInFirstBucket:D

    iget-wide v4, p0, Lorg/HdrHistogram/DoubleHistogram$LogarithmicBucketValues;->logBase:D

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/DoubleLogarithmicIterator;-><init>(Lorg/HdrHistogram/DoubleHistogram;DD)V

    return-object v6
.end method
