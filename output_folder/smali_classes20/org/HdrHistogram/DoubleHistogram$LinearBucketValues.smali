.class public Lorg/HdrHistogram/DoubleHistogram$LinearBucketValues;
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
    name = "LinearBucketValues"
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

.field final synthetic this$0:Lorg/HdrHistogram/DoubleHistogram;

.field final valueUnitsPerBucket:D


# direct methods
.method private constructor <init>(Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram;D)V
    .locals 0
    .param p1, "this$0"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p2, "histogram"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p3, "valueUnitsPerBucket"    # D

    .line 1263
    iput-object p1, p0, Lorg/HdrHistogram/DoubleHistogram$LinearBucketValues;->this$0:Lorg/HdrHistogram/DoubleHistogram;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1264
    iput-object p2, p0, Lorg/HdrHistogram/DoubleHistogram$LinearBucketValues;->histogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 1265
    iput-wide p3, p0, Lorg/HdrHistogram/DoubleHistogram$LinearBucketValues;->valueUnitsPerBucket:D

    .line 1266
    return-void
.end method

.method synthetic constructor <init>(Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram;DLorg/HdrHistogram/DoubleHistogram$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p2, "x1"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p3, "x2"    # D
    .param p5, "x3"    # Lorg/HdrHistogram/DoubleHistogram$1;

    .line 1259
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/DoubleHistogram$LinearBucketValues;-><init>(Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram;D)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/HdrHistogram/DoubleHistogramIterationValue;",
            ">;"
        }
    .end annotation

    .line 1272
    new-instance v0, Lorg/HdrHistogram/DoubleLinearIterator;

    iget-object v1, p0, Lorg/HdrHistogram/DoubleHistogram$LinearBucketValues;->histogram:Lorg/HdrHistogram/DoubleHistogram;

    iget-wide v2, p0, Lorg/HdrHistogram/DoubleHistogram$LinearBucketValues;->valueUnitsPerBucket:D

    invoke-direct {v0, v1, v2, v3}, Lorg/HdrHistogram/DoubleLinearIterator;-><init>(Lorg/HdrHistogram/DoubleHistogram;D)V

    return-object v0
.end method
