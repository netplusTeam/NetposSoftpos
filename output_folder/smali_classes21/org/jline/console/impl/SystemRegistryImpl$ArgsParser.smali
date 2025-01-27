.class Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
.super Ljava/lang/Object;
.source "SystemRegistryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/console/impl/SystemRegistryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArgsParser"
.end annotation


# instance fields
.field private args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private command:Ljava/lang/String;

.field private curly:I

.field private doubleQuoted:Z

.field private line:Ljava/lang/String;

.field private final parser:Lorg/jline/reader/Parser;

.field private quoted:Z

.field private round:I

.field private square:I

.field private variable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jline/reader/Parser;)V
    .locals 1
    .param p1, "parser"    # Lorg/jline/reader/Parser;

    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->round:I

    .line 835
    iput v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->curly:I

    .line 836
    iput v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->square:I

    .line 846
    iput-object p1, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->parser:Lorg/jline/reader/Parser;

    .line 847
    return-void
.end method

.method static synthetic access$100(Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .param p1, "x1"    # Ljava/lang/String;

    .line 833
    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private closingQuote(Ljava/lang/String;)I
    .locals 5
    .param p1, "arg"    # Ljava/lang/String;

    .line 957
    const/4 v0, -0x1

    .line 958
    .local v0, "out":I
    const/16 v1, 0x20

    .line 959
    .local v1, "prevChar":C
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 960
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 961
    .local v3, "c":C
    iget-object v4, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->parser:Lorg/jline/reader/Parser;

    invoke-interface {v4, v1}, Lorg/jline/reader/Parser;->isEscapeChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 962
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 963
    move v0, v2

    .line 964
    goto :goto_1

    .line 967
    :cond_0
    move v1, v3

    .line 959
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 969
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private enclosedArgs(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 901
    .local p1, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->args:Ljava/util/List;

    .line 902
    invoke-direct {p0}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->reset()V

    .line 903
    const/4 v0, 0x1

    .line 904
    .local v0, "first":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 905
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 906
    .local v3, "a":Ljava/lang/String;
    invoke-direct {p0, v3}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->next(Ljava/lang/String;)V

    .line 907
    if-nez v0, :cond_0

    .line 908
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    :cond_0
    invoke-direct {p0}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->isEnclosed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 911
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    iget-object v4, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->args:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v4

    .line 914
    const/4 v0, 0x1

    goto :goto_1

    .line 916
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    const/4 v0, 0x0

    .line 919
    .end local v3    # "a":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 920
    :cond_2
    if-nez v0, :cond_3

    .line 921
    iget-object v2, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->args:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    :cond_3
    return-void
.end method

.method private isEnclosed()Z
    .locals 1

    .line 891
    iget v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->round:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->curly:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->square:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->quoted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->doubleQuoted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private next(Ljava/lang/String;)V
    .locals 7
    .param p1, "arg"    # Ljava/lang/String;

    .line 858
    const/16 v0, 0x20

    .line 859
    .local v0, "prevChar":C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 860
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 861
    .local v2, "c":C
    iget-object v3, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->parser:Lorg/jline/reader/Parser;

    invoke-interface {v3, v0}, Lorg/jline/reader/Parser;->isEscapeChar(C)Z

    move-result v3

    if-nez v3, :cond_9

    .line 862
    iget-boolean v3, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->quoted:Z

    const/16 v4, 0x22

    const/16 v5, 0x27

    if-nez v3, :cond_7

    iget-boolean v6, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->doubleQuoted:Z

    if-nez v6, :cond_7

    .line 863
    const/16 v3, 0x28

    const/4 v6, 0x1

    if-ne v2, v3, :cond_0

    .line 864
    iget v3, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->round:I

    add-int/2addr v3, v6

    iput v3, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->round:I

    goto :goto_1

    .line 865
    :cond_0
    const/16 v3, 0x29

    if-ne v2, v3, :cond_1

    .line 866
    iget v3, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->round:I

    sub-int/2addr v3, v6

    iput v3, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->round:I

    goto :goto_1

    .line 867
    :cond_1
    const/16 v3, 0x7b

    if-ne v2, v3, :cond_2

    .line 868
    iget v3, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->curly:I

    add-int/2addr v3, v6

    iput v3, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->curly:I

    goto :goto_1

    .line 869
    :cond_2
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_3

    .line 870
    iget v3, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->curly:I

    sub-int/2addr v3, v6

    iput v3, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->curly:I

    goto :goto_1

    .line 871
    :cond_3
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_4

    .line 872
    iget v3, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->square:I

    add-int/2addr v3, v6

    iput v3, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->square:I

    goto :goto_1

    .line 873
    :cond_4
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_5

    .line 874
    iget v3, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->square:I

    sub-int/2addr v3, v6

    iput v3, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->square:I

    goto :goto_1

    .line 875
    :cond_5
    if-ne v2, v4, :cond_6

    .line 876
    iput-boolean v6, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->doubleQuoted:Z

    goto :goto_1

    .line 877
    :cond_6
    if-ne v2, v5, :cond_9

    .line 878
    iput-boolean v6, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->quoted:Z

    goto :goto_1

    .line 880
    :cond_7
    const/4 v6, 0x0

    if-eqz v3, :cond_8

    if-ne v2, v5, :cond_8

    .line 881
    iput-boolean v6, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->quoted:Z

    goto :goto_1

    .line 882
    :cond_8
    iget-boolean v3, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->doubleQuoted:Z

    if-eqz v3, :cond_9

    if-ne v2, v4, :cond_9

    .line 883
    iput-boolean v6, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->doubleQuoted:Z

    .line 886
    :cond_9
    :goto_1
    move v0, v2

    .line 859
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 888
    .end local v1    # "i":I
    :cond_a
    return-void
.end method

.method private reset()V
    .locals 1

    .line 850
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->round:I

    .line 851
    iput v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->curly:I

    .line 852
    iput v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->square:I

    .line 853
    iput-boolean v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->quoted:Z

    .line 854
    iput-boolean v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->doubleQuoted:Z

    .line 855
    return-void
.end method

.method private unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "arg"    # Ljava/lang/String;

    .line 973
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 974
    :cond_0
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 975
    :cond_1
    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->closingQuote(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_2

    .line 976
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 979
    :cond_2
    return-object p1
.end method


# virtual methods
.method public args()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 953
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->args:Ljava/util/List;

    return-object v0
.end method

.method public command()Ljava/lang/String;
    .locals 1

    .line 941
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->command:Ljava/lang/String;

    invoke-static {v0}, Lorg/jline/console/ConsoleEngine;->plainCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnclosed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;

    .line 895
    invoke-direct {p0}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->reset()V

    .line 896
    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->next(Ljava/lang/String;)V

    .line 897
    invoke-direct {p0}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->isEnclosed()Z

    move-result v0

    return v0
.end method

.method public line()Ljava/lang/String;
    .locals 1

    .line 937
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->line:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 4
    .param p1, "line"    # Ljava/lang/String;

    .line 926
    iput-object p1, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->line:Ljava/lang/String;

    .line 927
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->parser:Lorg/jline/reader/Parser;

    sget-object v1, Lorg/jline/reader/Parser$ParseContext;->SPLIT_LINE:Lorg/jline/reader/Parser$ParseContext;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/jline/reader/Parser;->parse(Ljava/lang/String;ILorg/jline/reader/Parser$ParseContext;)Lorg/jline/reader/ParsedLine;

    move-result-object v0

    .line 928
    .local v0, "pl":Lorg/jline/reader/ParsedLine;
    invoke-interface {v0}, Lorg/jline/reader/ParsedLine;->words()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->enclosedArgs(Ljava/util/List;)V

    .line 929
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->parser:Lorg/jline/reader/Parser;

    iget-object v3, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->args:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/jline/reader/Parser;->getCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->command:Ljava/lang/String;

    .line 930
    iget-object v3, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->parser:Lorg/jline/reader/Parser;

    invoke-interface {v3, v1}, Lorg/jline/reader/Parser;->validCommandName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 931
    const-string v1, ""

    iput-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->command:Ljava/lang/String;

    .line 933
    :cond_0
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->parser:Lorg/jline/reader/Parser;

    iget-object v3, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->args:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/jline/reader/Parser;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->variable:Ljava/lang/String;

    .line 934
    return-void
.end method

.method public rawCommand()Ljava/lang/String;
    .locals 1

    .line 945
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->command:Ljava/lang/String;

    return-object v0
.end method

.method public variable()Ljava/lang/String;
    .locals 1

    .line 949
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->variable:Ljava/lang/String;

    return-object v0
.end method
