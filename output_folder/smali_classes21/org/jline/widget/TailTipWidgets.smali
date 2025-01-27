.class public Lorg/jline/widget/TailTipWidgets;
.super Lorg/jline/widget/Widgets;
.source "TailTipWidgets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/widget/TailTipWidgets$Pair;,
        Lorg/jline/widget/TailTipWidgets$CommandDescriptions;,
        Lorg/jline/widget/TailTipWidgets$TipType;
    }
.end annotation


# instance fields
.field private final cmdDescs:Lorg/jline/widget/TailTipWidgets$CommandDescriptions;

.field private descriptionCache:Z

.field private descriptionEnabled:Z

.field private descriptionSize:I

.field private enabled:Z

.field private readerErrors:Ljava/lang/Object;

.field private tipType:Lorg/jline/widget/TailTipWidgets$TipType;


# direct methods
.method public constructor <init>(Lorg/jline/reader/LineReader;Ljava/util/Map;)V
    .locals 2
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/LineReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/console/CmdDesc;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p2, "tailTips":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/console/CmdDesc;>;"
    sget-object v0, Lorg/jline/widget/TailTipWidgets$TipType;->COMBINED:Lorg/jline/widget/TailTipWidgets$TipType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/jline/widget/TailTipWidgets;-><init>(Lorg/jline/reader/LineReader;Ljava/util/Map;ILorg/jline/widget/TailTipWidgets$TipType;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/jline/reader/LineReader;Ljava/util/Map;I)V
    .locals 1
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p3, "descriptionSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/LineReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/console/CmdDesc;",
            ">;I)V"
        }
    .end annotation

    .line 97
    .local p2, "tailTips":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/console/CmdDesc;>;"
    sget-object v0, Lorg/jline/widget/TailTipWidgets$TipType;->COMBINED:Lorg/jline/widget/TailTipWidgets$TipType;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jline/widget/TailTipWidgets;-><init>(Lorg/jline/reader/LineReader;Ljava/util/Map;ILorg/jline/widget/TailTipWidgets$TipType;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/jline/reader/LineReader;Ljava/util/Map;ILorg/jline/widget/TailTipWidgets$TipType;)V
    .locals 6
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p3, "descriptionSize"    # I
    .param p4, "tipType"    # Lorg/jline/widget/TailTipWidgets$TipType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/LineReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/console/CmdDesc;",
            ">;I",
            "Lorg/jline/widget/TailTipWidgets$TipType;",
            ")V"
        }
    .end annotation

    .line 110
    .local p2, "tailTips":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/console/CmdDesc;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jline/widget/TailTipWidgets;-><init>(Lorg/jline/reader/LineReader;Ljava/util/Map;ILorg/jline/widget/TailTipWidgets$TipType;Ljava/util/function/Function;)V

    .line 111
    return-void
.end method

.method private constructor <init>(Lorg/jline/reader/LineReader;Ljava/util/Map;ILorg/jline/widget/TailTipWidgets$TipType;Ljava/util/function/Function;)V
    .locals 2
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p3, "descriptionSize"    # I
    .param p4, "tipType"    # Lorg/jline/widget/TailTipWidgets$TipType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/LineReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/console/CmdDesc;",
            ">;I",
            "Lorg/jline/widget/TailTipWidgets$TipType;",
            "Ljava/util/function/Function<",
            "Lorg/jline/console/CmdLine;",
            "Lorg/jline/console/CmdDesc;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p2, "tailTips":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/console/CmdDesc;>;"
    .local p5, "descFun":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/jline/console/CmdLine;Lorg/jline/console/CmdDesc;>;"
    invoke-direct {p0, p1}, Lorg/jline/widget/Widgets;-><init>(Lorg/jline/reader/LineReader;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/widget/TailTipWidgets;->enabled:Z

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jline/widget/TailTipWidgets;->descriptionEnabled:Z

    .line 58
    iput-boolean v0, p0, Lorg/jline/widget/TailTipWidgets;->descriptionCache:Z

    .line 130
    const-string v0, "_tailtip-accept-line"

    invoke-virtual {p0, v0}, Lorg/jline/widget/TailTipWidgets;->existsWidget(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    new-instance v1, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;

    if-eqz p2, :cond_0

    invoke-direct {v1, p0, p2}, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;-><init>(Lorg/jline/widget/TailTipWidgets;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1, p0, p5}, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;-><init>(Lorg/jline/widget/TailTipWidgets;Ljava/util/function/Function;)V

    :goto_0
    iput-object v1, p0, Lorg/jline/widget/TailTipWidgets;->cmdDescs:Lorg/jline/widget/TailTipWidgets$CommandDescriptions;

    .line 134
    iput p3, p0, Lorg/jline/widget/TailTipWidgets;->descriptionSize:I

    .line 135
    iput-object p4, p0, Lorg/jline/widget/TailTipWidgets;->tipType:Lorg/jline/widget/TailTipWidgets$TipType;

    .line 136
    new-instance v1, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda0;-><init>(Lorg/jline/widget/TailTipWidgets;)V

    invoke-virtual {p0, v0, v1}, Lorg/jline/widget/TailTipWidgets;->addWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 137
    new-instance v0, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda1;-><init>(Lorg/jline/widget/TailTipWidgets;)V

    const-string v1, "_tailtip-self-insert"

    invoke-virtual {p0, v1, v0}, Lorg/jline/widget/TailTipWidgets;->addWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 138
    new-instance v0, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda2;-><init>(Lorg/jline/widget/TailTipWidgets;)V

    const-string v1, "_tailtip-backward-delete-char"

    invoke-virtual {p0, v1, v0}, Lorg/jline/widget/TailTipWidgets;->addWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 139
    new-instance v0, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda3;-><init>(Lorg/jline/widget/TailTipWidgets;)V

    const-string v1, "_tailtip-delete-char"

    invoke-virtual {p0, v1, v0}, Lorg/jline/widget/TailTipWidgets;->addWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 140
    new-instance v0, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda4;-><init>(Lorg/jline/widget/TailTipWidgets;)V

    const-string v1, "_tailtip-expand-or-complete"

    invoke-virtual {p0, v1, v0}, Lorg/jline/widget/TailTipWidgets;->addWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 141
    new-instance v0, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda5;-><init>(Lorg/jline/widget/TailTipWidgets;)V

    const-string v1, "_tailtip-redisplay"

    invoke-virtual {p0, v1, v0}, Lorg/jline/widget/TailTipWidgets;->addWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 142
    new-instance v0, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda6;-><init>(Lorg/jline/widget/TailTipWidgets;)V

    const-string v1, "_tailtip-kill-line"

    invoke-virtual {p0, v1, v0}, Lorg/jline/widget/TailTipWidgets;->addWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 143
    new-instance v0, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda7;-><init>(Lorg/jline/widget/TailTipWidgets;)V

    const-string v1, "_tailtip-kill-whole-line"

    invoke-virtual {p0, v1, v0}, Lorg/jline/widget/TailTipWidgets;->addWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 144
    new-instance v0, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda8;-><init>(Lorg/jline/widget/TailTipWidgets;)V

    const-string v1, "tailtip-window"

    invoke-virtual {p0, v1, v0}, Lorg/jline/widget/TailTipWidgets;->addWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 145
    new-instance v0, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda9;-><init>(Lorg/jline/widget/TailTipWidgets;)V

    const-string v1, "tailtip-toggle"

    invoke-virtual {p0, v1, v0}, Lorg/jline/widget/TailTipWidgets;->addWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 146
    return-void

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TailTipWidgets already created!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/jline/reader/LineReader;Ljava/util/Map;Lorg/jline/widget/TailTipWidgets$TipType;)V
    .locals 1
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p3, "tipType"    # Lorg/jline/widget/TailTipWidgets$TipType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/LineReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/console/CmdDesc;",
            ">;",
            "Lorg/jline/widget/TailTipWidgets$TipType;",
            ")V"
        }
    .end annotation

    .line 84
    .local p2, "tailTips":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/console/CmdDesc;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jline/widget/TailTipWidgets;-><init>(Lorg/jline/reader/LineReader;Ljava/util/Map;ILorg/jline/widget/TailTipWidgets$TipType;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/jline/reader/LineReader;Ljava/util/function/Function;ILorg/jline/widget/TailTipWidgets$TipType;)V
    .locals 6
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p3, "descriptionSize"    # I
    .param p4, "tipType"    # Lorg/jline/widget/TailTipWidgets$TipType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/LineReader;",
            "Ljava/util/function/Function<",
            "Lorg/jline/console/CmdLine;",
            "Lorg/jline/console/CmdDesc;",
            ">;I",
            "Lorg/jline/widget/TailTipWidgets$TipType;",
            ")V"
        }
    .end annotation

    .line 123
    .local p2, "descFun":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/jline/console/CmdLine;Lorg/jline/console/CmdDesc;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/jline/widget/TailTipWidgets;-><init>(Lorg/jline/reader/LineReader;Ljava/util/Map;ILorg/jline/widget/TailTipWidgets$TipType;Ljava/util/function/Function;)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lorg/jline/widget/TailTipWidgets;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jline/widget/TailTipWidgets;

    .line 37
    iget-boolean v0, p0, Lorg/jline/widget/TailTipWidgets;->descriptionCache:Z

    return v0
