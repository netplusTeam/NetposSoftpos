.class public Lorg/jline/builtins/Completers$RegexCompleter;
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
    name = "RegexCompleter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/Completers$RegexCompleter$ArgumentLine;
    }
.end annotation


# instance fields
.field private final completers:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lorg/jline/reader/Completer;",
            ">;"
        }
    .end annotation
.end field

.field private final matcher:Lorg/jline/builtins/NfaMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jline/builtins/NfaMatcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final reader:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/jline/reader/LineReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9x1yeidLl7RKUsd0suohEFO-9O0(Lorg/jline/builtins/Completers$RegexCompleter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jline/builtins/Completers$RegexCompleter;->doMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Function;)V
    .locals 2
    .param p1, "syntax"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lorg/jline/reader/Completer;",
            ">;)V"
        }
    .end annotation

    .line 511
    .local p2, "completers":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lorg/jline/reader/Completer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Completers$RegexCompleter;->reader:Ljava/lang/ThreadLocal;

    .line 512
    new-instance v0, Lorg/jline/builtins/NfaMatcher;

    new-instance v1, Lorg/jline/builtins/Completers$RegexCompleter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/jline/builtins/Completers$RegexCompleter$$ExternalSyntheticLambda1;-><init>(Lorg/jline/builtins/Completers$RegexCompleter;)V

    invoke-direct {v0, p1, v1}, Lorg/jline/builtins/NfaMatcher;-><init>(Ljava/lang/String;Ljava/util/function/BiFunction;)V

    iput-object v0, p0, Lorg/jline/builtins/Completers$RegexCompleter;->matcher:Lorg/jline/builtins/NfaMatcher;

    .line 513
    iput-object p2, p0, Lorg/jline/builtins/Completers$RegexCompleter;->completers:Ljava/util/function/Function;

    .line 514
    return-void
.end method

.method private doMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    iget-object v1, p0, Lorg/jline/builtins/Completers$RegexCompleter;->reader:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/reader/LineReader;

    .line 530
    .local v1, "r":Lorg/jline/reader/LineReader;
    if-eqz v1, :cond_0

    sget-object v2, Lorg/jline/reader/LineReader$Option;->CASE_INSENSITIVE:Lorg/jline/reader/LineReader$Option;

    invoke-interface {v1, v2}, Lorg/jline/reader/LineReader;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 531
    .local v2, "caseInsensitive":Z
    :goto_0
    iget-object v3, p0, Lorg/jline/builtins/Completers$RegexCompleter;->completers:Ljava/util/function/Function;

    invoke-interface {v3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/reader/Completer;

    new-instance v4, Lorg/jline/builtins/Completers$RegexCompleter$ArgumentLine;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, p1, v5}, Lorg/jline/builtins/Completers$RegexCompleter$ArgumentLine;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v1, v4, v0}, Lorg/jline/reader/Completer;->complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V

    .line 532
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/jline/builtins/Completers$RegexCompleter$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1}, Lorg/jline/builtins/Completers$RegexCompleter$$ExternalSyntheticLambda0;-><init>(ZLjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    return v3
.end method

.method static synthetic lambda$doMatch$0(ZLjava/lang/String;Lorg/jline/reader/Candidate;)Z
    .locals 1
    .param p0, "caseInsensitive"    # Z
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "c"    # Lorg/jline/reader/Candidate;

    .line 532
    invoke-virtual {p2}, Lorg/jline/reader/Candidate;->value()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V
    .locals 8
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

    .local p3, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    monitor-enter p0

    .line 518
    :try_start_0
    invoke-interface {p2}, Lorg/jline/reader/ParsedLine;->words()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2}, Lorg/jline/reader/ParsedLine;->wordIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 519
    .local v0, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/jline/builtins/Completers$RegexCompleter;->reader:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 520
    iget-object v1, p0, Lorg/jline/builtins/Completers$RegexCompleter;->matcher:Lorg/jline/builtins/NfaMatcher;

    invoke-virtual {v1, v0}, Lorg/jline/builtins/NfaMatcher;->matchPartial(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    .line 521
    .local v1, "next":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 522
    .local v3, "n":Ljava/lang/String;
    iget-object v4, p0, Lorg/jline/builtins/Completers$RegexCompleter;->completers:Ljava/util/function/Function;

    invoke-interface {v4, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/reader/Completer;

    new-instance v5, Lorg/jline/builtins/Completers$RegexCompleter$ArgumentLine;

    invoke-interface {p2}, Lorg/jline/reader/ParsedLine;->word()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2}, Lorg/jline/reader/ParsedLine;->wordCursor()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lorg/jline/builtins/Completers$RegexCompleter$ArgumentLine;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, p1, v5, p3}, Lorg/jline/reader/Completer;->complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V

    .line 523
    .end local v3    # "n":Ljava/lang/String;
    goto :goto_0

    .line 524
    .end local p0    # "this":Lorg/jline/builtins/Completers$RegexCompleter;
    :cond_0
    iget-object v2, p0, Lorg/jline/builtins/Completers$RegexCompleter;->reader:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit p0

    return-void

    .line 517
    .end local v0    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "next":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "reader":Lorg/jline/reader/LineReader;
    .end local p2    # "line":Lorg/jline/reader/ParsedLine;
    .end local p3    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
