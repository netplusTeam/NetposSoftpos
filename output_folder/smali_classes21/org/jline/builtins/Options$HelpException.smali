.class public Lorg/jline/builtins/Options$HelpException;
.super Ljava/lang/Exception;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HelpException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 524
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method private static _highlightComment(Ljava/lang/String;Lorg/jline/utils/StyleResolver;)Lorg/jline/utils/AttributedStringBuilder;
    .locals 3
    .param p0, "comment"    # Ljava/lang/String;
    .param p1, "resolver"    # Lorg/jline/utils/StyleResolver;

    .line 602
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    .line 604
    .local v0, "acomment":Lorg/jline/utils/AttributedStringBuilder;
    const-string v1, "(?:\\s|\\[)(-\\$|-\\?|[-]{1,2}[A-Za-z-]+\\b)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 605
    const-string v2, ".op"

    invoke-virtual {p1, v2}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 604
    invoke-virtual {v0, v1, v2}, Lorg/jline/utils/AttributedStringBuilder;->styleMatches(Ljava/util/regex/Pattern;Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    .line 607
    const-string v1, "(?:\\s)([a-z]+[-]+[a-z]+|[A-Z_]{2,})(?:\\s)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 608
    const-string v2, ".ar"

    invoke-virtual {p1, v2}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 607
    invoke-virtual {v0, v1, v2}, Lorg/jline/utils/AttributedStringBuilder;->styleMatches(Ljava/util/regex/Pattern;Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    .line 609
    return-object v0
.end method

.method private static _highlightSyntax(Ljava/lang/String;Lorg/jline/utils/StyleResolver;Z)Lorg/jline/utils/AttributedStringBuilder;
    .locals 6
    .param p0, "syntax"    # Ljava/lang/String;
    .param p1, "resolver"    # Lorg/jline/utils/StyleResolver;
    .param p2, "subcommand"    # Z

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .local v0, "indent":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-char v4, v1, v3

    .line 581
    .local v4, "c":C
    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    .line 582
    goto :goto_1

    .line 584
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 580
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 586
    :cond_1
    :goto_1
    new-instance v1, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v1}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v1

    .line 588
    .local v1, "asyntax":Lorg/jline/utils/AttributedStringBuilder;
    const-string v2, "(?:^)([a-z]+[a-zA-Z0-9-]*)\\b"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 589
    const-string v3, ".co"

    invoke-virtual {p1, v3}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 588
    invoke-virtual {v1, v2, v3}, Lorg/jline/utils/AttributedStringBuilder;->styleMatches(Ljava/util/regex/Pattern;Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    .line 590
    if-nez p2, :cond_2

    .line 592
    const-string v2, "(?:<|\\[|\\s|=)([A-Za-z]+[A-Za-z_-]*)\\b"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 593
    const-string v3, ".ar"

    invoke-virtual {p1, v3}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 592
    invoke-virtual {v1, v2, v3}, Lorg/jline/utils/AttributedStringBuilder;->styleMatches(Ljava/util/regex/Pattern;Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    .line 595
    const-string v2, "(?:^|\\s|\\[)(-\\$|-\\?|[-]{1,2}[A-Za-z-]+\\b)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 596
    const-string v3, ".op"

    invoke-virtual {p1, v3}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 595
    invoke-virtual {v1, v2, v3}, Lorg/jline/utils/AttributedStringBuilder;->styleMatches(Ljava/util/regex/Pattern;Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    .line 598
    :cond_2
    new-instance v2, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v2}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedCharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v2

    return-object v2
.end method

.method public static defaultStyle()Lorg/jline/utils/StyleResolver;
    .locals 1

    .line 528
    invoke-static {}, Lorg/jline/builtins/Styles;->helpStyle()Lorg/jline/utils/StyleResolver;

    move-result-object v0

    return-object v0
.end method

.method public static highlight(Ljava/lang/String;Lorg/jline/utils/StyleResolver;)Lorg/jline/utils/AttributedString;
    .locals 14
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "resolver"    # Lorg/jline/utils/StyleResolver;

    .line 532
    const-string v0, "(^|\\n)(Usage|Summary)(:)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 533
    .local v0, "tm":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 534
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Summary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 535
    .local v2, "subcommand":Z
    new-instance v3, Lorg/jline/utils/AttributedStringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/jline/utils/AttributedStringBuilder;-><init>(I)V

    .line 537
    .local v3, "asb":Lorg/jline/utils/AttributedStringBuilder;
    new-instance v4, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v4}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 538
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v4

    .line 539
    const-string v5, "(?:^\\s*)([a-z]+[a-zA-Z0-9-]*)\\b"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 540
    const-string v7, ".co"

    invoke-virtual {p1, v7}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 539
    invoke-virtual {v4, v5, v7}, Lorg/jline/utils/AttributedStringBuilder;->styleMatches(Ljava/util/regex/Pattern;Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v4

    .line 541
    .local v4, "acommand":Lorg/jline/utils/AttributedStringBuilder;
    invoke-virtual {v3, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedCharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 543
    const-string v5, ".ti"

    invoke-virtual {p1, v5}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v5

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Lorg/jline/utils/AttributedStringBuilder;->styled(Lorg/jline/utils/AttributedStyle;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 545
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    move v8, v6

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v1, v8

    .line 546
    .local v9, "line":Ljava/lang/String;
    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 548
    .local v10, "ind":I
    const/16 v11, 0x14

    if-le v10, v11, :cond_0

    .line 549
    invoke-virtual {v9, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 550
    .local v11, "syntax":Ljava/lang/String;
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .local v12, "comment":Ljava/lang/String;
    goto :goto_1

    .line 552
    .end local v11    # "syntax":Ljava/lang/String;
    .end local v12    # "comment":Ljava/lang/String;
    :cond_0
    move-object v11, v9

    .line 553
    .restart local v11    # "syntax":Ljava/lang/String;
    const-string v12, ""

    .line 556
    .restart local v12    # "comment":Ljava/lang/String;
    :goto_1
    invoke-static {v11, p1, v2}, Lorg/jline/builtins/Options$HelpException;->_highlightSyntax(Ljava/lang/String;Lorg/jline/utils/StyleResolver;Z)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v13

    invoke-virtual {v3, v13}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedCharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 557
    invoke-static {v12, p1}, Lorg/jline/builtins/Options$HelpException;->_highlightComment(Ljava/lang/String;Lorg/jline/utils/StyleResolver;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v13

    invoke-virtual {v3, v13}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedCharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 558
    invoke-virtual {v3, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 545
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "ind":I
    .end local v11    # "syntax":Ljava/lang/String;
    .end local v12    # "comment":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 560
    :cond_1
    invoke-virtual {v3}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v1

    return-object v1

    .line 562
    .end local v2    # "subcommand":Z
    .end local v3    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .end local v4    # "acommand":Lorg/jline/utils/AttributedStringBuilder;
    :cond_2
    invoke-static {p0}, Lorg/jline/utils/AttributedString;->fromAnsi(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v1

    return-object v1
.end method

.method public static highlightComment(Ljava/lang/String;Lorg/jline/utils/StyleResolver;)Lorg/jline/utils/AttributedString;
    .locals 1
    .param p0, "comment"    # Ljava/lang/String;
    .param p1, "resolver"    # Lorg/jline/utils/StyleResolver;

    .line 575
    invoke-static {p0, p1}, Lorg/jline/builtins/Options$HelpException;->_highlightComment(Ljava/lang/String;Lorg/jline/utils/StyleResolver;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method

.method public static highlightSyntax(Ljava/lang/String;Lorg/jline/utils/StyleResolver;)Lorg/jline/utils/AttributedString;
    .locals 1
    .param p0, "syntax"    # Ljava/lang/String;
    .param p1, "resolver"    # Lorg/jline/utils/StyleResolver;

    .line 571
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/jline/builtins/Options$HelpException;->_highlightSyntax(Ljava/lang/String;Lorg/jline/utils/StyleResolver;Z)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method

.method public static highlightSyntax(Ljava/lang/String;Lorg/jline/utils/StyleResolver;Z)Lorg/jline/utils/AttributedString;
    .locals 1
    .param p0, "syntax"    # Ljava/lang/String;
    .param p1, "resolver"    # Lorg/jline/utils/StyleResolver;
    .param p2, "subcommands"    # Z

    .line 567
    invoke-static {p0, p1, p2}, Lorg/jline/builtins/Options$HelpException;->_highlightSyntax(Ljava/lang/String;Lorg/jline/utils/StyleResolver;Z)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method
