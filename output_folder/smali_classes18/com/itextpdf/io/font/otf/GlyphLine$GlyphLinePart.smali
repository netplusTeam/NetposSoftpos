.class public Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;
.super Ljava/lang/Object;
.source "GlyphLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/otf/GlyphLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlyphLinePart"
.end annotation


# instance fields
.field public actualText:Ljava/lang/String;

.field public end:I

.field public reversed:Z

.field public start:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 443
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;-><init>(IILjava/lang/String;)V

    .line 444
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "actualText"    # Ljava/lang/String;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->start:I

    .line 448
    iput p2, p0, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    .line 449
    iput-object p3, p0, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->actualText:Ljava/lang/String;

    .line 450
    return-void
.end method


# virtual methods
.method public setReversed(Z)Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;
    .locals 0
    .param p1, "reversed"    # Z

    .line 453
    iput-boolean p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->reversed:Z

    .line 454
    return-object p0
.end method
