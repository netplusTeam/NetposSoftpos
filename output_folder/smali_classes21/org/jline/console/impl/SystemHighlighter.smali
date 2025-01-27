.class public Lorg/jline/console/impl/SystemHighlighter;
.super Lorg/jline/reader/impl/DefaultHighlighter;
.source "SystemHighlighter.java"


# instance fields
.field private final argsHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

.field private final commandHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

.field private errorIndex:I

.field private errorPattern:Ljava/util/regex/Pattern;

.field private final langHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

.field private final systemRegistry:Lorg/jline/console/SystemRegistry;


# direct methods
.method public constructor <init>(Lorg/jline/builtins/Nano$SyntaxHighlighter;Lorg/jline/builtins/Nano$SyntaxHighlighter;Lorg/jline/builtins/Nano$SyntaxHighlighter;)V
    .locals 1
    .param p1, "commandHighlighter"    # Lorg/jline/builtins/Nano$SyntaxHighlighter;
    .param p2, "argsHighlighter"    # Lorg/jline/builtins/Nano$SyntaxHighlighter;
    .param p3, "langHighlighter"    # Lorg/jline/builtins/Nano$SyntaxHighlighter;

    .line 35
    invoke-direct {p0}, Lorg/jline/reader/impl/DefaultHighlighter;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lorg/jline/console/impl/SystemHighlighter;->errorIndex:I

    .line 36
    iput-object p1, p0, Lorg/jline/console/impl/SystemHighlighter;->commandHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

    .line 37
    iput-object p2, p0, Lorg/jline/console/impl/SystemHighlighter;->argsHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

    .line 38
    iput-object p3, p0, Lorg/jline/console/impl/SystemHighlighter;->langHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

    .line 39
    invoke-static {}, Lorg/jline/console/SystemRegistry;->get()Lorg/jline/console/SystemRegistry;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/console/impl/SystemHighlighter;->systemRegistry:Lorg/jline/console/SystemRegistry;

    .line 40
    return-void
.end method

