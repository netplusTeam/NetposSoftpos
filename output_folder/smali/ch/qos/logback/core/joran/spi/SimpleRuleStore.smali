.class public Lch/qos/logback/core/joran/spi/SimpleRuleStore;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "SimpleRuleStore.java"

# interfaces
.implements Lch/qos/logback/core/joran/spi/RuleStore;


# static fields
.field static KLEENE_STAR:Ljava/lang/String;


# instance fields
.field rules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lch/qos/logback/core/joran/spi/ElementSelector;",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/action/Action;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string v0, "*"

    sput-object v0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->KLEENE_STAR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lch/qos/logback/core/Context;)V
    .locals 1
    .param p1, "context"    # Lch/qos/logback/core/Context;

    .line 42
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    .line 43
    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->setContext(Lch/qos/logback/core/Context;)V

    .line 44
    return-void
.end method

.method private isKleeneStar(Ljava/lang/String;)Z
    .locals 1
    .param p1, "last"    # Ljava/lang/String;

    .line 157
    sget-object v0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->KLEENE_STAR:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSuffixPattern(Lch/qos/logback/core/joran/spi/ElementSelector;)Z
    .locals 4
    .param p1, "p"    # Lch/qos/logback/core/joran/spi/ElementSelector;

    .line 130
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;->get(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->KLEENE_STAR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method


# virtual methods
.method public addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V
    .locals 2
    .param p1, "elementSelector"    # Lch/qos/logback/core/joran/spi/ElementSelector;
    .param p2, "action"    # Lch/qos/logback/core/joran/action/Action;

    .line 51
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->context:Lch/qos/logback/core/Context;

    invoke-virtual {p2, v0}, Lch/qos/logback/core/joran/action/Action;->setContext(Lch/qos/logback/core/Context;)V

    .line 53
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 55
    .local v0, "a4p":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/action/Action;>;"
    if-nez v0, :cond_0

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 57
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Ljava/lang/String;)V
    .locals 4
    .param p1, "elementSelector"    # Lch/qos/logback/core/joran/spi/ElementSelector;
    .param p2, "actionClassName"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    .line 67
    .local v0, "action":Lch/qos/logback/core/joran/action/Action;
    :try_start_0
    const-class v1, Lch/qos/logback/core/joran/action/Action;

    iget-object v2, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->context:Lch/qos/logback/core/Context;

    invoke-static {p2, v1, v2}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/joran/action/Action;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate class ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0, p1, v0}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    .line 74
    :cond_0
    return-void
.end method

