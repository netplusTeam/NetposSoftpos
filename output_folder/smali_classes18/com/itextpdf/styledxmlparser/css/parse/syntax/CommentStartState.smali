.class Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentStartState;
.super Ljava/lang/Object;
.source "CommentStartState.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;


# instance fields
.field private controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;


# direct methods
.method constructor <init>(Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;)V
    .locals 0
    .param p1, "controller"    # Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentStartState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    .line 62
    return-void
.end method


# virtual methods
.method public process(C)V
    .locals 2
    .param p1, "ch"    # C

    .line 69
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentStartState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterCommentInnerState()V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentStartState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->appendToBuffer(C)V

    .line 73
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentStartState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->appendToBuffer(C)V

    .line 74
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentStartState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterPreviousActiveState()V

    .line 76
    :goto_0
    return-void
.end method
