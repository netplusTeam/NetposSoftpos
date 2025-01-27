.class public Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;
.super Ljava/lang/Object;
.source "Selector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;
    }
.end annotation


# instance fields
.field private final evaluator:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

.field private final root:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;


# direct methods
.method private constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 0
    .param p1, "evaluator"    # Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .param p2, "root"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 132
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 134
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->evaluator:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    .line 135
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->root:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 136
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "root"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 123
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 125
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->evaluator:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    .line 127
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->root:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 128
    return-void
.end method

.method static filterOut(Ljava/util/Collection;Ljava/util/Collection;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;)",
            "Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;"
        }
    .end annotation

    .line 194
    .local p0, "elements":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    .local p1, "outs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>()V

    .line 195
    .local v0, "output":Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 196
    .local v2, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    const/4 v3, 0x0

    .line 197
    .local v3, "found":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 198
    .local v5, "out":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 199
    const/4 v3, 0x1

    .line 200
    goto :goto_2

    .line 202
    .end local v5    # "out":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    goto :goto_1

    .line 203
    :cond_1
    :goto_2
    if-nez v3, :cond_2

    .line 204
    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v2    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .end local v3    # "found":Z
    :cond_2
    goto :goto_0

    .line 206
    :cond_3
    return-object v0
.end method

.method private select()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->evaluator:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->root:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public static select(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p0, "evaluator"    # Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .param p1, "root"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 158
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->select()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public static select(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "root"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 147
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->select()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public static select(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 9
    .param p0, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;)",
            "Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;"
        }
    .end annotation

    .line 169
    .local p1, "roots":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 170
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 171
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-result-object v0

    .line 172
    .local v0, "evaluator":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v1, "elements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 176
    .local v2, "seenElements":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/Boolean;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 177
    .local v4, "root":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-static {v0, v4}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->select(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v5

    .line 178
    .local v5, "found":Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 179
    .local v7, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v2, v7}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 180
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v7, v8}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .end local v7    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    goto :goto_1

    .line 184
    .end local v4    # "root":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .end local v5    # "found":Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    :cond_1
    goto :goto_0

    .line 185
    :cond_2
    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-direct {v3, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>(Ljava/util/List;)V

    return-object v3
.end method
