.class Lcom/itextpdf/styledxmlparser/css/parse/syntax/AtRuleBlockState;
.super Ljava/lang/Object;
.source "AtRuleBlockState.java"

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
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/AtRuleBlockState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    .line 62
    return-void
.end method


# virtual methods
.method public process(C)V
    .locals 1
    .param p1, "ch"    # C

    .line 69
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/AtRuleBlockState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterCommentStartState()V

    goto :goto_0

    .line 71
    :cond_0
    const/16 v0, 0x40

    if-ne p1, v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/AtRuleBlockState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->storeCurrentPropertiesWithoutSelector()V

    .line 73
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/AtRuleBlockState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterRuleState()V

    goto :goto_0

    .line 74
    :cond_1
    const/16 v0, 0x7d

    if-ne p1, v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/AtRuleBlockState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->storeCurrentPropertiesWithoutSelector()V

    .line 76
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/AtRuleBlockState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->finishAtRuleBlock()V

    .line 77
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/AtRuleBlockState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterUnknownStateIfNestedBlocksFinished()V

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/AtRuleBlockState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->appendToBuffer(C)V

    .line 81
    :goto_0
    return-void
.end method
