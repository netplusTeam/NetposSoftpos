.class public abstract Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;
.super Ljava/lang/Object;
.source "AbstractCssContext.java"


# instance fields
.field private quotesDepth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;->quotesDepth:I

    return-void
.end method


# virtual methods
.method public getQuotesDepth()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;->quotesDepth:I

    return v0
.end method

.method public setQuotesDepth(I)V
    .locals 0
    .param p1, "quotesDepth"    # I

    .line 73
    iput p1, p0, Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;->quotesDepth:I

    .line 74
    return-void
.end method
