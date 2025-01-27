.class Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;
.super Ljava/lang/Object;
.source "RootTagNormalizer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3cf41a6e806c6346L


# instance fields
.field private context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

.field private document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;


# direct methods
.method constructor <init>(Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0
    .param p1, "context"    # Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;
    .param p2, "rootTagElement"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .param p3, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    .line 69
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 70
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 71
    return-void
.end method

.method private addStructTreeRootKidsToTheRootTag(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p1, "rootKids":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;>;"
    const/4 v0, 0x0

    .line 124
    .local v0, "originalRootKidsIndex":I
    const/4 v1, 0x1

    .line 125
    .local v1, "isBeforeOriginalRoot":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    .line 127
    .local v3, "elem":Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 128
    .local v4, "kid":Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 129
    const/4 v1, 0x0

    .line 130
    goto :goto_0

    .line 136
    :cond_0
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Document:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 137
    .local v5, "kidIsDocument":Z
    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->targetTagStructureVersionIs2()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 139
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, "kidNamespaceName":Ljava/lang/String;
    const-string v8, "http://iso.org/pdf/ssn"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "http://iso.org/pdf2/ssn"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v8, v6

    :goto_2
    move v5, v8

    .line 143
    .end local v7    # "kidNamespaceName":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_5

    .line 144
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v7, v0, v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->addKid(ILcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 145
    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getKids()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    :cond_4
    add-int/2addr v0, v6

    goto :goto_3

    .line 147
    :cond_5
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v6, v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->addKid(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 149
    :goto_3
    if-eqz v5, :cond_6

    .line 150
    invoke-direct {p0, v4}, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->removeOldRoot(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    .line 152
    .end local v3    # "elem":Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;
    .end local v4    # "kid":Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .end local v5    # "kidIsDocument":Z
    :cond_6
    goto :goto_0

    .line 153
    :cond_7
    return-void
.end method

.method private createNewRootTag()V
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getDocumentDefaultNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v0

    .line 91
    .local v0, "docDefaultNs":Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    const-string v2, "Document"

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->resolveMappingToStandardOrDomainSpecificRole(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    move-result-object v1

    .line 92
    .local v1, "mapping":Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->currentRoleIsStandard()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getRole()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->logCreatedRootTagHasMappingIssue(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;)V

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v2

    new-instance v3, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Document:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfName;)V

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->addKid(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 96
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->targetTagStructureVersionIs2()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->setNamespace(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V

    .line 98
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->ensureNamespaceRegistered(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V

    .line 100
    :cond_2
    return-void
.end method

.method private ensureExistingRootTagIsDocument()V
    .locals 8

    .line 104
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getRoleMappingResolver(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    move-result-object v0

    .line 105
    .local v0, "mapping":Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;
    invoke-interface {v0}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->currentRoleIsStandard()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "Document"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getRole()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    .line 107
    .local v1, "isDocBeforeResolving":Z
    :goto_0
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->resolveMappingToStandardOrDomainSpecificRole(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->currentRoleIsStandard()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getRole()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    .line 110
    .local v2, "isDocAfterResolving":Z
    :goto_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 111
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->logCreatedRootTagHasMappingIssue(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;)V

    goto :goto_2

    .line 112
    :cond_2
    if-nez v2, :cond_3

    .line 113
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->wrapAllKidsInTag(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V

    .line 114
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Document:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->setRole(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 115
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->targetTagStructureVersionIs2()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getDocumentDefaultNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->setNamespace(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V

    .line 117
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getDocumentDefaultNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->ensureNamespaceRegistered(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V

    .line 120
    :cond_3
    :goto_2
    return-void
.end method

.method private logCreatedRootTagHasMappingIssue(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;)V
    .locals 7
    .param p1, "rootTagOriginalNs"    # Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;
    .param p2, "mapping"    # Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    .line 179
    const-string v0, ""

    .line 180
    .local v0, "origRootTagNs":Ljava/lang/String;
    const-string v1, "\" namespace"

    const-string v2, " in \""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_0
    const-string v3, " to "

    .line 185
    .local v3, "mappingRole":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getRole()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    invoke-interface {p2}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {p2}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://iso.org/pdf/ssn"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 191
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not standard role"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 194
    :cond_2
    :goto_0
    const-class v1, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 195
    .local v1, "logger":Lorg/slf4j/Logger;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v4, "Created root tag has role mapping: \"/Document\" role{0} is mapped{1}. Resulting tag structure might have invalid root tag."

    invoke-static {v4, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method private removeOldRoot(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V
    .locals 2
    .param p1, "oldRoot"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 172
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 173
    .local v0, "tagPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    nop

    .line 174
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setCurrentStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->removeTag()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 176
    return-void
.end method

.method private wrapAllKidsInTag(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V
    .locals 5
    .param p1, "parent"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .param p2, "wrapTagRole"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p3, "wrapTagNs"    # Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    .line 156
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getKids()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 157
    .local v0, "kidsNum":I
    new-instance v1, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 158
    .local v1, "tagPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->addTag(ILjava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 160
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->targetTagStructureVersionIs2()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->setNamespace(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    .line 164
    :cond_0
    new-instance v2, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)V

    .line 165
    .local v2, "newParentOfKids":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->moveToParent()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 166
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 167
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->relocateKid(ILcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v3    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method makeSingleStandardRootTag(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;"
        }
    .end annotation

    .line 74
    .local p1, "rootKids":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 75
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->createNewRootTag()V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 79
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->addKid(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 80
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->ensureExistingRootTagIsDocument()V

    .line 83
    :goto_0
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->addStructTreeRootKidsToTheRootTag(Ljava/util/List;)V

    .line 85
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    return-object v0
.end method
