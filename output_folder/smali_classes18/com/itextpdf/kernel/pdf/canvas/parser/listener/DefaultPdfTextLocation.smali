.class public Lcom/itextpdf/kernel/pdf/canvas/parser/listener/DefaultPdfTextLocation;
.super Ljava/lang/Object;
.source "DefaultPdfTextLocation.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;


# instance fields
.field private pageNr:I

.field private rectangle:Lcom/itextpdf/kernel/geom/Rectangle;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;)V
    .locals 0
    .param p1, "pageNr"    # I
    .param p2, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "text"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/DefaultPdfTextLocation;->pageNr:I

    .line 58
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/DefaultPdfTextLocation;->rectangle:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 59
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/DefaultPdfTextLocation;->text:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public getPageNumber()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/DefaultPdfTextLocation;->pageNr:I

    return v0
.end method

.method public getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/DefaultPdfTextLocation;->rectangle:Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/DefaultPdfTextLocation;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setPageNr(I)Lcom/itextpdf/kernel/pdf/canvas/parser/listener/DefaultPdfTextLocation;
    .locals 0
    .param p1, "pageNr"    # I

    .line 88
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/DefaultPdfTextLocation;->pageNr:I

    .line 89
    return-object p0
.end method

.method public setRectangle(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/parser/listener/DefaultPdfTextLocation;
    .locals 0
    .param p1, "rectangle"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 68
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/DefaultPdfTextLocation;->rectangle:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 69
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/parser/listener/DefaultPdfTextLocation;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/DefaultPdfTextLocation;->text:Ljava/lang/String;

    .line 79
    return-object p0
.end method
