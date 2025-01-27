.class public Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;
.super Ljava/lang/Object;
.source "QueryParser.java"


# static fields
.field private static final AttributeEvals:[Ljava/lang/String;

.field private static final NTH_AB:Ljava/util/regex/Pattern;

.field private static final NTH_B:Ljava/util/regex/Pattern;

.field private static final combinators:[Ljava/lang/String;


# instance fields
.field private evals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;",
            ">;"
        }
    .end annotation
.end field

.field private query:Ljava/lang/String;

.field private tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 59
    const-string v0, ","

    const-string v1, ">"

    const-string v2, "+"

    const-string/jumbo v3, "~"

    const-string v4, " "

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    .line 60
    const-string v1, "="

    const-string v2, "!="

    const-string v3, "^="

    const-string v4, "$="

    const-string v5, "*="

    const-string/jumbo v6, "~="

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->AttributeEvals:[Ljava/lang/String;

    .line 318
    const-string v0, "((\\+|-)?(\\d+)?)n(\\s*(\\+|-)?\\s*\\d+)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->NTH_AB:Ljava/util/regex/Pattern;

    .line 319
    const-string v0, "(\\+|-)?(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->NTH_B:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 71
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->query:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    .line 73
    return-void
.end method

.method private allElements()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AllElements;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AllElements;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    return-void
.end method

.method private byAttribute()V
    .locals 7

    .line 267
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const/16 v2, 0x5b

    const/16 v3, 0x5d

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "cq":Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;
    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->AttributeEvals:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consumeToAny([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 272
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 273
    const-string v2, "^"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v4, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeStarting;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeStarting;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Attribute;

    invoke-direct {v3, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Attribute;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 278
    :cond_1
    const-string v2, "="

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 281
    :cond_2
    const-string v2, "!="

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 282
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueNot;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueNot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_3
    const-string v2, "^="

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 285
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueStarting;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueStarting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_4
    const-string v2, "$="

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 288
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueEnding;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueEnding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_5
    const-string v2, "*="

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 291
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueContaining;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueContaining;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_6
    const-string/jumbo v2, "~="

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 294
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueMatching;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueMatching;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_7
    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->query:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "Could not parse attribute query \'\'{0}\'\': unexpected token at \'\'{1}\'\'"

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method private byClass()V
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Class;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Class;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method private byId()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Id;

    invoke-direct {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method private byTag()V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consumeElementSelector()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "tagName":Ljava/lang/String;
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 260
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    const-string v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Tag;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    return-void
.end method

.method private combinator(C)V
    .locals 10
    .param p1, "combinator"    # C

    .line 119
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 120
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->consumeSubQuery()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "subQuery":Ljava/lang/String;
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-result-object v1

    .line 125
    .local v1, "newEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    const/4 v2, 0x0

    .line 127
    .local v2, "replaceRightMost":Z
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x2c

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v5, :cond_0

    .line 128
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-object v7, v3

    .line 130
    .local v3, "rootEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .local v7, "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    instance-of v8, v3, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;

    if-eqz v8, :cond_1

    if-eq p1, v4, :cond_1

    .line 131
    move-object v8, v7

    check-cast v8, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;

    invoke-virtual {v8}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;->rightMostEvaluator()Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-result-object v7

    .line 132
    const/4 v2, 0x1

    goto :goto_0

    .line 136
    .end local v3    # "rootEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .end local v7    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    :cond_0
    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;

    iget-object v7, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-direct {v3, v7}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/Collection;)V

    move-object v7, v3

    .line 138
    .restart local v3    # "rootEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .restart local v7    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 141
    const/16 v8, 0x3e

    const/4 v9, 0x2

    if-ne p1, v8, :cond_2

    .line 142
    new-instance v4, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;

    new-array v8, v9, [Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    aput-object v1, v8, v6

    new-instance v6, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$ImmediateParent;

    invoke-direct {v6, v7}, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$ImmediateParent;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    aput-object v6, v8, v5

    invoke-direct {v4, v8}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;-><init>([Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    .end local v7    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .local v4, "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    goto :goto_2

    .line 143
    .end local v4    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .restart local v7    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    :cond_2
    const/16 v8, 0x20

    if-ne p1, v8, :cond_3

    .line 144
    new-instance v4, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;

    new-array v8, v9, [Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    aput-object v1, v8, v6

    new-instance v6, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Parent;

    invoke-direct {v6, v7}, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Parent;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    aput-object v6, v8, v5

    invoke-direct {v4, v8}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;-><init>([Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    .end local v7    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .restart local v4    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    goto :goto_2

    .line 145
    .end local v4    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .restart local v7    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    :cond_3
    const/16 v8, 0x2b

    if-ne p1, v8, :cond_4

    .line 146
    new-instance v4, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;

    new-array v8, v9, [Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    aput-object v1, v8, v6

    new-instance v6, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;

    invoke-direct {v6, v7}, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    aput-object v6, v8, v5

    invoke-direct {v4, v8}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;-><init>([Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    .end local v7    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .restart local v4    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    goto :goto_2

    .line 147
    .end local v4    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .restart local v7    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    :cond_4
    const/16 v8, 0x7e

    if-ne p1, v8, :cond_5

    .line 148
    new-instance v4, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;

    new-array v8, v9, [Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    aput-object v1, v8, v6

    new-instance v6, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$PreviousSibling;

    invoke-direct {v6, v7}, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$PreviousSibling;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    aput-object v6, v8, v5

    invoke-direct {v4, v8}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;-><init>([Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    .end local v7    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .restart local v4    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    goto :goto_2

    .line 149
    .end local v4    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .restart local v7    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    :cond_5
    if-ne p1, v4, :cond_8

    .line 151
    instance-of v4, v7, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;

    if-eqz v4, :cond_6

    .line 152
    move-object v4, v7

    check-cast v4, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;

    .line 153
    .local v4, "or":Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;
    invoke-virtual {v4, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;->add(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    goto :goto_1

    .line 155
    .end local v4    # "or":Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;
    :cond_6
    new-instance v4, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;

    invoke-direct {v4}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;-><init>()V

    .line 156
    .restart local v4    # "or":Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;
    invoke-virtual {v4, v7}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;->add(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    .line 157
    invoke-virtual {v4, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;->add(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    .line 159
    :goto_1
    nop

    .line 160
    .end local v7    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .local v4, "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    nop

    .line 164
    :goto_2
    if-eqz v2, :cond_7

    .line 165
    move-object v5, v3

    check-cast v5, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;

    invoke-virtual {v5, v4}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;->replaceRightMostEvaluator(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    goto :goto_3

    .line 166
    :cond_7
    move-object v3, v4

    .line 167
    :goto_3
    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-void

    .line 162
    .end local v4    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .restart local v7    # "currentEval":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    :cond_8
    new-instance v4, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown combinator: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4
.end method

.method private consumeIndex()I
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "indexS":Ljava/lang/String;
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Index must be numeric"

    invoke-static {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 357
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private consumeSubQuery()Ljava/lang/String;
    .locals 5

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v0, "sq":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 173
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v2, "("

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const/16 v3, 0x28

    const/16 v4, 0x29

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v2, "["

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const/16 v3, 0x5b

    const/16 v4, 0x5d

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    sget-object v2, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    goto :goto_1

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consume()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 182
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private contains(Z)V
    .locals 3
    .param p1, "own"    # Z

    .line 370
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    if-eqz p1, :cond_0

    const-string v1, ":containsOwn"

    goto :goto_0

    :cond_0
    const-string v1, ":contains"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "searchText":Ljava/lang/String;
    const-string v1, ":contains(text) query must not be empty"

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    if-eqz p1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsOwnText;

    invoke-direct {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsOwnText;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsText;

    invoke-direct {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsText;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    :goto_1
    return-void
.end method

.method private cssNthChild(ZZ)V
    .locals 9
    .param p1, "backwards"    # Z
    .param p2, "ofType"    # Z

    .line 322
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "argS":Ljava/lang/String;
    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->NTH_AB:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 324
    .local v1, "mAB":Ljava/util/regex/Matcher;
    sget-object v2, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->NTH_B:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 326
    .local v2, "mB":Ljava/util/regex/Matcher;
    const-string v3, "odd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    const/4 v3, 0x2

    .line 328
    .local v3, "a":I
    const/4 v4, 0x1

    .local v4, "b":I
    goto :goto_0

    .line 329
    .end local v3    # "a":I
    .end local v4    # "b":I
    :cond_0
    const-string v3, "even"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    const/4 v3, 0x2

    .line 331
    .restart local v3    # "a":I
    const/4 v4, 0x0

    .restart local v4    # "b":I
    goto :goto_0

    .line 332
    .end local v3    # "a":I
    .end local v4    # "b":I
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, "^\\+"

    const/4 v7, 0x1

    if-eqz v3, :cond_4

    .line 333
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :cond_2
    move v3, v7

    .line 334
    .restart local v3    # "a":I
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .restart local v4    # "b":I
    :cond_3
    goto :goto_0

    .line 335
    .end local v3    # "a":I
    .end local v4    # "b":I
    :cond_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 336
    const/4 v3, 0x0

    .line 337
    .restart local v3    # "a":I
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 341
    .restart local v4    # "b":I
    :goto_0
    if-eqz p2, :cond_6

    .line 342
    if-eqz p1, :cond_5

    .line 343
    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v6, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthLastOfType;

    invoke-direct {v6, v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthLastOfType;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 345
    :cond_5
    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v6, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthOfType;

    invoke-direct {v6, v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthOfType;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 347
    :cond_6
    if-eqz p1, :cond_7

    .line 348
    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v6, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthLastChild;

    invoke-direct {v6, v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthLastChild;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 350
    :cond_7
    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v6, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthChild;

    invoke-direct {v6, v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthChild;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :goto_1
    return-void

    .line 339
    .end local v3    # "a":I
    .end local v4    # "b":I
    :cond_8
    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v4

    const-string v4, "Could not parse nth-index \'\'{0}\'\': unexpected format"

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method

.method private findElements()V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->byId()V

    goto/16 :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->byClass()V

    goto/16 :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->byTag()V

    goto/16 :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->byAttribute()V

    goto/16 :goto_0

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->allElements()V

    goto/16 :goto_0

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":lt("

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->indexLessThan()V

    goto/16 :goto_0

    .line 198
    :cond_5
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":gt("

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 199
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->indexGreaterThan()V

    goto/16 :goto_0

    .line 200
    :cond_6
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":eq("

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 201
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->indexEquals()V

    goto/16 :goto_0

    .line 202
    :cond_7
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":has("

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 203
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->has()V

    goto/16 :goto_0

    .line 204
    :cond_8
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":contains("

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 205
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->contains(Z)V

    goto/16 :goto_0

    .line 206
    :cond_9
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v2, ":containsOwn("

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    .line 207
    invoke-direct {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->contains(Z)V

    goto/16 :goto_0

    .line 208
    :cond_a
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":matches("

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 209
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->matches(Z)V

    goto/16 :goto_0

    .line 210
    :cond_b
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":matchesOwn("

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 211
    invoke-direct {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->matches(Z)V

    goto/16 :goto_0

    .line 212
    :cond_c
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":not("

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 213
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->not()V

    goto/16 :goto_0

    .line 214
    :cond_d
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":nth-child("

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 215
    invoke-direct {p0, v1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_0

    .line 216
    :cond_e
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":nth-last-child("

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 217
    invoke-direct {p0, v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_0

    .line 218
    :cond_f
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":nth-of-type("

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 219
    invoke-direct {p0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_0

    .line 220
    :cond_10
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":nth-last-of-type("

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 221
    invoke-direct {p0, v2, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_0

    .line 222
    :cond_11
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":first-child"

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 223
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsFirstChild;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsFirstChild;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 224
    :cond_12
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":last-child"

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 225
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsLastChild;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsLastChild;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 226
    :cond_13
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":first-of-type"

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 227
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsFirstOfType;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsFirstOfType;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :cond_14
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":last-of-type"

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 229
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsLastOfType;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsLastOfType;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    :cond_15
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":only-child"

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 231
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsOnlyChild;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsOnlyChild;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_16
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":only-of-type"

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 233
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsOnlyOfType;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsOnlyOfType;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :cond_17
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":empty"

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 235
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsEmpty;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsEmpty;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_18
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":root"

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 237
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsRoot;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsRoot;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_19
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->query:Ljava/lang/String;

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "Could not parse query \'\'{0}\'\': unexpected token at \'\'{1}\'\'"

    invoke-direct {v0, v1, v3}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private has()V
    .locals 4

    .line 362
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":has"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "subQuery":Ljava/lang/String;
    const-string v1, ":has(el) subselect must not be empty"

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Has;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Has;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    return-void
.end method

.method private indexEquals()V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEquals;

    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->consumeIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEquals;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    return-void
.end method

.method private indexGreaterThan()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexGreaterThan;

    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->consumeIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexGreaterThan;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    return-void
.end method

.method private indexLessThan()V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexLessThan;

    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->consumeIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexLessThan;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    return-void
.end method

.method private matches(Z)V
    .locals 4
    .param p1, "own"    # Z

    .line 381
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    if-eqz p1, :cond_0

    const-string v1, ":matchesOwn"

    goto :goto_0

    :cond_0
    const-string v1, ":matches"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "regex":Ljava/lang/String;
    const-string v1, ":matches(regex) query must not be empty"

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    if-eqz p1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$MatchesOwn;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$MatchesOwn;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Matches;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Matches;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    :goto_1
    return-void
.end method

.method private not()V
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":not"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "subQuery":Ljava/lang/String;
    const-string v1, ":not(selector) subselect must not be empty"

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Not;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Not;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .locals 2
    .param p0, "query"    # Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "p":Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->parse()Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method parse()Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 92
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Root;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Root;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consume()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->combinator(C)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->findElements()V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    move-result v0

    .line 103
    .local v0, "seenWhite":Z
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    sget-object v2, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consume()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->combinator(C)V

    goto :goto_1

    .line 105
    :cond_1
    if-eqz v0, :cond_2

    .line 106
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->combinator(C)V

    goto :goto_1

    .line 108
    :cond_2
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->findElements()V

    .line 110
    .end local v0    # "seenWhite":Z
    :goto_1
    goto :goto_0

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 113
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    return-object v0

    .line 115
    :cond_4
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
