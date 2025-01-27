.class public Lorg/jline/builtins/Completers$TreeCompleter;
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
    name = "TreeCompleter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/Completers$TreeCompleter$Node;
    }
.end annotation


# instance fields
.field final completer:Lorg/jline/builtins/Completers$RegexCompleter;

.field final completers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/reader/Completer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/builtins/Completers$TreeCompleter$Node;",
            ">;)V"
        }
    .end annotation

    .line 435
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Completers$TreeCompleter$Node;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Completers$TreeCompleter;->completers:Ljava/util/Map;

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v1, p1}, Lorg/jline/builtins/Completers$TreeCompleter;->addRoots(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 438
    new-instance v2, Lorg/jline/builtins/Completers$RegexCompleter;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/jline/builtins/Completers$TreeCompleter$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lorg/jline/builtins/Completers$TreeCompleter$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-direct {v2, v3, v4}, Lorg/jline/builtins/Completers$RegexCompleter;-><init>(Ljava/lang/String;Ljava/util/function/Function;)V

    iput-object v2, p0, Lorg/jline/builtins/Completers$TreeCompleter;->completer:Lorg/jline/builtins/Completers$RegexCompleter;

    .line 439
    return-void
.end method

.method public varargs constructor <init>([Lorg/jline/builtins/Completers$TreeCompleter$Node;)V
    .locals 1
    .param p1, "nodes"    # [Lorg/jline/builtins/Completers$TreeCompleter$Node;

    .line 432
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jline/builtins/Completers$TreeCompleter;-><init>(Ljava/util/List;)V

    .line 433
    return-void
.end method

.method static synthetic lambda$node$0(Ljava/util/List;Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V
    .locals 0
    .param p0, "cands"    # Ljava/util/List;
    .param p1, "r"    # Lorg/jline/reader/LineReader;
    .param p2, "l"    # Lorg/jline/reader/ParsedLine;
    .param p3, "c"    # Ljava/util/List;

    .line 464
    invoke-interface {p3, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static varargs node([Ljava/lang/Object;)Lorg/jline/builtins/Completers$TreeCompleter$Node;
    .locals 8
    .param p0, "objs"    # [Ljava/lang/Object;

    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, "comp":Lorg/jline/reader/Completer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v1, "cands":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v2, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Completers$TreeCompleter$Node;>;"
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, p0, v4

    .line 446
    .local v5, "obj":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 447
    new-instance v6, Lorg/jline/reader/Candidate;

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 448
    :cond_0
    instance-of v6, v5, Lorg/jline/reader/Candidate;

    if-eqz v6, :cond_1

    .line 449
    move-object v6, v5

    check-cast v6, Lorg/jline/reader/Candidate;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 450
    :cond_1
    instance-of v6, v5, Lorg/jline/builtins/Completers$TreeCompleter$Node;

    if-eqz v6, :cond_2

    .line 451
    move-object v6, v5

    check-cast v6, Lorg/jline/builtins/Completers$TreeCompleter$Node;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 452
    :cond_2
    instance-of v6, v5, Lorg/jline/reader/Completer;

    if-eqz v6, :cond_3

    .line 453
    move-object v0, v5

    check-cast v0, Lorg/jline/reader/Completer;

    .line 445
    .end local v5    # "obj":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 455
    .restart local v5    # "obj":Ljava/lang/Object;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 458
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_4
    if-eqz v0, :cond_6

    .line 459
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 462
    new-instance v3, Lorg/jline/builtins/Completers$TreeCompleter$Node;

    invoke-direct {v3, v0, v2}, Lorg/jline/builtins/Completers$TreeCompleter$Node;-><init>(Lorg/jline/reader/Completer;Ljava/util/List;)V

    return-object v3

    .line 460
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 463
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 464
    new-instance v3, Lorg/jline/builtins/Completers$TreeCompleter$Node;

    new-instance v4, Lorg/jline/builtins/Completers$TreeCompleter$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lorg/jline/builtins/Completers$TreeCompleter$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-direct {v3, v4, v2}, Lorg/jline/builtins/Completers$TreeCompleter$Node;-><init>(Lorg/jline/reader/Completer;Ljava/util/List;)V

    return-object v3

    .line 466
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method


# virtual methods
.method addRoots(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lorg/jline/builtins/Completers$TreeCompleter$Node;",
            ">;)V"
        }
    .end annotation

    .line 471
    .local p2, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Completers$TreeCompleter$Node;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 472
    const-string v0, " ( "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const/4 v0, 0x1

    .line 474
    .local v0, "first":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/builtins/Completers$TreeCompleter$Node;

    .line 475
    .local v2, "n":Lorg/jline/builtins/Completers$TreeCompleter$Node;
    if-eqz v0, :cond_0

    .line 476
    const/4 v0, 0x0

    goto :goto_1

    .line 478
    :cond_0
    const-string v3, " | "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jline/builtins/Completers$TreeCompleter;->completers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/jline/builtins/Completers$TreeCompleter;->completers:Ljava/util/Map;

    iget-object v5, v2, Lorg/jline/builtins/Completers$TreeCompleter$Node;->completer:Lorg/jline/reader/Completer;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-object v4, v2, Lorg/jline/builtins/Completers$TreeCompleter$Node;->nodes:Ljava/util/List;

    invoke-virtual {p0, p1, v4}, Lorg/jline/builtins/Completers$TreeCompleter;->addRoots(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 484
    .end local v2    # "n":Lorg/jline/builtins/Completers$TreeCompleter$Node;
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 485
    :cond_1
    const-string v1, " ) "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .end local v0    # "first":Z
    :cond_2
    return-void
.end method

.method public complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V
    .locals 1
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p2, "line"    # Lorg/jline/reader/ParsedLine;
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

    .line 491
    .local p3, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    iget-object v0, p0, Lorg/jline/builtins/Completers$TreeCompleter;->completer:Lorg/jline/builtins/Completers$RegexCompleter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jline/builtins/Completers$RegexCompleter;->complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V

    .line 492
    return-void
.end method
