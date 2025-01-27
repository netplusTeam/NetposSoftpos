.class Lcom/itextpdf/styledxmlparser/css/parse/syntax/UnknownState;
.super Ljava/lang/Object;
.source "UnknownState.java"

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
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/UnknownState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    .line 62
    return-void
.end method


# virtual methods
.method public process(C)V
    .locals 3
    .param p1, "ch"    # C

    .line 69
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/UnknownState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterCommentStartState()V

    goto/16 :goto_0

    .line 71
    :cond_0
    const/16 v0, 0x40

    if-ne p1, v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/UnknownState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterRuleState()V

    goto :goto_0

    .line 73
    :cond_1
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/UnknownState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->storeCurrentSelector()V

    .line 75
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/UnknownState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterPropertiesState()V

    goto :goto_0

    .line 76
    :cond_2
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/UnknownState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->getBufferContents()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<!-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_5

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/UnknownState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->getBufferContents()Ljava/lang/String;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/UnknownState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->resetBuffer()V

    goto :goto_0

    .line 79
    :cond_5
    const/16 v1, 0x5b

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/UnknownState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->getBufferContents()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<![CDATA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/UnknownState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->getBufferContents()Ljava/lang/String;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 81
    :cond_7
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/UnknownState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->resetBuffer()V

    goto :goto_0

    .line 83
    :cond_8
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/UnknownState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->appendToBuffer(C)V

    .line 85
    :goto_0
    return-void
.end method
