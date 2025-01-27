.class public Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
.super Ljava/lang/Object;
.source "BarcodePDF417.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/barcodes/BarcodePDF417;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Segment"
.end annotation


# instance fields
.field public end:I

.field public start:I

.field public type:C


# direct methods
.method public constructor <init>(CII)V
    .locals 0
    .param p1, "type"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1694
    iput-char p1, p0, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->type:C

    .line 1695
    iput p2, p0, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->start:I

    .line 1696
    iput p3, p0, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->end:I

    .line 1697
    return-void
.end method
