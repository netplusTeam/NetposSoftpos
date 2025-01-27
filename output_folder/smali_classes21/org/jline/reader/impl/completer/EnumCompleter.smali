.class public Lorg/jline/reader/impl/completer/EnumCompleter;
.super Lorg/jline/reader/impl/completer/StringsCompleter;
.source "EnumCompleter.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum<",
            "*>;>;)V"
        }
    .end annotation

    .line 24
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum<*>;>;"
    invoke-direct {p0}, Lorg/jline/reader/impl/completer/StringsCompleter;-><init>()V

    .line 25
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 27
    .local v3, "n":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v4, p0, Lorg/jline/reader/impl/completer/EnumCompleter;->candidates:Ljava/util/Collection;

    new-instance v5, Lorg/jline/reader/Candidate;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 26
    .end local v3    # "n":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method
