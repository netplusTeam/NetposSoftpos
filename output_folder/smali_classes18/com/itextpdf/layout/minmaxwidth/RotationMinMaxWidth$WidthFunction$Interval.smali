.class public Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction$Interval;
.super Ljava/lang/Object;
.source "RotationMinMaxWidth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Interval"
.end annotation


# instance fields
.field private max:D

.field private min:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0
    .param p1, "min"    # D
    .param p3, "max"    # D

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-wide p1, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction$Interval;->min:D

    .line 288
    iput-wide p3, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction$Interval;->max:D

    .line 289
    return-void
.end method


# virtual methods
.method public getMax()D
    .locals 2

    .line 296
    iget-wide v0, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction$Interval;->max:D

    return-wide v0
.end method

.method public getMin()D
    .locals 2

    .line 292
    iget-wide v0, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction$Interval;->min:D

    return-wide v0
.end method
