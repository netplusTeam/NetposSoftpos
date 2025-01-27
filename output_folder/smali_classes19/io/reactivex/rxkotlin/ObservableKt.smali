.class public final Lio/reactivex/rxkotlin/ObservableKt;
.super Ljava/lang/Object;
.source "observable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a2\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001f\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0018\n\u0002\u0010\u0005\n\u0002\u0010\u0012\n\u0002\u0010\u000c\n\u0002\u0010\u0019\n\u0002\u0010\u0006\n\u0002\u0010\u0013\n\u0002\u0010\u0007\n\u0002\u0010\u0014\n\u0002\u0010\u0008\n\u0002\u0010\u0015\n\u0002\u0010\t\n\u0002\u0010\u0016\n\u0002\u0010\n\n\u0002\u0010\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a#\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u0006\u0012\u0002\u0008\u00030\u0001H\u0087\u0008\u001a^\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0003\"\u0008\u0008\u0001\u0010\u0002*\u00020\u0003*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00050\u00010\u00062)\u0008\u0004\u0010\u0007\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u0002H\u00050\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u0002H\u00020\u0008H\u0087\u0008\u001a(\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0001\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0003*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00050\u00010\u0001H\u0007\u001a(\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0001\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0003*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00050\u000e0\u0006H\u0007\u001a*\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0001\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0003*\u0010\u0012\u000c\u0008\u0001\u0012\u0008\u0012\u0004\u0012\u0002H\u00050\u00060\u0001H\u0007\u001a*\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0001\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0003*\u0010\u0012\u000c\u0008\u0001\u0012\u0008\u0012\u0004\u0012\u0002H\u00050\u00060\u0001H\u0007\u001aI\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0003\"\u0008\u0008\u0001\u0010\u0002*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00050\u00012\u001a\u0008\u0004\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u0002H\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00130\u0008H\u0087\u0008\u001a*\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0001\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0003*\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00050\u00010\u0006H\u0007\u001a(\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0001\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0003*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00050\u00010\u0001H\u0007\u001a*\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0001\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0003*\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00050\u00010\u0006H\u0007\u001a#\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u0006\u0012\u0002\u0008\u00030\u0001H\u0087\u0008\u001a(\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0001\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0003*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00050\u00010\u0001H\u0007\u001a(\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0001\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0003*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00050\u00010\u0001H\u0007\u001a\"\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0006\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00050\u001bH\u0002\u001aD\u0010\u001c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u001f\u0012\u0004\u0012\u0002H 0\u001e0\u001d\"\u0008\u0008\u0000\u0010\u001f*\u00020\u0003\"\u0008\u0008\u0001\u0010 *\u00020\u0003*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u001f\u0012\u0004\u0012\u0002H 0!0\u0001H\u0007\u001aJ\u0010\"\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u0002H\u001f\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H 0#0\u001e0\u001d\"\u0008\u0008\u0000\u0010\u001f*\u00020\u0003\"\u0008\u0008\u0001\u0010 *\u00020\u0003*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u001f\u0012\u0004\u0012\u0002H 0!0\u0001H\u0007\u001a\'\u0010$\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0001\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00050%H\u0007\u00a2\u0006\u0002\u0010&\u001a\u0012\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\'0\u0001*\u00020(H\u0007\u001a\u0012\u0010$\u001a\u0008\u0012\u0004\u0012\u00020)0\u0001*\u00020*H\u0007\u001a\u0012\u0010$\u001a\u0008\u0012\u0004\u0012\u00020+0\u0001*\u00020,H\u0007\u001a\u0012\u0010$\u001a\u0008\u0012\u0004\u0012\u00020-0\u0001*\u00020.H\u0007\u001a\u0012\u0010$\u001a\u0008\u0012\u0004\u0012\u00020/0\u0001*\u000200H\u0007\u001a\u0012\u0010$\u001a\u0008\u0012\u0004\u0012\u0002010\u0001*\u000202H\u0007\u001a\u0012\u0010$\u001a\u0008\u0012\u0004\u0012\u0002030\u0001*\u000204H\u0007\u001a\u0012\u0010$\u001a\u0008\u0012\u0004\u0012\u0002050\u0001*\u000206H\u0007\u001a\"\u0010$\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0001\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00050\u0006H\u0007\u001a\"\u0010$\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0001\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00050\u001bH\u0007\u001a\u0012\u0010$\u001a\u0008\u0012\u0004\u0012\u0002010\u0001*\u000207H\u0007\u001a\"\u0010$\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0001\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00050\u0013H\u0007\u001a^\u00108\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0003\"\u0008\u0008\u0001\u0010\u0002*\u00020\u0003*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00050\u00010\u00062)\u0008\u0004\u00109\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u0002H\u00050\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u0002H\u00020\u0008H\u0087\u0008\u00a8\u0006:"
    }
    d2 = {
        "cast",
        "Lio/reactivex/Observable;",
        "R",
        "",
        "combineLatest",
        "T",
        "",
        "combineFunction",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "args",
        "concatAll",
        "Lio/reactivex/ObservableSource;",
        "concatMapIterable",
        "flatMapIterable",
        "flatMapSequence",
        "body",
        "Lkotlin/sequences/Sequence;",
        "merge",
        "mergeAll",
        "mergeDelayError",
        "ofType",
        "switchLatest",
        "switchOnNext",
        "toIterable",
        "",
        "toMap",
        "Lio/reactivex/Single;",
        "",
        "A",
        "B",
        "Lkotlin/Pair;",
        "toMultimap",
        "",
        "toObservable",
        "",
        "([Ljava/lang/Object;)Lio/reactivex/Observable;",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "Lkotlin/ranges/IntProgression;",
        "zip",
        "zipFunction",
        "rxkotlin"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public static final synthetic cast(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 3
    .param p0, "$this$cast"    # Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "*>;)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$cast":I
    const-string v1, "$this$cast"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    const/4 v1, 0x4

    const-string v2, "R"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->cast(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "cast(R::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final combineLatest(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Lio/reactivex/Observable;
    .locals 3
    .param p0, "$this$combineLatest"    # Ljava/lang/Iterable;
    .param p1, "combineFunction"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/Observable<",
            "TT;>;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+TT;>;+TR;>;)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$combineLatest":I
    const-string v1, "$this$combineLatest"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "combineFunction"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v1, Lio/reactivex/rxkotlin/ObservableKt$combineLatest$1;

    invoke-direct {v1, p1}, Lio/reactivex/rxkotlin/ObservableKt$combineLatest$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-static {p0, v1}, Lio/reactivex/Observable;->combineLatest(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "Observable.combineLatest\u2026List().map { it as T }) }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final concatAll(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 2
    .param p0, "$this$concatAll"    # Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "TT;>;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$concatAll"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    sget-object v0, Lio/reactivex/rxkotlin/ObservableKt$concatAll$1;->INSTANCE:Lio/reactivex/rxkotlin/ObservableKt$concatAll$1;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "concatMap { it }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final concatAll(Ljava/lang/Iterable;)Lio/reactivex/Observable;
    .locals 2
    .param p0, "$this$concatAll"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ObservableSource<",
            "TT;>;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$concatAll"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-static {p0}, Lio/reactivex/Observable;->concat(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.concat(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final concatMapIterable(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 2
    .param p0, "$this$concatMapIterable"    # Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$concatMapIterable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lio/reactivex/rxkotlin/ObservableKt$concatMapIterable$1;->INSTANCE:Lio/reactivex/rxkotlin/ObservableKt$concatMapIterable$1;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->concatMapIterable(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "concatMapIterable { it }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final flatMapIterable(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 2
    .param p0, "$this$flatMapIterable"    # Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$flatMapIterable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lio/reactivex/rxkotlin/ObservableKt$flatMapIterable$1;->INSTANCE:Lio/reactivex/rxkotlin/ObservableKt$flatMapIterable$1;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->flatMapIterable(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "flatMapIterable { it }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final flatMapSequence(Lio/reactivex/Observable;Lkotlin/jvm/functions/Function1;)Lio/reactivex/Observable;
    .locals 3
    .param p0, "$this$flatMapSequence"    # Lio/reactivex/Observable;
    .param p1, "body"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Lkotlin/sequences/Sequence<",
            "+TR;>;>;)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$flatMapSequence":I
    const-string v1, "$this$flatMapSequence"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "body"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v1, Lio/reactivex/rxkotlin/ObservableKt$flatMapSequence$1;

    invoke-direct {v1, p1}, Lio/reactivex/rxkotlin/ObservableKt$flatMapSequence$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "flatMap { body(it).toObservable() }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final merge(Ljava/lang/Iterable;)Lio/reactivex/Observable;
    .locals 2
    .param p0, "$this$merge"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/Observable<",
            "+TT;>;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$merge"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {p0}, Lio/reactivex/rxkotlin/ObservableKt;->toObservable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-static {v0}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.merge(this.toObservable())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mergeAll(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 2
    .param p0, "$this$mergeAll"    # Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "TT;>;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$mergeAll"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lio/reactivex/rxkotlin/ObservableKt$mergeAll$1;->INSTANCE:Lio/reactivex/rxkotlin/ObservableKt$mergeAll$1;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "flatMap { it }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mergeDelayError(Ljava/lang/Iterable;)Lio/reactivex/Observable;
    .locals 2
    .param p0, "$this$mergeDelayError"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/Observable<",
            "+TT;>;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$mergeDelayError"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {p0}, Lio/reactivex/rxkotlin/ObservableKt;->toObservable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-static {v0}, Lio/reactivex/Observable;->mergeDelayError(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.mergeDelayError(this.toObservable())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final synthetic ofType(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 3
    .param p0, "$this$ofType"    # Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "*>;)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$ofType":I
    const-string v1, "$this$ofType"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    const/4 v1, 0x4

    const-string v2, "R"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "ofType(R::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final switchLatest(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 2
    .param p0, "$this$switchLatest"    # Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "TT;>;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$switchLatest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lio/reactivex/rxkotlin/ObservableKt$switchLatest$1;->INSTANCE:Lio/reactivex/rxkotlin/ObservableKt$switchLatest$1;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->switchMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "switchMap { it }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final switchOnNext(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 2
    .param p0, "$this$switchOnNext"    # Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "TT;>;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$switchOnNext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    move-object v0, p0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-static {v0}, Lio/reactivex/Observable;->switchOnNext(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.switchOnNext(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final toIterable(Ljava/util/Iterator;)Ljava/lang/Iterable;
    .locals 1
    .param p0, "$this$toIterable"    # Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 128
    new-instance v0, Lio/reactivex/rxkotlin/ObservableKt$toIterable$1;

    invoke-direct {v0, p0}, Lio/reactivex/rxkotlin/ObservableKt$toIterable$1;-><init>(Ljava/util/Iterator;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 130
    return-object v0
.end method

.method public static final toMap(Lio/reactivex/Observable;)Lio/reactivex/Single;
    .locals 2
    .param p0, "$this$toMap"    # Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "Lkotlin/Pair<",
            "TA;TB;>;>;)",
            "Lio/reactivex/Single<",
            "Ljava/util/Map<",
            "TA;TB;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$toMap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    sget-object v0, Lio/reactivex/rxkotlin/ObservableKt$toMap$1;->INSTANCE:Lio/reactivex/rxkotlin/ObservableKt$toMap$1;

    check-cast v0, Lio/reactivex/functions/Function;

    sget-object v1, Lio/reactivex/rxkotlin/ObservableKt$toMap$2;->INSTANCE:Lio/reactivex/rxkotlin/ObservableKt$toMap$2;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {p0, v0, v1}, Lio/reactivex/Observable;->toMap(Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "toMap({ it.first }, { it.second })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toMultimap(Lio/reactivex/Observable;)Lio/reactivex/Single;
    .locals 2
    .param p0, "$this$toMultimap"    # Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "Lkotlin/Pair<",
            "TA;TB;>;>;)",
            "Lio/reactivex/Single<",
            "Ljava/util/Map<",
            "TA;",
            "Ljava/util/Collection<",
            "TB;>;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$toMultimap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lio/reactivex/rxkotlin/ObservableKt$toMultimap$1;->INSTANCE:Lio/reactivex/rxkotlin/ObservableKt$toMultimap$1;

    check-cast v0, Lio/reactivex/functions/Function;

    sget-object v1, Lio/reactivex/rxkotlin/ObservableKt$toMultimap$2;->INSTANCE:Lio/reactivex/rxkotlin/ObservableKt$toMultimap$2;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {p0, v0, v1}, Lio/reactivex/Observable;->toMultimap(Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "toMultimap({ it.first }, { it.second })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toObservable(Ljava/lang/Iterable;)Lio/reactivex/Observable;
    .locals 2
    .param p0, "$this$toObservable"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$toObservable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.fromIterable(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toObservable(Ljava/util/Iterator;)Lio/reactivex/Observable;
    .locals 1
    .param p0, "$this$toObservable"    # Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$toObservable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {p0}, Lio/reactivex/rxkotlin/ObservableKt;->toIterable(Ljava/util/Iterator;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxkotlin/ObservableKt;->toObservable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final toObservable(Lkotlin/ranges/IntProgression;)Lio/reactivex/Observable;
    .locals 6
    .param p0, "$this$toObservable"    # Lkotlin/ranges/IntProgression;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/IntProgression;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$toObservable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    const v0, 0x7fffffff

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v3

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lio/reactivex/Observable;->range(II)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.range(first, \u2026max(0, last - first + 1))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.fromIterable(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    :goto_0
    nop

    .line 52
    return-object v0
.end method

.method public static final toObservable(Lkotlin/sequences/Sequence;)Lio/reactivex/Observable;
    .locals 1
    .param p0, "$this$toObservable"    # Lkotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$toObservable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->asIterable(Lkotlin/sequences/Sequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxkotlin/ObservableKt;->toObservable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final toObservable([B)Lio/reactivex/Observable;
    .locals 1
    .param p0, "$this$toObservable"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$toObservable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->asIterable([B)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxkotlin/ObservableKt;->toObservable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final toObservable([C)Lio/reactivex/Observable;
    .locals 1
    .param p0, "$this$toObservable"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$toObservable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->asIterable([C)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxkotlin/ObservableKt;->toObservable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final toObservable([D)Lio/reactivex/Observable;
    .locals 1
    .param p0, "$this$toObservable"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$toObservable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->asIterable([D)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxkotlin/ObservableKt;->toObservable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final toObservable([F)Lio/reactivex/Observable;
    .locals 1
    .param p0, "$this$toObservable"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$toObservable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->asIterable([F)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxkotlin/ObservableKt;->toObservable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final toObservable([I)Lio/reactivex/Observable;
    .locals 1
    .param p0, "$this$toObservable"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$toObservable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->asIterable([I)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxkotlin/ObservableKt;->toObservable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final toObservable([J)Lio/reactivex/Observable;
    .locals 1
    .param p0, "$this$toObservable"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$toObservable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->asIterable([J)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxkotlin/ObservableKt;->toObservable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final toObservable([Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 2
    .param p0, "$this$toObservable"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$toObservable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->fromArray([Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.fromArray(*this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toObservable([S)Lio/reactivex/Observable;
    .locals 1
    .param p0, "$this$toObservable"    # [S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$toObservable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->asIterable([S)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxkotlin/ObservableKt;->toObservable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final toObservable([Z)Lio/reactivex/Observable;
    .locals 1
    .param p0, "$this$toObservable"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "$this$toObservable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->asIterable([Z)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxkotlin/ObservableKt;->toObservable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final zip(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Lio/reactivex/Observable;
    .locals 3
    .param p0, "$this$zip"    # Ljava/lang/Iterable;
    .param p1, "zipFunction"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/Observable<",
            "TT;>;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+TT;>;+TR;>;)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$zip":I
    const-string v1, "$this$zip"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "zipFunction"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v1, Lio/reactivex/rxkotlin/ObservableKt$zip$1;

    invoke-direct {v1, p1}, Lio/reactivex/rxkotlin/ObservableKt$zip$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-static {p0, v1}, Lio/reactivex/Observable;->zip(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "Observable.zip(this) { z\u2026List().map { it as T }) }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
