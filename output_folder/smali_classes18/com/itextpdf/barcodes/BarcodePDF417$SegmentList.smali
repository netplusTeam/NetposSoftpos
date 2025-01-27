.class public Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;
.super Ljava/lang/Object;
.source "BarcodePDF417.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/barcodes/BarcodePDF417;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SegmentList"
.end annotation


# instance fields
.field protected list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/barcodes/BarcodePDF417$Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(CII)V
    .locals 2
    .param p1, "type"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1704
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->list:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;

    invoke-direct {v1, p1, p2, p3}, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;-><init>(CII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1705
    return-void
.end method

.method public get(I)Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    .locals 1
    .param p1, "idx"    # I

    .line 1708
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1710
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;

    return-object v0

    .line 1709
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "idx"    # I

    .line 1714
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1716
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1717
    return-void

    .line 1715
    :cond_1
    :goto_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 1720
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
