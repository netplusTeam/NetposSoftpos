.class public Lorg/HdrHistogram/packedarray/IterationValue;
.super Ljava/lang/Object;
.source "IterationValue.java"


# instance fields
.field private index:I

.field private value:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 20
    iget v0, p0, Lorg/HdrHistogram/packedarray/IterationValue;->index:I

    return v0
.end method

.method public getValue()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lorg/HdrHistogram/packedarray/IterationValue;->value:J

    return-wide v0
.end method

.method set(IJ)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 11
    iput p1, p0, Lorg/HdrHistogram/packedarray/IterationValue;->index:I

    .line 12
    iput-wide p2, p0, Lorg/HdrHistogram/packedarray/IterationValue;->value:J

    .line 13
    return-void
.end method
