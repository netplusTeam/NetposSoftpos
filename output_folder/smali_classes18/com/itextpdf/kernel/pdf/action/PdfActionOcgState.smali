.class public Lcom/itextpdf/kernel/pdf/action/PdfActionOcgState;
.super Ljava/lang/Object;
.source "PdfActionOcgState.java"


# instance fields
.field private ocgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/itextpdf/kernel/pdf/PdfName;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/util/List;)V
    .locals 0
    .param p1, "state"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p2, "ocgs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/action/PdfActionOcgState;->state:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 78
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/action/PdfActionOcgState;->ocgs:Ljava/util/List;

    .line 79
    return-void
.end method


# virtual methods
.method public getObjectList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, "states":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/action/PdfActionOcgState;->state:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/action/PdfActionOcgState;->ocgs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    return-object v0
.end method

.method public getOcgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/action/PdfActionOcgState;->ocgs:Ljava/util/List;

    return-object v0
.end method

.method public getState()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/action/PdfActionOcgState;->state:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method
