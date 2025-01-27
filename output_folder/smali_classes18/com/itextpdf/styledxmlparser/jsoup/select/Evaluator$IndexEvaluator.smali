.class public abstract Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEvaluator;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IndexEvaluator"
.end annotation


# instance fields
.field index:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "index"    # I

    .line 659
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;-><init>()V

    .line 660
    iput p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEvaluator;->index:I

    .line 661
    return-void
.end method