.method private doDefaultHighlight(Lorg/jline/reader/LineReader;)Z
    .locals 3
    .param p1, "reader"    # Lorg/jline/reader/LineReader;

    .line 60
    invoke-interface {p1}, Lorg/jline/reader/LineReader;->getSearchTerm()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "search":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    invoke-interface {p1}, Lorg/jline/reader/LineReader;->getRegionActive()Lorg/jline/reader/LineReader$RegionType;

    move-result-object v1

    sget-object v2, Lorg/jline/reader/LineReader$RegionType;->NONE:Lorg/jline/reader/LineReader$RegionType;

    if-ne v1, v2, :cond_2

    iget v1, p0, Lorg/jline/console/impl/SystemHighlighter;->errorIndex:I

    const/4 v2, -0x1

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lorg/jline/console/impl/SystemHighlighter;->errorPattern:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private highlightCommand(Ljava/lang/String;Lorg/jline/utils/AttributedStringBuilder;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "asb"    # Lorg/jline/utils/AttributedStringBuilder;

    .line 107
    iget-object v0, p0, Lorg/jline/console/impl/SystemHighlighter;->commandHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p1}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->highlight(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p2, p1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 112
    :goto_0
    return-void
.end method

.method private systemHighlight(Lorg/jline/reader/Parser;Ljava/lang/String;)Lorg/jline/utils/AttributedString;
    .locals 7
    .param p1, "parser"    # Lorg/jline/reader/Parser;
    .param p2, "buffer"    # Ljava/lang/String;

    .line 67
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Lorg/jline/reader/Parser;->getCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "command":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    new-instance v1, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v1}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v1

    .local v1, "out":Lorg/jline/utils/AttributedString;
    goto/16 :goto_6

    .line 70
    .end local v1    # "out":Lorg/jline/utils/AttributedString;
    :cond_0
    iget-object v2, p0, Lorg/jline/console/impl/SystemHighlighter;->systemRegistry:Lorg/jline/console/SystemRegistry;

    invoke-interface {v2, v0}, Lorg/jline/console/SystemRegistry;->isCommandOrScript(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/jline/console/impl/SystemHighlighter;->systemRegistry:Lorg/jline/console/SystemRegistry;

    invoke-interface {v2, v0}, Lorg/jline/console/SystemRegistry;->isCommandAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    iget-object v1, p0, Lorg/jline/console/impl/SystemHighlighter;->langHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {v1, p2}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->highlight(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v1

    .restart local v1    # "out":Lorg/jline/utils/AttributedString;
    goto/16 :goto_6

    .line 101
    .end local v1    # "out":Lorg/jline/utils/AttributedString;
    :cond_2
    new-instance v1, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v1}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v1

    .restart local v1    # "out":Lorg/jline/utils/AttributedString;
    goto :goto_6

    .line 71
    .end local v1    # "out":Lorg/jline/utils/AttributedString;
    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/jline/console/impl/SystemHighlighter;->commandHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/jline/console/impl/SystemHighlighter;->argsHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

    if-eqz v2, :cond_4

    goto :goto_1

    .line 96
    :cond_4
    new-instance v1, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v1}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v1

    .restart local v1    # "out":Lorg/jline/utils/AttributedString;
    goto :goto_6

    .line 72
    .end local v1    # "out":Lorg/jline/utils/AttributedString;
    :cond_5
    :goto_1
    const/4 v2, -0x1

    .line 73
    .local v2, "idx":I
    const/4 v3, 0x0

    .line 74
    .local v3, "cmdFound":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 75
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 76
    .local v5, "c":C
    const/16 v6, 0x20

    if-eq v5, v6, :cond_6

    .line 77
    const/4 v3, 0x1

    goto :goto_3

    .line 78
    :cond_6
    if-eqz v3, :cond_7

    .line 79
    move v2, v4

    .line 80
    goto :goto_4

    .line 74
    .end local v5    # "c":C
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 83
    .end local v4    # "i":I
    :cond_8
    :goto_4
    new-instance v4, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v4}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 84
    .local v4, "asb":Lorg/jline/utils/AttributedStringBuilder;
    if-gez v2, :cond_9

    .line 85
    invoke-direct {p0, p2, v4}, Lorg/jline/console/impl/SystemHighlighter;->highlightCommand(Ljava/lang/String;Lorg/jline/utils/AttributedStringBuilder;)V

    goto :goto_5

    .line 87
    :cond_9
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lorg/jline/console/impl/SystemHighlighter;->highlightCommand(Ljava/lang/String;Lorg/jline/utils/AttributedStringBuilder;)V

    .line 88
    iget-object v1, p0, Lorg/jline/console/impl/SystemHighlighter;->argsHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

    if-eqz v1, :cond_a

    .line 89
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->highlight(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_5

    .line 91
    :cond_a
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 94
    :goto_5
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v1

    .line 95
    .end local v2    # "idx":I
    .end local v3    # "cmdFound":Z
    .end local v4    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .restart local v1    # "out":Lorg/jline/utils/AttributedString;
    nop

    .line 103
    :goto_6
    return-object v1
.end method


# virtual methods
.method public highlight(Lorg/jline/reader/LineReader;Ljava/lang/String;)Lorg/jline/utils/AttributedString;
    .locals 1
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p2, "buffer"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lorg/jline/console/impl/SystemHighlighter;->doDefaultHighlight(Lorg/jline/reader/LineReader;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/jline/reader/impl/DefaultHighlighter;->highlight(Lorg/jline/reader/LineReader;Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/jline/reader/LineReader;->getParser()Lorg/jline/reader/Parser;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jline/console/impl/SystemHighlighter;->systemHighlight(Lorg/jline/reader/Parser;Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setErrorIndex(I)V
    .locals 0
    .param p1, "errorIndex"    # I

    .line 50
    iput p1, p0, Lorg/jline/console/impl/SystemHighlighter;->errorIndex:I

    .line 51
    invoke-super {p0, p1}, Lorg/jline/reader/impl/DefaultHighlighter;->setErrorIndex(I)V

    .line 52
    return-void
.end method

.method public setErrorPattern(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "errorPattern"    # Ljava/util/regex/Pattern;

    .line 44
    iput-object p1, p0, Lorg/jline/console/impl/SystemHighlighter;->errorPattern:Ljava/util/regex/Pattern;

    .line 45
    invoke-super {p0, p1}, Lorg/jline/reader/impl/DefaultHighlighter;->setErrorPattern(Ljava/util/regex/Pattern;)V

    .line 46
    return-void
.end method
