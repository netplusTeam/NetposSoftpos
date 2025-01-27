.class public Lcom/itextpdf/kernel/pdf/canvas/parser/listener/GlyphTextEventListener;
.super Lcom/itextpdf/kernel/pdf/canvas/parser/listener/GlyphEventListener;
.source "GlyphTextEventListener.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextExtractionStrategy;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextExtractionStrategy;)V
    .locals 0
    .param p1, "delegate"    # Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextExtractionStrategy;

    .line 64
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/GlyphEventListener;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getResultantText()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/GlyphTextEventListener;->delegate:Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;

    instance-of v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextExtractionStrategy;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/GlyphTextEventListener;->delegate:Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextExtractionStrategy;

    invoke-interface {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextExtractionStrategy;->getResultantText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
