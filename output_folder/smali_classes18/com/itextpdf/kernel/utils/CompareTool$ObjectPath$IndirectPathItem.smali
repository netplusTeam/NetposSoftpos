.class public Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;
.super Ljava/lang/Object;
.source "CompareTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IndirectPathItem"
.end annotation


# instance fields
.field private cmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

.field private outObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

.field final synthetic this$1:Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V
    .locals 0
    .param p1, "this$1"    # Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .param p2, "cmpObject"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .param p3, "outObject"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 2238
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;->this$1:Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2239
    iput-object p2, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;->cmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 2240
    iput-object p3, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;->outObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 2241
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2264
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;->cmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;

    iget-object v1, v1, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;->cmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;->outObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;

    iget-object v1, v1, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;->outObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 2265
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2264
    :goto_0
    return v0
.end method

.method public getCmpObject()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 1

    .line 2247
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;->cmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public getOutObject()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 1

    .line 2254
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;->outObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 2259
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;->cmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;->outObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
