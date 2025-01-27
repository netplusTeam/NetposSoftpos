.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$6;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 276
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;-><init>()V

    return-void
.end method

.method private anythingElse(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 1
    .param p1, "t"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
    .param p2, "tb"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;

    .line 329
    const-string v0, "body"

    invoke-virtual {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 330
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 331
    invoke-virtual {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .line 280
    const-string v0, "AfterHead"

    return-object v0
.end method

.method process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 17
    .param p1, "t"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
    .param p2, "tb"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;

    .line 285
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p1 .. p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->access$000(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asCharacter()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;)V

    goto/16 :goto_1

    .line 287
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->isComment()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asComment()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;)V

    goto/16 :goto_1

    .line 289
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->isDoctype()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_1

    .line 291
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->isStartTag()Z

    move-result v3

    const-string v4, "body"

    const-string v5, "html"

    const/4 v6, 0x0

    if-eqz v3, :cond_8

    .line 292
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asStartTag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    move-result-object v3

    .line 293
    .local v3, "startTag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v7

    .line 294
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 295
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$6;->InBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v4

    return v4

    .line 296
    :cond_3
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 297
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 298
    invoke-virtual {v2, v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 299
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$6;->InBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    .line 300
    :cond_4
    const-string v4, "frameset"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 301
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 302
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$6;->InFrameset:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    .line 303
    :cond_5
    const-string v8, "base"

    const-string v9, "basefont"

    const-string v10, "bgsound"

    const-string v11, "link"

    const-string v12, "meta"

    const-string v13, "noframes"

    const-string/jumbo v14, "script"

    const-string/jumbo v15, "style"

    const-string/jumbo v16, "title"

    filled-new-array/range {v8 .. v16}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 304
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getHeadElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v4

    .line 306
    .local v4, "head":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->push(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 307
    sget-object v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$6;->InHead:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)Z

    .line 308
    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    .line 309
    .end local v4    # "head":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    :cond_6
    const-string v4, "head"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 310
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 311
    return v6

    .line 313
    :cond_7
    invoke-direct/range {p0 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$6;->anythingElse(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z

    .line 315
    .end local v3    # "startTag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;
    :goto_0
    goto :goto_1

    .end local v7    # "name":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->isEndTag()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 316
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asEndTag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 317
    invoke-direct/range {p0 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$6;->anythingElse(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z

    goto :goto_1

    .line 319
    :cond_9
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 320
    return v6

    .line 323
    :cond_a
    invoke-direct/range {p0 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$6;->anythingElse(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z

    .line 325
    :goto_1
    const/4 v3, 0x1

    return v3
.end method
