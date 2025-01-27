.class public Lcom/itextpdf/signatures/ExternalBlankSignatureContainer;
.super Ljava/lang/Object;
.source "ExternalBlankSignatureContainer.java"

# interfaces
.implements Lcom/itextpdf/signatures/IExternalSignatureContainer;


# instance fields
.field private sigDic:Lcom/itextpdf/kernel/pdf/PdfDictionary;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0
    .param p1, "sigDic"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/itextpdf/signatures/ExternalBlankSignatureContainer;->sigDic:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 2
    .param p1, "filter"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "subFilter"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/ExternalBlankSignatureContainer;->sigDic:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 79
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 80
    iget-object v0, p0, Lcom/itextpdf/signatures/ExternalBlankSignatureContainer;->sigDic:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->SubFilter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 81
    return-void
.end method


# virtual methods
.method public modifySigningDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1
    .param p1, "signDic"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 90
    iget-object v0, p0, Lcom/itextpdf/signatures/ExternalBlankSignatureContainer;->sigDic:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->putAll(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 91
    return-void
.end method

.method public sign(Ljava/io/InputStream;)[B
    .locals 1
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