.end method

.method private autopairEnabled()Z
    .locals 3

    .line 409
    invoke-virtual {p0}, Lorg/jline/widget/TailTipWidgets;->getKeyMap()Lorg/jline/keymap/KeyMap;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Lorg/jline/keymap/KeyMap;->getBound(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/reader/Binding;

    .line 410
    .local v0, "binding":Lorg/jline/reader/Binding;
    instance-of v1, v0, Lorg/jline/reader/Reference;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/jline/reader/Reference;

    invoke-virtual {v1}, Lorg/jline/reader/Reference;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_autopair-insert"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private clearTailTip(Ljava/lang/String;)Z
    .locals 1
    .param p1, "widget"    # Ljava/lang/String;

    .line 224
    invoke-virtual {p0}, Lorg/jline/widget/TailTipWidgets;->clearTailTip()V

    .line 225
    invoke-virtual {p0, p1}, Lorg/jline/widget/TailTipWidgets;->callWidget(Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method private compileMainDescription(Lorg/jline/console/CmdDesc;I)Ljava/util/List;
    .locals 1
    .param p1, "cmdDesc"    # Lorg/jline/console/CmdDesc;
    .param p2, "descriptionSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/console/CmdDesc;",
            "I)",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;"
        }
    .end annotation

    .line 497
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jline/widget/TailTipWidgets;->compileMainDescription(Lorg/jline/console/CmdDesc;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private compileMainDescription(Lorg/jline/console/CmdDesc;ILjava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "cmdDesc"    # Lorg/jline/console/CmdDesc;
    .param p2, "descriptionSize"    # I
    .param p3, "lastArg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/console/CmdDesc;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;"
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    invoke-virtual {p1}, Lorg/jline/console/CmdDesc;->getMainDesc()Ljava/util/List;

    move-result-object v1

    .line 503
    .local v1, "mainDesc":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    if-nez v1, :cond_0

    .line 504
    return-object v0

    .line 506
    :cond_0
    invoke-virtual {p1}, Lorg/jline/console/CmdDesc;->isCommand()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/jline/console/CmdDesc;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/jline/console/CmdDesc;->isHighlighted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 507
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 508
    invoke-static {}, Lorg/jline/builtins/Options$HelpException;->defaultStyle()Lorg/jline/utils/StyleResolver;

    move-result-object v2

    .line 509
    .local v2, "resolver":Lorg/jline/utils/StyleResolver;
    invoke-virtual {p1}, Lorg/jline/console/CmdDesc;->getMainDesc()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/utils/AttributedString;

    .line 510
    .local v4, "as":Lorg/jline/utils/AttributedString;
    invoke-virtual {v4}, Lorg/jline/utils/AttributedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lorg/jline/builtins/Options$HelpException;->highlightSyntax(Ljava/lang/String;Lorg/jline/utils/StyleResolver;)Lorg/jline/utils/AttributedString;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    .end local v4    # "as":Lorg/jline/utils/AttributedString;
    goto :goto_0

    .line 513
    .end local v2    # "resolver":Lorg/jline/utils/StyleResolver;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, p2, :cond_2

    if-nez p3, :cond_2

    .line 514
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 516
    :cond_2
    const/4 v2, 0x0

    .line 517
    .local v2, "tabs":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/utils/AttributedString;

    .line 518
    .restart local v4    # "as":Lorg/jline/utils/AttributedString;
    invoke-virtual {v4}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v5

    if-lt v5, v2, :cond_3

    .line 519
    invoke-virtual {v4}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    move v2, v5

    .line 521
    .end local v4    # "as":Lorg/jline/utils/AttributedString;
    :cond_3
    goto :goto_1

    .line 522
    :cond_4
    const/4 v3, 0x0

    .line 523
    .local v3, "row":I
    const/4 v4, 0x0

    .line 524
    .local v4, "col":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v5, "descList":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, p2, :cond_5

    .line 526
    new-instance v7, Lorg/jline/utils/AttributedString;

    const-string v8, ""

    invoke-direct {v7, v8}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 528
    .end local v6    # "i":I
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jline/utils/AttributedString;

    .line 529
    .local v7, "as":Lorg/jline/utils/AttributedString;
    if-eqz p3, :cond_6

    invoke-virtual {v7}, Lorg/jline/utils/AttributedString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 530
    goto :goto_3

    .line 532
    :cond_6
    new-instance v8, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v8}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v8

    .line 533
    .local v8, "asb":Lorg/jline/utils/AttributedStringBuilder;
    if-lez v4, :cond_7

    .line 534
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jline/utils/AttributedString;

    invoke-virtual {v8, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 535
    const-string v9, "\t"

    invoke-virtual {v8, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 537
    :cond_7
    invoke-virtual {v8, v7}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 538
    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 539
    invoke-virtual {v8}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v9

    invoke-interface {v5, v3, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 540
    add-int/lit8 v3, v3, 0x1

    .line 541
    if-lt v3, p2, :cond_8

    .line 542
    const/4 v3, 0x0

    .line 543
    add-int/lit8 v4, v4, 0x1

    .line 545
    .end local v7    # "as":Lorg/jline/utils/AttributedString;
    .end local v8    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    :cond_8
    goto :goto_3

    .line 546
    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v6

    .line 548
    .end local v2    # "tabs":I
    .end local v3    # "row":I
    .end local v4    # "col":I
    .end local v5    # "descList":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    :goto_4
    return-object v0
.end method

.method private compileOptionDescription(Lorg/jline/console/CmdDesc;Ljava/lang/String;I)Ljava/util/List;
    .locals 17
    .param p1, "cmdDesc"    # Lorg/jline/console/CmdDesc;
    .param p2, "opt"    # Ljava/lang/String;
    .param p3, "descriptionSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/console/CmdDesc;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;"
        }
    .end annotation

    .line 552
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v3, "out":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/jline/console/CmdDesc;->getOptsDesc()Ljava/util/TreeMap;

    move-result-object v4

    .line 554
    .local v4, "optsDesc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/utils/AttributedString;>;>;"
    invoke-static {}, Lorg/jline/builtins/Options$HelpException;->defaultStyle()Lorg/jline/utils/StyleResolver;

    move-result-object v5

    .line 556
    .local v5, "resolver":Lorg/jline/utils/StyleResolver;
    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 557
    return-object v3

    .line 559
    :cond_0
    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 560
    .local v6, "ind":I
    const/4 v7, 0x0

    if-lez v6, :cond_1

    .line 561
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 564
    .end local v6    # "ind":I
    .end local p2    # "opt":Ljava/lang/String;
    .local v1, "opt":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v6, "matched":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 566
    .local v8, "tabs":I
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 567
    .local v10, "key":Ljava/lang/String;
    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    move v13, v7

    :goto_1
    if-ge v13, v12, :cond_3

    aget-object v14, v11, v13

    .line 568
    .local v14, "k":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 569
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v8, :cond_3

    .line 571
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x2

    move v8, v11

    .end local v8    # "tabs":I
    .local v11, "tabs":I
    goto :goto_2

    .line 567
    .end local v11    # "tabs":I
    .end local v14    # "k":Ljava/lang/String;
    .restart local v8    # "tabs":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 576
    .end local v10    # "key":Ljava/lang/String;
    :cond_3
    :goto_2
    goto :goto_0

    .line 577
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    const-string v10, "\t"

    const/4 v11, 0x1

    if-ne v9, v11, :cond_6

    .line 578
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v5}, Lorg/jline/builtins/Options$HelpException;->highlightSyntax(Ljava/lang/String;Lorg/jline/utils/StyleResolver;)Lorg/jline/utils/AttributedString;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jline/utils/AttributedString;

    .line 580
    .local v9, "as":Lorg/jline/utils/AttributedString;
    new-instance v11, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v11}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v11

    .line 581
    .local v11, "asb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-virtual {v11, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 582
    invoke-virtual {v11, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 583
    invoke-virtual {v11}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    .end local v9    # "as":Lorg/jline/utils/AttributedString;
    .end local v11    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    goto :goto_3

    :cond_5
    goto :goto_5

    .line 585
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-gt v9, v2, :cond_8

    .line 586
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 587
    .local v9, "key":Ljava/lang/String;
    new-instance v11, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v11}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v11

    .line 588
    .restart local v11    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-static {v9, v5}, Lorg/jline/builtins/Options$HelpException;->highlightSyntax(Ljava/lang/String;Lorg/jline/utils/StyleResolver;)Lorg/jline/utils/AttributedString;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 589
    invoke-virtual {v11, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 590
    invoke-virtual {v0, v9}, Lorg/jline/console/CmdDesc;->optionDescription(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 591
    invoke-virtual {v11}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    .end local v9    # "key":Ljava/lang/String;
    .end local v11    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    goto :goto_4

    :cond_7
    nop

    .line 650
    :goto_5
    move-object/from16 p2, v1

    goto/16 :goto_d

    .line 593
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    mul-int/lit8 v11, v2, 0x2

    if-gt v9, v11, :cond_e

    .line 594
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v9, "keyList":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    const/4 v11, 0x0

    .line 596
    .local v11, "row":I
    mul-int/lit8 v12, v8, 0x2

    .line 597
    .local v12, "columnWidth":I
    :goto_6
    const/16 v13, 0x32

    if-ge v12, v13, :cond_9

    .line 598
    add-int/2addr v12, v8

    goto :goto_6

    .line 600
    :cond_9
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 601
    .local v14, "key":Ljava/lang/String;
    new-instance v15, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v15}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v15

    .line 602
    .local v15, "asb":Lorg/jline/utils/AttributedStringBuilder;
    if-ge v11, v2, :cond_c

    .line 603
    invoke-static {v14, v5}, Lorg/jline/builtins/Options$HelpException;->highlightSyntax(Ljava/lang/String;Lorg/jline/utils/StyleResolver;)Lorg/jline/utils/AttributedString;

    move-result-object v7

    invoke-virtual {v15, v7}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 604
    invoke-virtual {v15, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 605
    invoke-virtual {v0, v14}, Lorg/jline/console/CmdDesc;->optionDescription(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v7

    invoke-virtual {v15, v7}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 606
    invoke-virtual {v15}, Lorg/jline/utils/AttributedStringBuilder;->columnLength()I

    move-result v7

    move-object/from16 p2, v1

    .end local v1    # "opt":Ljava/lang/String;
    .restart local p2    # "opt":Ljava/lang/String;
    add-int/lit8 v1, v12, -0x2

    if-le v7, v1, :cond_a

    .line 607
    add-int/lit8 v1, v12, -0x5

    const/4 v7, 0x0

    invoke-virtual {v15, v7, v1}, Lorg/jline/utils/AttributedStringBuilder;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v1

    .line 608
    .local v1, "trunc":Lorg/jline/utils/AttributedString;
    new-instance v7, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v7}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v7

    .line 609
    .end local v15    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .local v7, "asb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-virtual {v7, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 610
    new-instance v15, Lorg/jline/utils/AttributedStyle;

    move-object/from16 v16, v1

    .end local v1    # "trunc":Lorg/jline/utils/AttributedString;
    .local v16, "trunc":Lorg/jline/utils/AttributedString;
    sget-object v1, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-direct {v15, v1}, Lorg/jline/utils/AttributedStyle;-><init>(Lorg/jline/utils/AttributedStyle;)V

    const-string v1, "..."

    invoke-virtual {v7, v1, v15}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 611
    const-string v1, "  "

    invoke-virtual {v7, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 612
    .end local v16    # "trunc":Lorg/jline/utils/AttributedString;
    move-object v15, v7

    goto :goto_9

    .line 613
    .end local v7    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .restart local v15    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    :cond_a
    invoke-virtual {v15}, Lorg/jline/utils/AttributedStringBuilder;->columnLength()I

    move-result v1

    .local v1, "i":I
    :goto_8
    if-ge v1, v12, :cond_b

    .line 614
    const-string v7, " "

    invoke-virtual {v15, v7}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 613
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 617
    .end local v1    # "i":I
    :cond_b
    :goto_9
    invoke-virtual {v15}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v12}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 619
    .end local p2    # "opt":Ljava/lang/String;
    .local v1, "opt":Ljava/lang/String;
    :cond_c
    move-object/from16 p2, v1

    .end local v1    # "opt":Ljava/lang/String;
    .restart local p2    # "opt":Ljava/lang/String;
    sub-int v1, v11, v2

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/utils/AttributedString;

    invoke-virtual {v15, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 620
    invoke-static {v14, v5}, Lorg/jline/builtins/Options$HelpException;->highlightSyntax(Ljava/lang/String;Lorg/jline/utils/StyleResolver;)Lorg/jline/utils/AttributedString;

    move-result-object v1

    invoke-virtual {v15, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 621
    invoke-virtual {v15, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 622
    invoke-virtual {v0, v14}, Lorg/jline/console/CmdDesc;->optionDescription(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v1

    invoke-virtual {v15, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 623
    sub-int v1, v11, v2

    invoke-interface {v9, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 624
    sub-int v1, v11, v2

    invoke-virtual {v15}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v7

    invoke-interface {v9, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 627
    :goto_a
    nop

    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    add-int/lit8 v11, v11, 0x1

    .line 628
    move-object/from16 v1, p2

    const/4 v7, 0x0

    goto/16 :goto_7

    .line 629
    .end local p2    # "opt":Ljava/lang/String;
    .restart local v1    # "opt":Ljava/lang/String;
    :cond_d
    move-object/from16 p2, v1

    .end local v1    # "opt":Ljava/lang/String;
    .restart local p2    # "opt":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v1

    .line 630
    .end local v9    # "keyList":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .end local v11    # "row":I
    .end local v12    # "columnWidth":I
    goto :goto_d

    .line 631
    .end local p2    # "opt":Ljava/lang/String;
    .restart local v1    # "opt":Ljava/lang/String;
    :cond_e
    move-object/from16 p2, v1

    .end local v1    # "opt":Ljava/lang/String;
    .restart local p2    # "opt":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v1, "keyList":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_b
    if-ge v7, v2, :cond_f

    .line 633
    new-instance v9, Lorg/jline/utils/AttributedString;

    const-string v11, ""

    invoke-direct {v9, v11}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 635
    .end local v7    # "i":I
    :cond_f
    const/4 v7, 0x0

    .line 636
    .local v7, "row":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 637
    .local v11, "key":Ljava/lang/String;
    new-instance v12, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v12}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v12

    .line 638
    .local v12, "asb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jline/utils/AttributedString;

    invoke-virtual {v12, v13}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 639
    invoke-static {v11, v5}, Lorg/jline/builtins/Options$HelpException;->highlightSyntax(Ljava/lang/String;Lorg/jline/utils/StyleResolver;)Lorg/jline/utils/AttributedString;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 640
    invoke-virtual {v12, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 641
    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 642
    invoke-virtual {v12}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v13

    invoke-interface {v1, v7, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 643
    add-int/lit8 v7, v7, 0x1

    .line 644
    if-lt v7, v2, :cond_10

    .line 645
    const/4 v7, 0x0

    .line 647
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    :cond_10
    goto :goto_c

    .line 648
    :cond_11
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v9

    .line 650
    .end local v1    # "keyList":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .end local v7    # "row":I
    :goto_d
    return-object v3
.end method

.method private customBindings()V
    .locals 3

    .line 474
    iget-boolean v0, p0, Lorg/jline/widget/TailTipWidgets;->enabled:Z

    if-eqz v0, :cond_0

    .line 475
    return-void

    .line 477
    :cond_0
    const-string v0, "_tailtip-accept-line"

    const-string v1, "accept-line"

    invoke-virtual {p0, v0, v1}, Lorg/jline/widget/TailTipWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v0, "_tailtip-backward-delete-char"

    const-string v1, "backward-delete-char"

    invoke-virtual {p0, v0, v1}, Lorg/jline/widget/TailTipWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v0, "_tailtip-delete-char"

    const-string v1, "delete-char"

    invoke-virtual {p0, v0, v1}, Lorg/jline/widget/TailTipWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v0, "_tailtip-expand-or-complete"

    const-string v1, "expand-or-complete"

    invoke-virtual {p0, v0, v1}, Lorg/jline/widget/TailTipWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v0, "_tailtip-self-insert"

    const-string v1, "self-insert"

    invoke-virtual {p0, v0, v1}, Lorg/jline/widget/TailTipWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v1, "_tailtip-redisplay"

    const-string v2, "redisplay"

    invoke-virtual {p0, v1, v2}, Lorg/jline/widget/TailTipWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v1, "_tailtip-kill-line"

    const-string v2, "kill-line"

    invoke-virtual {p0, v1, v2}, Lorg/jline/widget/TailTipWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v1, "_tailtip-kill-whole-line"

    const-string v2, "kill-whole-line"

    invoke-virtual {p0, v1, v2}, Lorg/jline/widget/TailTipWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lorg/jline/widget/TailTipWidgets;->getKeyMap()Lorg/jline/keymap/KeyMap;

    move-result-object v1

    .line 486
    .local v1, "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    new-instance v2, Lorg/jline/reader/Reference;

    invoke-direct {v2, v0}, Lorg/jline/reader/Reference;-><init>(Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {v1, v2, v0}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lorg/jline/widget/TailTipWidgets;->tipType:Lorg/jline/widget/TailTipWidgets$TipType;

    sget-object v2, Lorg/jline/widget/TailTipWidgets$TipType;->TAIL_TIP:Lorg/jline/widget/TailTipWidgets$TipType;

    if-eq v0, v2, :cond_1

    .line 489
    sget-object v0, Lorg/jline/reader/LineReader$SuggestionType;->COMPLETER:Lorg/jline/reader/LineReader$SuggestionType;

    invoke-virtual {p0, v0}, Lorg/jline/widget/TailTipWidgets;->setSuggestionType(Lorg/jline/reader/LineReader$SuggestionType;)V

    goto :goto_0

    .line 491
    :cond_1
    sget-object v0, Lorg/jline/reader/LineReader$SuggestionType;->TAIL_TIP:Lorg/jline/reader/LineReader$SuggestionType;

    invoke-virtual {p0, v0}, Lorg/jline/widget/TailTipWidgets;->setSuggestionType(Lorg/jline/reader/LineReader$SuggestionType;)V

    .line 493
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/widget/TailTipWidgets;->enabled:Z

    .line 494
    return-void
.end method

.method private defaultBindings()Z
    .locals 4

    .line 450
    iget-boolean v0, p0, Lorg/jline/widget/TailTipWidgets;->enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 451
    return v1

    .line 453
    :cond_0
    const-string v0, ".accept-line"

    const-string v2, "accept-line"

    invoke-virtual {p0, v0, v2}, Lorg/jline/widget/TailTipWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v0, ".backward-delete-char"

    const-string v2, "backward-delete-char"

    invoke-virtual {p0, v0, v2}, Lorg/jline/widget/TailTipWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v0, ".delete-char"

    const-string v2, "delete-char"

    invoke-virtual {p0, v0, v2}, Lorg/jline/widget/TailTipWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v0, ".expand-or-complete"

    const-string v2, "expand-or-complete"

    invoke-virtual {p0, v0, v2}, Lorg/jline/widget/TailTipWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v0, ".self-insert"

    const-string v2, "self-insert"

    invoke-virtual {p0, v0, v2}, Lorg/jline/widget/TailTipWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v0, ".redisplay"

    const-string v2, "redisplay"

    invoke-virtual {p0, v0, v2}, Lorg/jline/widget/TailTipWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v0, ".kill-line"

    const-string v2, "kill-line"

    invoke-virtual {p0, v0, v2}, Lorg/jline/widget/TailTipWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v0, ".kill-whole-line"

    const-string v2, "kill-whole-line"

    invoke-virtual {p0, v0, v2}, Lorg/jline/widget/TailTipWidgets;->aliasWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lorg/jline/widget/TailTipWidgets;->getKeyMap()Lorg/jline/keymap/KeyMap;

    move-result-object v0

    .line 462
    .local v0, "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    new-instance v2, Lorg/jline/reader/Reference;

    const-string v3, "insert-close-paren"

    invoke-direct {v2, v3}, Lorg/jline/reader/Reference;-><init>(Ljava/lang/String;)V

    const-string v3, ")"

    invoke-virtual {v0, v2, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 464
    sget-object v2, Lorg/jline/reader/LineReader$SuggestionType;->NONE:Lorg/jline/reader/LineReader$SuggestionType;

    invoke-virtual {p0, v2}, Lorg/jline/widget/TailTipWidgets;->setSuggestionType(Lorg/jline/reader/LineReader$SuggestionType;)V

    .line 465
    invoke-direct {p0}, Lorg/jline/widget/TailTipWidgets;->autopairEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 466
    const-string v2, "autopair-toggle"

    invoke-virtual {p0, v2}, Lorg/jline/widget/TailTipWidgets;->callWidget(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0, v2}, Lorg/jline/widget/TailTipWidgets;->callWidget(Ljava/lang/String;)V

    .line 469
    :cond_1
    iput-boolean v1, p0, Lorg/jline/widget/TailTipWidgets;->enabled:Z

    .line 470
    const/4 v1, 0x1

    return v1
.end method

.method private doCommandTailTip(Ljava/lang/String;Lorg/jline/console/CmdDesc;Ljava/util/List;)V
    .locals 19
    .param p1, "widget"    # Ljava/lang/String;
    .param p2, "cmdDesc"    # Lorg/jline/console/CmdDesc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jline/console/CmdDesc;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 283
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 284
    .local v4, "argnum":I
    const-string v5, ""

    .line 285
    .local v5, "prevArg":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "-[a-zA-Z]"

    const-string v9, "-"

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 286
    .local v7, "a":Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 287
    invoke-virtual {v5, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2, v5}, Lorg/jline/console/CmdDesc;->optionWithValue(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 288
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 291
    :cond_1
    move-object v5, v7

    .line 292
    .end local v7    # "a":Ljava/lang/String;
    goto :goto_0

    .line 293
    :cond_2
    const-string v6, ""

    .line 294
    .local v6, "lastArg":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    check-cast v5, Ljava/lang/String;

    .line 295
    invoke-virtual/range {p0 .. p0}, Lorg/jline/widget/TailTipWidgets;->prevChar()Ljava/lang/String;

    move-result-object v7

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v12, 0x2

    if-nez v7, :cond_3

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v10, :cond_3

    .line 296
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v10

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Ljava/lang/String;

    .line 297
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v12

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    check-cast v5, Ljava/lang/String;

    .line 299
    :cond_3
    move v7, v4

    .line 300
    .local v7, "bpsize":I
    const/4 v13, 0x1

    .line 301
    .local v13, "doTailTip":Z
    const/4 v14, 0x0

    .line 302
    .local v14, "noCompleters":Z
    const-string v15, "backward-delete-char"

    invoke-virtual {v1, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    const/16 v17, 0x0

    if-eqz v16, :cond_6

    .line 303
    sget-object v10, Lorg/jline/reader/LineReader$SuggestionType;->TAIL_TIP:Lorg/jline/reader/LineReader$SuggestionType;

    invoke-virtual {v0, v10}, Lorg/jline/widget/TailTipWidgets;->setSuggestionType(Lorg/jline/reader/LineReader$SuggestionType;)V

    .line 304
    const/4 v14, 0x1

    .line 305
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 306
    invoke-virtual {v5, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v2, v5}, Lorg/jline/console/CmdDesc;->optionWithValue(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 307
    :cond_4
    add-int/lit8 v7, v7, -0x1

    .line 310
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/jline/widget/TailTipWidgets;->prevChar()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 311
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 313
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/jline/widget/TailTipWidgets;->prevChar()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 314
    const/4 v13, 0x0

    .line 315
    iget v10, v0, Lorg/jline/widget/TailTipWidgets;->descriptionSize:I

    invoke-virtual/range {p2 .. p2}, Lorg/jline/console/CmdDesc;->isSubcommand()Z

    move-result v18

    if-eqz v18, :cond_7

    move-object v12, v6

    goto :goto_1

    :cond_7
    move-object/from16 v12, v17

    :goto_1
    invoke-direct {v0, v2, v10, v12}, Lorg/jline/widget/TailTipWidgets;->compileMainDescription(Lorg/jline/console/CmdDesc;ILjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/jline/widget/TailTipWidgets;->doDescription(Ljava/util/List;)V

    goto :goto_2

    .line 316
    :cond_8
    if-eqz v2, :cond_9

    .line 317
    iget v10, v0, Lorg/jline/widget/TailTipWidgets;->descriptionSize:I

    invoke-direct {v0, v2, v10}, Lorg/jline/widget/TailTipWidgets;->compileMainDescription(Lorg/jline/console/CmdDesc;I)Ljava/util/List;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/jline/widget/TailTipWidgets;->doDescription(Ljava/util/List;)V

    .line 319
    :cond_9
    :goto_2
    if-eqz v2, :cond_1c

    .line 320
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 321
    const-string v10, "-[a-zA-Z][a-zA-Z0-9]+"

    invoke-virtual {v6, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 322
    const/4 v10, 0x0

    const/4 v12, 0x2

    invoke-virtual {v6, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lorg/jline/console/CmdDesc;->optionWithValue(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 323
    invoke-virtual {v6, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v12, v0, Lorg/jline/widget/TailTipWidgets;->descriptionSize:I

    invoke-direct {v0, v2, v10, v12}, Lorg/jline/widget/TailTipWidgets;->compileOptionDescription(Lorg/jline/console/CmdDesc;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/jline/widget/TailTipWidgets;->doDescription(Ljava/util/List;)V

    .line 324
    iget-object v10, v0, Lorg/jline/widget/TailTipWidgets;->tipType:Lorg/jline/widget/TailTipWidgets$TipType;

    invoke-virtual {v0, v10}, Lorg/jline/widget/TailTipWidgets;->setTipType(Lorg/jline/widget/TailTipWidgets$TipType;)V

    goto :goto_3

    .line 326
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v15, 0x1

    sub-int/2addr v12, v15

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v12, v0, Lorg/jline/widget/TailTipWidgets;->descriptionSize:I

    invoke-direct {v0, v2, v10, v12}, Lorg/jline/widget/TailTipWidgets;->compileOptionDescription(Lorg/jline/console/CmdDesc;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/jline/widget/TailTipWidgets;->doDescription(Ljava/util/List;)V

    .line 327
    sget-object v10, Lorg/jline/reader/LineReader$SuggestionType;->TAIL_TIP:Lorg/jline/reader/LineReader$SuggestionType;

    invoke-virtual {v0, v10}, Lorg/jline/widget/TailTipWidgets;->setSuggestionType(Lorg/jline/reader/LineReader$SuggestionType;)V

    .line 328
    const/4 v14, 0x1

    goto :goto_3

    .line 331
    :cond_b
    iget v10, v0, Lorg/jline/widget/TailTipWidgets;->descriptionSize:I

    invoke-direct {v0, v2, v6, v10}, Lorg/jline/widget/TailTipWidgets;->compileOptionDescription(Lorg/jline/console/CmdDesc;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/jline/widget/TailTipWidgets;->doDescription(Ljava/util/List;)V

    .line 332
    const-string v10, "="

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 333
    sget-object v10, Lorg/jline/reader/LineReader$SuggestionType;->TAIL_TIP:Lorg/jline/reader/LineReader$SuggestionType;

    invoke-virtual {v0, v10}, Lorg/jline/widget/TailTipWidgets;->setSuggestionType(Lorg/jline/reader/LineReader$SuggestionType;)V

    .line 334
    const/4 v14, 0x1

    goto :goto_3

    .line 336
    :cond_c
    iget-object v10, v0, Lorg/jline/widget/TailTipWidgets;->tipType:Lorg/jline/widget/TailTipWidgets$TipType;

    invoke-virtual {v0, v10}, Lorg/jline/widget/TailTipWidgets;->setTipType(Lorg/jline/widget/TailTipWidgets$TipType;)V

    goto :goto_3

    .line 339
    :cond_d
    invoke-virtual {v1, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 340
    iget-object v10, v0, Lorg/jline/widget/TailTipWidgets;->tipType:Lorg/jline/widget/TailTipWidgets$TipType;

    invoke-virtual {v0, v10}, Lorg/jline/widget/TailTipWidgets;->setTipType(Lorg/jline/widget/TailTipWidgets$TipType;)V

    .line 342
    :cond_e
    :goto_3
    if-lez v7, :cond_1a

    if-eqz v13, :cond_1a

    .line 343
    invoke-virtual/range {p2 .. p2}, Lorg/jline/console/CmdDesc;->getArgsDesc()Ljava/util/List;

    move-result-object v10

    .line 344
    .local v10, "params":Ljava/util/List;, "Ljava/util/List<Lorg/jline/console/ArgDesc;>;"
    if-nez v14, :cond_10

    .line 345
    iget-object v12, v0, Lorg/jline/widget/TailTipWidgets;->tipType:Lorg/jline/widget/TailTipWidgets$TipType;

    sget-object v15, Lorg/jline/widget/TailTipWidgets$TipType;->COMPLETER:Lorg/jline/widget/TailTipWidgets$TipType;

    if-ne v12, v15, :cond_f

    sget-object v12, Lorg/jline/reader/LineReader$SuggestionType;->COMPLETER:Lorg/jline/reader/LineReader$SuggestionType;

    goto :goto_4

    :cond_f
    sget-object v12, Lorg/jline/reader/LineReader$SuggestionType;->TAIL_TIP:Lorg/jline/reader/LineReader$SuggestionType;

    :goto_4
    invoke-virtual {v0, v12}, Lorg/jline/widget/TailTipWidgets;->setSuggestionType(Lorg/jline/reader/LineReader$SuggestionType;)V

    .line 347
    :cond_10
    add-int/lit8 v12, v7, -0x1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-ge v12, v15, :cond_18

    .line 348
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_16

    .line 350
    invoke-virtual {v5, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v2, v5}, Lorg/jline/console/CmdDesc;->optionWithValue(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11

    goto :goto_5

    .line 353
    :cond_11
    iget v8, v0, Lorg/jline/widget/TailTipWidgets;->descriptionSize:I

    invoke-direct {v0, v2, v5, v8}, Lorg/jline/widget/TailTipWidgets;->compileOptionDescription(Lorg/jline/console/CmdDesc;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v8

    .local v8, "d":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    goto :goto_6

    .line 351
    .end local v8    # "d":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    :cond_12
    :goto_5
    add-int/lit8 v8, v7, -0x1

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jline/console/ArgDesc;

    invoke-virtual {v8}, Lorg/jline/console/ArgDesc;->getDescription()Ljava/util/List;

    move-result-object v8

    .line 355
    .restart local v8    # "d":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    :goto_6
    if-eqz v8, :cond_13

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 356
    :cond_13
    iget v9, v0, Lorg/jline/widget/TailTipWidgets;->descriptionSize:I

    invoke-virtual/range {p2 .. p2}, Lorg/jline/console/CmdDesc;->isSubcommand()Z

    move-result v12

    if-eqz v12, :cond_14

    move-object v12, v6

    goto :goto_7

    :cond_14
    move-object/from16 v12, v17

    :goto_7
    invoke-direct {v0, v2, v9, v12}, Lorg/jline/widget/TailTipWidgets;->compileMainDescription(Lorg/jline/console/CmdDesc;ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 358
    :cond_15
    invoke-direct {v0, v8}, Lorg/jline/widget/TailTipWidgets;->doDescription(Ljava/util/List;)V

    .line 360
    .end local v8    # "d":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    :cond_16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v8, "tip":Ljava/lang/StringBuilder;
    add-int/lit8 v9, v7, -0x1

    .local v9, "i":I
    :goto_8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_17

    .line 362
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jline/console/ArgDesc;

    invoke-virtual {v12}, Lorg/jline/console/ArgDesc;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 365
    .end local v9    # "i":I
    :cond_17
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/jline/widget/TailTipWidgets;->setTailTip(Ljava/lang/String;)V

    .end local v8    # "tip":Ljava/lang/StringBuilder;
    goto :goto_9

    .line 366
    :cond_18
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_19

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jline/console/ArgDesc;

    invoke-virtual {v8}, Lorg/jline/console/ArgDesc;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v11, "["

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 367
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jline/console/ArgDesc;

    invoke-virtual {v8}, Lorg/jline/console/ArgDesc;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/jline/widget/TailTipWidgets;->setTailTip(Ljava/lang/String;)V

    .line 368
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jline/console/ArgDesc;

    invoke-virtual {v8}, Lorg/jline/console/ArgDesc;->getDescription()Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/jline/widget/TailTipWidgets;->doDescription(Ljava/util/List;)V

    goto :goto_a

    .line 366
    :cond_19
    :goto_9
    goto :goto_a

    .line 370
    .end local v10    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/jline/console/ArgDesc;>;"
    :cond_1a
    if-eqz v13, :cond_1b

    .line 371
    invoke-direct/range {p0 .. p0}, Lorg/jline/widget/TailTipWidgets;->resetTailTip()V

    goto :goto_b

    .line 370
    :cond_1b
    :goto_a
    goto :goto_b

    .line 374
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lorg/jline/widget/TailTipWidgets;->clearDescription()V

    .line 375
    invoke-direct/range {p0 .. p0}, Lorg/jline/widget/TailTipWidgets;->resetTailTip()V

    .line 377
    :goto_b
    return-void
.end method

.method private doDescription(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;)V"
        }
    .end annotation

    .line 387
    .local p1, "desc":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    iget v0, p0, Lorg/jline/widget/TailTipWidgets;->descriptionSize:I

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/jline/widget/TailTipWidgets;->descriptionEnabled:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 390
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {p0}, Lorg/jline/widget/TailTipWidgets;->clearDescription()V

    goto :goto_1

    .line 392
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/jline/widget/TailTipWidgets;->descriptionSize:I

    if-ne v0, v1, :cond_2

    .line 393
    invoke-virtual {p0, p1}, Lorg/jline/widget/TailTipWidgets;->addDescription(Ljava/util/List;)V

    goto :goto_1

    .line 394
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/jline/widget/TailTipWidgets;->descriptionSize:I

    if-le v0, v1, :cond_3

    .line 395
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 396
    .local v0, "asb":Lorg/jline/utils/AttributedStringBuilder;
    iget v1, p0, Lorg/jline/widget/TailTipWidgets;->descriptionSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/utils/AttributedString;

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v1

    new-instance v2, Lorg/jline/utils/AttributedStyle;

    sget-object v3, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-direct {v2, v3}, Lorg/jline/utils/AttributedStyle;-><init>(Lorg/jline/utils/AttributedStyle;)V

    const-string v3, "..."

    invoke-virtual {v1, v3, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 397
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget v3, p0, Lorg/jline/widget/TailTipWidgets;->descriptionSize:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 398
    .local v1, "mod":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {p0, v1}, Lorg/jline/widget/TailTipWidgets;->addDescription(Ljava/util/List;)V

    .line 400
    .end local v0    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .end local v1    # "mod":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    goto :goto_1

    .line 401
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/jline/widget/TailTipWidgets;->descriptionSize:I

    if-eq v0, v1, :cond_4

    .line 402
    new-instance v0, Lorg/jline/utils/AttributedString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    :cond_4
    invoke-virtual {p0, p1}, Lorg/jline/widget/TailTipWidgets;->addDescription(Ljava/util/List;)V

    .line 406
    :goto_1
    return-void

    .line 388
    :cond_5
    :goto_2
    return-void
.end method

.method private doTailTip(Ljava/lang/String;)Z
    .locals 6
    .param p1, "widget"    # Ljava/lang/String;

    .line 253
    invoke-virtual {p0}, Lorg/jline/widget/TailTipWidgets;->buffer()Lorg/jline/reader/Buffer;

    move-result-object v0

    .line 254
    .local v0, "buffer":Lorg/jline/reader/Buffer;
    invoke-virtual {p0, p1}, Lorg/jline/widget/TailTipWidgets;->callWidget(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lorg/jline/widget/TailTipWidgets;->args()Ljava/util/List;

    move-result-object v1

    .line 257
    .local v1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 258
    iget-object v2, p0, Lorg/jline/widget/TailTipWidgets;->cmdDescs:Lorg/jline/widget/TailTipWidgets$CommandDescriptions;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->evaluateCommandLine(Ljava/lang/String;Ljava/util/List;)Lorg/jline/widget/TailTipWidgets$Pair;

    move-result-object v2

    .local v2, "cmdkey":Lorg/jline/widget/TailTipWidgets$Pair;, "Lorg/jline/widget/TailTipWidgets$Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 260
    .end local v2    # "cmdkey":Lorg/jline/widget/TailTipWidgets$Pair;, "Lorg/jline/widget/TailTipWidgets$Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_0
    iget-object v2, p0, Lorg/jline/widget/TailTipWidgets;->cmdDescs:Lorg/jline/widget/TailTipWidgets$CommandDescriptions;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->evaluateCommandLine(Ljava/lang/String;I)Lorg/jline/widget/TailTipWidgets$Pair;

    move-result-object v2

    .line 262
    .restart local v2    # "cmdkey":Lorg/jline/widget/TailTipWidgets$Pair;, "Lorg/jline/widget/TailTipWidgets$Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :goto_0
    iget-object v3, p0, Lorg/jline/widget/TailTipWidgets;->cmdDescs:Lorg/jline/widget/TailTipWidgets$CommandDescriptions;

    invoke-virtual {v2}, Lorg/jline/widget/TailTipWidgets$Pair;->getU()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->getDescription(Ljava/lang/String;)Lorg/jline/console/CmdDesc;

    move-result-object v3

    .line 263
    .local v3, "cmdDesc":Lorg/jline/console/CmdDesc;
    if-nez v3, :cond_1

    .line 264
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/jline/widget/TailTipWidgets;->setErrorPattern(Ljava/util/regex/Pattern;)V

    .line 265
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lorg/jline/widget/TailTipWidgets;->setErrorIndex(I)V

    .line 266
    invoke-virtual {p0}, Lorg/jline/widget/TailTipWidgets;->clearDescription()V

    .line 267
    invoke-direct {p0}, Lorg/jline/widget/TailTipWidgets;->resetTailTip()V

    goto :goto_1

    .line 268
    :cond_1
    invoke-virtual {v3}, Lorg/jline/console/CmdDesc;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 269
    invoke-virtual {v2}, Lorg/jline/widget/TailTipWidgets$Pair;->getV()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 270
    invoke-virtual {v3}, Lorg/jline/console/CmdDesc;->isCommand()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->length()I

    move-result v4

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 271
    invoke-direct {p0, p1, v3, v1}, Lorg/jline/widget/TailTipWidgets;->doCommandTailTip(Ljava/lang/String;Lorg/jline/console/CmdDesc;Ljava/util/List;)V

    goto :goto_1

    .line 274
    :cond_2
    iget v4, p0, Lorg/jline/widget/TailTipWidgets;->descriptionSize:I

    invoke-direct {p0, v3, v4}, Lorg/jline/widget/TailTipWidgets;->compileMainDescription(Lorg/jline/console/CmdDesc;I)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/jline/widget/TailTipWidgets;->doDescription(Ljava/util/List;)V

    .line 275
    invoke-virtual {v3}, Lorg/jline/console/CmdDesc;->getErrorPattern()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/jline/widget/TailTipWidgets;->setErrorPattern(Ljava/util/regex/Pattern;)V

    .line 276
    invoke-virtual {v3}, Lorg/jline/console/CmdDesc;->getErrorIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/jline/widget/TailTipWidgets;->setErrorIndex(I)V

    .line 279
    :cond_3
    :goto_1
    const/4 v4, 0x1

    return v4
.end method

.method private resetTailTip()V
    .locals 2

    .line 380
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/jline/widget/TailTipWidgets;->setTailTip(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lorg/jline/widget/TailTipWidgets;->tipType:Lorg/jline/widget/TailTipWidgets$TipType;

    sget-object v1, Lorg/jline/widget/TailTipWidgets$TipType;->TAIL_TIP:Lorg/jline/widget/TailTipWidgets$TipType;

    if-eq v0, v1, :cond_0

    .line 382
    sget-object v0, Lorg/jline/reader/LineReader$SuggestionType;->COMPLETER:Lorg/jline/reader/LineReader$SuggestionType;

    invoke-virtual {p0, v0}, Lorg/jline/widget/TailTipWidgets;->setSuggestionType(Lorg/jline/reader/LineReader$SuggestionType;)V

    .line 384
    :cond_0
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .line 179
    iget-boolean v0, p0, Lorg/jline/widget/TailTipWidgets;->enabled:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lorg/jline/widget/TailTipWidgets;->toggleKeyBindings()Z

    .line 182
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 1

    .line 185
    iget-boolean v0, p0, Lorg/jline/widget/TailTipWidgets;->enabled:Z

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lorg/jline/widget/TailTipWidgets;->toggleKeyBindings()Z

    .line 188
    :cond_0
    return-void
.end method

.method public getDescriptionSize()I
    .locals 1

    .line 158
    iget v0, p0, Lorg/jline/widget/TailTipWidgets;->descriptionSize:I

    return v0
.end method

.method public getTipType()Lorg/jline/widget/TailTipWidgets$TipType;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/jline/widget/TailTipWidgets;->tipType:Lorg/jline/widget/TailTipWidgets$TipType;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lorg/jline/widget/TailTipWidgets;->enabled:Z

    return v0
.end method

.method public setDescriptionCache(Z)V
    .locals 0
    .param p1, "cache"    # Z

    .line 191
    iput-boolean p1, p0, Lorg/jline/widget/TailTipWidgets;->descriptionCache:Z

    .line 192
    return-void
.end method

.method public setDescriptionSize(I)V
    .locals 0
    .param p1, "descriptionSize"    # I

    .line 153
    iput p1, p0, Lorg/jline/widget/TailTipWidgets;->descriptionSize:I

    .line 154
    invoke-virtual {p0, p1}, Lorg/jline/widget/TailTipWidgets;->initDescription(I)V

    .line 155
    return-void
.end method

.method public setTailTips(Ljava/util/Map;)V
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

    .line 149
    .local p1, "tailTips":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/console/CmdDesc;>;"
    iget-object v0, p0, Lorg/jline/widget/TailTipWidgets;->cmdDescs:Lorg/jline/widget/TailTipWidgets$CommandDescriptions;

    invoke-virtual {v0, p1}, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->setDescriptions(Ljava/util/Map;)V

    .line 150
    return-void
.end method

.method public setTipType(Lorg/jline/widget/TailTipWidgets$TipType;)V
    .locals 1
    .param p1, "type"    # Lorg/jline/widget/TailTipWidgets$TipType;

    .line 162
    iput-object p1, p0, Lorg/jline/widget/TailTipWidgets;->tipType:Lorg/jline/widget/TailTipWidgets$TipType;

    .line 163
    sget-object v0, Lorg/jline/widget/TailTipWidgets$TipType;->TAIL_TIP:Lorg/jline/widget/TailTipWidgets$TipType;

    if-ne p1, v0, :cond_0

    .line 164
    sget-object v0, Lorg/jline/reader/LineReader$SuggestionType;->TAIL_TIP:Lorg/jline/reader/LineReader$SuggestionType;

    invoke-virtual {p0, v0}, Lorg/jline/widget/TailTipWidgets;->setSuggestionType(Lorg/jline/reader/LineReader$SuggestionType;)V

    goto :goto_0

    .line 166
    :cond_0
    sget-object v0, Lorg/jline/reader/LineReader$SuggestionType;->COMPLETER:Lorg/jline/reader/LineReader$SuggestionType;

    invoke-virtual {p0, v0}, Lorg/jline/widget/TailTipWidgets;->setSuggestionType(Lorg/jline/reader/LineReader$SuggestionType;)V

    .line 168
    :goto_0
    return-void
.end method

.method public tailtipAcceptLine()Z
    .locals 2

    .line 209
    iget-object v0, p0, Lorg/jline/widget/TailTipWidgets;->tipType:Lorg/jline/widget/TailTipWidgets$TipType;

    sget-object v1, Lorg/jline/widget/TailTipWidgets$TipType;->TAIL_TIP:Lorg/jline/widget/TailTipWidgets$TipType;

    if-eq v0, v1, :cond_0

    .line 210
    sget-object v0, Lorg/jline/reader/LineReader$SuggestionType;->COMPLETER:Lorg/jline/reader/LineReader$SuggestionType;

    invoke-virtual {p0, v0}, Lorg/jline/widget/TailTipWidgets;->setSuggestionType(Lorg/jline/reader/LineReader$SuggestionType;)V

    .line 212
    :cond_0
    invoke-virtual {p0}, Lorg/jline/widget/TailTipWidgets;->clearDescription()V

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jline/widget/TailTipWidgets;->setErrorPattern(Ljava/util/regex/Pattern;)V

    .line 214
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/jline/widget/TailTipWidgets;->setErrorIndex(I)V

    .line 215
    iget-object v0, p0, Lorg/jline/widget/TailTipWidgets;->cmdDescs:Lorg/jline/widget/TailTipWidgets$CommandDescriptions;

    invoke-virtual {v0}, Lorg/jline/widget/TailTipWidgets$CommandDescriptions;->clearTemporaryDescs()V

    .line 216
    const-string v0, "accept-line"

    invoke-direct {p0, v0}, Lorg/jline/widget/TailTipWidgets;->clearTailTip(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public tailtipBackwardDelete()Z
    .locals 1

    .line 220
    invoke-direct {p0}, Lorg/jline/widget/TailTipWidgets;->autopairEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_autopair-backward-delete-char"

    goto :goto_0

    :cond_0
    const-string v0, "backward-delete-char"

    :goto_0
    invoke-direct {p0, v0}, Lorg/jline/widget/TailTipWidgets;->doTailTip(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public tailtipComplete()Z
    .locals 3

    .line 198
    const-string v0, "expand-or-complete"

    invoke-direct {p0, v0}, Lorg/jline/widget/TailTipWidgets;->doTailTip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p0}, Lorg/jline/widget/TailTipWidgets;->lastBinding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "backward-char"

    invoke-virtual {p0, v0}, Lorg/jline/widget/TailTipWidgets;->callWidget(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lorg/jline/widget/TailTipWidgets;->reader:Lorg/jline/reader/LineReader;

    iget-object v1, p0, Lorg/jline/widget/TailTipWidgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v1}, Lorg/jline/reader/LineReader;->getTerminal()Lorg/jline/terminal/Terminal;

    move-result-object v1

    sget-object v2, Lorg/jline/utils/InfoCmp$Capability;->key_right:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v1, v2}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jline/reader/LineReader;->runMacro(Ljava/lang/String;)V

    .line 203
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 205
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public tailtipDelete()Z
    .locals 1

    .line 230
    invoke-virtual {p0}, Lorg/jline/widget/TailTipWidgets;->clearTailTip()V

    .line 231
    const-string v0, "delete-char"

    invoke-direct {p0, v0}, Lorg/jline/widget/TailTipWidgets;->doTailTip(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public tailtipInsert()Z
    .locals 1

    .line 245
    invoke-direct {p0}, Lorg/jline/widget/TailTipWidgets;->autopairEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_autopair-insert"

    goto :goto_0

    :cond_0
    const-string v0, "self-insert"

    :goto_0
    invoke-direct {p0, v0}, Lorg/jline/widget/TailTipWidgets;->doTailTip(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public tailtipKillLine()Z
    .locals 1

    .line 235
    invoke-virtual {p0}, Lorg/jline/widget/TailTipWidgets;->clearTailTip()V

    .line 236
    const-string v0, "kill-line"

    invoke-direct {p0, v0}, Lorg/jline/widget/TailTipWidgets;->doTailTip(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public tailtipKillWholeLine()Z
    .locals 1

    .line 240
    const-string v0, "kill-whole-line"

    invoke-virtual {p0, v0}, Lorg/jline/widget/TailTipWidgets;->callWidget(Ljava/lang/String;)V

    .line 241
    const-string v0, "redisplay"

    invoke-direct {p0, v0}, Lorg/jline/widget/TailTipWidgets;->doTailTip(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public tailtipUpdateStatus()Z
    .locals 1

    .line 249
    const-string v0, "redisplay"

    invoke-direct {p0, v0}, Lorg/jline/widget/TailTipWidgets;->doTailTip(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toggleKeyBindings()Z
    .locals 3

    .line 425
    iget-boolean v0, p0, Lorg/jline/widget/TailTipWidgets;->enabled:Z

    const-string v1, "errors"

    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0}, Lorg/jline/widget/TailTipWidgets;->defaultBindings()Z

    .line 427
    invoke-virtual {p0}, Lorg/jline/widget/TailTipWidgets;->destroyDescription()V

    .line 428
    iget-object v0, p0, Lorg/jline/widget/TailTipWidgets;->reader:Lorg/jline/reader/LineReader;

    iget-object v2, p0, Lorg/jline/widget/TailTipWidgets;->readerErrors:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/jline/reader/LineReader;->setVariable(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 430
    :cond_0
    invoke-direct {p0}, Lorg/jline/widget/TailTipWidgets;->customBindings()V

    .line 431
    iget-boolean v0, p0, Lorg/jline/widget/TailTipWidgets;->descriptionEnabled:Z

    if-eqz v0, :cond_1

    .line 432
    iget v0, p0, Lorg/jline/widget/TailTipWidgets;->descriptionSize:I

    invoke-virtual {p0, v0}, Lorg/jline/widget/TailTipWidgets;->initDescription(I)V

    .line 434
    :cond_1
    iget-object v0, p0, Lorg/jline/widget/TailTipWidgets;->reader:Lorg/jline/reader/LineReader;

    invoke-interface {v0, v1}, Lorg/jline/reader/LineReader;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/widget/TailTipWidgets;->readerErrors:Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lorg/jline/widget/TailTipWidgets;->reader:Lorg/jline/reader/LineReader;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jline/reader/LineReader;->setVariable(Ljava/lang/String;Ljava/lang/Object;)V

    .line 438
    :goto_0
    :try_start_0
    const-string v0, "redraw-line"

    invoke-virtual {p0, v0}, Lorg/jline/widget/TailTipWidgets;->callWidget(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    goto :goto_1

    .line 439
    :catch_0
    move-exception v0

    .line 442
    :goto_1
    iget-boolean v0, p0, Lorg/jline/widget/TailTipWidgets;->enabled:Z

    return v0
.end method

.method public toggleWindow()Z
    .locals 2

    .line 414
    iget-boolean v0, p0, Lorg/jline/widget/TailTipWidgets;->descriptionEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/jline/widget/TailTipWidgets;->descriptionEnabled:Z

    .line 415
    if-eqz v0, :cond_0

    .line 416
    iget v0, p0, Lorg/jline/widget/TailTipWidgets;->descriptionSize:I

    invoke-virtual {p0, v0}, Lorg/jline/widget/TailTipWidgets;->initDescription(I)V

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {p0}, Lorg/jline/widget/TailTipWidgets;->destroyDescription()V

    .line 420
    :goto_0
    const-string v0, "redraw-line"

    invoke-virtual {p0, v0}, Lorg/jline/widget/TailTipWidgets;->callWidget(Ljava/lang/String;)V

    .line 421
    return v1
.end method
