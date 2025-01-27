.class Lorg/jline/widget/TailTipWidgets$CommandDescriptions;
.super Ljava/lang/Object;
.source "TailTipWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/widget/TailTipWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandDescriptions"
.end annotation


# instance fields
.field descFun:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/jline/console/CmdLine;",
            "Lorg/jline/console/CmdDesc;",
            ">;"
        }
    .end annotation
.end field

.field descriptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/console/CmdDesc;",
            ">;"
        }
    .end annotation
.end field

.field temporaryDescs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/console/CmdDesc;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jline/widget/TailTipWidgets;

.field volatileDescs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/console/CmdDesc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jline/widget/TailTipWidgets;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/console/CmdDesc;",
            ">;)V"
        }
    .end annotation

    .line 659
    .local p2, "descriptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/console/CmdDesc;>;"
    iput-object p1, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->this$0:Lorg/jline/widget/TailTipWidgets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->descriptions:Ljava/util/Map;

    .line 655
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->temporaryDescs:Ljava/util/Map;

    .line 656
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->volatileDescs:Ljava/util/Map;

    .line 660
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->descriptions:Ljava/util/Map;

    .line 661
    return-void
.end method

.method public constructor <init>(Lorg/jline/widget/TailTipWidgets;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/jline/console/CmdLine;",
            "Lorg/jline/console/CmdDesc;",
            ">;)V"
        }
    .end annotation

    .line 663
    .local p2, "descFun":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/jline/console/CmdLine;Lorg/jline/console/CmdDesc;>;"
    iput-object p1, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->this$0:Lorg/jline/widget/TailTipWidgets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->descriptions:Ljava/util/Map;

    .line 655
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->temporaryDescs:Ljava/util/Map;

    .line 656
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->volatileDescs:Ljava/util/Map;

    .line 664
    iput-object p2, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->descFun:Ljava/util/function/Function;

    .line 665
    return-void
.end method

