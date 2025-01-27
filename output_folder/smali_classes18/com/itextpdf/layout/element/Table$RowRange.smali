.class public Lcom/itextpdf/layout/element/Table$RowRange;
.super Ljava/lang/Object;
.source "Table.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/element/Table;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowRange"
.end annotation


# instance fields
.field finishRow:I

.field startRow:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "startRow"    # I
    .param p2, "finishRow"    # I

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    iput p1, p0, Lcom/itextpdf/layout/element/Table$RowRange;->startRow:I

    .line 1019
    iput p2, p0, Lcom/itextpdf/layout/element/Table$RowRange;->finishRow:I

    .line 1020
    return-void
.end method


# virtual methods
.method public getFinishRow()I
    .locals 1

    .line 1037
    iget v0, p0, Lcom/itextpdf/layout/element/Table$RowRange;->finishRow:I

    return v0
.end method

.method public getStartRow()I
    .locals 1

    .line 1028
    iget v0, p0, Lcom/itextpdf/layout/element/Table$RowRange;->startRow:I

    return v0
.end method
