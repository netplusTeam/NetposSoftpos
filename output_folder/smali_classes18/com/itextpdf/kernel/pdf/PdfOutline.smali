.class public Lcom/itextpdf/kernel/pdf/PdfOutline;
.super Ljava/lang/Object;
.source "PdfOutline.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static FLAG_BOLD:I = 0x0

.field public static FLAG_ITALIC:I = 0x0

.field private static final serialVersionUID:J = 0x4f882869cbdde5a8L


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            ">;"
        }
    .end annotation
.end field

.field private content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

.field private destination:Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

.field private parent:Lcom/itextpdf/kernel/pdf/PdfOutline;

.field private pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const/4 v0, 0x1

    sput v0, Lcom/itextpdf/kernel/pdf/PdfOutline;->FLAG_ITALIC:I

    .line 68
    const/4 v0, 0x2

    sput v0, Lcom/itextpdf/kernel/pdf/PdfOutline;->FLAG_BOLD:I

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 3
    .param p1, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    .line 112
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 113
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Outlines:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 114
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 115
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 116
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->addRootOutline(Lcom/itextpdf/kernel/pdf/PdfOutline;)V

    .line 117
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    .line 85
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->title:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 87
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 88
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfOutline;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "parent"    # Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    .line 99
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->title:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 101
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->parent:Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 102
    iget-object v0, p3, Lcom/itextpdf/kernel/pdf/PdfOutline;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 103
    iget-object v0, p3, Lcom/itextpdf/kernel/pdf/PdfOutline;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 104
    return-void
.end method

.method private getOutlineRoot()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->hasOutlines()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    const/4 v0, 0x0

    return-object v0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Outlines:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method private isOutlineRoot()Z
    .locals 2

    .line 371
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getOutlineRoot()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 372
    .local v0, "outlineRoot":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public addAction(Lcom/itextpdf/kernel/pdf/action/PdfAction;)V
    .locals 3
    .param p1, "action"    # Lcom/itextpdf/kernel/pdf/action/PdfAction;

    .line 211
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 212
    return-void
.end method

.method public addDestination(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V
    .locals 3
    .param p1, "destination"    # Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    .line 201
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->setDestination(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V

    .line 202
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Dest:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 203
    return-void
.end method

.method public addOutline(Lcom/itextpdf/kernel/pdf/PdfOutline;)Lcom/itextpdf/kernel/pdf/PdfOutline;
    .locals 4
    .param p1, "outline"    # Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 291
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutline;->addOutline(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object v0

    .line 292
    .local v0, "newOutline":Lcom/itextpdf/kernel/pdf/PdfOutline;
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getDestination()Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->addDestination(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V

    .line 294
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getAllChildren()Ljava/util/List;

    move-result-object v1

    .line 295
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfOutline;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 296
    .local v3, "child":Lcom/itextpdf/kernel/pdf/PdfOutline;
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfOutline;->addOutline(Lcom/itextpdf/kernel/pdf/PdfOutline;)Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 297
    .end local v3    # "child":Lcom/itextpdf/kernel/pdf/PdfOutline;
    goto :goto_0

    .line 299
    :cond_0
    return-object v0
.end method

.method public addOutline(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfOutline;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 280
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutline;->addOutline(Ljava/lang/String;I)Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object v0

    return-object v0
.end method

.method public addOutline(Ljava/lang/String;I)Lcom/itextpdf/kernel/pdf/PdfOutline;
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 239
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    .line 241
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 242
    .local v0, "dictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfOutline;

    invoke-direct {v1, p1, v0, p0}, Lcom/itextpdf/kernel/pdf/PdfOutline;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfOutline;)V

    .line 243
    .local v1, "outline":Lcom/itextpdf/kernel/pdf/PdfOutline;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Title:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v4, "UnicodeBig"

    invoke-direct {v3, p1, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 244
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 245
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 246
    if-eqz p2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    add-int/lit8 v3, p2, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfOutline;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getContent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 248
    .local v2, "prevContent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 249
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Next:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 251
    .end local v2    # "prevContent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq p2, v2, :cond_2

    .line 252
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfOutline;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getContent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 253
    .local v2, "nextContent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Next:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 254
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 258
    .end local v2    # "nextContent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_2
    if-nez p2, :cond_3

    .line 259
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->First:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 260
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne p2, v2, :cond_4

    .line 261
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Last:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 263
    :cond_4
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Count:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    .line 264
    .local v2, "count":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v3

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_6

    .line 265
    :cond_5
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Count:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 267
    :cond_6
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {v3, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 269
    return-object v1
.end method

.method clear()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 341
    return-void
.end method

.method public getAllChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    return-object v0
.end method

.method public getContent()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    return-object v0
.end method

.method public getDestination()Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->destination:Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    return-object v0
.end method

.method public getParent()Lcom/itextpdf/kernel/pdf/PdfOutline;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->parent:Lcom/itextpdf/kernel/pdf/PdfOutline;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->title:Ljava/lang/String;

    return-object v0
.end method

.method public removeOutline()V
    .locals 6

    .line 306
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->hasOutlines()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfOutline;->isOutlineRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->parent:Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 311
    .local v0, "parent":Lcom/itextpdf/kernel/pdf/PdfOutline;
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    .line 312
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfOutline;>;"
    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 313
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 314
    .local v2, "parentContent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 315
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->First:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfOutline;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 316
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Last:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfOutline;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 322
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Next:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 323
    .local v3, "next":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    .line 324
    .local v4, "prev":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v4, :cond_2

    .line 325
    if-eqz v3, :cond_1

    .line 326
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Next:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 327
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 329
    :cond_1
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Next:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 331
    :cond_2
    if-eqz v3, :cond_3

    .line 332
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 334
    :cond_3
    :goto_0
    return-void

    .line 318
    .end local v3    # "next":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v4    # "prev":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_4
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutline;->removeOutline()V

    .line 319
    return-void

    .line 307
    .end local v0    # "parent":Lcom/itextpdf/kernel/pdf/PdfOutline;
    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfOutline;>;"
    .end local v2    # "parentContent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Outlines:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 308
    return-void
.end method

.method public setColor(Lcom/itextpdf/kernel/colors/Color;)V
    .locals 4
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;

    .line 145
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->C:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 146
    return-void
.end method

.method setDestination(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V
    .locals 0
    .param p1, "destination"    # Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    .line 349
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->destination:Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    .line 350
    return-void
.end method

.method public setOpen(Z)V
    .locals 4
    .param p1, "open"    # Z

    .line 221
    if-nez p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Count:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Count:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Count:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 227
    :goto_0
    return-void
.end method

.method public setStyle(I)V
    .locals 3
    .param p1, "style"    # I

    .line 154
    sget v0, Lcom/itextpdf/kernel/pdf/PdfOutline;->FLAG_BOLD:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/itextpdf/kernel/pdf/PdfOutline;->FLAG_ITALIC:I

    if-ne p1, v0, :cond_1

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 157
    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->title:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Title:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v3, "UnicodeBig"

    invoke-direct {v2, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 137
    return-void
.end method
