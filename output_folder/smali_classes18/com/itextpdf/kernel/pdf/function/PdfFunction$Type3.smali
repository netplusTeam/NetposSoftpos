.class public Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type3;
.super Lcom/itextpdf/kernel/pdf/function/PdfFunction;
.source "PdfFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/function/PdfFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type3"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d36037b952b6fe3L


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 1
    .param p1, "domain"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p2, "range"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p3, "functions"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p4, "bounds"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p5, "encode"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 178
    invoke-static {p1, p2, p3, p4, p5}, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type3;->makeType3(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type3;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 6
    .param p1, "domain"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p2, "range"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p4, "bounds"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p5, "encode"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/function/PdfFunction;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            ")V"
        }
    .end annotation

    .line 182
    .local p3, "functions":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/function/PdfFunction;>;"
    invoke-static {p3}, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type3;->getFunctionsArray(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type3;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 174
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/function/PdfFunction;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 175
    return-void
.end method

.method private static getFunctionsArray(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/function/PdfFunction;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/PdfArray;"
        }
    .end annotation

    .line 199
    .local p0, "functions":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/function/PdfFunction;>;"
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 200
    .local v0, "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/function/PdfFunction;

    .line 201
    .local v2, "function":Lcom/itextpdf/kernel/pdf/function/PdfFunction;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/function/PdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .end local v2    # "function":Lcom/itextpdf/kernel/pdf/function/PdfFunction;
    goto :goto_0

    .line 202
    :cond_0
    return-object v0
.end method

.method private static makeType3(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 4
    .param p0, "domain"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p1, "range"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p2, "functions"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p3, "bounds"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p4, "encode"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 186
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 187
    .local v0, "dictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FunctionType:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 188
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Domain:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 189
    if-eqz p1, :cond_0

    .line 190
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Range:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 192
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Functions:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 193
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Bounds:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 194
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Encode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 195
    return-object v0
.end method
