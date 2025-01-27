.class public Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;
.super Ljava/lang/Object;
.source "CanvasTag.java"


# instance fields
.field protected properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

.field protected role:Lcom/itextpdf/kernel/pdf/PdfName;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 0
    .param p1, "role"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->role:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfName;I)V
    .locals 2
    .param p1, "role"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "mcid"    # I

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->role:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 93
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->MCID:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->addProperty(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)V
    .locals 2
    .param p1, "mcr"    # Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    .line 103
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getMcid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;I)V

    .line 104
    return-void
.end method

.method private ensurePropertiesInit()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 227
    :cond_0
    return-void
.end method

.method private getPropertyAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "text":Lcom/itextpdf/kernel/pdf/PdfString;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    .line 216
    :cond_0
    const/4 v1, 0x0

    .line 217
    .local v1, "result":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    .line 220
    :cond_1
    return-object v1
.end method


# virtual methods
.method public addProperty(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;
    .locals 1
    .param p1, "name"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "value"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 159
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->ensurePropertiesInit()V

    .line 160
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 161
    return-object p0
.end method

.method public getActualText()Ljava/lang/String;
    .locals 1

    .line 204
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ActualText:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getPropertyAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpansionText()Ljava/lang/String;
    .locals 1

    .line 208
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->E:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getPropertyAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMcid()I
    .locals 3

    .line 122
    const/4 v0, -0x1

    .line 123
    .local v0, "mcid":I
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v1, :cond_0

    .line 124
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->MCID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 126
    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 129
    return v0

    .line 127
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CanvasTag has no MCID"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getProperties()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    return-object v0
.end method

.method public getProperty(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1
    .param p1, "name"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 184
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x0

    return-object v0

    .line 187
    :cond_0
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getRole()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->role:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public hasMcid()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->MCID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeProperty(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;
    .locals 1
    .param p1, "name"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 171
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 174
    :cond_0
    return-object p0
.end method

.method public setProperties(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;
    .locals 0
    .param p1, "properties"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 147
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 148
    return-object p0
.end method
