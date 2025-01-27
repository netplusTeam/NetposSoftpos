.class public Lorg/jline/builtins/Completers$OptDesc;
.super Ljava/lang/Object;
.source "Completers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Completers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptDesc"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private longOption:Ljava/lang/String;

.field private shortOption:Ljava/lang/String;

.field private valueCompleter:Lorg/jline/reader/Completer;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "shortOption"    # Ljava/lang/String;
    .param p2, "longOption"    # Ljava/lang/String;

    .line 643
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/jline/builtins/Completers$OptDesc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jline/reader/Completer;)V

    .line 644
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "shortOption"    # Ljava/lang/String;
    .param p2, "longOption"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .line 634
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jline/builtins/Completers$OptDesc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jline/reader/Completer;)V

    .line 635
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jline/reader/Completer;)V
    .locals 0
    .param p1, "shortOption"    # Ljava/lang/String;
    .param p2, "longOption"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "valueCompleter"    # Lorg/jline/reader/Completer;

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput-object p1, p0, Lorg/jline/builtins/Completers$OptDesc;->shortOption:Ljava/lang/String;

    .line 611
    iput-object p2, p0, Lorg/jline/builtins/Completers$OptDesc;->longOption:Ljava/lang/String;

    .line 612
    iput-object p3, p0, Lorg/jline/builtins/Completers$OptDesc;->description:Ljava/lang/String;

    .line 613
    iput-object p4, p0, Lorg/jline/builtins/Completers$OptDesc;->valueCompleter:Lorg/jline/reader/Completer;

    .line 614
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/reader/Completer;)V
    .locals 1
    .param p1, "shortOption"    # Ljava/lang/String;
    .param p2, "longOption"    # Ljava/lang/String;
    .param p3, "valueCompleter"    # Lorg/jline/reader/Completer;

    .line 624
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jline/builtins/Completers$OptDesc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jline/reader/Completer;)V

    .line 625
    return-void
.end method

.method protected static compile(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/jline/builtins/Completers$OptDesc;",
            ">;"
        }
    .end annotation

    .line 583
    .local p0, "optionValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p1, "options":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Completers$OptDesc;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "-[a-zA-Z]"

    const-string v4, "--"

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 585
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 586
    new-instance v3, Lorg/jline/builtins/Completers$OptDesc;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lorg/jline/reader/impl/completer/StringsCompleter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    invoke-direct {v6, v7}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>(Ljava/lang/Iterable;)V

    invoke-direct {v3, v5, v4, v6}, Lorg/jline/builtins/Completers$OptDesc;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/reader/Completer;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 587
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 588
    new-instance v3, Lorg/jline/builtins/Completers$OptDesc;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lorg/jline/reader/impl/completer/StringsCompleter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    invoke-direct {v6, v7}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>(Ljava/lang/Iterable;)V

    invoke-direct {v3, v4, v5, v6}, Lorg/jline/builtins/Completers$OptDesc;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/reader/Completer;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    :goto_1
    goto :goto_0

    .line 591
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 592
    .local v2, "o":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 593
    new-instance v6, Lorg/jline/builtins/Completers$OptDesc;

    invoke-direct {v6, v5, v2}, Lorg/jline/builtins/Completers$OptDesc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 594
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 595
    new-instance v6, Lorg/jline/builtins/Completers$OptDesc;

    invoke-direct {v6, v2, v5}, Lorg/jline/builtins/Completers$OptDesc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    .end local v2    # "o":Ljava/lang/String;
    :cond_4
    :goto_3
    goto :goto_2

    .line 598
    :cond_5
    return-object v0
.end method


# virtual methods
.method protected completeOption(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;Z)V
    .locals 19
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p2, "commandLine"    # Lorg/jline/reader/ParsedLine;
    .param p4, "longOpt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/LineReader;",
            "Lorg/jline/reader/ParsedLine;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;Z)V"
        }
    .end annotation

    .line 674
    .local p3, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez p4, :cond_0

    .line 675
    iget-object v4, v0, Lorg/jline/builtins/Completers$OptDesc;->shortOption:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 676
    new-instance v10, Lorg/jline/reader/Candidate;

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/jline/builtins/Completers$OptDesc;->description:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move-object v3, v4

    invoke-direct/range {v2 .. v9}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 678
    :cond_0
    iget-object v2, v0, Lorg/jline/builtins/Completers$OptDesc;->longOption:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 679
    invoke-virtual/range {p0 .. p0}, Lorg/jline/builtins/Completers$OptDesc;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 680
    new-instance v2, Lorg/jline/reader/Candidate;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lorg/jline/builtins/Completers$OptDesc;->longOption:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/jline/builtins/Completers$OptDesc;->longOption:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v0, Lorg/jline/builtins/Completers$OptDesc;->description:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 682
    :cond_1
    new-instance v2, Lorg/jline/reader/Candidate;

    iget-object v13, v0, Lorg/jline/builtins/Completers$OptDesc;->longOption:Ljava/lang/String;

    const/4 v14, 0x0

    iget-object v15, v0, Lorg/jline/builtins/Completers$OptDesc;->description:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v11, v2

    move-object v12, v13

    invoke-direct/range {v11 .. v18}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_2
    :goto_0
    return-void
.end method

