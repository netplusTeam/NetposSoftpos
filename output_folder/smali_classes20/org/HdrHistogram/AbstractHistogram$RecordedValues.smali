.class public Lorg/HdrHistogram/AbstractHistogram$RecordedValues;
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
    name = "RecordedValues"
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


# direct methods
.method private constructor <init>(Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 0
    .param p1, "this$0"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "histogram"    # Lorg/HdrHistogram/AbstractHistogram;

    .line 1676
    iput-object p1, p0, Lorg/HdrHistogram/AbstractHistogram$RecordedValues;->this$0:Lorg/HdrHistogram/AbstractHistogram;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1677
    iput-object p2, p0, Lorg/HdrHistogram/AbstractHistogram$RecordedValues;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    .line 1678
    return-void
.end method

.method synthetic constructor <init>(Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "x1"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p3, "x2"    # Lorg/HdrHistogram/AbstractHistogram$1;

    .line 1673
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram$RecordedValues;-><init>(Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/HdrHistogram/HistogramIterationValue;",
            ">;"
        }
    .end annotation

    .line 1684
    new-instance v0, Lorg/HdrHistogram/RecordedValuesIterator;

    iget-object v1, p0, Lorg/HdrHistogram/AbstractHistogram$RecordedValues;->histogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-direct {v0, v1}, Lorg/HdrHistogram/RecordedValuesIterator;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    return-object v0
.end method
