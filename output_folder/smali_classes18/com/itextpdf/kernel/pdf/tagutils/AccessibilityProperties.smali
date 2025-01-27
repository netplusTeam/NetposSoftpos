.class public abstract Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
.super Ljava/lang/Object;
.source "AccessibilityProperties.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAttributes(ILcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0
    .param p1, "index"    # I
    .param p2, "attributes"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    .line 133
    return-object p0
.end method

.method public addAttributes(Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0
    .param p1, "attributes"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    .line 129
    return-object p0
.end method

.method public addRef(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0
    .param p1, "treePointer"    # Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 117
    return-object p0
.end method

.method public clearAttributes()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0

    .line 137
    return-object p0
.end method

.method public clearRefs()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0

    .line 125
    return-object p0
.end method

.method public getActualText()Ljava/lang/String;
    .locals 1

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlternateDescription()Ljava/lang/String;
    .locals 1

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExpansion()Ljava/lang/String;
    .locals 1

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;
    .locals 1

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneme()Ljava/lang/String;
    .locals 1

    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneticAlphabet()Ljava/lang/String;
    .locals 1

    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRefsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActualText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0
    .param p1, "actualText"    # Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public setAlternateDescription(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0
    .param p1, "alternateDescription"    # Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public setExpansion(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0
    .param p1, "expansion"    # Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public setNamespace(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0
    .param p1, "namespace"    # Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    .line 113
    return-object p0
.end method

.method public setPhoneme(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0
    .param p1, "phoneme"    # Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public setPhoneticAlphabet(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0
    .param p1, "phoneticAlphabet"    # Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0
    .param p1, "role"    # Ljava/lang/String;

    .line 57
    return-object p0
.end method
