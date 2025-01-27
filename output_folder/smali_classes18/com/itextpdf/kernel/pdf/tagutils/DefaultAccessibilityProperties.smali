.class public Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;
.super Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
.source "DefaultAccessibilityProperties.java"


# static fields
.field private static final serialVersionUID:J = 0x2b902a306d2279d9L


# instance fields
.field protected actualText:Ljava/lang/String;

.field protected alternateDescription:Ljava/lang/String;

.field protected attributesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;",
            ">;"
        }
    .end annotation
.end field

.field protected expansion:Ljava/lang/String;

.field protected language:Ljava/lang/String;

.field protected namespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

.field protected phoneme:Ljava/lang/String;

.field protected phoneticAlphabet:Ljava/lang/String;

.field protected refs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;",
            ">;"
        }
    .end annotation
.end field

.field protected role:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "role"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->attributesList:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->refs:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->role:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public addAttributes(ILcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 1
    .param p1, "index"    # I
    .param p2, "attributes"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    .line 134
    if-eqz p2, :cond_1

    .line 135
    if-lez p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->attributesList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->attributesList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1
    :goto_0
    return-object p0
.end method

.method public addAttributes(Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 1
    .param p1, "attributes"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    .line 129
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->addAttributes(ILcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v0

    return-object v0
.end method

.method public addRef(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 2
    .param p1, "treePointer"    # Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 190
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->refs:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    return-object p0
.end method

.method public clearAttributes()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->attributesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    return-object p0
.end method

.method public clearRefs()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->refs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 202
    return-object p0
.end method

.method public getActualText()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->actualText:Ljava/lang/String;

    return-object v0
.end method

.method public getAlternateDescription()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->alternateDescription:Ljava/lang/String;

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

    .line 152
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->attributesList:Ljava/util/List;

    return-object v0
.end method

.method public getExpansion()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->expansion:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->namespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    return-object v0
.end method

.method public getPhoneme()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->phoneme:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticAlphabet()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->phoneticAlphabet:Ljava/lang/String;

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

    .line 196
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->refs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->role:Ljava/lang/String;

    return-object v0
.end method

.method public setActualText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0
    .param p1, "actualText"    # Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->actualText:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public setAlternateDescription(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0
    .param p1, "alternateDescription"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->alternateDescription:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public setExpansion(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0
    .param p1, "expansion"    # Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->expansion:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->language:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public setNamespace(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0
    .param p1, "namespace"    # Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    .line 184
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->namespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    .line 185
    return-object p0
.end method

.method public setPhoneme(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0
    .param p1, "phoneme"    # Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->phoneme:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public setPhoneticAlphabet(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0
    .param p1, "phoneticAlphabet"    # Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->phoneticAlphabet:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 0
    .param p1, "role"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;->role:Ljava/lang/String;

    .line 80
    return-object p0
.end method
