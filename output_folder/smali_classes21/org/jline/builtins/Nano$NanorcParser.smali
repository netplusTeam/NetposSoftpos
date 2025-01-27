.class Lorg/jline/builtins/Nano$NanorcParser;
.super Ljava/lang/Object;
.source "Nano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Nano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NanorcParser"
.end annotation


# static fields
.field private static final DEFAULT_SYNTAX:Ljava/lang/String; = "default"


# instance fields
.field private final highlightRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/builtins/Nano$HighlightRule;",
            ">;"
        }
    .end annotation
.end field

.field private matches:Z

.field private final name:Ljava/lang/String;

.field private final reader:Ljava/io/BufferedReader;

.field private syntaxName:Ljava/lang/String;

.field private final target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;

    .line 1669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Nano$NanorcParser;->highlightRules:Ljava/util/List;

    .line 1662
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/builtins/Nano$NanorcParser;->matches:Z

    .line 1663
    const-string v0, "unknown"

    iput-object v0, p0, Lorg/jline/builtins/Nano$NanorcParser;->syntaxName:Ljava/lang/String;

    .line 1670
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/jline/builtins/Nano$NanorcParser;->reader:Ljava/io/BufferedReader;

    .line 1671
    iput-object p2, p0, Lorg/jline/builtins/Nano$NanorcParser;->name:Ljava/lang/String;

    .line 1672
    iput-object p3, p0, Lorg/jline/builtins/Nano$NanorcParser;->target:Ljava/lang/String;

    .line 1673
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1666
    new-instance v0, Lorg/jline/builtins/Source$PathSource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/jline/builtins/Source$PathSource;-><init>(Ljava/nio/file/Path;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jline/builtins/Source$PathSource;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/jline/builtins/Nano$NanorcParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    return-void
.end method

.method private addHighlightRule(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 11
    .param p1, "reference"    # Ljava/lang/String;
    .param p3, "caseInsensitive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1745
    .local p2, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1746
    .local v0, "spec":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    new-instance v2, Lorg/jline/builtins/Styles$StyleCompiler;

    invoke-direct {v2, v0, v1}, Lorg/jline/builtins/Styles$StyleCompiler;-><init>(Ljava/util/Map;Z)V

    .line 1748
    .local v2, "sh":Lorg/jline/builtins/Styles$StyleCompiler;
    new-instance v3, Lorg/jline/utils/StyleResolver;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/jline/builtins/Nano$NanorcParser$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lorg/jline/builtins/Nano$NanorcParser$$ExternalSyntheticLambda0;-><init>(Lorg/jline/builtins/Styles$StyleCompiler;)V

    invoke-direct {v3, v4}, Lorg/jline/utils/StyleResolver;-><init>(Ljava/util/function/Function;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v3

    .line 1750
    .local v3, "style":Lorg/jline/utils/AttributedStyle;
    invoke-static {p2}, Lorg/jline/builtins/Nano$HighlightRule;->evalRuleType(Ljava/util/List;)Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    move-result-object v4

    sget-object v5, Lorg/jline/builtins/Nano$HighlightRule$RuleType;->PATTERN:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    if-ne v4, v5, :cond_1

    .line 1751
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1752
    iget-object v4, p0, Lorg/jline/builtins/Nano$NanorcParser;->highlightRules:Ljava/util/List;

    new-instance v5, Lorg/jline/builtins/Nano$HighlightRule;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6, p3}, Lorg/jline/builtins/Nano$NanorcParser;->doPattern(Ljava/lang/String;Z)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lorg/jline/builtins/Nano$HighlightRule;-><init>(Lorg/jline/utils/AttributedStyle;Ljava/util/regex/Pattern;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1751
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1754
    :cond_1
    invoke-static {p2}, Lorg/jline/builtins/Nano$HighlightRule;->evalRuleType(Ljava/util/List;)Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    move-result-object v4

    sget-object v5, Lorg/jline/builtins/Nano$HighlightRule$RuleType;->START_END:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    if-ne v4, v5, :cond_2

    .line 1755
    const/4 v4, 0x2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1756
    .local v4, "s":Ljava/lang/String;
    const/4 v5, 0x3

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1757
    .local v5, "e":Ljava/lang/String;
    iget-object v6, p0, Lorg/jline/builtins/Nano$NanorcParser;->highlightRules:Ljava/util/List;

    new-instance v7, Lorg/jline/builtins/Nano$HighlightRule;

    const/4 v8, 0x7

    .line 1758
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, p3}, Lorg/jline/builtins/Nano$NanorcParser;->doPattern(Ljava/lang/String;Z)Ljava/util/regex/Pattern;

    move-result-object v8

    const/4 v9, 0x5

    .line 1759
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lorg/jline/builtins/Nano$NanorcParser;->doPattern(Ljava/lang/String;Z)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v7, v3, v8, v1}, Lorg/jline/builtins/Nano$HighlightRule;-><init>(Lorg/jline/utils/AttributedStyle;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V

    .line 1757
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1761
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method

.method private doPattern(Ljava/lang/String;Z)Ljava/util/regex/Pattern;
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "caseInsensitive"    # Z

    .line 1764
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    goto :goto_0

    .line 1765
    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1764
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getHighlightRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jline/builtins/Nano$HighlightRule;",
            ">;"
        }
    .end annotation

    .line 1737
    iget-object v0, p0, Lorg/jline/builtins/Nano$NanorcParser;->highlightRules:Ljava/util/List;

    return-object v0
.end method

.method public isDefault()Z
    .locals 2

    .line 1741
    iget-object v0, p0, Lorg/jline/builtins/Nano$NanorcParser;->syntaxName:Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public matches()Z
    .locals 1

    .line 1733
    iget-boolean v0, p0, Lorg/jline/builtins/Nano$NanorcParser;->matches:Z

    return v0
.end method

.method public parse()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1677
    const/4 v0, 0x0

    .line 1678
    .local v0, "idx":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/jline/builtins/Nano$NanorcParser;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 1679
    add-int/lit8 v0, v0, 0x1

    .line 1680
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1681
    .end local v2    # "line":Ljava/lang/String;
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1682
    const-string v2, "\\\\<"

    const-string v3, "\\\\b"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1683
    const-string v4, "\\\\>"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1684
    const-string v3, "\\[:alnum:]"

    const-string v4, "\\\\p{Alnum}"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1685
    const-string v3, "\\[:alpha:]"

    const-string v4, "\\\\p{Alpha}"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1686
    const-string v3, "\\[:blank:]"

    const-string v4, "\\\\p{Blank}"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1687
    const-string v3, "\\[:cntrl:]"

    const-string v4, "\\\\p{Cntrl}"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1688
    const-string v3, "\\[:digit:]"

    const-string v4, "\\\\p{Digit}"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1689
    const-string v3, "\\[:graph:]"

    const-string v4, "\\\\p{Graph}"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1690
    const-string v3, "\\[:lower:]"

    const-string v4, "\\\\p{Lower}"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1691
    const-string v3, "\\[:print:]"

    const-string v4, "\\\\p{Print}"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1692
    const-string v3, "\\[:punct:]"

    const-string v4, "\\\\p{Punct}"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1693
    const-string v3, "\\[:space:]"

    const-string v4, "\\\\s"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1694
    const-string v3, "\\[:upper:]"

    const-string v4, "\\\\p{Upper}"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1695
    const-string v3, "\\[:xdigit:]"

    const-string v4, "\\\\p{XDigit}"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1696
    .end local v1    # "line":Ljava/lang/String;
    .restart local v2    # "line":Ljava/lang/String;
    invoke-static {v2}, Lorg/jline/builtins/Nano$Parser;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1697
    .local v1, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "syntax"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    .line 1698
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/jline/builtins/Nano$NanorcParser;->syntaxName:Ljava/lang/String;

    .line 1699
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1700
    .local v3, "filePatterns":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    iget-object v4, p0, Lorg/jline/builtins/Nano$NanorcParser;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1701
    iget-object v6, p0, Lorg/jline/builtins/Nano$NanorcParser;->syntaxName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1702
    iput-boolean v5, p0, Lorg/jline/builtins/Nano$NanorcParser;->matches:Z

    goto :goto_4

    .line 1706
    :cond_1
    iget-object v4, p0, Lorg/jline/builtins/Nano$NanorcParser;->target:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1707
    const/4 v4, 0x2

    .local v4, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 1708
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1707
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1710
    .end local v4    # "i":I
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/regex/Pattern;

    .line 1711
    .local v6, "p":Ljava/util/regex/Pattern;
    iget-object v7, p0, Lorg/jline/builtins/Nano$NanorcParser;->target:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1712
    iput-boolean v5, p0, Lorg/jline/builtins/Nano$NanorcParser;->matches:Z

    .line 1713
    goto :goto_3

    .line 1715
    .end local v6    # "p":Ljava/util/regex/Pattern;
    :cond_3
    goto :goto_2

    .line 1716
    :cond_4
    :goto_3
    iget-boolean v4, p0, Lorg/jline/builtins/Nano$NanorcParser;->matches:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/jline/builtins/Nano$NanorcParser;->syntaxName:Ljava/lang/String;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1717
    goto :goto_6

    .line 1720
    :cond_5
    iput-boolean v5, p0, Lorg/jline/builtins/Nano$NanorcParser;->matches:Z

    .line 1722
    .end local v3    # "filePatterns":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    :cond_6
    :goto_4
    goto :goto_5

    :cond_7
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "color"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1723
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/jline/builtins/Nano$NanorcParser;->syntaxName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1, v3}, Lorg/jline/builtins/Nano$NanorcParser;->addHighlightRule(Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_5

    .line 1724
    :cond_8
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "icolor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/jline/builtins/Nano$NanorcParser;->syntaxName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v5}, Lorg/jline/builtins/Nano$NanorcParser;->addHighlightRule(Ljava/lang/String;Ljava/util/List;Z)V

    .line 1727
    .end local v1    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    :goto_5
    goto/16 :goto_0

    .line 1729
    :cond_a
    :goto_6
    iget-object v1, p0, Lorg/jline/builtins/Nano$NanorcParser;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1730
    return-void
.end method
