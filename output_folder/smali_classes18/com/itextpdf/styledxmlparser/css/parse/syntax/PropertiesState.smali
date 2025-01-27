.class Lcom/itextpdf/styledxmlparser/css/parse/syntax/PropertiesState;
.super Ljava/lang/Object;
.source "PropertiesState.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;


# instance fields
.field private controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;


# direct methods
.method constructor <init>(Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;)V
    .locals 0
    .param p1, "controller"    # Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/PropertiesState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    .line 63
    return-void
.end method


# virtual methods
.method public process(C)V
    .locals 1
    .param p1, "ch"    # C

    .line 70
    const/16 v0, 0x7d

    if-ne p1, v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/PropertiesState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->storeCurrentProperties()V

    .line 72
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/PropertiesState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterUnknownStateIfNestedBlocksFinished()V

    goto :goto_0

    .line 73
    :cond_0
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/PropertiesState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterCommentStartState()V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/PropertiesState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->appendToBuffer(C)V

    .line 78
    :goto_0
    return-void
.end method
