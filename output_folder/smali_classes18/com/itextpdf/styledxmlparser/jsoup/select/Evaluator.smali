.class public abstract Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.super Ljava/lang/Object;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$MatchesOwn;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Matches;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsOwnText;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsText;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEvaluator;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsEmpty;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsOnlyOfType;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsOnlyChild;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsRoot;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsFirstChild;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthLastOfType;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthOfType;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthLastChild;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthChild;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsLastOfType;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsFirstOfType;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsLastChild;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEquals;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexGreaterThan;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexLessThan;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AllElements;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeKeyPair;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueMatching;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueContaining;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueEnding;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueStarting;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueNot;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValue;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeStarting;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Attribute;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Class;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Id;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Tag;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public abstract matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
.end method
