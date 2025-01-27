.class public Lcom/itextpdf/kernel/pdf/FingerPrint;
.super Ljava/lang/Object;
.source "FingerPrint.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x131fb535180270e7L


# instance fields
.field private productInfoSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/ProductInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/FingerPrint;->productInfoSet:Ljava/util/Set;

    .line 68
    return-void
.end method


# virtual methods
.method public getProducts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/kernel/ProductInfo;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/FingerPrint;->productInfoSet:Ljava/util/Set;

    return-object v0
.end method

.method public registerProduct(Lcom/itextpdf/kernel/ProductInfo;)Z
    .locals 2
    .param p1, "productInfo"    # Lcom/itextpdf/kernel/ProductInfo;

    .line 77
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/FingerPrint;->productInfoSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 78
    .local v0, "initialSize":I
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/FingerPrint;->productInfoSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/FingerPrint;->productInfoSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
