.class Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;
.super Ljava/lang/Object;
.source "RoleMappingResolverPdf2.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;


# static fields
.field private static final serialVersionUID:J = -0x7d6095fc6db13c7L


# instance fields
.field private currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

.field private currRole:Lcom/itextpdf/kernel/pdf/PdfName;

.field private defaultNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 4
    .param p1, "role"    # Ljava/lang/String;
    .param p2, "namespace"    # Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;
    .param p3, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->convertRoleToPdfName(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currRole:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 67
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    .line 69
    invoke-static {}, Lcom/itextpdf/kernel/pdf/tagging/StandardNamespaces;->getDefault()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "defaultNsName":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getRoleMap()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 71
    .local v1, "defaultNsRoleMap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    new-instance v2, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    invoke-direct {v2, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->setNamespaceRoleMap(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->defaultNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    .line 73
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    if-nez v3, :cond_0

    .line 74
    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public currentRoleIsStandard()Z
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currRole:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "roleStrVal":Ljava/lang/String;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://iso.org/pdf/ssn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 89
    invoke-static {v0, v2}, Lcom/itextpdf/kernel/pdf/tagging/StandardNamespaces;->roleBelongsToStandardNamespace(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 90
    .local v1, "stdRole17":Z
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "http://iso.org/pdf2/ssn"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    invoke-static {v0, v5}, Lcom/itextpdf/kernel/pdf/tagging/StandardNamespaces;->roleBelongsToStandardNamespace(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    .line 92
    .local v2, "stdRole20":Z
    :goto_1
    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :cond_3
    :goto_2
    return v3
.end method

.method public currentRoleShallBeMappedToStandard()Z
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currentRoleIsStandard()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/tagging/StandardNamespaces;->isKnownDomainSpecificNamespace(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currRole:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolveNextMapping()Z
    .locals 9

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "mapping":Lcom/itextpdf/kernel/pdf/PdfObject;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceRoleMap()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 102
    .local v1, "currNsRoleMap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_0

    .line 103
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currRole:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 106
    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 107
    return v2

    .line 110
    :cond_1
    const/4 v3, 0x0

    .line 111
    .local v3, "mappingWasResolved":Z
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isName()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currRole:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 113
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->defaultNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    .line 114
    const/4 v3, 0x1

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 116
    const/4 v4, 0x0

    .line 117
    .local v4, "mappedRole":Lcom/itextpdf/kernel/pdf/PdfName;
    const/4 v5, 0x0

    .line 119
    .local v5, "mappedNsDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    move-object v6, v0

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 120
    .local v6, "mappingArr":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    .line 121
    invoke-virtual {v6, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    .line 122
    invoke-virtual {v6, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    .line 124
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    move v2, v8

    :cond_4
    move v3, v2

    .line 125
    if-eqz v3, :cond_5

    .line 126
    iput-object v4, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currRole:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 127
    new-instance v2, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    invoke-direct {v2, v5}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    .line 130
    .end local v4    # "mappedRole":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v5    # "mappedNsDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v6    # "mappingArr":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_5
    :goto_0
    return v3
.end method