.method fullPathMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Ljava/util/List;
    .locals 3
    .param p1, "elementPath"    # Lch/qos/logback/core/joran/spi/ElementPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/joran/spi/ElementPath;",
            ")",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/action/Action;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/joran/spi/ElementSelector;

    .line 101
    .local v1, "selector":Lch/qos/logback/core/joran/spi/ElementSelector;
    invoke-virtual {v1, p1}, Lch/qos/logback/core/joran/spi/ElementSelector;->fullPathMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    return-object v2

    .line 103
    .end local v1    # "selector":Lch/qos/logback/core/joran/spi/ElementSelector;
    :cond_0
    goto :goto_0

    .line 104
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public matchActions(Lch/qos/logback/core/joran/spi/ElementPath;)Ljava/util/List;
    .locals 2
    .param p1, "elementPath"    # Lch/qos/logback/core/joran/spi/ElementPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/joran/spi/ElementPath;",
            ")",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/action/Action;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->fullPathMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .local v1, "actionList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/action/Action;>;"
    if-eqz v0, :cond_0

    .line 87
    return-object v1

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->suffixMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1

    .line 89
    return-object v1

    .line 90
    :cond_1
    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->prefixMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_2

    .line 91
    return-object v1

    .line 92
    :cond_2
    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->middleMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_3

    .line 93
    return-object v1

    .line 95
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method middleMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Ljava/util/List;
    .locals 11
    .param p1, "path"    # Lch/qos/logback/core/joran/spi/ElementPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/joran/spi/ElementPath;",
            ")",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/action/Action;",
            ">;"
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "max":I
    const/4 v1, 0x0

    .line 165
    .local v1, "longestMatchingElementSelector":Lch/qos/logback/core/joran/spi/ElementSelector;
    iget-object v2, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/core/joran/spi/ElementSelector;

    .line 166
    .local v3, "selector":Lch/qos/logback/core/joran/spi/ElementSelector;
    invoke-virtual {v3}, Lch/qos/logback/core/joran/spi/ElementSelector;->peekLast()Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "last":Ljava/lang/String;
    const/4 v5, 0x0

    .line 168
    .local v5, "first":Ljava/lang/String;
    invoke-virtual {v3}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v6, v8, :cond_0

    .line 169
    invoke-virtual {v3, v7}, Lch/qos/logback/core/joran/spi/ElementSelector;->get(I)Ljava/lang/String;

    move-result-object v5

    .line 171
    :cond_0
    invoke-direct {p0, v4}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->isKleeneStar(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0, v5}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->isKleeneStar(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 172
    invoke-virtual {v3}, Lch/qos/logback/core/joran/spi/ElementSelector;->getCopyOfPartList()Ljava/util/List;

    move-result-object v6

    .line 173
    .local v6, "copyOfPartList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_1

    .line 174
    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 175
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 178
    :cond_1
    const/4 v7, 0x0

    .line 179
    .local v7, "r":I
    new-instance v8, Lch/qos/logback/core/joran/spi/ElementSelector;

    invoke-direct {v8, v6}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/util/List;)V

    .line 180
    .local v8, "clone":Lch/qos/logback/core/joran/spi/ElementSelector;
    invoke-virtual {v8, p1}, Lch/qos/logback/core/joran/spi/ElementSelector;->isContainedIn(Lch/qos/logback/core/joran/spi/ElementPath;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 181
    invoke-virtual {v8}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v7

    .line 183
    :cond_2
    if-le v7, v0, :cond_3

    .line 184
    move v0, v7

    .line 185
    move-object v1, v3

    .line 188
    .end local v3    # "selector":Lch/qos/logback/core/joran/spi/ElementSelector;
    .end local v4    # "last":Ljava/lang/String;
    .end local v5    # "first":Ljava/lang/String;
    .end local v6    # "copyOfPartList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "r":I
    .end local v8    # "clone":Lch/qos/logback/core/joran/spi/ElementSelector;
    :cond_3
    goto :goto_0

    .line 190
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    if-eqz v1, :cond_5

    .line 191
    iget-object v2, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    return-object v2

    .line 193
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method prefixMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Ljava/util/List;
    .locals 7
    .param p1, "elementPath"    # Lch/qos/logback/core/joran/spi/ElementPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/joran/spi/ElementPath;",
            ")",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/action/Action;",
            ">;"
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "max":I
    const/4 v1, 0x0

    .line 137
    .local v1, "longestMatchingElementSelector":Lch/qos/logback/core/joran/spi/ElementSelector;
    iget-object v2, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/core/joran/spi/ElementSelector;

    .line 138
    .local v3, "selector":Lch/qos/logback/core/joran/spi/ElementSelector;
    invoke-virtual {v3}, Lch/qos/logback/core/joran/spi/ElementSelector;->peekLast()Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "last":Ljava/lang/String;
    invoke-direct {p0, v4}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->isKleeneStar(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    invoke-virtual {v3, p1}, Lch/qos/logback/core/joran/spi/ElementSelector;->getPrefixMatchLength(Lch/qos/logback/core/joran/spi/ElementPath;)I

    move-result v5

    .line 142
    .local v5, "r":I
    invoke-virtual {v3}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_0

    if-le v5, v0, :cond_0

    .line 143
    move v0, v5

    .line 144
    move-object v1, v3

    .line 147
    .end local v3    # "selector":Lch/qos/logback/core/joran/spi/ElementSelector;
    .end local v4    # "last":Ljava/lang/String;
    .end local v5    # "r":I
    :cond_0
    goto :goto_0

    .line 149
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v1, :cond_2

    .line 150
    iget-object v2, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    return-object v2

    .line 152
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method suffixMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Ljava/util/List;
    .locals 5
    .param p1, "elementPath"    # Lch/qos/logback/core/joran/spi/ElementPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/joran/spi/ElementPath;",
            ")",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/action/Action;",
            ">;"
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "max":I
    const/4 v1, 0x0

    .line 112
    .local v1, "longestMatchingElementSelector":Lch/qos/logback/core/joran/spi/ElementSelector;
    iget-object v2, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/core/joran/spi/ElementSelector;

    .line 113
    .local v3, "selector":Lch/qos/logback/core/joran/spi/ElementSelector;
    invoke-direct {p0, v3}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->isSuffixPattern(Lch/qos/logback/core/joran/spi/ElementSelector;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    invoke-virtual {v3, p1}, Lch/qos/logback/core/joran/spi/ElementSelector;->getTailMatchLength(Lch/qos/logback/core/joran/spi/ElementPath;)I

    move-result v4

    .line 115
    .local v4, "r":I
    if-le v4, v0, :cond_0

    .line 116
    move v0, v4

    .line 117
    move-object v1, v3

    .line 120
    .end local v3    # "selector":Lch/qos/logback/core/joran/spi/ElementSelector;
    .end local v4    # "r":I
    :cond_0
    goto :goto_0

    .line 122
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v1, :cond_2

    .line 123
    iget-object v2, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    return-object v2

    .line 125
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 198
    const-string v0, "  "

    .line 200
    .local v0, "TAB":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v1, "retValue":Ljava/lang/StringBuilder;
    const-string v2, "SimpleRuleStore ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "rules = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
