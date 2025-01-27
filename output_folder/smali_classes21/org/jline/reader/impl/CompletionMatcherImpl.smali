.class public Lorg/jline/reader/impl/CompletionMatcherImpl;
.super Ljava/lang/Object;
.source "CompletionMatcherImpl.java"

# interfaces
.implements Lorg/jline/reader/CompletionMatcher;


# static fields
.field private static final MAX_SEARCH_TIME:I = 0x3e8


# instance fields
.field private caseInsensitive:Z

.field protected exact:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected matchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private matching:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;>;"
        }
    .end annotation
.end field

.field private searchMaxTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private getCommonStart(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .param p3, "caseInsensitive"    # Z

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 198
    .local v0, "s1":[I
    invoke-virtual {p2}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 199
    .local v1, "s2":[I
    const/4 v2, 0x0

    .line 200
    .local v2, "len":I
    :goto_0
    array-length v3, v0

    array-length v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 201
    aget v3, v0, v2

    .line 202
    .local v3, "ch1":I
    aget v4, v1, v2

    .line 203
    .local v4, "ch2":I
    if-eq v3, v4, :cond_0

    if-eqz p3, :cond_0

    .line 204
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v3

    .line 205
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v4

    .line 206
    if-eq v3, v4, :cond_0

    .line 207
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v3

    .line 208
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v4

    .line 211
    :cond_0
    if-eq v3, v4, :cond_1

    .line 212
    goto :goto_1

    .line 214
    :cond_1
    nop

    .end local v3    # "ch1":I
    .end local v4    # "ch2":I
    add-int/lit8 v2, v2, 0x1

    .line 215
    goto :goto_0

    .line 216
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2}, Ljava/lang/String;-><init>([III)V

    return-object v3
.end method

.method static synthetic lambda$defaultMatchers$10(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "caseInsensitive"    # Z
    .param p1, "wdi"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .line 126
    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$defaultMatchers$11(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "caseInsensitive"    # Z
    .param p1, "wdi"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .line 127
    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$defaultMatchers$12(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 131
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$defaultMatchers$13(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "caseInsensitive"    # Z
    .param p1, "wd"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .line 133
    if-eqz p0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method static synthetic lambda$defaultMatchers$4(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "caseInsensitive"    # Z
    .param p1, "wp"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .line 103
    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$defaultMatchers$5(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "caseInsensitive"    # Z
    .param p1, "wp"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .line 104
    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$defaultMatchers$6(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "caseInsensitive"    # Z
    .param p1, "wp"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .line 107
    if-eqz p0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method static synthetic lambda$defaultMatchers$7(Ljava/util/regex/Pattern;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "p1"    # Ljava/util/regex/Pattern;
    .param p1, "caseInsensitive"    # Z
    .param p2, "s"    # Ljava/lang/String;

    .line 116
    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$defaultMatchers$8(Ljava/util/regex/Pattern;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "p2"    # Ljava/util/regex/Pattern;
    .param p1, "caseInsensitive"    # Z
    .param p2, "s"    # Ljava/lang/String;

    .line 117
    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$defaultMatchers$9(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "caseInsensitive"    # Z
    .param p1, "wd"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .line 120
    if-eqz p0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method static synthetic lambda$matches$2(Ljava/util/Map$Entry;)Ljava/util/stream/Stream;
    .locals 1
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 64
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$reset$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$simpleMatcher$14(Ljava/util/function/Predicate;Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "predicate"    # Ljava/util/function/Predicate;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 140
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$simpleMatcher$15(Ljava/util/function/Predicate;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .param p0, "predicate"    # Ljava/util/function/Predicate;
    .param p1, "m"    # Ljava/util/Map;

    .line 141
    nop

    .line 139
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Predicate;)V

    .line 140
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda20;-><init>()V

    new-instance v2, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda4;-><init>()V

    .line 141
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static synthetic lambda$sort$19(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$typoMatcher$16(Ljava/lang/String;ZILjava/util/Map$Entry;)Z
    .locals 1
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "caseInsensitive"    # Z
    .param p2, "errors"    # I
    .param p3, "e"    # Ljava/util/Map$Entry;

    .line 148
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Lorg/jline/reader/impl/ReaderUtils;->distance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ge v0, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method static synthetic lambda$typoMatcher$17(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "w"    # Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$typoMatcher$18(Ljava/lang/String;ZILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 11
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "caseInsensitive"    # Z
    .param p2, "errors"    # I
    .param p3, "originalGroupName"    # Ljava/lang/String;
    .param p4, "m"    # Ljava/util/Map;

    .line 147
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;ZI)V

    .line 148
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda20;-><init>()V

    new-instance v2, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda4;-><init>()V

    .line 149
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 150
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/reader/Candidate;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 151
    new-instance v1, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v10, Lorg/jline/reader/Candidate;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move-object v3, p0

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v2 .. v9}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 152
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    return-object v0
.end method

.method private sort(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;>;"
        }
    .end annotation

    .line 187
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v0, "sortedCandidates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/reader/Candidate;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/reader/Candidate;

    .line 189
    .local v2, "candidate":Lorg/jline/reader/Candidate;
    nop

    .line 190
    invoke-virtual {v2}, Lorg/jline/reader/Candidate;->value()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jline/utils/AttributedString;->fromAnsi(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jline/utils/AttributedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 191
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v2    # "candidate":Lorg/jline/reader/Candidate;
    goto :goto_0

    .line 193
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected camelMatch(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 6
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "candidate"    # Ljava/lang/String;
    .param p4, "j"    # I

    .line 159
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jline/reader/impl/CompletionMatcherImpl;->searchMaxTime:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 160
    return v1

    .line 161
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, p2, :cond_1

    .line 162
    return v2

    .line 163
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p4, :cond_2

    .line 164
    return v1

    .line 166
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 167
    .local v0, "c":C
    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v0, v3, :cond_3

    .line 168
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p4, 0x1

    invoke-virtual {p0, p1, v3, p3, v4}, Lorg/jline/reader/impl/CompletionMatcherImpl;->camelMatch(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    return v2

    .line 172
    :cond_3
    move v3, p4

    .local v3, "j1":I
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 173
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 174
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_4

    .line 175
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, p1, v4, p3, v5}, Lorg/jline/reader/impl/CompletionMatcherImpl;->camelMatch(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 176
    return v2

    .line 172
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    .end local v3    # "j1":I
    :cond_5
    return v1
.end method

.method public compile(Ljava/util/Map;ZLorg/jline/reader/CompletingParsedLine;ZILjava/lang/String;)V
    .locals 2
    .param p2, "prefix"    # Z
    .param p3, "line"    # Lorg/jline/reader/CompletingParsedLine;
    .param p4, "caseInsensitive"    # Z
    .param p5, "errors"    # I
    .param p6, "originalGroupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/jline/reader/LineReader$Option;",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Lorg/jline/reader/CompletingParsedLine;",
            "ZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Lorg/jline/reader/LineReader$Option;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p4}, Lorg/jline/reader/impl/CompletionMatcherImpl;->reset(Z)V

    .line 45
    invoke-virtual/range {p0 .. p6}, Lorg/jline/reader/impl/CompletionMatcherImpl;->defaultMatchers(Ljava/util/Map;ZLorg/jline/reader/CompletingParsedLine;ZILjava/lang/String;)V

    .line 46
    sget-object v0, Lorg/jline/reader/LineReader$Option;->COMPLETE_MATCHER_CAMELCASE:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, p1}, Lorg/jline/reader/LineReader$Option;->isSet(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lorg/jline/reader/impl/CompletionMatcherImpl;->matchers:Ljava/util/List;

    new-instance v1, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p3}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda14;-><init>(Lorg/jline/reader/impl/CompletionMatcherImpl;Lorg/jline/reader/CompletingParsedLine;)V

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/CompletionMatcherImpl;->simpleMatcher(Ljava/util/function/Predicate;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    return-void
.end method

.method protected defaultMatchers(Ljava/util/Map;ZLorg/jline/reader/CompletingParsedLine;ZILjava/lang/String;)V
    .locals 16
    .param p2, "prefix"    # Z
    .param p3, "line"    # Lorg/jline/reader/CompletingParsedLine;
    .param p4, "caseInsensitive"    # Z
    .param p5, "errors"    # I
    .param p6, "originalGroupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/jline/reader/LineReader$Option;",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Lorg/jline/reader/CompletingParsedLine;",
            "ZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 98
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Lorg/jline/reader/LineReader$Option;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz p2, :cond_1

    .line 99
    invoke-interface/range {p3 .. p3}, Lorg/jline/reader/CompletingParsedLine;->word()Ljava/lang/String;

    move-result-object v9

    .line 100
    .local v9, "wd":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_0
    move-object v10, v9

    .line 101
    .local v10, "wdi":Ljava/lang/String;
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/jline/reader/CompletingParsedLine;->wordCursor()I

    move-result v11

    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 102
    .local v11, "wp":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    new-array v7, v7, [Ljava/util/function/Function;

    new-instance v13, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda0;

    invoke-direct {v13, v2, v11}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda0;-><init>(ZLjava/lang/String;)V

    .line 103
    invoke-virtual {v0, v13}, Lorg/jline/reader/impl/CompletionMatcherImpl;->simpleMatcher(Ljava/util/function/Predicate;)Ljava/util/function/Function;

    move-result-object v13

    aput-object v13, v7, v8

    new-instance v8, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda10;

    invoke-direct {v8, v2, v11}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda10;-><init>(ZLjava/lang/String;)V

    .line 104
    invoke-virtual {v0, v8}, Lorg/jline/reader/impl/CompletionMatcherImpl;->simpleMatcher(Ljava/util/function/Predicate;)Ljava/util/function/Function;

    move-result-object v8

    aput-object v8, v7, v6

    .line 105
    invoke-virtual {v0, v11, v3, v2, v4}, Lorg/jline/reader/impl/CompletionMatcherImpl;->typoMatcher(Ljava/lang/String;IZLjava/lang/String;)Ljava/util/function/Function;

    move-result-object v6

    aput-object v6, v7, v5

    .line 102
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v12, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v12, v0, Lorg/jline/reader/impl/CompletionMatcherImpl;->matchers:Ljava/util/List;

    .line 107
    new-instance v5, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda15;

    invoke-direct {v5, v2, v11}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda15;-><init>(ZLjava/lang/String;)V

    iput-object v5, v0, Lorg/jline/reader/impl/CompletionMatcherImpl;->exact:Ljava/util/function/Predicate;

    .line 108
    .end local v9    # "wd":Ljava/lang/String;
    .end local v10    # "wdi":Ljava/lang/String;
    .end local v11    # "wp":Ljava/lang/String;
    goto/16 :goto_5

    :cond_1
    sget-object v9, Lorg/jline/reader/LineReader$Option;->COMPLETE_IN_WORD:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v9, v1}, Lorg/jline/reader/LineReader$Option;->isSet(Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 109
    invoke-interface/range {p3 .. p3}, Lorg/jline/reader/CompletingParsedLine;->word()Ljava/lang/String;

    move-result-object v9

    .line 110
    .restart local v9    # "wd":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_2
    move-object v10, v9

    .line 111
    .restart local v10    # "wdi":Ljava/lang/String;
    :goto_1
    invoke-interface/range {p3 .. p3}, Lorg/jline/reader/CompletingParsedLine;->wordCursor()I

    move-result v11

    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 112
    .restart local v11    # "wp":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lorg/jline/reader/CompletingParsedLine;->wordCursor()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 113
    .local v12, "ws":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".*"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v12}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 114
    .local v13, "p1":Ljava/util/regex/Pattern;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v11}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v12}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 115
    .local v5, "p2":Ljava/util/regex/Pattern;
    new-instance v14, Ljava/util/ArrayList;

    new-array v7, v7, [Ljava/util/function/Function;

    new-instance v15, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda16;

    invoke-direct {v15, v13, v2}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda16;-><init>(Ljava/util/regex/Pattern;Z)V

    .line 116
    invoke-virtual {v0, v15}, Lorg/jline/reader/impl/CompletionMatcherImpl;->simpleMatcher(Ljava/util/function/Predicate;)Ljava/util/function/Function;

    move-result-object v15

    aput-object v15, v7, v8

    new-instance v8, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda17;

    invoke-direct {v8, v5, v2}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda17;-><init>(Ljava/util/regex/Pattern;Z)V

    .line 117
    invoke-virtual {v0, v8}, Lorg/jline/reader/impl/CompletionMatcherImpl;->simpleMatcher(Ljava/util/function/Predicate;)Ljava/util/function/Function;

    move-result-object v8

    aput-object v8, v7, v6

    .line 118
    invoke-virtual {v0, v10, v3, v2, v4}, Lorg/jline/reader/impl/CompletionMatcherImpl;->typoMatcher(Ljava/lang/String;IZLjava/lang/String;)Ljava/util/function/Function;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v7, v8

    .line 115
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v14, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v14, v0, Lorg/jline/reader/impl/CompletionMatcherImpl;->matchers:Ljava/util/List;

    .line 120
    new-instance v6, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda18;

    invoke-direct {v6, v2, v9}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda18;-><init>(ZLjava/lang/String;)V

    iput-object v6, v0, Lorg/jline/reader/impl/CompletionMatcherImpl;->exact:Ljava/util/function/Predicate;

    .line 121
    .end local v5    # "p2":Ljava/util/regex/Pattern;
    .end local v9    # "wd":Ljava/lang/String;
    .end local v10    # "wdi":Ljava/lang/String;
    .end local v11    # "wp":Ljava/lang/String;
    .end local v12    # "ws":Ljava/lang/String;
    .end local v13    # "p1":Ljava/util/regex/Pattern;
    goto :goto_5

    .line 122
    :cond_3
    invoke-interface/range {p3 .. p3}, Lorg/jline/reader/CompletingParsedLine;->word()Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "wd":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_4
    move-object v9, v5

    .line 124
    .local v9, "wdi":Ljava/lang/String;
    :goto_2
    sget-object v10, Lorg/jline/reader/LineReader$Option;->EMPTY_WORD_OPTIONS:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v10, v1}, Lorg/jline/reader/LineReader$Option;->isSet(Ljava/util/Map;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    goto :goto_3

    .line 131
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    new-instance v7, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda21;

    invoke-direct {v7}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda21;-><init>()V

    invoke-virtual {v0, v7}, Lorg/jline/reader/impl/CompletionMatcherImpl;->simpleMatcher(Ljava/util/function/Predicate;)Ljava/util/function/Function;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v0, Lorg/jline/reader/impl/CompletionMatcherImpl;->matchers:Ljava/util/List;

    goto :goto_4

    .line 125
    :cond_6
    :goto_3
    new-instance v10, Ljava/util/ArrayList;

    new-array v7, v7, [Ljava/util/function/Function;

    new-instance v11, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda19;

    invoke-direct {v11, v2, v9}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda19;-><init>(ZLjava/lang/String;)V

    .line 126
    invoke-virtual {v0, v11}, Lorg/jline/reader/impl/CompletionMatcherImpl;->simpleMatcher(Ljava/util/function/Predicate;)Ljava/util/function/Function;

    move-result-object v11

    aput-object v11, v7, v8

    new-instance v8, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda20;

    invoke-direct {v8, v2, v9}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda20;-><init>(ZLjava/lang/String;)V

    .line 127
    invoke-virtual {v0, v8}, Lorg/jline/reader/impl/CompletionMatcherImpl;->simpleMatcher(Ljava/util/function/Predicate;)Ljava/util/function/Function;

    move-result-object v8

    aput-object v8, v7, v6

    .line 128
    invoke-virtual {v0, v9, v3, v2, v4}, Lorg/jline/reader/impl/CompletionMatcherImpl;->typoMatcher(Ljava/lang/String;IZLjava/lang/String;)Ljava/util/function/Function;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v7, v8

    .line 125
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, v0, Lorg/jline/reader/impl/CompletionMatcherImpl;->matchers:Ljava/util/List;

    .line 133
    :goto_4
    new-instance v6, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda22;

    invoke-direct {v6, v2, v5}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda22;-><init>(ZLjava/lang/String;)V

    iput-object v6, v0, Lorg/jline/reader/impl/CompletionMatcherImpl;->exact:Ljava/util/function/Predicate;

    .line 135
    .end local v5    # "wd":Ljava/lang/String;
    .end local v9    # "wdi":Ljava/lang/String;
    :goto_5
    return-void
.end method

.method public exactMatch()Lorg/jline/reader/Candidate;
    .locals 2

    .line 70
    iget-object v0, p0, Lorg/jline/reader/impl/CompletionMatcherImpl;->matching:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda8;-><init>()V

    .line 74
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda9;-><init>(Lorg/jline/reader/impl/CompletionMatcherImpl;)V

    .line 75
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/reader/Candidate;

    .line 73
    return-object v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getCommonPrefix()Ljava/lang/String;
    .locals 4

    .line 81
    iget-object v0, p0, Lorg/jline/reader/impl/CompletionMatcherImpl;->matching:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "commonPrefix":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 86
    .local v2, "key":Ljava/lang/String;
    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_1

    :cond_0
    iget-boolean v3, p0, Lorg/jline/reader/impl/CompletionMatcherImpl;->caseInsensitive:Z

    invoke-direct {p0, v1, v2, v3}, Lorg/jline/reader/impl/CompletionMatcherImpl;->getCommonStart(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v1, v3

    .line 87
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 88
    :cond_1
    return-object v1

    .line 82
    .end local v1    # "commonPrefix":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method synthetic lambda$compile$1$org-jline-reader-impl-CompletionMatcherImpl(Lorg/jline/reader/CompletingParsedLine;Ljava/lang/String;)Z
    .locals 3
    .param p1, "line"    # Lorg/jline/reader/CompletingParsedLine;
    .param p2, "candidate"    # Ljava/lang/String;

    .line 47
    invoke-interface {p1}, Lorg/jline/reader/CompletingParsedLine;->word()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/jline/reader/CompletingParsedLine;->word()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p2, v2}, Lorg/jline/reader/impl/CompletionMatcherImpl;->camelMatch(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$exactMatch$3$org-jline-reader-impl-CompletionMatcherImpl(Lorg/jline/reader/Candidate;)Z
    .locals 2
    .param p1, "c"    # Lorg/jline/reader/Candidate;

    .line 75
    iget-object v0, p0, Lorg/jline/reader/impl/CompletionMatcherImpl;->exact:Ljava/util/function/Predicate;

    invoke-virtual {p1}, Lorg/jline/reader/Candidate;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;"
        }
    .end annotation

    .line 54
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jline/reader/impl/CompletionMatcherImpl;->searchMaxTime:J

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/reader/impl/CompletionMatcherImpl;->matching:Ljava/util/Map;

    .line 56
    invoke-direct {p0, p1}, Lorg/jline/reader/impl/CompletionMatcherImpl;->sort(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 58
    .local v0, "sortedCandidates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/reader/Candidate;>;>;"
    iget-object v1, p0, Lorg/jline/reader/impl/CompletionMatcherImpl;->matchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Function;

    .line 59
    .local v2, "matcher":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/reader/Candidate;>;>;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/reader/Candidate;>;>;>;"
    invoke-interface {v2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    iput-object v3, p0, Lorg/jline/reader/impl/CompletionMatcherImpl;->matching:Ljava/util/Map;

    .line 60
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    goto :goto_1

    .line 63
    .end local v2    # "matcher":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/reader/Candidate;>;>;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/reader/Candidate;>;>;>;"
    :cond_0
    goto :goto_0

    .line 64
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/jline/reader/impl/CompletionMatcherImpl;->matching:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/jline/reader/impl/CompletionMatcherImpl;->matching:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_2

    .line 65
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    :goto_2
    return-object v1
.end method

.method protected reset(Z)V
    .locals 1
    .param p1, "caseInsensitive"    # Z

    .line 35
    iput-boolean p1, p0, Lorg/jline/reader/impl/CompletionMatcherImpl;->caseInsensitive:Z

    .line 36
    new-instance v0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda12;-><init>()V

    iput-object v0, p0, Lorg/jline/reader/impl/CompletionMatcherImpl;->exact:Ljava/util/function/Predicate;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/reader/impl/CompletionMatcherImpl;->matchers:Ljava/util/List;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/reader/impl/CompletionMatcherImpl;->matching:Ljava/util/Map;

    .line 39
    return-void
.end method

.method protected simpleMatcher(Ljava/util/function/Predicate;)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;>;>;"
        }
    .end annotation

    .line 139
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    new-instance v0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda13;-><init>(Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method protected typoMatcher(Ljava/lang/String;IZLjava/lang/String;)Ljava/util/function/Function;
    .locals 1
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "errors"    # I
    .param p3, "caseInsensitive"    # Z
    .param p4, "originalGroupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;>;>;"
        }
    .end annotation

    .line 146
    new-instance v0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p3, p2, p4}, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    return-object v0
.end method
