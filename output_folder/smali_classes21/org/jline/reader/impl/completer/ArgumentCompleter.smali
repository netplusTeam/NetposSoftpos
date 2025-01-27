.class public Lorg/jline/reader/impl/completer/ArgumentCompleter;
.super Ljava/lang/Object;
.source "ArgumentCompleter.java"

# interfaces
.implements Lorg/jline/reader/Completer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/reader/impl/completer/ArgumentCompleter$ArgumentLine;
    }
.end annotation


# instance fields
.field private final completers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/reader/Completer;",
            ">;"
        }
    .end annotation
.end field

.field private strict:Z

.field private strictCommand:Z


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jline/reader/Completer;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "completers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jline/reader/Completer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/reader/impl/completer/ArgumentCompleter;->completers:Ljava/util/List;

    .line 36
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jline/reader/impl/completer/ArgumentCompleter;->strict:Z

    .line 37
    iput-boolean v1, p0, Lorg/jline/reader/impl/completer/ArgumentCompleter;->strictCommand:Z

    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    return-void
.end method

.method public varargs constructor <init>([Lorg/jline/reader/Completer;)V
    .locals 1
    .param p1, "completers"    # [Lorg/jline/reader/Completer;

    .line 55
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/completer/ArgumentCompleter;-><init>(Ljava/util/Collection;)V

    .line 56
    return-void
.end method


# virtual methods
.method public complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V
    .locals 12
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

    .line 98
    .local p3, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-interface {p2}, Lorg/jline/reader/ParsedLine;->wordIndex()I

    move-result v0

    if-gez v0, :cond_0

    .line 102
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/completer/ArgumentCompleter;->getCompleters()Ljava/util/List;

    move-result-object v0

    .line 109
    .local v0, "completers":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Completer;>;"
    invoke-interface {p2}, Lorg/jline/reader/ParsedLine;->wordIndex()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/reader/Completer;

    .local v1, "completer":Lorg/jline/reader/Completer;
    goto :goto_0

    .line 113
    .end local v1    # "completer":Lorg/jline/reader/Completer;
    :cond_1
    invoke-interface {p2}, Lorg/jline/reader/ParsedLine;->wordIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/reader/Completer;

    .line 117
    .restart local v1    # "completer":Lorg/jline/reader/Completer;
    :goto_0
    iget-boolean v2, p0, Lorg/jline/reader/impl/completer/ArgumentCompleter;->strictCommand:Z

    xor-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/jline/reader/impl/completer/ArgumentCompleter;->isStrict()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p2}, Lorg/jline/reader/ParsedLine;->wordIndex()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 118
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    move v3, v2

    .line 119
    .local v3, "idx":I
    :goto_2
    if-nez v3, :cond_3

    iget-boolean v4, p0, Lorg/jline/reader/impl/completer/ArgumentCompleter;->strictCommand:Z

    if-nez v4, :cond_3

    .line 120
    goto :goto_7

    .line 122
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/reader/Completer;

    .line 123
    .local v4, "sub":Lorg/jline/reader/Completer;
    invoke-interface {p2}, Lorg/jline/reader/ParsedLine;->words()Ljava/util/List;

    move-result-object v5

    .line 124
    .local v5, "args":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/CharSequence;>;"
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_5
    :goto_3
    const-string v6, ""

    .line 126
    .local v6, "arg":Ljava/lang/String;
    :goto_4
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 127
    .local v7, "subCandidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    new-instance v8, Lorg/jline/reader/impl/completer/ArgumentCompleter$ArgumentLine;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v8, v6, v9}, Lorg/jline/reader/impl/completer/ArgumentCompleter$ArgumentLine;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, p1, v8, v7}, Lorg/jline/reader/Completer;->complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V

    .line 129
    const/4 v8, 0x0

    .line 130
    .local v8, "found":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jline/reader/Candidate;

    .line 131
    .local v10, "cand":Lorg/jline/reader/Candidate;
    invoke-virtual {v10}, Lorg/jline/reader/Candidate;->value()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 132
    const/4 v8, 0x1

    .line 133
    goto :goto_6

    .line 135
    .end local v10    # "cand":Lorg/jline/reader/Candidate;
    :cond_6
    goto :goto_5

    .line 136
    :cond_7
    :goto_6
    if-nez v8, :cond_8

    .line 137
    return-void

    .line 117
    .end local v3    # "idx":I
    .end local v4    # "sub":Lorg/jline/reader/Completer;
    .end local v5    # "args":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/CharSequence;>;"
    .end local v6    # "arg":Ljava/lang/String;
    .end local v7    # "subCandidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .end local v8    # "found":Z
    :cond_8
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 141
    .end local v2    # "i":I
    :cond_9
    invoke-interface {v1, p1, p2, p3}, Lorg/jline/reader/Completer;->complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V

    .line 142
    return-void
.end method

.method public getCompleters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jline/reader/Completer;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/jline/reader/impl/completer/ArgumentCompleter;->completers:Ljava/util/List;

    return-object v0
.end method

.method public isStrict()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lorg/jline/reader/impl/completer/ArgumentCompleter;->strict:Z

    return v0
.end method

.method public setStrict(Z)V
    .locals 0
    .param p1, "strict"    # Z

    .line 65
    iput-boolean p1, p0, Lorg/jline/reader/impl/completer/ArgumentCompleter;->strict:Z

    .line 66
    return-void
.end method

.method public setStrictCommand(Z)V
    .locals 0
    .param p1, "strictCommand"    # Z

    .line 75
    iput-boolean p1, p0, Lorg/jline/reader/impl/completer/ArgumentCompleter;->strictCommand:Z

    .line 76
    return-void
.end method
