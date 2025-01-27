.class public Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;
.super Ljava/lang/Object;
.source "PdfDeveloperExtension.java"


# static fields
.field public static final ADOBE_1_7_EXTENSIONLEVEL3:Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;

.field public static final ESIC_1_7_EXTENSIONLEVEL2:Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;

.field public static final ESIC_1_7_EXTENSIONLEVEL5:Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;


# instance fields
.field protected baseVersion:Lcom/itextpdf/kernel/pdf/PdfName;

.field protected extensionLevel:I

.field protected prefix:Lcom/itextpdf/kernel/pdf/PdfName;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 61
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ADBE:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Pdf_Version_1_7:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;I)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->ADOBE_1_7_EXTENSIONLEVEL3:Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;

    .line 65
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ESIC:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Pdf_Version_1_7:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;I)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->ESIC_1_7_EXTENSIONLEVEL2:Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;

    .line 69
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ESIC:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Pdf_Version_1_7:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;I)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->ESIC_1_7_EXTENSIONLEVEL5:Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;I)V
    .locals 0
    .param p1, "prefix"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "baseVersion"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p3, "extensionLevel"    # I

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->prefix:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 89
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->baseVersion:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 90
    iput p3, p0, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->extensionLevel:I

    .line 91
    return-void
.end method


# virtual methods
.method public getBaseVersion()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->baseVersion:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getDeveloperExtensions()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 4

    .line 123
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 124
    .local v0, "developerextensions":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BaseVersion:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->baseVersion:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 125
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ExtensionLevel:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget v3, p0, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->extensionLevel:I

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 127
    return-object v0
.end method

.method public getExtensionLevel()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->extensionLevel:I

    return v0
.end method

.method public getPrefix()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->prefix:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method