.method private evaluateCommandLine(Ljava/lang/String;Ljava/util/List;I)Lorg/jline/widget/TailTipWidgets$Pair;
    .locals 17
    .param p1, "line"    # Ljava/lang/String;
    .param p3, "curPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lorg/jline/widget/TailTipWidgets$Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 680
    .local p2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    const/4 v1, 0x0

    .line 681
    .local v1, "cmd":Ljava/lang/String;
    sget-object v2, Lorg/jline/console/CmdLine$DescriptionType;->METHOD:Lorg/jline/console/CmdLine$DescriptionType;

    .line 682
    .local v2, "descType":Lorg/jline/console/CmdLine$DescriptionType;
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 683
    .local v3, "head":Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 684
    .local v4, "tail":Ljava/lang/String;
    iget-object v5, v0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->this$0:Lorg/jline/widget/TailTipWidgets;

    invoke-virtual {v5}, Lorg/jline/widget/TailTipWidgets;->prevChar()Ljava/lang/String;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v5, :cond_0

    .line 685
    sget-object v2, Lorg/jline/console/CmdLine$DescriptionType;->SYNTAX:Lorg/jline/console/CmdLine$DescriptionType;

    .line 686
    move-object v1, v3

    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    goto/16 :goto_6

    .line 688
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v9, :cond_3

    .line 689
    if-eqz v8, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v12, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v12, :cond_2

    .line 690
    const-string v5, " "

    invoke-virtual {v7, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, v0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->this$0:Lorg/jline/widget/TailTipWidgets;

    invoke-virtual {v5}, Lorg/jline/widget/TailTipWidgets;->parser()Lorg/jline/reader/Parser;

    move-result-object v5

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v6}, Lorg/jline/reader/Parser;->getCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v11

    :goto_0
    move-object v1, v5

    .line 691
    sget-object v2, Lorg/jline/console/CmdLine$DescriptionType;->COMMAND:Lorg/jline/console/CmdLine$DescriptionType;

    .line 693
    :cond_3
    const/4 v5, 0x0

    .line 694
    .local v5, "brackets":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v12

    .local v6, "i":I
    :goto_1
    const/16 v13, 0x28

    const/16 v14, 0x29

    if-ltz v6, :cond_7

    .line 695
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v14, :cond_4

    .line 696
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 697
    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v13, :cond_5

    .line 698
    add-int/lit8 v5, v5, -0x1

    .line 700
    :cond_5
    :goto_2
    if-gez v5, :cond_6

    .line 701
    sget-object v2, Lorg/jline/console/CmdLine$DescriptionType;->METHOD:Lorg/jline/console/CmdLine$DescriptionType;

    .line 702
    invoke-virtual {v3, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 703
    move-object v1, v3

    .line 704
    goto :goto_3

    .line 694
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 707
    .end local v6    # "i":I
    :cond_7
    :goto_3
    sget-object v6, Lorg/jline/console/CmdLine$DescriptionType;->METHOD:Lorg/jline/console/CmdLine$DescriptionType;

    if-ne v2, v6, :cond_b

    .line 708
    const/4 v5, 0x0

    .line 709
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v6, v15, :cond_b

    .line 710
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v14, :cond_8

    .line 711
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 712
    :cond_8
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v13, :cond_9

    .line 713
    add-int/lit8 v5, v5, -0x1

    .line 715
    :cond_9
    :goto_5
    if-lez v5, :cond_a

    .line 716
    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v4, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 717
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    goto :goto_6

    .line 709
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 722
    .end local v5    # "brackets":I
    .end local v6    # "i":I
    :cond_b
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "descType":Lorg/jline/console/CmdLine$DescriptionType;
    .end local v3    # "head":Ljava/lang/String;
    .end local v4    # "tail":Ljava/lang/String;
    .local v13, "cmd":Ljava/lang/String;
    .local v14, "descType":Lorg/jline/console/CmdLine$DescriptionType;
    .local v15, "head":Ljava/lang/String;
    .local v16, "tail":Ljava/lang/String;
    :goto_6
    if-eqz v13, :cond_f

    iget-object v1, v0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->descFun:Ljava/util/function/Function;

    if-eqz v1, :cond_f

    iget-object v1, v0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->descriptions:Ljava/util/Map;

    .line 723
    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->temporaryDescs:Ljava/util/Map;

    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 724
    iget-object v6, v0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->descFun:Ljava/util/function/Function;

    new-instance v5, Lorg/jline/console/CmdLine;

    move-object v1, v5

    move-object/from16 v2, p1

    move-object v3, v15

    move-object/from16 v4, v16

    move-object v10, v5

    move-object/from16 v5, p2

    move-object v12, v6

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lorg/jline/console/CmdLine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/jline/console/CmdLine$DescriptionType;)V

    invoke-interface {v12, v10}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/console/CmdDesc;

    .line 725
    .local v1, "c":Lorg/jline/console/CmdDesc;
    sget-object v2, Lorg/jline/console/CmdLine$DescriptionType;->COMMAND:Lorg/jline/console/CmdLine$DescriptionType;

    if-ne v14, v2, :cond_e

    .line 726
    iget-object v2, v0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->this$0:Lorg/jline/widget/TailTipWidgets;

    invoke-static {v2}, Lorg/jline/widget/TailTipWidgets;->access$000(Lorg/jline/widget/TailTipWidgets;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 727
    iget-object v2, v0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->volatileDescs:Ljava/util/Map;

    invoke-interface {v2, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 728
    :cond_c
    if-eqz v1, :cond_d

    .line 729
    iget-object v2, v0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->descriptions:Ljava/util/Map;

    invoke-interface {v2, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 731
    :cond_d
    iget-object v2, v0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->temporaryDescs:Ljava/util/Map;

    invoke-interface {v2, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 734
    :cond_e
    iget-object v2, v0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->temporaryDescs:Ljava/util/Map;

    invoke-interface {v2, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    .end local v1    # "c":Lorg/jline/console/CmdDesc;
    :cond_f
    :goto_7
    new-instance v1, Lorg/jline/widget/TailTipWidgets$Pair;

    sget-object v2, Lorg/jline/console/CmdLine$DescriptionType;->COMMAND:Lorg/jline/console/CmdLine$DescriptionType;

    if-ne v14, v2, :cond_10

    const/4 v10, 0x1

    goto :goto_8

    :cond_10
    const/4 v10, 0x0

    :goto_8
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v13, v2}, Lorg/jline/widget/TailTipWidgets$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public clearTemporaryDescs()V
    .locals 1

    .line 754
    iget-object v0, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->temporaryDescs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 755
    return-void
.end method

.method public evaluateCommandLine(Ljava/lang/String;I)Lorg/jline/widget/TailTipWidgets$Pair;
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "curPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lorg/jline/widget/TailTipWidgets$Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 672
    iget-object v0, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->this$0:Lorg/jline/widget/TailTipWidgets;

    invoke-virtual {v0}, Lorg/jline/widget/TailTipWidgets;->args()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->evaluateCommandLine(Ljava/lang/String;Ljava/util/List;I)Lorg/jline/widget/TailTipWidgets$Pair;

    move-result-object v0

    return-object v0
.end method

.method public evaluateCommandLine(Ljava/lang/String;Ljava/util/List;)Lorg/jline/widget/TailTipWidgets$Pair;
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jline/widget/TailTipWidgets$Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 676
    .local p2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->evaluateCommandLine(Ljava/lang/String;Ljava/util/List;I)Lorg/jline/widget/TailTipWidgets$Pair;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(Ljava/lang/String;)Lorg/jline/console/CmdDesc;
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .line 741
    const/4 v0, 0x0

    .line 742
    .local v0, "out":Lorg/jline/console/CmdDesc;
    iget-object v1, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->descriptions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    iget-object v1, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->descriptions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/jline/console/CmdDesc;

    goto :goto_0

    .line 744
    :cond_0
    iget-object v1, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->temporaryDescs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 745
    iget-object v1, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->temporaryDescs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/jline/console/CmdDesc;

    goto :goto_0

    .line 746
    :cond_1
    iget-object v1, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->volatileDescs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 747
    iget-object v1, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->volatileDescs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/jline/console/CmdDesc;

    .line 748
    iget-object v1, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->volatileDescs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    :cond_2
    :goto_0
    return-object v0
.end method

.method public setDescriptions(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/console/CmdDesc;",
            ">;)V"
        }
    .end annotation

    .line 668
    .local p1, "descriptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/console/CmdDesc;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->descriptions:Ljava/util/Map;

    .line 669
    return-void
.end method
