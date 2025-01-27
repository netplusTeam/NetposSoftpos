.class Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;
.super Ljava/lang/Object;
.source "SystemRegistryImpl.java"

# interfaces
.implements Lorg/jline/reader/Completer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/console/impl/SystemRegistryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PipelineCompleter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

.field private final pipeName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jline/console/impl/SystemRegistryImpl$Pipe;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final workDir:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1624
    const-class v0, Lorg/jline/console/impl/SystemRegistryImpl;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/Map;Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;)V
    .locals 0
    .param p3, "names"    # Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/jline/console/impl/SystemRegistryImpl$Pipe;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;",
            ")V"
        }
    .end annotation

    .line 1629
    .local p1, "workDir":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/nio/file/Path;>;"
    .local p2, "pipeName":Ljava/util/Map;, "Ljava/util/Map<Lorg/jline/console/impl/SystemRegistryImpl$Pipe;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1630
    iput-object p1, p0, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->workDir:Ljava/util/function/Supplier;

    .line 1631
    iput-object p2, p0, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->pipeName:Ljava/util/Map;

    .line 1632
    iput-object p3, p0, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    .line 1633
    return-void
.end method

.method private doCandidates(Ljava/util/List;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p3, "curBuf"    # Ljava/lang/String;
    .param p4, "postFix"    # Ljava/lang/String;
    .param p5, "hint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1693
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .local p2, "fields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 1694
    return-void

    .line 1696
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1697
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_2

    move-object/from16 v10, p5

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1698
    new-instance v11, Lorg/jline/reader/Candidate;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, p3

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v13, p4

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jline/utils/AttributedString;->stripAnsi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v11

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v2, p1

    invoke-interface {p1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1697
    :cond_1
    move-object v2, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    goto :goto_1

    :cond_2
    move-object v2, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v10, p5

    .line 1701
    .end local v1    # "s":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1702
    :cond_3
    move-object v2, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v10, p5

    return-void
.end method


# virtual methods
.method public complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V
    .locals 21
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p2, "commandLine"    # Lorg/jline/reader/ParsedLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/LineReader;",
            "Lorg/jline/reader/ParsedLine;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;)V"
        }
    .end annotation

    .line 1643
    .local p3, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    if-eqz v7, :cond_d

    .line 1644
    if-eqz v8, :cond_c

    .line 1645
    new-instance v0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;

    invoke-interface/range {p1 .. p1}, Lorg/jline/reader/LineReader;->getParser()Lorg/jline/reader/Parser;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;-><init>(Lorg/jline/reader/Parser;)V

    move-object v9, v0

    .line 1646
    .local v9, "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->line()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->cursor()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->parse(Ljava/lang/String;)V

    .line 1647
    invoke-virtual {v9}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->args()Ljava/util/List;

    move-result-object v10

    .line 1648
    .local v10, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_b

    iget-object v0, v6, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    invoke-virtual {v0, v10}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->hasPipes(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v13, p1

    goto/16 :goto_3

    .line 1651
    :cond_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->isEnclosed(Ljava/lang/String;)Z

    move-result v11

    .line 1652
    .local v11, "enclosed":Z
    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->words()Ljava/util/List;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->wordIndex()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 1653
    .local v12, "pWord":Ljava/lang/String;
    if-eqz v11, :cond_2

    iget-object v0, v6, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->pipeName:Ljava/util/Map;

    sget-object v3, Lorg/jline/console/impl/SystemRegistryImpl$Pipe;->NAMED:Lorg/jline/console/impl/SystemRegistryImpl$Pipe;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1654
    iget-object v0, v6, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->namedPipes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1655
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Lorg/jline/reader/Candidate;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v13, v2

    move-object v14, v1

    move-object v15, v1

    invoke-direct/range {v13 .. v20}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1656
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_0

    :cond_1
    move-object/from16 v13, p1

    goto/16 :goto_2

    .line 1657
    :cond_2
    if-eqz v11, :cond_3

    const-string v0, ">"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, ">>"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1658
    :cond_4
    new-instance v0, Lorg/jline/builtins/Completers$FilesCompleter;

    iget-object v1, v6, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->workDir:Ljava/util/function/Supplier;

    invoke-direct {v0, v1}, Lorg/jline/builtins/Completers$FilesCompleter;-><init>(Ljava/util/function/Supplier;)V

    .line 1659
    .local v0, "c":Lorg/jline/reader/Completer;
    move-object/from16 v13, p1

    invoke-interface {v0, v13, v7, v8}, Lorg/jline/reader/Completer;->complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V

    .line 1660
    .end local v0    # "c":Lorg/jline/reader/Completer;
    goto/16 :goto_2

    .line 1661
    :cond_5
    move-object/from16 v13, p1

    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->word()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->wordCursor()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1662
    .local v14, "buffer":Ljava/lang/String;
    move-object v0, v14

    .line 1663
    .local v0, "param":Ljava/lang/String;
    const-string v3, ""

    .line 1664
    .local v3, "curBuf":Ljava/lang/String;
    iget-object v4, v6, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    invoke-virtual {v4, v14}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->indexOfLastDelim(Ljava/lang/String;)I

    move-result v15

    .line 1665
    .local v15, "lastDelim":I
    const/4 v4, -0x1

    if-le v15, v4, :cond_6

    .line 1666
    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v14, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1667
    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v14, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    move-object v5, v3

    goto :goto_1

    .line 1665
    :cond_6
    move-object v4, v0

    move-object v5, v3

    .line 1669
    .end local v0    # "param":Ljava/lang/String;
    .end local v3    # "curBuf":Ljava/lang/String;
    .local v4, "param":Ljava/lang/String;
    .local v5, "curBuf":Ljava/lang/String;
    :goto_1
    const-string v0, "--"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "="

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1670
    iget-object v0, v6, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->options()Ljava/util/List;

    move-result-object v2

    const-string v16, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v3, v5

    move-object/from16 v17, v4

    .end local v4    # "param":Ljava/lang/String;
    .local v17, "param":Ljava/lang/String;
    move-object/from16 v4, v16

    move-object/from16 v16, v5

    .end local v5    # "curBuf":Ljava/lang/String;
    .local v16, "curBuf":Ljava/lang/String;
    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->doCandidates(Ljava/util/List;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1669
    .end local v16    # "curBuf":Ljava/lang/String;
    .end local v17    # "param":Ljava/lang/String;
    .restart local v4    # "param":Ljava/lang/String;
    .restart local v5    # "curBuf":Ljava/lang/String;
    :cond_7
    move-object/from16 v17, v4

    move-object/from16 v16, v5

    .line 1671
    .end local v4    # "param":Ljava/lang/String;
    .end local v5    # "curBuf":Ljava/lang/String;
    .restart local v16    # "curBuf":Ljava/lang/String;
    .restart local v17    # "param":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 1672
    iget-object v0, v6, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    invoke-static {v0}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->access$200(Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;)Ljava/util/Set;

    move-result-object v2

    const-string v4, ""

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->doCandidates(Ljava/util/List;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1673
    :cond_8
    const-string v0, "."

    move-object/from16 v5, v17

    .end local v17    # "param":Ljava/lang/String;
    .local v5, "param":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1674
    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 1675
    .local v17, "point":I
    add-int/lit8 v0, v17, 0x1

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 1676
    .end local v5    # "param":Ljava/lang/String;
    .local v18, "param":Ljava/lang/String;
    add-int/lit8 v0, v17, 0x1

    invoke-virtual {v14, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 1677
    iget-object v0, v6, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->fields()Ljava/util/List;

    move-result-object v2

    const-string v4, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v3, v16

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->doCandidates(Ljava/util/List;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    .end local v17    # "point":I
    goto :goto_2

    .end local v18    # "param":Ljava/lang/String;
    .restart local v5    # "param":Ljava/lang/String;
    :cond_9
    iget-object v0, v6, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    invoke-virtual {v0, v5}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->encloseBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_a

    .line 1679
    add-int/2addr v15, v1

    .line 1680
    iget-object v0, v6, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    invoke-virtual {v0, v5}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->encloseBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1681
    .local v17, "postFix":Ljava/lang/String;
    add-int/lit8 v0, v15, 0x1

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 1682
    .end local v5    # "param":Ljava/lang/String;
    .restart local v18    # "param":Ljava/lang/String;
    add-int/lit8 v0, v15, 0x1

    invoke-virtual {v14, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 1683
    iget-object v0, v6, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    invoke-virtual {v0}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->quoted()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->doCandidates(Ljava/util/List;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    .end local v17    # "postFix":Ljava/lang/String;
    goto :goto_2

    .line 1685
    .end local v18    # "param":Ljava/lang/String;
    .restart local v5    # "param":Ljava/lang/String;
    :cond_a
    iget-object v0, v6, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->names:Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;

    invoke-static {v0}, Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;->access$200(Lorg/jline/console/impl/SystemRegistryImpl$NamesAndValues;)Ljava/util/Set;

    move-result-object v2

    const-string v4, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v3, v16

    move-object/from16 v17, v5

    .end local v5    # "param":Ljava/lang/String;
    .local v17, "param":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lorg/jline/console/impl/SystemRegistryImpl$PipelineCompleter;->doCandidates(Ljava/util/List;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    .end local v14    # "buffer":Ljava/lang/String;
    .end local v15    # "lastDelim":I
    .end local v16    # "curBuf":Ljava/lang/String;
    .end local v17    # "param":Ljava/lang/String;
    :goto_2
    return-void

    .line 1648
    .end local v11    # "enclosed":Z
    .end local v12    # "pWord":Ljava/lang/String;
    :cond_b
    move-object/from16 v13, p1

    .line 1649
    :goto_3
    return-void

    .line 1644
    .end local v9    # "ap":Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .end local v10    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v13, p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1643
    :cond_d
    move-object/from16 v13, p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public doCompleter()Lorg/jline/reader/Completer;
    .locals 3

    .line 1636
    new-instance v0, Lorg/jline/reader/impl/completer/ArgumentCompleter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/jline/reader/Completer;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>([Lorg/jline/reader/Completer;)V

    .line 1637
    .local v0, "out":Lorg/jline/reader/impl/completer/ArgumentCompleter;
    invoke-virtual {v0, v2}, Lorg/jline/reader/impl/completer/ArgumentCompleter;->setStrict(Z)V

    .line 1638
    return-object v0
.end method
