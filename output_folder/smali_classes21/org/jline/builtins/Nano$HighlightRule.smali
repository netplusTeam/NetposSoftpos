.class Lorg/jline/builtins/Nano$HighlightRule;
.super Ljava/lang/Object;
.source "Nano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Nano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HighlightRule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/Nano$HighlightRule$RuleType;
    }
.end annotation


# instance fields
.field private end:Ljava/util/regex/Pattern;

.field private pattern:Ljava/util/regex/Pattern;

.field private start:Ljava/util/regex/Pattern;

.field private final style:Lorg/jline/utils/AttributedStyle;

.field private final type:Lorg/jline/builtins/Nano$HighlightRule$RuleType;


# direct methods
.method public constructor <init>(Lorg/jline/utils/AttributedStyle;Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "style"    # Lorg/jline/utils/AttributedStyle;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;

    .line 1601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1602
    sget-object v0, Lorg/jline/builtins/Nano$HighlightRule$RuleType;->PATTERN:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    iput-object v0, p0, Lorg/jline/builtins/Nano$HighlightRule;->type:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    .line 1603
    iput-object p2, p0, Lorg/jline/builtins/Nano$HighlightRule;->pattern:Ljava/util/regex/Pattern;

    .line 1604
    iput-object p1, p0, Lorg/jline/builtins/Nano$HighlightRule;->style:Lorg/jline/utils/AttributedStyle;

    .line 1605
    return-void
.end method

.method public constructor <init>(Lorg/jline/utils/AttributedStyle;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "style"    # Lorg/jline/utils/AttributedStyle;
    .param p2, "start"    # Ljava/util/regex/Pattern;
    .param p3, "end"    # Ljava/util/regex/Pattern;

    .line 1607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1608
    sget-object v0, Lorg/jline/builtins/Nano$HighlightRule$RuleType;->START_END:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    iput-object v0, p0, Lorg/jline/builtins/Nano$HighlightRule;->type:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    .line 1609
    iput-object p1, p0, Lorg/jline/builtins/Nano$HighlightRule;->style:Lorg/jline/utils/AttributedStyle;

    .line 1610
    iput-object p2, p0, Lorg/jline/builtins/Nano$HighlightRule;->start:Ljava/util/regex/Pattern;

    .line 1611
    iput-object p3, p0, Lorg/jline/builtins/Nano$HighlightRule;->end:Ljava/util/regex/Pattern;

    .line 1612
    return-void
.end method

.method public static evalRuleType(Ljava/util/List;)Lorg/jline/builtins/Nano$HighlightRule$RuleType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jline/builtins/Nano$HighlightRule$RuleType;"
        }
    .end annotation

    .line 1644
    .local p0, "colorCfg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1645
    .local v0, "out":Lorg/jline/builtins/Nano$HighlightRule$RuleType;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "color"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "icolor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1646
    :cond_0
    sget-object v0, Lorg/jline/builtins/Nano$HighlightRule$RuleType;->PATTERN:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    .line 1647
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "start="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "end="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1648
    sget-object v0, Lorg/jline/builtins/Nano$HighlightRule$RuleType;->START_END:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    .line 1651
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getEnd()Ljava/util/regex/Pattern;
    .locals 2

    .line 1637
    iget-object v0, p0, Lorg/jline/builtins/Nano$HighlightRule;->type:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    sget-object v1, Lorg/jline/builtins/Nano$HighlightRule$RuleType;->PATTERN:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    if-eq v0, v1, :cond_0

    .line 1640
    iget-object v0, p0, Lorg/jline/builtins/Nano$HighlightRule;->end:Ljava/util/regex/Pattern;

    return-object v0

    .line 1638
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method

.method public getPattern()Ljava/util/regex/Pattern;
    .locals 2

    .line 1623
    iget-object v0, p0, Lorg/jline/builtins/Nano$HighlightRule;->type:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    sget-object v1, Lorg/jline/builtins/Nano$HighlightRule$RuleType;->START_END:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    if-eq v0, v1, :cond_0

    .line 1626
    iget-object v0, p0, Lorg/jline/builtins/Nano$HighlightRule;->pattern:Ljava/util/regex/Pattern;

    return-object v0

    .line 1624
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method

.method public getStart()Ljava/util/regex/Pattern;
    .locals 2

    .line 1630
    iget-object v0, p0, Lorg/jline/builtins/Nano$HighlightRule;->type:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    sget-object v1, Lorg/jline/builtins/Nano$HighlightRule$RuleType;->PATTERN:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    if-eq v0, v1, :cond_0

    .line 1633
    iget-object v0, p0, Lorg/jline/builtins/Nano$HighlightRule;->start:Ljava/util/regex/Pattern;

    return-object v0

    .line 1631
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method

.method public getStyle()Lorg/jline/utils/AttributedStyle;
    .locals 1

    .line 1619
    iget-object v0, p0, Lorg/jline/builtins/Nano$HighlightRule;->style:Lorg/jline/utils/AttributedStyle;

    return-object v0
.end method

.method public getType()Lorg/jline/builtins/Nano$HighlightRule$RuleType;
    .locals 1

    .line 1615
    iget-object v0, p0, Lorg/jline/builtins/Nano$HighlightRule;->type:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    return-object v0
.end method