.method protected completeValue(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p2, "commandLine"    # Lorg/jline/reader/ParsedLine;
    .param p4, "curBuf"    # Ljava/lang/String;
    .param p5, "partialValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/LineReader;",
            "Lorg/jline/reader/ParsedLine;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 688
    .local p3, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    const/4 v3, 0x0

    .line 689
    .local v3, "out":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v4, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    invoke-interface/range {p1 .. p1}, Lorg/jline/reader/LineReader;->getParser()Lorg/jline/reader/Parser;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {v5, v2, v6}, Lorg/jline/reader/Parser;->parse(Ljava/lang/String;I)Lorg/jline/reader/ParsedLine;

    move-result-object v5

    .line 691
    .local v5, "pl":Lorg/jline/reader/ParsedLine;
    iget-object v6, v0, Lorg/jline/builtins/Completers$OptDesc;->valueCompleter:Lorg/jline/reader/Completer;

    invoke-interface {v6, v1, v5, v4}, Lorg/jline/reader/Completer;->complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V

    .line 692
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jline/reader/Candidate;

    .line 693
    .local v7, "c":Lorg/jline/reader/Candidate;
    invoke-virtual {v7}, Lorg/jline/reader/Candidate;->value()Ljava/lang/String;

    move-result-object v8

    .line 694
    .local v8, "v":Ljava/lang/String;
    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 695
    const/4 v3, 0x1

    .line 696
    invoke-virtual {v7}, Lorg/jline/reader/Candidate;->value()Ljava/lang/String;

    move-result-object v9

    .line 697
    .local v9, "val":Ljava/lang/String;
    iget-object v10, v0, Lorg/jline/builtins/Completers$OptDesc;->valueCompleter:Lorg/jline/reader/Completer;

    instance-of v11, v10, Lorg/jline/builtins/Completers$FileNameCompleter;

    if-eqz v11, :cond_0

    .line 698
    check-cast v10, Lorg/jline/builtins/Completers$FileNameCompleter;

    .line 699
    .local v10, "cc":Lorg/jline/builtins/Completers$FileNameCompleter;
    sget-object v11, Lorg/jline/reader/LineReader$Option;->USE_FORWARD_SLASH:Lorg/jline/reader/LineReader$Option;

    invoke-interface {v1, v11}, Lorg/jline/reader/LineReader;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v11

    invoke-virtual {v10, v11}, Lorg/jline/builtins/Completers$FileNameCompleter;->getSeparator(Z)Ljava/lang/String;

    move-result-object v11

    .line 700
    .local v11, "sep":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/jline/reader/LineReader;->getTerminal()Lorg/jline/terminal/Terminal;

    move-result-object v12

    invoke-virtual {v7}, Lorg/jline/reader/Candidate;->value()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-static {v13, v14}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v13

    sget-object v14, Lorg/jline/builtins/Completers$FileNameCompleter;->resolver:Lorg/jline/utils/StyleResolver;

    invoke-virtual {v10, v12, v13, v14, v11}, Lorg/jline/builtins/Completers$FileNameCompleter;->getDisplay(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;Lorg/jline/utils/StyleResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 702
    .end local v10    # "cc":Lorg/jline/builtins/Completers$FileNameCompleter;
    .end local v11    # "sep":Ljava/lang/String;
    :cond_0
    new-instance v10, Lorg/jline/reader/Candidate;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, p4

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual {v7}, Lorg/jline/reader/Candidate;->complete()Z

    move-result v19

    move-object v12, v10

    move-object v14, v9

    move-object v15, v11

    invoke-direct/range {v12 .. v19}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v11, p3

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 694
    .end local v9    # "val":Ljava/lang/String;
    :cond_1
    move-object/from16 v11, p3

    .line 704
    .end local v7    # "c":Lorg/jline/reader/Candidate;
    .end local v8    # "v":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 705
    :cond_2
    move-object/from16 v11, p3

    return v3
.end method

.method public description()Ljava/lang/String;
    .locals 1

    .line 662
    iget-object v0, p0, Lorg/jline/builtins/Completers$OptDesc;->description:Ljava/lang/String;

    return-object v0
.end method

.method protected hasValue()Z
    .locals 2

    .line 666
    iget-object v0, p0, Lorg/jline/builtins/Completers$OptDesc;->valueCompleter:Lorg/jline/reader/Completer;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/jline/reader/impl/completer/NullCompleter;->INSTANCE:Lorg/jline/reader/impl/completer/NullCompleter;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public longOption()Ljava/lang/String;
    .locals 1

    .line 654
    iget-object v0, p0, Lorg/jline/builtins/Completers$OptDesc;->longOption:Ljava/lang/String;

    return-object v0
.end method

.method protected match(Ljava/lang/String;)Z
    .locals 1
    .param p1, "option"    # Ljava/lang/String;

    .line 709
    iget-object v0, p0, Lorg/jline/builtins/Completers$OptDesc;->shortOption:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/Completers$OptDesc;->longOption:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setValueCompleter(Lorg/jline/reader/Completer;)V
    .locals 0
    .param p1, "valueCompleter"    # Lorg/jline/reader/Completer;

    .line 650
    iput-object p1, p0, Lorg/jline/builtins/Completers$OptDesc;->valueCompleter:Lorg/jline/reader/Completer;

    .line 651
    return-void
.end method

.method public shortOption()Ljava/lang/String;
    .locals 1

    .line 658
    iget-object v0, p0, Lorg/jline/builtins/Completers$OptDesc;->shortOption:Ljava/lang/String;

    return-object v0
.end method

.method protected startsWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "option"    # Ljava/lang/String;

    .line 713
    iget-object v0, p0, Lorg/jline/builtins/Completers$OptDesc;->shortOption:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/Completers$OptDesc;->longOption:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 714
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 713
    :goto_0
    return v0
.end method

.method protected valueCompleter()Lorg/jline/reader/Completer;
    .locals 1

    .line 670
    iget-object v0, p0, Lorg/jline/builtins/Completers$OptDesc;->valueCompleter:Lorg/jline/reader/Completer;

    return-object v0
.end method
