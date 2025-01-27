.class public Lorg/jline/builtins/Completers$OptionCompleter;
.super Ljava/lang/Object;
.source "Completers.java"

# interfaces
.implements Lorg/jline/reader/Completer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Completers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionCompleter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private argsCompleters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/reader/Completer;",
            ">;"
        }
    .end annotation
.end field

.field private commandOptions:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lorg/jline/builtins/Completers$OptDesc;",
            ">;>;"
        }
    .end annotation
.end field

.field private options:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/jline/builtins/Completers$OptDesc;",
            ">;"
        }
    .end annotation
.end field

.field private startPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 718
    const-class v0, Lorg/jline/builtins/Completers;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;I)V
    .locals 1
    .param p2, "startPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jline/builtins/Completers$OptDesc;",
            ">;I)V"
        }
    .end annotation

    .line 809
    .local p1, "options":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jline/builtins/Completers$OptDesc;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Completers$OptionCompleter;->argsCompleters:Ljava/util/List;

    .line 810
    iput-object p1, p0, Lorg/jline/builtins/Completers$OptionCompleter;->options:Ljava/util/Collection;

    .line 811
    iput p2, p0, Lorg/jline/builtins/Completers$OptionCompleter;->startPos:I

    .line 812
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Collection;I)V
    .locals 1
    .param p3, "startPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/reader/Completer;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/jline/builtins/Completers$OptDesc;",
            ">;I)V"
        }
    .end annotation

    .line 800
    .local p1, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    .local p2, "options":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jline/builtins/Completers$OptDesc;>;"
    invoke-direct {p0, p2, p3}, Lorg/jline/builtins/Completers$OptionCompleter;-><init>(Ljava/util/Collection;I)V

    .line 801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/jline/builtins/Completers$OptionCompleter;->argsCompleters:Ljava/util/List;

    .line 802
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Collection;I)V
    .locals 1
    .param p4, "startPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/reader/Completer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 756
    .local p1, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    .local p2, "optionValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p3, "options":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p2, p3, p4}, Lorg/jline/builtins/Completers$OptionCompleter;-><init>(Ljava/util/Map;Ljava/util/Collection;I)V

    .line 757
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/jline/builtins/Completers$OptionCompleter;->argsCompleters:Ljava/util/List;

    .line 758
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/function/Function;I)V
    .locals 1
    .param p3, "startPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/reader/Completer;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lorg/jline/builtins/Completers$OptDesc;",
            ">;>;I)V"
        }
    .end annotation

    .line 742
    .local p1, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    .local p2, "commandOptions":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/util/Collection<Lorg/jline/builtins/Completers$OptDesc;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Completers$OptionCompleter;->argsCompleters:Ljava/util/List;

    .line 743
    iput p3, p0, Lorg/jline/builtins/Completers$OptionCompleter;->startPos:I

    .line 744
    iput-object p2, p0, Lorg/jline/builtins/Completers$OptionCompleter;->commandOptions:Ljava/util/function/Function;

    .line 745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/jline/builtins/Completers$OptionCompleter;->argsCompleters:Ljava/util/List;

    .line 746
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Collection;I)V
    .locals 1
    .param p3, "startPos"    # I
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
            ">;I)V"
        }
    .end annotation

    .line 779
    .local p1, "optionValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p2, "options":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lorg/jline/builtins/Completers$OptDesc;->compile(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/jline/builtins/Completers$OptionCompleter;-><init>(Ljava/util/Collection;I)V

    .line 780
    return-void
.end method

.method public constructor <init>(Lorg/jline/reader/Completer;Ljava/util/Collection;I)V
    .locals 1
    .param p1, "completer"    # Lorg/jline/reader/Completer;
    .param p3, "startPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/Completer;",
            "Ljava/util/Collection<",
            "Lorg/jline/builtins/Completers$OptDesc;",
            ">;I)V"
        }
    .end annotation

    .line 789
    .local p2, "options":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jline/builtins/Completers$OptDesc;>;"
    invoke-direct {p0, p2, p3}, Lorg/jline/builtins/Completers$OptionCompleter;-><init>(Ljava/util/Collection;I)V

    .line 790
    iget-object v0, p0, Lorg/jline/builtins/Completers$OptionCompleter;->argsCompleters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    return-void
