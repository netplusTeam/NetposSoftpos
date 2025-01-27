.class public final Lcom/google/common/collect/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;,
        Lcom/google/common/collect/Streams$LongFunctionWithIndex;,
        Lcom/google/common/collect/Streams$IntFunctionWithIndex;,
        Lcom/google/common/collect/Streams$MapWithIndexSpliterator;,
        Lcom/google/common/collect/Streams$FunctionWithIndex;,
        Lcom/google/common/collect/Streams$TemporaryPair;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeAll([Ljava/util/stream/BaseStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/stream/BaseStream<",
            "**>;)V"
        }
    .end annotation

    .line 155
    .local p0, "toClose":[Ljava/util/stream/BaseStream;, "[Ljava/util/stream/BaseStream<**>;"
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 157
    .local v2, "stream":Ljava/util/stream/BaseStream;, "Ljava/util/stream/BaseStream<**>;"
    invoke-interface {v2}, Ljava/util/stream/BaseStream;->close()V

    .line 155
    .end local v2    # "stream":Ljava/util/stream/BaseStream;, "Ljava/util/stream/BaseStream<**>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method public static varargs concat([Ljava/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;
    .locals 11
    .param p0, "streams"    # [Ljava/util/stream/DoubleStream;

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "isParallel":Z
    const/16 v1, 0x150

    .line 271
    .local v1, "characteristics":I
    const-wide/16 v2, 0x0

    .line 272
    .local v2, "estimatedSize":J
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    array-length v5, p0

    invoke-direct {v4, v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 274
    .local v4, "splitrsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/util/Spliterator$OfDouble;>;"
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, p0, v6

    .line 275
    .local v7, "stream":Ljava/util/stream/DoubleStream;
    invoke-interface {v7}, Ljava/util/stream/DoubleStream;->isParallel()Z

    move-result v8

    or-int/2addr v0, v8

    .line 276
    invoke-interface {v7}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v8

    .line 277
    .local v8, "splitr":Ljava/util/Spliterator$OfDouble;
    invoke-virtual {v4, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 278
    invoke-interface {v8}, Ljava/util/Spliterator$OfDouble;->characteristics()I

    move-result v9

    and-int/2addr v1, v9

    .line 279
    invoke-interface {v8}, Ljava/util/Spliterator$OfDouble;->estimateSize()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v2

    .line 274
    .end local v7    # "stream":Ljava/util/stream/DoubleStream;
    .end local v8    # "splitr":Ljava/util/Spliterator$OfDouble;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 281
    :cond_0
    nop

    .line 283
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->spliterator()Ljava/util/Spliterator;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda5;-><init>()V

    .line 282
    invoke-static {v5, v6, v1, v2, v3}, Lcom/google/common/collect/CollectSpliterators;->flatMapToDouble(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator$OfDouble;

    move-result-object v5

    .line 281
    invoke-static {v5, v0}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda6;-><init>([Ljava/util/stream/DoubleStream;)V

    .line 288
    invoke-interface {v5, v6}, Ljava/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v5

    check-cast v5, Ljava/util/stream/DoubleStream;

    .line 281
    return-object v5
.end method

.method public static varargs concat([Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;
    .locals 11
    .param p0, "streams"    # [Ljava/util/stream/IntStream;

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "isParallel":Z
    const/16 v1, 0x150

    .line 207
    .local v1, "characteristics":I
    const-wide/16 v2, 0x0

    .line 208
    .local v2, "estimatedSize":J
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    array-length v5, p0

    invoke-direct {v4, v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 210
    .local v4, "splitrsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/util/Spliterator$OfInt;>;"
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, p0, v6

    .line 211
    .local v7, "stream":Ljava/util/stream/IntStream;
    invoke-interface {v7}, Ljava/util/stream/IntStream;->isParallel()Z

    move-result v8

    or-int/2addr v0, v8

    .line 212
    invoke-interface {v7}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v8

    .line 213
    .local v8, "splitr":Ljava/util/Spliterator$OfInt;
    invoke-virtual {v4, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 214
    invoke-interface {v8}, Ljava/util/Spliterator$OfInt;->characteristics()I

    move-result v9

    and-int/2addr v1, v9

    .line 215
    invoke-interface {v8}, Ljava/util/Spliterator$OfInt;->estimateSize()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v2

    .line 210
    .end local v7    # "stream":Ljava/util/stream/IntStream;
    .end local v8    # "splitr":Ljava/util/Spliterator$OfInt;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 217
    :cond_0
    nop

    .line 219
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->spliterator()Ljava/util/Spliterator;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda9;

    invoke-direct {v6}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda9;-><init>()V

    .line 218
    invoke-static {v5, v6, v1, v2, v3}, Lcom/google/common/collect/CollectSpliterators;->flatMapToInt(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator$OfInt;

    move-result-object v5

    .line 217
    invoke-static {v5, v0}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda10;

    invoke-direct {v6, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda10;-><init>([Ljava/util/stream/IntStream;)V

    .line 224
    invoke-interface {v5, v6}, Ljava/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v5

    check-cast v5, Ljava/util/stream/IntStream;

    .line 217
    return-object v5
.end method

.method public static varargs concat([Ljava/util/stream/LongStream;)Ljava/util/stream/LongStream;
    .locals 11
    .param p0, "streams"    # [Ljava/util/stream/LongStream;

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "isParallel":Z
    const/16 v1, 0x150

    .line 239
    .local v1, "characteristics":I
    const-wide/16 v2, 0x0

    .line 240
    .local v2, "estimatedSize":J
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    array-length v5, p0

    invoke-direct {v4, v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 242
    .local v4, "splitrsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/util/Spliterator$OfLong;>;"
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, p0, v6

    .line 243
    .local v7, "stream":Ljava/util/stream/LongStream;
    invoke-interface {v7}, Ljava/util/stream/LongStream;->isParallel()Z

    move-result v8

    or-int/2addr v0, v8

    .line 244
    invoke-interface {v7}, Ljava/util/stream/LongStream;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v8

    .line 245
    .local v8, "splitr":Ljava/util/Spliterator$OfLong;
    invoke-virtual {v4, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 246
    invoke-interface {v8}, Ljava/util/Spliterator$OfLong;->characteristics()I

    move-result v9

    and-int/2addr v1, v9

    .line 247
    invoke-interface {v8}, Ljava/util/Spliterator$OfLong;->estimateSize()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v2

    .line 242
    .end local v7    # "stream":Ljava/util/stream/LongStream;
    .end local v8    # "splitr":Ljava/util/Spliterator$OfLong;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 249
    :cond_0
    nop

    .line 251
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->spliterator()Ljava/util/Spliterator;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda17;

    invoke-direct {v6}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda17;-><init>()V

    .line 250
    invoke-static {v5, v6, v1, v2, v3}, Lcom/google/common/collect/CollectSpliterators;->flatMapToLong(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator$OfLong;

    move-result-object v5

    .line 249
    invoke-static {v5, v0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda18;

    invoke-direct {v6, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda18;-><init>([Ljava/util/stream/LongStream;)V

    .line 256
    invoke-interface {v5, v6}, Ljava/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v5

    check-cast v5, Ljava/util/stream/LongStream;

    .line 249
    return-object v5
.end method

.method public static varargs concat([Ljava/util/stream/Stream;)Ljava/util/stream/Stream;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/stream/Stream<",
            "+TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 173
    .local p0, "streams":[Ljava/util/stream/Stream;, "[Ljava/util/stream/Stream<+TT;>;"
    const/4 v0, 0x0

    .line 174
    .local v0, "isParallel":Z
    const/16 v1, 0x150

    .line 175
    .local v1, "characteristics":I
    const-wide/16 v2, 0x0

    .line 176
    .local v2, "estimatedSize":J
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    array-length v5, p0

    invoke-direct {v4, v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 178
    .local v4, "splitrsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/util/Spliterator<+TT;>;>;"
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, p0, v6

    .line 179
    .local v7, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+TT;>;"
    invoke-interface {v7}, Ljava/util/stream/Stream;->isParallel()Z

    move-result v8

    or-int/2addr v0, v8

    .line 180
    invoke-interface {v7}, Ljava/util/stream/Stream;->spliterator()Ljava/util/Spliterator;

    move-result-object v8

    .line 181
    .local v8, "splitr":Ljava/util/Spliterator;, "Ljava/util/Spliterator<+TT;>;"
    invoke-virtual {v4, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 182
    invoke-interface {v8}, Ljava/util/Spliterator;->characteristics()I

    move-result v9

    and-int/2addr v1, v9

    .line 183
    invoke-interface {v8}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v2

    .line 178
    .end local v7    # "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+TT;>;"
    .end local v8    # "splitr":Ljava/util/Spliterator;, "Ljava/util/Spliterator<+TT;>;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 185
    :cond_0
    nop

    .line 187
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->spliterator()Ljava/util/Spliterator;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda3;-><init>()V

    .line 186
    invoke-static {v5, v6, v1, v2, v3}, Lcom/google/common/collect/CollectSpliterators;->flatMap(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;

    move-result-object v5

    .line 185
    invoke-static {v5, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda4;-><init>([Ljava/util/stream/Stream;)V

    .line 192
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v5

    check-cast v5, Ljava/util/stream/Stream;

    .line 185
    return-object v5
.end method

.method public static findLast(Ljava/util/stream/Stream;)Ljava/util/Optional;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 876
    .local p0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    new-instance v0, Lcom/google/common/collect/Streams$1OptionalState;

    invoke-direct {v0}, Lcom/google/common/collect/Streams$1OptionalState;-><init>()V

    .line 878
    .local v0, "state":Lcom/google/common/collect/Streams$1OptionalState;
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 879
    .local v1, "splits":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/util/Spliterator<TT;>;>;"
    invoke-interface {p0}, Ljava/util/stream/Stream;->spliterator()Ljava/util/Spliterator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 881
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 882
    invoke-interface {v1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Spliterator;

    .line 884
    .local v2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-interface {v2}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 885
    goto :goto_0

    .line 890
    :cond_1
    const/16 v3, 0x4000

    invoke-interface {v2, v3}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 893
    :goto_1
    invoke-interface {v2}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v3

    .line 894
    .local v3, "prefix":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_2

    .line 895
    goto :goto_2

    .line 896
    :cond_2
    invoke-interface {v2}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_3

    .line 897
    move-object v2, v3

    .line 898
    goto :goto_2

    .line 900
    .end local v3    # "prefix":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    :cond_3
    goto :goto_1

    .line 903
    :cond_4
    :goto_2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda16;

    invoke-direct {v3, v0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda16;-><init>(Lcom/google/common/collect/Streams$1OptionalState;)V

    invoke-interface {v2, v3}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 904
    invoke-virtual {v0}, Lcom/google/common/collect/Streams$1OptionalState;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    return-object v3

    .line 907
    :cond_5
    invoke-interface {v2}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v3

    .line 908
    .restart local v3    # "prefix":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_6

    goto :goto_3

    .line 917
    :cond_6
    invoke-interface {v1, v3}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 918
    invoke-interface {v1, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 919
    .end local v2    # "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .end local v3    # "prefix":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    goto :goto_0

    .line 910
    .restart local v2    # "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .restart local v3    # "prefix":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    :cond_7
    :goto_3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda16;

    invoke-direct {v4, v0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda16;-><init>(Lcom/google/common/collect/Streams$1OptionalState;)V

    invoke-interface {v2, v4}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 911
    iget-boolean v4, v0, Lcom/google/common/collect/Streams$1OptionalState;->set:Z

    if-eqz v4, :cond_0

    .line 912
    invoke-virtual {v0}, Lcom/google/common/collect/Streams$1OptionalState;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    return-object v4

    .line 920
    .end local v2    # "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .end local v3    # "prefix":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    :cond_8
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    return-object v2
.end method

.method public static findLast(Ljava/util/stream/DoubleStream;)Ljava/util/OptionalDouble;
    .locals 3
    .param p0, "stream"    # Ljava/util/stream/DoubleStream;

    .line 976
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Streams;->findLast(Ljava/util/stream/Stream;)Ljava/util/Optional;

    move-result-object v0

    .line 977
    .local v0, "boxedLast":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Double;>;"
    new-instance v1, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/OptionalDouble;

    return-object v1
.end method

.method public static findLast(Ljava/util/stream/IntStream;)Ljava/util/OptionalInt;
    .locals 3
    .param p0, "stream"    # Ljava/util/stream/IntStream;

    .line 938
    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Streams;->findLast(Ljava/util/stream/Stream;)Ljava/util/Optional;

    move-result-object v0

    .line 939
    .local v0, "boxedLast":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda20;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/OptionalInt;

    return-object v1
.end method

.method public static findLast(Ljava/util/stream/LongStream;)Ljava/util/OptionalLong;
    .locals 3
    .param p0, "stream"    # Ljava/util/stream/LongStream;

    .line 957
    invoke-interface {p0}, Ljava/util/stream/LongStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Streams;->findLast(Ljava/util/stream/Stream;)Ljava/util/Optional;

    move-result-object v0

    .line 958
    .local v0, "boxedLast":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Long;>;"
    new-instance v1, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/OptionalLong;

    return-object v1
.end method

.method public static forEachPair(Ljava/util/stream/Stream;Ljava/util/stream/Stream;Ljava/util/function/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TA;>;",
            "Ljava/util/stream/Stream<",
            "TB;>;",
            "Ljava/util/function/BiConsumer<",
            "-TA;-TB;>;)V"
        }
    .end annotation

    .line 382
    .local p0, "streamA":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TA;>;"
    .local p1, "streamB":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TB;>;"
    .local p2, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TA;-TB;>;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-interface {p0}, Ljava/util/stream/Stream;->isParallel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/stream/Stream;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 387
    :cond_0
    invoke-interface {p0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 388
    .local v0, "iterA":Ljava/util/Iterator;, "Ljava/util/Iterator<TA;>;"
    invoke-interface {p1}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 389
    .local v1, "iterB":Ljava/util/Iterator;, "Ljava/util/Iterator<TB;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 385
    .end local v0    # "iterA":Ljava/util/Iterator;, "Ljava/util/Iterator<TA;>;"
    .end local v1    # "iterB":Ljava/util/Iterator;, "Ljava/util/Iterator<TB;>;"
    :cond_1
    :goto_1
    new-instance v0, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Streams;->zip(Ljava/util/stream/Stream;Ljava/util/stream/Stream;Ljava/util/function/BiFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda15;

    invoke-direct {v1, p2}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda15;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 393
    :cond_2
    return-void
.end method

.method static synthetic lambda$concat$0(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 0
    .param p0, "splitr"    # Ljava/util/Spliterator;

    .line 188
    return-object p0
.end method

.method static synthetic lambda$concat$1([Ljava/util/stream/Stream;)V
    .locals 0
    .param p0, "streams"    # [Ljava/util/stream/Stream;

    .line 192
    invoke-static {p0}, Lcom/google/common/collect/Streams;->closeAll([Ljava/util/stream/BaseStream;)V

    return-void
.end method

.method static synthetic lambda$concat$2(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;
    .locals 0
    .param p0, "splitr"    # Ljava/util/Spliterator$OfInt;

    .line 220
    return-object p0
.end method

.method static synthetic lambda$concat$3([Ljava/util/stream/IntStream;)V
    .locals 0
    .param p0, "streams"    # [Ljava/util/stream/IntStream;

    .line 224
    invoke-static {p0}, Lcom/google/common/collect/Streams;->closeAll([Ljava/util/stream/BaseStream;)V

    return-void
.end method

.method static synthetic lambda$concat$4(Ljava/util/Spliterator$OfLong;)Ljava/util/Spliterator$OfLong;
    .locals 0
    .param p0, "splitr"    # Ljava/util/Spliterator$OfLong;

    .line 252
    return-object p0
.end method

.method static synthetic lambda$concat$5([Ljava/util/stream/LongStream;)V
    .locals 0
    .param p0, "streams"    # [Ljava/util/stream/LongStream;

    .line 256
    invoke-static {p0}, Lcom/google/common/collect/Streams;->closeAll([Ljava/util/stream/BaseStream;)V

    return-void
.end method

.method static synthetic lambda$concat$6(Ljava/util/Spliterator$OfDouble;)Ljava/util/Spliterator$OfDouble;
    .locals 0
    .param p0, "splitr"    # Ljava/util/Spliterator$OfDouble;

    .line 284
    return-object p0
.end method

.method static synthetic lambda$concat$7([Ljava/util/stream/DoubleStream;)V
    .locals 0
    .param p0, "streams"    # [Ljava/util/stream/DoubleStream;

    .line 288
    invoke-static {p0}, Lcom/google/common/collect/Streams;->closeAll([Ljava/util/stream/BaseStream;)V

    return-void
.end method

.method static synthetic lambda$forEachPair$8(Ljava/util/function/BiConsumer;Lcom/google/common/collect/Streams$TemporaryPair;)V
    .locals 2
    .param p0, "consumer"    # Ljava/util/function/BiConsumer;
    .param p1, "pair"    # Lcom/google/common/collect/Streams$TemporaryPair;

    .line 385
    iget-object v0, p1, Lcom/google/common/collect/Streams$TemporaryPair;->a:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/common/collect/Streams$TemporaryPair;->b:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static mapWithIndex(Ljava/util/stream/DoubleStream;Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;)Ljava/util/stream/Stream;
    .locals 10
    .param p0, "stream"    # Ljava/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/DoubleStream;",
            "Lcom/google/common/collect/Streams$DoubleFunctionWithIndex<",
            "TR;>;)",
            "Ljava/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 675
    .local p1, "function":Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;, "Lcom/google/common/collect/Streams$DoubleFunctionWithIndex<TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->isParallel()Z

    move-result v0

    .line 678
    .local v0, "isParallel":Z
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v1

    .line 680
    .local v1, "fromSpliterator":Ljava/util/Spliterator$OfDouble;
    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Ljava/util/Spliterator$OfDouble;->hasCharacteristics(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 681
    invoke-static {v1}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/PrimitiveIterator$OfDouble;

    move-result-object v2

    .line 682
    .local v2, "fromIterator":Ljava/util/PrimitiveIterator$OfDouble;
    new-instance v9, Lcom/google/common/collect/Streams$5;

    .line 684
    invoke-interface {v1}, Ljava/util/Spliterator$OfDouble;->estimateSize()J

    move-result-wide v4

    .line 685
    invoke-interface {v1}, Ljava/util/Spliterator$OfDouble;->characteristics()I

    move-result v3

    and-int/lit8 v6, v3, 0x50

    move-object v3, v9

    move-object v7, v2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$5;-><init>(JILjava/util/PrimitiveIterator$OfDouble;Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;)V

    .line 682
    invoke-static {v9, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v3

    .line 698
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda19;

    invoke-direct {v4, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda19;-><init>(Ljava/util/stream/DoubleStream;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v3

    check-cast v3, Ljava/util/stream/Stream;

    .line 682
    return-object v3

    .line 727
    .end local v2    # "fromIterator":Ljava/util/PrimitiveIterator$OfDouble;
    :cond_0
    new-instance v2, Lcom/google/common/collect/Streams$4Splitr;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/google/common/collect/Streams$4Splitr;-><init>(Ljava/util/Spliterator$OfDouble;JLcom/google/common/collect/Streams$DoubleFunctionWithIndex;)V

    invoke-static {v2, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda19;-><init>(Ljava/util/stream/DoubleStream;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Stream;

    return-object v2
.end method

.method public static mapWithIndex(Ljava/util/stream/IntStream;Lcom/google/common/collect/Streams$IntFunctionWithIndex;)Ljava/util/stream/Stream;
    .locals 10
    .param p0, "stream"    # Ljava/util/stream/IntStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/IntStream;",
            "Lcom/google/common/collect/Streams$IntFunctionWithIndex<",
            "TR;>;)",
            "Ljava/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 515
    .local p1, "function":Lcom/google/common/collect/Streams$IntFunctionWithIndex;, "Lcom/google/common/collect/Streams$IntFunctionWithIndex<TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-interface {p0}, Ljava/util/stream/IntStream;->isParallel()Z

    move-result v0

    .line 518
    .local v0, "isParallel":Z
    invoke-interface {p0}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v1

    .line 520
    .local v1, "fromSpliterator":Ljava/util/Spliterator$OfInt;
    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Ljava/util/Spliterator$OfInt;->hasCharacteristics(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 521
    invoke-static {v1}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;

    move-result-object v2

    .line 522
    .local v2, "fromIterator":Ljava/util/PrimitiveIterator$OfInt;
    new-instance v9, Lcom/google/common/collect/Streams$3;

    .line 524
    invoke-interface {v1}, Ljava/util/Spliterator$OfInt;->estimateSize()J

    move-result-wide v4

    .line 525
    invoke-interface {v1}, Ljava/util/Spliterator$OfInt;->characteristics()I

    move-result v3

    and-int/lit8 v6, v3, 0x50

    move-object v3, v9

    move-object v7, v2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$3;-><init>(JILjava/util/PrimitiveIterator$OfInt;Lcom/google/common/collect/Streams$IntFunctionWithIndex;)V

    .line 522
    invoke-static {v9, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v3

    .line 538
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda2;-><init>(Ljava/util/stream/IntStream;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v3

    check-cast v3, Ljava/util/stream/Stream;

    .line 522
    return-object v3

    .line 567
    .end local v2    # "fromIterator":Ljava/util/PrimitiveIterator$OfInt;
    :cond_0
    new-instance v2, Lcom/google/common/collect/Streams$2Splitr;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/google/common/collect/Streams$2Splitr;-><init>(Ljava/util/Spliterator$OfInt;JLcom/google/common/collect/Streams$IntFunctionWithIndex;)V

    invoke-static {v2, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda2;-><init>(Ljava/util/stream/IntStream;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Stream;

    return-object v2
.end method

.method public static mapWithIndex(Ljava/util/stream/LongStream;Lcom/google/common/collect/Streams$LongFunctionWithIndex;)Ljava/util/stream/Stream;
    .locals 10
    .param p0, "stream"    # Ljava/util/stream/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/LongStream;",
            "Lcom/google/common/collect/Streams$LongFunctionWithIndex<",
            "TR;>;)",
            "Ljava/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 595
    .local p1, "function":Lcom/google/common/collect/Streams$LongFunctionWithIndex;, "Lcom/google/common/collect/Streams$LongFunctionWithIndex<TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    invoke-interface {p0}, Ljava/util/stream/LongStream;->isParallel()Z

    move-result v0

    .line 598
    .local v0, "isParallel":Z
    invoke-interface {p0}, Ljava/util/stream/LongStream;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v1

    .line 600
    .local v1, "fromSpliterator":Ljava/util/Spliterator$OfLong;
    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Ljava/util/Spliterator$OfLong;->hasCharacteristics(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 601
    invoke-static {v1}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;

    move-result-object v2

    .line 602
    .local v2, "fromIterator":Ljava/util/PrimitiveIterator$OfLong;
    new-instance v9, Lcom/google/common/collect/Streams$4;

    .line 604
    invoke-interface {v1}, Ljava/util/Spliterator$OfLong;->estimateSize()J

    move-result-wide v4

    .line 605
    invoke-interface {v1}, Ljava/util/Spliterator$OfLong;->characteristics()I

    move-result v3

    and-int/lit8 v6, v3, 0x50

    move-object v3, v9

    move-object v7, v2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$4;-><init>(JILjava/util/PrimitiveIterator$OfLong;Lcom/google/common/collect/Streams$LongFunctionWithIndex;)V

    .line 602
    invoke-static {v9, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v3

    .line 618
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda12;-><init>(Ljava/util/stream/LongStream;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v3

    check-cast v3, Ljava/util/stream/Stream;

    .line 602
    return-object v3

    .line 647
    .end local v2    # "fromIterator":Ljava/util/PrimitiveIterator$OfLong;
    :cond_0
    new-instance v2, Lcom/google/common/collect/Streams$3Splitr;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/google/common/collect/Streams$3Splitr;-><init>(Ljava/util/Spliterator$OfLong;JLcom/google/common/collect/Streams$LongFunctionWithIndex;)V

    invoke-static {v2, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda12;-><init>(Ljava/util/stream/LongStream;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Stream;

    return-object v2
.end method

.method public static mapWithIndex(Ljava/util/stream/Stream;Lcom/google/common/collect/Streams$FunctionWithIndex;)Ljava/util/stream/Stream;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;",
            "Lcom/google/common/collect/Streams$FunctionWithIndex<",
            "-TT;+TR;>;)",
            "Ljava/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 431
    .local p0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    .local p1, "function":Lcom/google/common/collect/Streams$FunctionWithIndex;, "Lcom/google/common/collect/Streams$FunctionWithIndex<-TT;+TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-interface {p0}, Ljava/util/stream/Stream;->isParallel()Z

    move-result v0

    .line 434
    .local v0, "isParallel":Z
    invoke-interface {p0}, Ljava/util/stream/Stream;->spliterator()Ljava/util/Spliterator;

    move-result-object v1

    .line 436
    .local v1, "fromSpliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 437
    invoke-static {v1}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v2

    .line 438
    .local v2, "fromIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    new-instance v9, Lcom/google/common/collect/Streams$2;

    .line 440
    invoke-interface {v1}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v4

    .line 441
    invoke-interface {v1}, Ljava/util/Spliterator;->characteristics()I

    move-result v3

    and-int/lit8 v6, v3, 0x50

    move-object v3, v9

    move-object v7, v2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$2;-><init>(JILjava/util/Iterator;Lcom/google/common/collect/Streams$FunctionWithIndex;)V

    .line 438
    invoke-static {v9, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v3

    .line 454
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda0;-><init>(Ljava/util/stream/Stream;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v3

    check-cast v3, Ljava/util/stream/Stream;

    .line 438
    return-object v3

    .line 487
    .end local v2    # "fromIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    new-instance v2, Lcom/google/common/collect/Streams$1Splitr;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/google/common/collect/Streams$1Splitr;-><init>(Ljava/util/Spliterator;JLcom/google/common/collect/Streams$FunctionWithIndex;)V

    invoke-static {v2, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda0;-><init>(Ljava/util/stream/Stream;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Stream;

    return-object v2
.end method

.method public static stream(Ljava/util/OptionalDouble;)Ljava/util/stream/DoubleStream;
    .locals 2
    .param p0, "optional"    # Ljava/util/OptionalDouble;

    .line 151
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/stream/DoubleStream;->of(D)Ljava/util/stream/DoubleStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/stream/DoubleStream;->empty()Ljava/util/stream/DoubleStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Ljava/util/OptionalInt;)Ljava/util/stream/IntStream;
    .locals 1
    .param p0, "optional"    # Ljava/util/OptionalInt;

    .line 125
    invoke-virtual {p0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/util/stream/IntStream;->of(I)Ljava/util/stream/IntStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/stream/IntStream;->empty()Ljava/util/stream/IntStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Ljava/util/OptionalLong;)Ljava/util/stream/LongStream;
    .locals 2
    .param p0, "optional"    # Ljava/util/OptionalLong;

    .line 138
    invoke-virtual {p0}, Ljava/util/OptionalLong;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/OptionalLong;->getAsLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/stream/LongStream;->of(J)Ljava/util/stream/LongStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/stream/LongStream;->empty()Ljava/util/stream/LongStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Lcom/google/common/base/Optional;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Optional<",
            "TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 99
    .local p0, "optional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Ljava/lang/Iterable;)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 67
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 68
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0
.end method

.method public static stream(Ljava/util/Collection;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static stream(Ljava/util/Iterator;)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 90
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static stream(Ljava/util/Optional;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Optional<",
            "TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 112
    .local p0, "optional":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static zip(Ljava/util/stream/Stream;Ljava/util/stream/Stream;Ljava/util/function/BiFunction;)Ljava/util/stream/Stream;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TA;>;",
            "Ljava/util/stream/Stream<",
            "TB;>;",
            "Ljava/util/function/BiFunction<",
            "-TA;-TB;TR;>;)",
            "Ljava/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 320
    .local p0, "streamA":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TA;>;"
    .local p1, "streamB":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TB;>;"
    .local p2, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TA;-TB;TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-static/range {p2 .. p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-interface {p0}, Ljava/util/stream/Stream;->isParallel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/stream/Stream;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 324
    .local v0, "isParallel":Z
    :goto_1
    invoke-interface {p0}, Ljava/util/stream/Stream;->spliterator()Ljava/util/Spliterator;

    move-result-object v1

    .line 325
    .local v1, "splitrA":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TA;>;"
    invoke-interface {p1}, Ljava/util/stream/Stream;->spliterator()Ljava/util/Spliterator;

    move-result-object v2

    .line 326
    .local v2, "splitrB":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TB;>;"
    nop

    .line 327
    invoke-interface {v1}, Ljava/util/Spliterator;->characteristics()I

    move-result v3

    .line 328
    invoke-interface {v2}, Ljava/util/Spliterator;->characteristics()I

    move-result v4

    and-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x50

    .line 330
    .local v3, "characteristics":I
    invoke-static {v1}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v11

    .line 331
    .local v11, "itrA":Ljava/util/Iterator;, "Ljava/util/Iterator<TA;>;"
    invoke-static {v2}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v12

    .line 332
    .local v12, "itrB":Ljava/util/Iterator;, "Ljava/util/Iterator<TB;>;"
    new-instance v13, Lcom/google/common/collect/Streams$1;

    .line 334
    invoke-interface {v1}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v4

    invoke-interface {v2}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    move-object v4, v13

    move v7, v3

    move-object v8, v11

    move-object v9, v12

    move-object/from16 v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/google/common/collect/Streams$1;-><init>(JILjava/util/Iterator;Ljava/util/Iterator;Ljava/util/function/BiFunction;)V

    .line 332
    invoke-static {v13, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v4

    .line 345
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda0;

    move-object v6, p0

    invoke-direct {v5, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda0;-><init>(Ljava/util/stream/Stream;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v4

    check-cast v4, Ljava/util/stream/Stream;

    .line 346
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda0;

    move-object v7, p1

    invoke-direct {v5, p1}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda0;-><init>(Ljava/util/stream/Stream;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v4

    check-cast v4, Ljava/util/stream/Stream;

    .line 332
    return-object v4
.end method
