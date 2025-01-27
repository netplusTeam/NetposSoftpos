.class public Lorg/HdrHistogram/AbstractHistogram$LogarithmicBucketValues;
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
    name = "LogarithmicBucketValues"
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

.field final logBase:D

.field final synthetic this$0:Lorg/HdrHistogram/AbstractHistogram;

.field final valueUnitsInFirstBucket:J


# direct methods
.method private constructor <init>(Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram;JD)V
    .locals 0
    .param p1, "this$0"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "histogram"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p3, "valueUnitsInFirstBucket"    # J
    .param p5, "logBase"    # D

    .line 1653
    iput-object p1, p0, Lorg/HdrHistogram/AbstractHistogram$LogarithmicBucketValues;->this$0:Lorg/HdrHistogram/AbstractHistogram;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1654
    iput-object p2, p0, Lorg/HdrHistogram/AbstractHistogram$LogarithmicBucketValues;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    .line 1655
    iput-wide p3, p0, Lorg/HdrHistogram/AbstractHistogram$LogarithmicBucketValues;->valueUnitsInFirstBucket:J

    .line 1656
    iput-wide p5, p0, Lorg/HdrHistogram/AbstractHistogram$LogarithmicBucketValues;->logBase:D

    .line 1657
    return-void
.end method

.method synthetic constructor <init>(Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram;JDLorg/HdrHistogram/AbstractHistogram$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "x1"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p3, "x2"    # J
    .param p5, "x3"    # D
    .param p7, "x4"    # Lorg/HdrHistogram/AbstractHistogram$1;

    .line 1647
    invoke-direct/range {p0 .. p6}, Lorg/HdrHistogram/AbstractHistogram$LogarithmicBucketValues;-><init>(Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram;JD)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/HdrHistogram/HistogramIterationValue;",
            ">;"
        }
    .end annotation

    .line 1663
    new-instance v6, Lorg/HdrHistogram/LogarithmicIterator;

    iget-object v1, p0, Lorg/HdrHistogram/AbstractHistogram$LogarithmicBucketValues;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v2, p0, Lorg/HdrHistogram/AbstractHistogram$LogarithmicBucketValues;->valueUnitsInFirstBucket:J

    iget-wide v4, p0, Lorg/HdrHistogram/AbstractHistogram$LogarithmicBucketValues;->logBase:D

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/LogarithmicIterator;-><init>(Lorg/HdrHistogram/AbstractHistogram;JD)V

    return-object v6
.end method
