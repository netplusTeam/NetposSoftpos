.class public Lorg/HdrHistogram/DoubleHistogram$AllValues;
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
    name = "AllValues"
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


# direct methods
.method private constructor <init>(Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram;)V
    .locals 0
    .param p1, "this$0"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p2, "histogram"    # Lorg/HdrHistogram/DoubleHistogram;

    .line 1332
    iput-object p1, p0, Lorg/HdrHistogram/DoubleHistogram$AllValues;->this$0:Lorg/HdrHistogram/DoubleHistogram;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1333
    iput-object p2, p0, Lorg/HdrHistogram/DoubleHistogram$AllValues;->histogram:Lorg/HdrHistogram/DoubleHistogram;

    .line 1334
    return-void
.end method

.method synthetic constructor <init>(Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p2, "x1"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p3, "x2"    # Lorg/HdrHistogram/DoubleHistogram$1;

    .line 1329
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram$AllValues;-><init>(Lorg/HdrHistogram/DoubleHistogram;Lorg/HdrHistogram/DoubleHistogram;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/HdrHistogram/DoubleHistogramIterationValue;",
            ">;"
        }
    .end annotation

    .line 1340
    new-instance v0, Lorg/HdrHistogram/DoubleAllValuesIterator;

    iget-object v1, p0, Lorg/HdrHistogram/DoubleHistogram$AllValues;->histogram:Lorg/HdrHistogram/DoubleHistogram;

    invoke-direct {v0, v1}, Lorg/HdrHistogram/DoubleAllValuesIterator;-><init>(Lorg/HdrHistogram/DoubleHistogram;)V

    return-object v0
.end method
