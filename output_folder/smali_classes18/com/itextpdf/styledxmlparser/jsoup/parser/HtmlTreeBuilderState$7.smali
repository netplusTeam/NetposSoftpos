.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$7;
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

    .line 335
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;-><init>()V

    return-void
.end method


# virtual methods
.method anyOtherEndTag(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 6
    .param p1, "t"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
    .param p2, "tb"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;

    .line 860
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asEndTag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v1

    .line 862
    .local v1, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "pos":I
    :goto_0
    if-ltz v2, :cond_3

    .line 863
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 864
    .local v4, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 865
    invoke-virtual {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 867
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 868
    :cond_0
    invoke-virtual {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 869
    goto :goto_1

    .line 871
    :cond_1
    invoke-virtual {p2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 872
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 873
    const/4 v3, 0x0

    return v3

    .line 862
    .end local v4    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 877
    .end local v2    # "pos":I
    :cond_3
    :goto_1
    return v3
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 339
    const-string v0, "InBody"

    return-object v0
.end method

.method process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 19
    .param p1, "t"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
    .param p2, "tb"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;

    .line 344
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$24;->$SwitchMap$com$itextpdf$styledxmlparser$jsoup$parser$Token$TokenType:[I

    iget-object v4, v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "name"

    const-string v5, "html"

    const-string/jumbo v6, "span"

    const-string v7, "form"

    const-string v8, "li"

    const-string v9, "body"

    const/4 v10, 0x1

    const-string v11, "p"

    const/4 v12, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_17

    .line 346
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asCharacter()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    move-result-object v3

    .line 347
    .local v3, "c":Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->access$300()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 349
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 350
    return v12

    .line 351
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->access$000(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 352
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 353
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;)V

    goto/16 :goto_17

    .line 355
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 356
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;)V

    .line 357
    invoke-virtual {v2, v12}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 359
    goto/16 :goto_17

    .line 655
    .end local v3    # "c":Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asEndTag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    move-result-object v3

    .line 656
    .local v3, "endTag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v13

    .line 657
    .local v13, "name":Ljava/lang/String;
    sget-object v14, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndAdoptionFormatters:[Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 659
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_13

    .line 660
    invoke-virtual {v2, v13}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v5

    .line 661
    .local v5, "formatEl":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-nez v5, :cond_2

    .line 662
    invoke-virtual/range {p0 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v6

    return v6

    .line 663
    :cond_2
    invoke-virtual {v2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->onStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 664
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 665
    invoke-virtual {v2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 666
    return v10

    .line 667
    :cond_3
    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 668
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 669
    return v12

    .line 670
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v6

    if-eq v6, v5, :cond_5

    .line 671
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 673
    :cond_5
    const/4 v6, 0x0

    .line 674
    .local v6, "furthestBlock":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    const/4 v7, 0x0

    .line 675
    .local v7, "commonAncestor":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    const/4 v8, 0x0

    .line 676
    .local v8, "seenFormattingElement":Z
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v9

    .line 679
    .local v9, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 680
    .local v11, "stackSize":I
    const/4 v14, 0x0

    .local v14, "si":I
    :goto_1
    if-ge v14, v11, :cond_8

    const/16 v15, 0x40

    if-ge v14, v15, :cond_8

    .line 681
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 682
    .local v15, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-ne v15, v5, :cond_6

    .line 683
    add-int/lit8 v12, v14, -0x1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v7, v12

    check-cast v7, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 684
    const/4 v8, 0x1

    goto :goto_2

    .line 685
    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v2, v15}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 686
    move-object v6, v15

    .line 687
    goto :goto_3

    .line 680
    .end local v15    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_7
    :goto_2
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x0

    goto :goto_1

    .line 690
    .end local v14    # "si":I
    :cond_8
    :goto_3
    if-nez v6, :cond_9

    .line 691
    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 692
    invoke-virtual {v2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 693
    return v10

    .line 698
    :cond_9
    move-object v12, v6

    .line 699
    .local v12, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    move-object v14, v6

    .line 700
    .local v14, "lastNode":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_4
    const/4 v10, 0x3

    if-ge v15, v10, :cond_e

    .line 701
    invoke-virtual {v2, v12}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->onStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 702
    invoke-virtual {v2, v12}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v12

    .line 703
    :cond_a
    invoke-virtual {v2, v12}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->isInActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 704
    invoke-virtual {v2, v12}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    .line 705
    move/from16 v17, v8

    move-object/from16 v16, v9

    goto :goto_5

    .line 706
    :cond_b
    if-ne v12, v5, :cond_c

    .line 707
    move/from16 v17, v8

    move-object/from16 v16, v9

    goto :goto_6

    .line 709
    :cond_c
    new-instance v10, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v12}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v16

    move/from16 v17, v8

    .end local v8    # "seenFormattingElement":Z
    .local v17, "seenFormattingElement":Z
    invoke-static/range {v16 .. v16}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v8

    move-object/from16 v16, v9

    .end local v9    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    .local v16, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v8, v9}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;)V

    move-object v8, v10

    .line 710
    .local v8, "replacement":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v2, v12, v8}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->replaceActiveFormattingElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 711
    invoke-virtual {v2, v12, v8}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->replaceOnStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 712
    move-object v9, v8

    .line 714
    .end local v12    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .local v9, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    nop

    .line 718
    invoke-virtual {v14}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 719
    invoke-virtual {v14}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->remove()V

    .line 720
    :cond_d
    invoke-virtual {v9, v14}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 722
    move-object v10, v9

    move-object v12, v9

    move-object v14, v10

    .line 700
    .end local v8    # "replacement":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .end local v9    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .restart local v12    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, v16

    move/from16 v8, v17

    const/4 v10, 0x1

    goto :goto_4

    .end local v16    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    .end local v17    # "seenFormattingElement":Z
    .local v8, "seenFormattingElement":Z
    .local v9, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    :cond_e
    move/from16 v17, v8

    move-object/from16 v16, v9

    .line 725
    .end local v8    # "seenFormattingElement":Z
    .end local v9    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    .end local v15    # "j":I
    .restart local v16    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    .restart local v17    # "seenFormattingElement":Z
    :goto_6
    invoke-virtual {v7}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndTableFosters:[Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 726
    invoke-virtual {v14}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 727
    invoke-virtual {v14}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->remove()V

    .line 728
    :cond_f
    invoke-virtual {v2, v14}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertInFosterParent(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    goto :goto_7

    .line 730
    :cond_10
    invoke-virtual {v14}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 731
    invoke-virtual {v14}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->remove()V

    .line 732
    :cond_11
    invoke-virtual {v7, v14}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 735
    :goto_7
    new-instance v8, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 736
    .local v8, "adopter":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v8}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v9

    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->addAll(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 737
    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodeSize()I

    move-result v10

    new-array v10, v10, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 738
    .local v9, "childNodes":[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    array-length v10, v9

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v10, :cond_12

    move-object/from16 v18, v7

    .end local v7    # "commonAncestor":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .local v18, "commonAncestor":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    aget-object v7, v9, v15

    .line 739
    .local v7, "childNode":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    invoke-virtual {v8, v7}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 738
    .end local v7    # "childNode":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v18

    goto :goto_8

    .line 741
    .end local v18    # "commonAncestor":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .local v7, "commonAncestor":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_12
    move-object/from16 v18, v7

    .end local v7    # "commonAncestor":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .restart local v18    # "commonAncestor":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v6, v8}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 742
    invoke-virtual {v2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 744
    invoke-virtual {v2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    .line 745
    invoke-virtual {v2, v6, v8}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertOnStackAfter(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 659
    .end local v5    # "formatEl":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .end local v6    # "furthestBlock":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .end local v8    # "adopter":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .end local v9    # "childNodes":[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .end local v11    # "stackSize":I
    .end local v12    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .end local v14    # "lastNode":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .end local v16    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    .end local v17    # "seenFormattingElement":Z
    .end local v18    # "commonAncestor":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    add-int/lit8 v4, v4, 0x1

    const/4 v10, 0x1

    const/4 v12, 0x0

    goto/16 :goto_0

    .end local v4    # "i":I
    :cond_13
    goto/16 :goto_17

    .line 747
    :cond_14
    sget-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndClosers:[Ljava/lang/String;

    invoke-static {v13, v10}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 748
    invoke-virtual {v2, v13}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 750
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 751
    const/4 v4, 0x0

    return v4

    .line 753
    :cond_15
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 754
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 755
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 756
    :cond_16
    invoke-virtual {v2, v13}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 758
    :cond_17
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 760
    invoke-virtual/range {p0 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    return v4

    .line 761
    :cond_18
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 762
    invoke-virtual {v2, v13}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inListItemScope(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 763
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 764
    const/4 v4, 0x0

    return v4

    .line 766
    :cond_19
    invoke-virtual {v2, v13}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 767
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 768
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 769
    :cond_1a
    invoke-virtual {v2, v13}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 771
    :cond_1b
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 772
    invoke-virtual {v2, v9}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 773
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 774
    const/4 v4, 0x0

    return v4

    .line 777
    :cond_1c
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$7;->AfterBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_17

    .line 779
    :cond_1d
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 780
    invoke-virtual {v2, v9}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    move-result v4

    .line 781
    .local v4, "notIgnored":Z
    if-eqz v4, :cond_1e

    .line 782
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result v5

    return v5

    .line 783
    .end local v4    # "notIgnored":Z
    :cond_1e
    goto/16 :goto_17

    :cond_1f
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 784
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    move-result-object v4

    .line 785
    .local v4, "currentForm":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;)V

    .line 786
    if-eqz v4, :cond_22

    invoke-virtual {v2, v13}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    goto :goto_9

    .line 790
    :cond_20
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 791
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 792
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 794
    :cond_21
    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    .line 796
    .end local v4    # "currentForm":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto/16 :goto_17

    .line 787
    .restart local v4    # "currentForm":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_22
    :goto_9
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 788
    const/4 v5, 0x0

    return v5

    .line 796
    .end local v4    # "currentForm":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_23
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 797
    invoke-virtual {v2, v13}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 798
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 799
    invoke-virtual {v2, v13}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 800
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result v4

    return v4

    .line 802
    :cond_24
    invoke-virtual {v2, v13}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 803
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 804
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 805
    :cond_25
    invoke-virtual {v2, v13}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 807
    :cond_26
    sget-object v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    invoke-static {v13, v5}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 808
    invoke-virtual {v2, v13}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 809
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 810
    const/4 v4, 0x0

    return v4

    .line 812
    :cond_27
    invoke-virtual {v2, v13}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 814
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 815
    :cond_28
    invoke-virtual {v2, v13}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 817
    :cond_29
    sget-object v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    invoke-static {v13, v5}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 818
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 819
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 820
    const/4 v4, 0x0

    return v4

    .line 822
    :cond_2a
    invoke-virtual {v2, v13}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 823
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 824
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 825
    :cond_2b
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->popStackToClose([Ljava/lang/String;)V

    goto/16 :goto_17

    .line 827
    :cond_2c
    const-string/jumbo v5, "sarcasm"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 829
    invoke-virtual/range {p0 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    return v4

    .line 830
    :cond_2d
    sget-object v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    invoke-static {v13, v5}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 831
    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7f

    .line 832
    invoke-virtual {v2, v13}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 833
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 834
    const/4 v4, 0x0

    return v4

    .line 836
    :cond_2e
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 837
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 838
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 839
    :cond_2f
    invoke-virtual {v2, v13}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->clearFormattingElementsToLastMarker()V

    goto/16 :goto_17

    .line 842
    :cond_30
    const-string v4, "br"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 843
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 844
    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 845
    const/4 v4, 0x0

    return v4

    .line 847
    :cond_31
    invoke-virtual/range {p0 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    return v4

    .line 370
    .end local v3    # "endTag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;
    .end local v13    # "name":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asStartTag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    move-result-object v3

    .line 371
    .local v3, "startTag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v10

    .line 372
    .local v10, "name":Ljava/lang/String;
    const-string v12, "a"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    .line 373
    invoke-virtual {v2, v12}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 374
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 375
    invoke-virtual {v2, v12}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 378
    invoke-virtual {v2, v12}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v4

    .line 379
    .local v4, "remainingA":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-eqz v4, :cond_32

    .line 380
    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 381
    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    .line 384
    .end local v4    # "remainingA":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_32
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 385
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v4

    .line 386
    .local v4, "a":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 387
    .end local v4    # "a":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto/16 :goto_17

    :cond_33
    sget-object v12, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartEmptyFormatters:[Ljava/lang/String;

    invoke-static {v10, v12}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_34

    .line 388
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 389
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 390
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_17

    .line 391
    :cond_34
    sget-object v12, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPClosers:[Ljava/lang/String;

    invoke-static {v10, v12}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_36

    .line 392
    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 393
    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 395
    :cond_35
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto/16 :goto_17

    .line 396
    :cond_36
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 398
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 399
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto/16 :goto_17

    .line 400
    :cond_37
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 401
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v4

    .line 403
    .local v4, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_a
    if-lez v5, :cond_3a

    .line 404
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 405
    .local v6, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 406
    invoke-virtual {v2, v8}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 407
    goto :goto_b

    .line 409
    :cond_38
    invoke-virtual {v2, v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_39

    .line 410
    goto :goto_b

    .line 403
    .end local v6    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_39
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 412
    .end local v5    # "i":I
    :cond_3a
    :goto_b
    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 413
    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 415
    :cond_3b
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 416
    .end local v4    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    goto/16 :goto_17

    :cond_3c
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 417
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 419
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 420
    .local v4, "html":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->getAttributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    .line 421
    .local v6, "attribute":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 422
    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)V

    .line 423
    .end local v6    # "attribute":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    :cond_3d
    goto :goto_c

    .line 424
    .end local v4    # "html":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_3e
    goto/16 :goto_17

    :cond_3f
    sget-object v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartToHead:[Ljava/lang/String;

    invoke-static {v10, v5}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 425
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$7;->InHead:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v4

    return v4

    .line 426
    :cond_40
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_45

    .line 427
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v4

    .line 429
    .local v4, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_44

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_41

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    goto :goto_e

    .line 433
    :cond_41
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 434
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 435
    .local v5, "body":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->getAttributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    .line 436
    .local v7, "attribute":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    invoke-virtual {v7}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_42

    .line 437
    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)V

    .line 438
    .end local v7    # "attribute":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    :cond_42
    goto :goto_d

    .line 440
    .end local v4    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    .end local v5    # "body":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_43
    goto/16 :goto_17

    .line 431
    .restart local v4    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    :cond_44
    :goto_e
    const/4 v5, 0x0

    return v5

    .line 440
    .end local v4    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    :cond_45
    const-string v5, "frameset"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 441
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v4

    .line 443
    .restart local v4    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_4a

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_46

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    goto :goto_10

    .line 446
    :cond_46
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk()Z

    move-result v5

    if-nez v5, :cond_47

    .line 447
    const/4 v5, 0x0

    return v5

    .line 449
    :cond_47
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 450
    .local v5, "second":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v6

    if-eqz v6, :cond_48

    .line 451
    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->remove()V

    .line 453
    :cond_48
    :goto_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_49

    .line 454
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_f

    .line 455
    :cond_49
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 456
    sget-object v6, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$7;->InFrameset:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 458
    .end local v4    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    .end local v5    # "second":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto/16 :goto_17

    .line 445
    .restart local v4    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    :cond_4a
    :goto_10
    const/4 v5, 0x0

    return v5

    .line 458
    .end local v4    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    :cond_4b
    sget-object v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    invoke-static {v10, v5}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 459
    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 460
    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 462
    :cond_4c
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 463
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 464
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->pop()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 466
    :cond_4d
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto/16 :goto_17

    .line 467
    :cond_4e
    sget-object v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPreListing:[Ljava/lang/String;

    invoke-static {v10, v5}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 468
    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 469
    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 471
    :cond_4f
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 473
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_17

    .line 474
    :cond_50
    const/4 v5, 0x0

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 475
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    move-result-object v4

    if-eqz v4, :cond_51

    .line 476
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 477
    return v5

    .line 479
    :cond_51
    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 480
    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 482
    :cond_52
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertForm(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;Z)Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    goto/16 :goto_17

    .line 483
    :cond_53
    sget-object v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    invoke-static {v10, v5}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 484
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v4

    .line 486
    .restart local v4    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_11
    if-lez v5, :cond_56

    .line 487
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 488
    .local v6, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 489
    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 490
    goto :goto_12

    .line 492
    :cond_54
    invoke-virtual {v2, v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_55

    .line 493
    goto :goto_12

    .line 486
    .end local v6    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_55
    add-int/lit8 v5, v5, -0x1

    goto :goto_11

    .line 495
    .end local v5    # "i":I
    :cond_56
    :goto_12
    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 496
    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 498
    :cond_57
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 499
    .end local v4    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    goto/16 :goto_17

    :cond_58
    const-string v5, "plaintext"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 500
    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 501
    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 503
    :cond_59
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 504
    iget-object v4, v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->PLAINTEXT:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {v4, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto/16 :goto_17

    .line 505
    :cond_5a
    const-string v5, "button"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 506
    invoke-virtual {v2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 508
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 509
    invoke-virtual {v2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 510
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    goto/16 :goto_17

    .line 512
    :cond_5b
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 513
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 514
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_17

    .line 516
    :cond_5c
    sget-object v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->Formatters:[Ljava/lang/String;

    invoke-static {v10, v5}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 517
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 518
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v4

    .line 519
    .local v4, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 520
    .end local v4    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto/16 :goto_17

    :cond_5d
    const-string v5, "nobr"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 521
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 522
    invoke-virtual {v2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 523
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 524
    invoke-virtual {v2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 525
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 527
    :cond_5e
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v4

    .line 528
    .restart local v4    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 529
    .end local v4    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto/16 :goto_17

    :cond_5f
    sget-object v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    invoke-static {v10, v5}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 530
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 531
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 532
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertMarkerToFormattingElements()V

    .line 533
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_17

    .line 534
    :cond_60
    const-string/jumbo v5, "table"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 535
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getDocument()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->quirksMode()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;->quirks:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;

    if-eq v4, v5, :cond_61

    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 536
    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 538
    :cond_61
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 539
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 540
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$7;->InTable:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_17

    .line 541
    :cond_62
    const-string v5, "input"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 542
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 543
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v4

    .line 544
    .restart local v4    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hidden"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_63

    .line 545
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 546
    .end local v4    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_63
    goto/16 :goto_17

    :cond_64
    sget-object v6, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartMedia:[Ljava/lang/String;

    invoke-static {v10, v6}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 547
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto/16 :goto_17

    .line 548
    :cond_65
    const-string v6, "hr"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_67

    .line 549
    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 550
    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 552
    :cond_66
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 553
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_17

    .line 554
    :cond_67
    const-string v8, "image"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string/jumbo v9, "svg"

    if-eqz v8, :cond_69

    .line 555
    invoke-virtual {v2, v9}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v4

    if-nez v4, :cond_68

    .line 556
    const-string v4, "img"

    invoke-virtual {v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->name(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result v4

    return v4

    .line 558
    :cond_68
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto/16 :goto_17

    .line 559
    :cond_69
    const-string v8, "isindex"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6f

    .line 561
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    move-result-object v9

    if-eqz v9, :cond_6a

    .line 563
    const/4 v4, 0x0

    return v4

    .line 565
    :cond_6a
    iget-object v9, v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    invoke-virtual {v9}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    .line 566
    invoke-virtual {v2, v7}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 567
    iget-object v9, v3, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    const-string v11, "action"

    invoke-virtual {v9, v11}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 568
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    move-result-object v9

    .line 569
    .local v9, "form":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    iget-object v12, v3, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v12, v11}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 571
    .end local v9    # "form":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_6b
    invoke-virtual {v2, v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 572
    const-string v9, "label"

    invoke-virtual {v2, v9}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 574
    iget-object v11, v3, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    const-string v12, "prompt"

    invoke-virtual {v11, v12}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6c

    iget-object v11, v3, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 575
    const-string v12, "prompt"

    invoke-virtual {v11, v12}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_13

    :cond_6c
    const-string v11, "This is a searchable index. Enter search keywords: "

    .line 578
    .local v11, "prompt":Ljava/lang/String;
    :goto_13
    new-instance v12, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    invoke-direct {v12}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;-><init>()V

    invoke-virtual {v12, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    .line 581
    new-instance v12, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v12}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;-><init>()V

    .line 582
    .local v12, "inputAttribs":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    iget-object v13, v3, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v13}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_14
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    .line 583
    .local v14, "attr":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    invoke-virtual {v14}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v15

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartInputAttribs:[Ljava/lang/String;

    invoke-static {v15, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 584
    invoke-virtual {v12, v14}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)V

    .line 585
    .end local v14    # "attr":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    :cond_6d
    move-object/from16 v1, p1

    goto :goto_14

    .line 586
    :cond_6e
    invoke-virtual {v12, v4, v8}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual {v2, v5, v12}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)Z

    .line 588
    invoke-virtual {v2, v9}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 589
    invoke-virtual {v2, v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 590
    invoke-virtual {v2, v7}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 591
    .end local v11    # "prompt":Ljava/lang/String;
    .end local v12    # "inputAttribs":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    goto/16 :goto_17

    :cond_6f
    const-string/jumbo v1, "textarea"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 592
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 594
    iget-object v1, v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Rcdata:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 596
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 597
    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$7;->Text:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_17

    .line 598
    :cond_70
    const-string/jumbo v1, "xmp"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 599
    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 600
    invoke-virtual {v2, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 602
    :cond_71
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 603
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 604
    invoke-static {v3, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->access$200(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_17

    .line 605
    :cond_72
    const/4 v1, 0x0

    const-string v4, "iframe"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 606
    invoke-virtual {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 607
    invoke-static {v3, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->access$200(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_17

    .line 608
    :cond_73
    const-string v1, "noembed"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 610
    invoke-static {v3, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->access$200(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_17

    .line 611
    :cond_74
    const-string/jumbo v1, "select"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 612
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 613
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 614
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->state()Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    move-result-object v1

    .line 617
    .local v1, "state":Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$7;->InTable:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_76

    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$7;->InCaption:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_76

    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$7;->InTableBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_76

    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$7;->InRow:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_76

    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$7;->InCell:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    goto :goto_15

    .line 620
    :cond_75
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$7;->InSelect:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_16

    .line 618
    :cond_76
    :goto_15
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$7;->InSelectInTable:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 621
    .end local v1    # "state":Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;
    :goto_16
    goto/16 :goto_17

    :cond_77
    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartOptions:[Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 622
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "option"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 623
    const-string v1, "option"

    invoke-virtual {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 624
    :cond_78
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 625
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto/16 :goto_17

    .line 626
    :cond_79
    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartRuby:[Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 627
    const-string/jumbo v1, "ruby"

    invoke-virtual {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 628
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 629
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 630
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 631
    invoke-virtual {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->popStackToBefore(Ljava/lang/String;)V

    .line 633
    :cond_7a
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_17

    .line 635
    :cond_7b
    const-string v1, "math"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 636
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 638
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 639
    iget-object v1, v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    goto :goto_17

    .line 640
    :cond_7c
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 641
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 643
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 644
    iget-object v1, v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    goto :goto_17

    .line 645
    :cond_7d
    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartDrop:[Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 646
    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 647
    const/4 v1, 0x0

    return v1

    .line 649
    :cond_7e
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 650
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 652
    goto :goto_17

    .line 366
    .end local v3    # "startTag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;
    .end local v10    # "name":Ljava/lang/String;
    :pswitch_3
    move v1, v12

    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 367
    return v1

    .line 362
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asComment()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;)V

    .line 363
    nop

    .line 856
    :cond_7f
    :goto_17
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