.end method

.method public constructor <init>(Lorg/jline/reader/Completer;Ljava/util/Map;Ljava/util/Collection;I)V
    .locals 1
    .param p1, "completer"    # Lorg/jline/reader/Completer;
    .param p4, "startPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/Completer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 768
    .local p2, "optionValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p3, "options":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p2, p3, p4}, Lorg/jline/builtins/Completers$OptionCompleter;-><init>(Ljava/util/Map;Ljava/util/Collection;I)V

    .line 769
    iget-object v0, p0, Lorg/jline/builtins/Completers$OptionCompleter;->argsCompleters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    return-void
.end method

.method public constructor <init>(Lorg/jline/reader/Completer;Ljava/util/function/Function;I)V
    .locals 1
    .param p1, "completer"    # Lorg/jline/reader/Completer;
    .param p3, "startPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/Completer;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lorg/jline/builtins/Completers$OptDesc;",
            ">;>;I)V"
        }
    .end annotation

    .line 730
    .local p2, "commandOptions":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/util/Collection<Lorg/jline/builtins/Completers$OptDesc;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Completers$OptionCompleter;->argsCompleters:Ljava/util/List;

    .line 731
    iput p3, p0, Lorg/jline/builtins/Completers$OptionCompleter;->startPos:I

    .line 732
    iput-object p2, p0, Lorg/jline/builtins/Completers$OptionCompleter;->commandOptions:Ljava/util/function/Function;

    .line 733
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    return-void
.end method

.method private findOptDesc(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/builtins/Completers$OptDesc;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "opt"    # Ljava/lang/String;

    .line 925
    iget-object v0, p0, Lorg/jline/builtins/Completers$OptionCompleter;->commandOptions:Ljava/util/function/Function;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jline/builtins/Completers$OptionCompleter;->options:Ljava/util/Collection;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    :goto_0
    invoke-direct {p0, v0, p2}, Lorg/jline/builtins/Completers$OptionCompleter;->findOptDesc(Ljava/util/Collection;Ljava/lang/String;)Lorg/jline/builtins/Completers$OptDesc;

    move-result-object v0

    return-object v0
.end method

.method private findOptDesc(Ljava/util/Collection;Ljava/lang/String;)Lorg/jline/builtins/Completers$OptDesc;
    .locals 3
    .param p2, "opt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jline/builtins/Completers$OptDesc;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/jline/builtins/Completers$OptDesc;"
        }
    .end annotation

    .line 929
    .local p1, "optDescs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jline/builtins/Completers$OptDesc;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/builtins/Completers$OptDesc;

    .line 930
    .local v1, "o":Lorg/jline/builtins/Completers$OptDesc;
    invoke-virtual {v1, p2}, Lorg/jline/builtins/Completers$OptDesc;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 931
    return-object v1

    .line 933
    .end local v1    # "o":Lorg/jline/builtins/Completers$OptDesc;
    :cond_0
    goto :goto_0

    .line 934
    :cond_1
    new-instance v0, Lorg/jline/builtins/Completers$OptDesc;

    invoke-direct {v0}, Lorg/jline/builtins/Completers$OptDesc;-><init>()V

    return-object v0
.end method

.method private longOptionValueCompleter(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/reader/Completer;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "opt"    # Ljava/lang/String;

    .line 895
    const-string v0, "--[a-zA-Z]+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 896
    return-object v1

    .line 898
    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/Completers$OptionCompleter;->commandOptions:Ljava/util/function/Function;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jline/builtins/Completers$OptionCompleter;->options:Ljava/util/Collection;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 899
    .local v0, "optDescs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jline/builtins/Completers$OptDesc;>;"
    :goto_0
    invoke-direct {p0, v0, p2}, Lorg/jline/builtins/Completers$OptionCompleter;->findOptDesc(Ljava/util/Collection;Ljava/lang/String;)Lorg/jline/builtins/Completers$OptDesc;

    move-result-object v2

    .line 900
    .local v2, "option":Lorg/jline/builtins/Completers$OptDesc;
    invoke-virtual {v2}, Lorg/jline/builtins/Completers$OptDesc;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/jline/builtins/Completers$OptDesc;->valueCompleter()Lorg/jline/reader/Completer;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method private shortOptionValueCompleter(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/reader/Completer;
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "opt"    # Ljava/lang/String;

    .line 904
    const-string v0, "-[a-zA-Z]+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 905
    return-object v1

    .line 907
    :cond_0
    const/4 v0, 0x0

    .line 908
    .local v0, "out":Lorg/jline/reader/Completer;
    iget-object v2, p0, Lorg/jline/builtins/Completers$OptionCompleter;->commandOptions:Ljava/util/function/Function;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/jline/builtins/Completers$OptionCompleter;->options:Ljava/util/Collection;

    goto :goto_0

    :cond_1
    invoke-interface {v2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 909
    .local v2, "optDescs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jline/builtins/Completers$OptDesc;>;"
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 910
    invoke-direct {p0, v2, p2}, Lorg/jline/builtins/Completers$OptionCompleter;->findOptDesc(Ljava/util/Collection;Ljava/lang/String;)Lorg/jline/builtins/Completers$OptDesc;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jline/builtins/Completers$OptDesc;->valueCompleter()Lorg/jline/reader/Completer;

    move-result-object v0

    goto :goto_2

    .line 911
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_5

    .line 912
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 913
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lorg/jline/builtins/Completers$OptionCompleter;->findOptDesc(Ljava/util/Collection;Ljava/lang/String;)Lorg/jline/builtins/Completers$OptDesc;

    move-result-object v4

    .line 914
    .local v4, "o":Lorg/jline/builtins/Completers$OptDesc;
    invoke-virtual {v4}, Lorg/jline/builtins/Completers$OptDesc;->shortOption()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 915
    return-object v1

    .line 916
    :cond_3
    if-nez v0, :cond_4

    .line 917
    invoke-virtual {v4}, Lorg/jline/builtins/Completers$OptDesc;->valueCompleter()Lorg/jline/reader/Completer;

    move-result-object v0

    .line 912
    .end local v4    # "o":Lorg/jline/builtins/Completers$OptDesc;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 921
    .end local v3    # "i":I
    :cond_5
    :goto_2
    return-object v0
.end method


# virtual methods
.method public complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V
    .locals 23
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

    .line 820
    .local p3, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    if-eqz v8, :cond_18

    .line 821
    if-eqz v9, :cond_17

    .line 822
    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->words()Ljava/util/List;

    move-result-object v10

    .line 823
    .local v10, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->word()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->wordCursor()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 824
    .local v6, "buffer":Ljava/lang/String;
    iget v1, v0, Lorg/jline/builtins/Completers$OptionCompleter;->startPos:I

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 825
    new-instance v1, Lorg/jline/reader/Candidate;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v11, v1

    move-object v12, v6

    move-object v13, v6

    invoke-direct/range {v11 .. v18}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    return-void

    .line 828
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/jline/reader/LineReader;->getParser()Lorg/jline/reader/Parser;

    move-result-object v1

    iget v2, v0, Lorg/jline/builtins/Completers$OptionCompleter;->startPos:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/jline/reader/Parser;->getCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 829
    .local v15, "command":Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x2

    if-eqz v2, :cond_f

    .line 830
    const/4 v2, 0x1

    .line 831
    .local v2, "addbuff":Z
    const/4 v11, 0x0

    .line 832
    .local v11, "valueCandidates":Z
    const-string v4, "--"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    .line 833
    .local v14, "longOption":Z
    const-string v4, "-[a-zA-Z][a-zA-Z0-9]+"

    invoke-virtual {v6, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    const/16 v12, 0x3d

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    :goto_0
    move v13, v5

    .line 834
    .local v13, "eq":I
    const-string v5, "="

    if-gez v13, :cond_a

    .line 835
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 836
    .local v4, "usedOptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v3, v0, Lorg/jline/builtins/Completers$OptionCompleter;->startPos:I

    .local v3, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v3, v12, :cond_4

    .line 837
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 838
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 839
    .local v12, "w":Ljava/lang/String;
    move/from16 v18, v2

    move/from16 v17, v11

    const/16 v2, 0x3d

    .end local v2    # "addbuff":Z
    .end local v11    # "valueCandidates":Z
    .local v17, "valueCandidates":Z
    .local v18, "addbuff":Z
    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 840
    .local v11, "ind":I
    if-gez v11, :cond_2

    .line 841
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v1

    goto :goto_2

    .line 843
    :cond_2
    move-object/from16 v20, v1

    const/4 v2, 0x0

    invoke-virtual {v12, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 837
    .end local v12    # "w":Ljava/lang/String;
    .end local v17    # "valueCandidates":Z
    .end local v18    # "addbuff":Z
    .restart local v2    # "addbuff":Z
    .local v11, "valueCandidates":Z
    :cond_3
    move-object/from16 v20, v1

    move/from16 v18, v2

    move/from16 v17, v11

    .line 836
    .end local v2    # "addbuff":Z
    .end local v11    # "valueCandidates":Z
    .restart local v17    # "valueCandidates":Z
    .restart local v18    # "addbuff":Z
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move/from16 v11, v17

    move/from16 v2, v18

    move-object/from16 v1, v20

    const/16 v12, 0x3d

    goto :goto_1

    .end local v17    # "valueCandidates":Z
    .end local v18    # "addbuff":Z
    .restart local v2    # "addbuff":Z
    .restart local v11    # "valueCandidates":Z
    :cond_4
    move/from16 v18, v2

    move/from16 v17, v11

    .line 847
    .end local v2    # "addbuff":Z
    .end local v3    # "i":I
    .end local v11    # "valueCandidates":Z
    .restart local v17    # "valueCandidates":Z
    .restart local v18    # "addbuff":Z
    iget-object v1, v0, Lorg/jline/builtins/Completers$OptionCompleter;->commandOptions:Ljava/util/function/Function;

    if-nez v1, :cond_5

    iget-object v1, v0, Lorg/jline/builtins/Completers$OptionCompleter;->options:Ljava/util/Collection;

    goto :goto_3

    :cond_5
    invoke-interface {v1, v15}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    :goto_3
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move/from16 v2, v18

    .end local v18    # "addbuff":Z
    .restart local v2    # "addbuff":Z
    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/builtins/Completers$OptDesc;

    .line 848
    .local v3, "o":Lorg/jline/builtins/Completers$OptDesc;
    invoke-virtual {v3}, Lorg/jline/builtins/Completers$OptDesc;->shortOption()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v3}, Lorg/jline/builtins/Completers$OptDesc;->longOption()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 849
    goto :goto_4

    .line 851
    :cond_7
    invoke-virtual {v3, v6}, Lorg/jline/builtins/Completers$OptDesc;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 852
    const/4 v2, 0x0

    .line 854
    :cond_8
    invoke-virtual {v3, v7, v8, v9, v14}, Lorg/jline/builtins/Completers$OptDesc;->completeOption(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;Z)V

    .line 855
    .end local v3    # "o":Lorg/jline/builtins/Completers$OptDesc;
    goto :goto_4

    .line 856
    .end local v4    # "usedOptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    move-object v11, v5

    move-object/from16 v22, v15

    move/from16 v1, v17

    move-object v15, v6

    goto :goto_5

    .line 857
    .end local v17    # "valueCandidates":Z
    .restart local v11    # "valueCandidates":Z
    :cond_a
    move/from16 v18, v2

    move/from16 v17, v11

    .end local v2    # "addbuff":Z
    .end local v11    # "valueCandidates":Z
    .restart local v17    # "valueCandidates":Z
    .restart local v18    # "addbuff":Z
    const/4 v11, 0x0

    .line 858
    .end local v18    # "addbuff":Z
    .local v11, "addbuff":Z
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    move v12, v1

    .line 859
    .local v12, "nb":I
    add-int v1, v13, v12

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 860
    .local v18, "value":Ljava/lang/String;
    add-int v1, v13, v12

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 861
    .local v16, "curBuf":Ljava/lang/String;
    invoke-virtual {v6, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 862
    .local v4, "opt":Ljava/lang/String;
    invoke-direct {v0, v15, v4}, Lorg/jline/builtins/Completers$OptionCompleter;->findOptDesc(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/builtins/Completers$OptDesc;

    move-result-object v19

    .line 863
    .local v19, "option":Lorg/jline/builtins/Completers$OptDesc;
    invoke-virtual/range {v19 .. v19}, Lorg/jline/builtins/Completers$OptDesc;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 864
    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v20, v4

    .end local v4    # "opt":Ljava/lang/String;
    .local v20, "opt":Ljava/lang/String;
    move-object/from16 v4, p3

    move/from16 v21, v11

    move-object v11, v5

    .end local v11    # "addbuff":Z
    .local v21, "addbuff":Z
    move-object/from16 v5, v16

    move-object/from16 v22, v15

    move-object v15, v6

    .end local v6    # "buffer":Ljava/lang/String;
    .local v15, "buffer":Ljava/lang/String;
    .local v22, "command":Ljava/lang/String;
    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lorg/jline/builtins/Completers$OptDesc;->completeValue(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    move/from16 v2, v21

    .end local v17    # "valueCandidates":Z
    .local v1, "valueCandidates":Z
    goto :goto_5

    .line 863
    .end local v1    # "valueCandidates":Z
    .end local v20    # "opt":Ljava/lang/String;
    .end local v21    # "addbuff":Z
    .end local v22    # "command":Ljava/lang/String;
    .restart local v4    # "opt":Ljava/lang/String;
    .restart local v6    # "buffer":Ljava/lang/String;
    .restart local v11    # "addbuff":Z
    .local v15, "command":Ljava/lang/String;
    .restart local v17    # "valueCandidates":Z
    :cond_b
    move-object/from16 v20, v4

    move/from16 v21, v11

    move-object/from16 v22, v15

    move-object v11, v5

    move-object v15, v6

    .end local v4    # "opt":Ljava/lang/String;
    .end local v6    # "buffer":Ljava/lang/String;
    .end local v11    # "addbuff":Z
    .local v15, "buffer":Ljava/lang/String;
    .restart local v20    # "opt":Ljava/lang/String;
    .restart local v21    # "addbuff":Z
    .restart local v22    # "command":Ljava/lang/String;
    move/from16 v1, v17

    move/from16 v2, v21

    .line 867
    .end local v12    # "nb":I
    .end local v16    # "curBuf":Ljava/lang/String;
    .end local v17    # "valueCandidates":Z
    .end local v18    # "value":Ljava/lang/String;
    .end local v19    # "option":Lorg/jline/builtins/Completers$OptDesc;
    .end local v20    # "opt":Ljava/lang/String;
    .end local v21    # "addbuff":Z
    .restart local v1    # "valueCandidates":Z
    .restart local v2    # "addbuff":Z
    :goto_5
    invoke-virtual {v15, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v15, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    if-eqz v1, :cond_d

    :cond_c
    if-eqz v2, :cond_e

    .line 868
    :cond_d
    new-instance v3, Lorg/jline/reader/Candidate;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v11, v3

    move-object v12, v15

    move v6, v13

    .end local v13    # "eq":I
    .local v6, "eq":I
    move-object v13, v15

    move/from16 v19, v14

    .end local v14    # "longOption":Z
    .local v19, "longOption":Z
    move-object v14, v4

    move-object/from16 v21, v15

    move-object/from16 v4, v22

    .end local v15    # "buffer":Ljava/lang/String;
    .end local v22    # "command":Ljava/lang/String;
    .local v4, "command":Ljava/lang/String;
    .local v21, "buffer":Ljava/lang/String;
    move-object v15, v5

    invoke-direct/range {v11 .. v18}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 867
    .end local v4    # "command":Ljava/lang/String;
    .end local v6    # "eq":I
    .end local v19    # "longOption":Z
    .end local v21    # "buffer":Ljava/lang/String;
    .restart local v13    # "eq":I
    .restart local v14    # "longOption":Z
    .restart local v15    # "buffer":Ljava/lang/String;
    .restart local v22    # "command":Ljava/lang/String;
    :cond_e
    move v6, v13

    move/from16 v19, v14

    move-object/from16 v21, v15

    move-object/from16 v4, v22

    .line 870
    .end local v1    # "valueCandidates":Z
    .end local v2    # "addbuff":Z
    .end local v13    # "eq":I
    .end local v14    # "longOption":Z
    .end local v15    # "buffer":Ljava/lang/String;
    .end local v22    # "command":Ljava/lang/String;
    .restart local v4    # "command":Ljava/lang/String;
    .restart local v21    # "buffer":Ljava/lang/String;
    :goto_6
    move-object v1, v4

    goto/16 :goto_8

    .end local v4    # "command":Ljava/lang/String;
    .end local v21    # "buffer":Ljava/lang/String;
    .local v6, "buffer":Ljava/lang/String;
    .local v15, "command":Ljava/lang/String;
    :cond_f
    move-object/from16 v20, v1

    move-object/from16 v21, v6

    move-object v1, v15

    .end local v6    # "buffer":Ljava/lang/String;
    .end local v15    # "command":Ljava/lang/String;
    .local v1, "command":Ljava/lang/String;
    .restart local v21    # "buffer":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jline/builtins/Completers$OptionCompleter;->shortOptionValueCompleter(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/reader/Completer;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 871
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jline/builtins/Completers$OptionCompleter;->shortOptionValueCompleter(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/reader/Completer;

    move-result-object v2

    invoke-interface {v2, v7, v8, v9}, Lorg/jline/reader/Completer;->complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V

    goto/16 :goto_8

    .line 872
    :cond_10
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_11

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jline/builtins/Completers$OptionCompleter;->longOptionValueCompleter(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/reader/Completer;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 873
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jline/builtins/Completers$OptionCompleter;->longOptionValueCompleter(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/reader/Completer;

    move-result-object v2

    invoke-interface {v2, v7, v8, v9}, Lorg/jline/reader/Completer;->complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V

    goto/16 :goto_8

    .line 874
    :cond_11
    iget-object v2, v0, Lorg/jline/builtins/Completers$OptionCompleter;->argsCompleters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 875
    const/4 v2, -0x1

    .line 876
    .local v2, "args":I
    iget v3, v0, Lorg/jline/builtins/Completers$OptionCompleter;->startPos:I

    .local v3, "i":I
    :goto_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_13

    .line 877
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v6, v20

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 878
    if-lez v3, :cond_12

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lorg/jline/builtins/Completers$OptionCompleter;->shortOptionValueCompleter(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/reader/Completer;

    move-result-object v5

    if-nez v5, :cond_12

    add-int/lit8 v5, v3, -0x1

    .line 879
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lorg/jline/builtins/Completers$OptionCompleter;->longOptionValueCompleter(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/reader/Completer;

    move-result-object v5

    if-nez v5, :cond_12

    .line 880
    add-int/lit8 v2, v2, 0x1

    .line 876
    :cond_12
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v20, v6

    goto :goto_7

    .line 884
    .end local v3    # "i":I
    :cond_13
    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    .line 885
    new-instance v3, Lorg/jline/reader/Candidate;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v11, v3

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    invoke-direct/range {v11 .. v18}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 886
    :cond_14
    iget-object v3, v0, Lorg/jline/builtins/Completers$OptionCompleter;->argsCompleters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_15

    .line 887
    iget-object v3, v0, Lorg/jline/builtins/Completers$OptionCompleter;->argsCompleters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/reader/Completer;

    invoke-interface {v3, v7, v8, v9}, Lorg/jline/reader/Completer;->complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V

    goto :goto_8

    .line 889
    :cond_15
    iget-object v3, v0, Lorg/jline/builtins/Completers$OptionCompleter;->argsCompleters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/reader/Completer;

    invoke-interface {v3, v7, v8, v9}, Lorg/jline/reader/Completer;->complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V

    .line 892
    .end local v2    # "args":I
    :cond_16
    :goto_8
    return-void

    .line 821
    .end local v1    # "command":Ljava/lang/String;
    .end local v10    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "buffer":Ljava/lang/String;
    :cond_17
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 820
    :cond_18
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public setStartPos(I)V
    .locals 0
    .param p1, "startPos"    # I

    .line 815
    iput p1, p0, Lorg/jline/builtins/Completers$OptionCompleter;->startPos:I

    .line 816
    return-void
.end method
