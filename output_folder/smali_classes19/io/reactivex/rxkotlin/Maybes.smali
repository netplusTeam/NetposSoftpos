.class public final Lio/reactivex/rxkotlin/Maybes;
.super Ljava/lang/Object;
.source "Maybes.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002Jh\u0010\u0003\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u00080\u00050\u0004\"\u0008\u0008\u0000\u0010\u0006*\u00020\u0001\"\u0008\u0008\u0001\u0010\u0007*\u00020\u0001\"\u0008\u0008\u0002\u0010\u0008*\u00020\u00012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\n2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\nH\u0007J\u0083\u0001\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u0004\"\u0008\u0008\u0000\u0010\u0006*\u00020\u0001\"\u0008\u0008\u0001\u0010\u0007*\u00020\u0001\"\u0008\u0008\u0002\u0010\u0008*\u00020\u0001\"\u0008\u0008\u0003\u0010\r*\u00020\u00012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\n2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\n2 \u0008\u0004\u0010\u000e\u001a\u001a\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u0008\u0012\u0004\u0012\u0002H\r0\u000fH\u0087\u0008J\u00a1\u0001\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u0004\"\u0008\u0008\u0000\u0010\u0006*\u00020\u0001\"\u0008\u0008\u0001\u0010\u0007*\u00020\u0001\"\u0008\u0008\u0002\u0010\u0008*\u00020\u0001\"\u0008\u0008\u0003\u0010\u0010*\u00020\u0001\"\u0008\u0008\u0004\u0010\r*\u00020\u00012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\n2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\n2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\n2&\u0008\u0004\u0010\u000e\u001a \u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u0008\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\r0\u0012H\u0087\u0008J\u00bf\u0001\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u0004\"\u0008\u0008\u0000\u0010\u0006*\u00020\u0001\"\u0008\u0008\u0001\u0010\u0007*\u00020\u0001\"\u0008\u0008\u0002\u0010\u0008*\u00020\u0001\"\u0008\u0008\u0003\u0010\u0010*\u00020\u0001\"\u0008\u0008\u0004\u0010\u0013*\u00020\u0001\"\u0008\u0008\u0005\u0010\r*\u00020\u00012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\n2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\n2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\n2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\n2,\u0008\u0004\u0010\u000e\u001a&\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u0008\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\r0\u0015H\u0087\u0008J\u00dd\u0001\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u0004\"\u0008\u0008\u0000\u0010\u0006*\u00020\u0001\"\u0008\u0008\u0001\u0010\u0007*\u00020\u0001\"\u0008\u0008\u0002\u0010\u0008*\u00020\u0001\"\u0008\u0008\u0003\u0010\u0010*\u00020\u0001\"\u0008\u0008\u0004\u0010\u0013*\u00020\u0001\"\u0008\u0008\u0005\u0010\u0016*\u00020\u0001\"\u0008\u0008\u0006\u0010\r*\u00020\u00012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\n2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\n2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\n2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\n2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\n22\u0008\u0004\u0010\u000e\u001a,\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u0008\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\r0\u0018H\u0087\u0008J\u00fb\u0001\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u0004\"\u0008\u0008\u0000\u0010\u0006*\u00020\u0001\"\u0008\u0008\u0001\u0010\u0007*\u00020\u0001\"\u0008\u0008\u0002\u0010\u0008*\u00020\u0001\"\u0008\u0008\u0003\u0010\u0010*\u00020\u0001\"\u0008\u0008\u0004\u0010\u0013*\u00020\u0001\"\u0008\u0008\u0005\u0010\u0016*\u00020\u0001\"\u0008\u0008\u0006\u0010\u0019*\u00020\u0001\"\u0008\u0008\u0007\u0010\r*\u00020\u00012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\n2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\n2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\n2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\n2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\n2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u0002H\u00190\n28\u0008\u0004\u0010\u000e\u001a2\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u0008\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u0019\u0012\u0004\u0012\u0002H\r0\u001bH\u0087\u0008J\u0099\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u0004\"\u0008\u0008\u0000\u0010\u0006*\u00020\u0001\"\u0008\u0008\u0001\u0010\u0007*\u00020\u0001\"\u0008\u0008\u0002\u0010\u0008*\u00020\u0001\"\u0008\u0008\u0003\u0010\u0010*\u00020\u0001\"\u0008\u0008\u0004\u0010\u0013*\u00020\u0001\"\u0008\u0008\u0005\u0010\u0016*\u00020\u0001\"\u0008\u0008\u0006\u0010\u0019*\u00020\u0001\"\u0008\u0008\u0007\u0010\u001c*\u00020\u0001\"\u0008\u0008\u0008\u0010\r*\u00020\u00012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\n2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\n2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\n2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\n2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\n2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u0002H\u00190\n2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\n2>\u0008\u0004\u0010\u000e\u001a8\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u0008\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u0019\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\r0\u001eH\u0087\u0008J\u00b7\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u0004\"\u0008\u0008\u0000\u0010\u0006*\u00020\u0001\"\u0008\u0008\u0001\u0010\u0007*\u00020\u0001\"\u0008\u0008\u0002\u0010\u0008*\u00020\u0001\"\u0008\u0008\u0003\u0010\u0010*\u00020\u0001\"\u0008\u0008\u0004\u0010\u0013*\u00020\u0001\"\u0008\u0008\u0005\u0010\u0016*\u00020\u0001\"\u0008\u0008\u0006\u0010\u0019*\u00020\u0001\"\u0008\u0008\u0007\u0010\u001c*\u00020\u0001\"\u0008\u0008\u0008\u0010\u001f*\u00020\u0001\"\u0008\u0008\t\u0010\r*\u00020\u00012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\n2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\n2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\n2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\n2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\n2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u0002H\u00190\n2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\n2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u001f0\n2D\u0008\u0004\u0010\u000e\u001a>\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u0008\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u0019\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001f\u0012\u0004\u0012\u0002H\r0!H\u0087\u0008JJ\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H#\u0012\u0004\u0012\u0002H$0\"0\u0004\"\u0008\u0008\u0000\u0010#*\u00020\u0001\"\u0008\u0008\u0001\u0010$*\u00020\u00012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H#0\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H$0\nH\u0007Je\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u0004\"\u0008\u0008\u0000\u0010#*\u00020\u0001\"\u0008\u0008\u0001\u0010$*\u00020\u0001\"\u0008\u0008\u0002\u0010\r*\u00020\u00012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H#0\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H$0\n2\u001a\u0008\u0004\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u0002H#\u0012\u0004\u0012\u0002H$\u0012\u0004\u0012\u0002H\r0%H\u0087\u0008\u00a8\u0006&"
    }
    d2 = {
        "Lio/reactivex/rxkotlin/Maybes;",
        "",
        "()V",
        "zip",
        "Lio/reactivex/Maybe;",
        "Lkotlin/Triple;",
        "T1",
        "T2",
        "T3",
        "s1",
        "Lio/reactivex/MaybeSource;",
        "s2",
        "s3",
        "R",
        "zipper",
        "Lkotlin/Function3;",
        "T4",
        "s4",
        "Lkotlin/Function4;",
        "T5",
        "s5",
        "Lkotlin/Function5;",
        "T6",
        "s6",
        "Lkotlin/Function6;",
        "T7",
        "s7",
        "Lkotlin/Function7;",
        "T8",
        "s8",
        "Lkotlin/Function8;",
        "T9",
        "s9",
        "Lkotlin/Function9;",
        "Lkotlin/Pair;",
        "T",
        "U",
        "Lkotlin/Function2;",
        "rxkotlin"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/reactivex/rxkotlin/Maybes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lio/reactivex/rxkotlin/Maybes;

    invoke-direct {v0}, Lio/reactivex/rxkotlin/Maybes;-><init>()V

    sput-object v0, Lio/reactivex/rxkotlin/Maybes;->INSTANCE:Lio/reactivex/rxkotlin/Maybes;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;
    .locals 2
    .param p1, "s1"    # Lio/reactivex/MaybeSource;
    .param p2, "s2"    # Lio/reactivex/MaybeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TT;>;",
            "Lio/reactivex/MaybeSource<",
            "TU;>;)",
            "Lio/reactivex/Maybe<",
            "Lkotlin/Pair<",
            "TT;TU;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "s1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "s2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    nop

    .line 27
    sget-object v0, Lio/reactivex/rxkotlin/Maybes$zip$2;->INSTANCE:Lio/reactivex/rxkotlin/Maybes$zip$2;

    check-cast v0, Lio/reactivex/functions/BiFunction;

    .line 26
    invoke-static {p1, p2, v0}, Lio/reactivex/Maybe;->zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Maybe;

    move-result-object v0

    const-string v1, "Maybe.zip(s1, s2,\n      \u2026n { t, u -> Pair(t, u) })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    return-object v0
.end method

.method public final zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;
    .locals 2
    .param p1, "s1"    # Lio/reactivex/MaybeSource;
    .param p2, "s2"    # Lio/reactivex/MaybeSource;
    .param p3, "s3"    # Lio/reactivex/MaybeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "TT3;>;)",
            "Lio/reactivex/Maybe<",
            "Lkotlin/Triple<",
            "TT1;TT2;TT3;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "s1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "s2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "s3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    nop

    .line 47
    sget-object v0, Lio/reactivex/rxkotlin/Maybes$zip$4;->INSTANCE:Lio/reactivex/rxkotlin/Maybes$zip$4;

    check-cast v0, Lio/reactivex/functions/Function3;

    .line 46
    invoke-static {p1, p2, p3, v0}, Lio/reactivex/Maybe;->zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function3;)Lio/reactivex/Maybe;

    move-result-object v0

    const-string v1, "Maybe.zip(s1, s2, s3,\n  \u2026 -> Triple(t1, t2, t3) })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    return-object v0
.end method

.method public final zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lkotlin/jvm/functions/Function9;)Lio/reactivex/Maybe;
    .locals 16
    .param p1, "s1"    # Lio/reactivex/MaybeSource;
    .param p2, "s2"    # Lio/reactivex/MaybeSource;
    .param p3, "s3"    # Lio/reactivex/MaybeSource;
    .param p4, "s4"    # Lio/reactivex/MaybeSource;
    .param p5, "s5"    # Lio/reactivex/MaybeSource;
    .param p6, "s6"    # Lio/reactivex/MaybeSource;
    .param p7, "s7"    # Lio/reactivex/MaybeSource;
    .param p8, "s8"    # Lio/reactivex/MaybeSource;
    .param p9, "s9"    # Lio/reactivex/MaybeSource;
    .param p10, "zipper"    # Lkotlin/jvm/functions/Function9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "TT3;>;",
            "Lio/reactivex/MaybeSource<",
            "TT4;>;",
            "Lio/reactivex/MaybeSource<",
            "TT5;>;",
            "Lio/reactivex/MaybeSource<",
            "TT6;>;",
            "Lio/reactivex/MaybeSource<",
            "TT7;>;",
            "Lio/reactivex/MaybeSource<",
            "TT8;>;",
            "Lio/reactivex/MaybeSource<",
            "TT9;>;",
            "Lkotlin/jvm/functions/Function9<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    move-object/from16 v0, p10

    const/4 v1, 0x0

    .local v1, "$i$f$zip":I
    const-string v2, "s1"

    move-object/from16 v13, p1

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s2"

    move-object/from16 v14, p2

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s3"

    move-object/from16 v15, p3

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s4"

    move-object/from16 v12, p4

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s5"

    move-object/from16 v11, p5

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s6"

    move-object/from16 v10, p6

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s7"

    move-object/from16 v9, p7

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s8"

    move-object/from16 v8, p8

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s9"

    move-object/from16 v7, p9

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "zipper"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    nop

    .line 116
    new-instance v2, Lio/reactivex/rxkotlin/Maybes$zip$10;

    invoke-direct {v2, v0}, Lio/reactivex/rxkotlin/Maybes$zip$10;-><init>(Lkotlin/jvm/functions/Function9;)V

    check-cast v2, Lio/reactivex/functions/Function9;

    .line 115
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object v12, v2

    invoke-static/range {v3 .. v12}, Lio/reactivex/Maybe;->zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function9;)Lio/reactivex/Maybe;

    move-result-object v2

    const-string v3, "Maybe.zip(s1, s2, s3, s4\u20264, t5, t6, t7, t8, t9) })"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    return-object v2
.end method

.method public final zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lkotlin/jvm/functions/Function8;)Lio/reactivex/Maybe;
    .locals 16
    .param p1, "s1"    # Lio/reactivex/MaybeSource;
    .param p2, "s2"    # Lio/reactivex/MaybeSource;
    .param p3, "s3"    # Lio/reactivex/MaybeSource;
    .param p4, "s4"    # Lio/reactivex/MaybeSource;
    .param p5, "s5"    # Lio/reactivex/MaybeSource;
    .param p6, "s6"    # Lio/reactivex/MaybeSource;
    .param p7, "s7"    # Lio/reactivex/MaybeSource;
    .param p8, "s8"    # Lio/reactivex/MaybeSource;
    .param p9, "zipper"    # Lkotlin/jvm/functions/Function8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "TT3;>;",
            "Lio/reactivex/MaybeSource<",
            "TT4;>;",
            "Lio/reactivex/MaybeSource<",
            "TT5;>;",
            "Lio/reactivex/MaybeSource<",
            "TT6;>;",
            "Lio/reactivex/MaybeSource<",
            "TT7;>;",
            "Lio/reactivex/MaybeSource<",
            "TT8;>;",
            "Lkotlin/jvm/functions/Function8<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    move-object/from16 v0, p9

    const/4 v1, 0x0

    .local v1, "$i$f$zip":I
    const-string v2, "s1"

    move-object/from16 v12, p1

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s2"

    move-object/from16 v13, p2

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s3"

    move-object/from16 v14, p3

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s4"

    move-object/from16 v15, p4

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s5"

    move-object/from16 v11, p5

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s6"

    move-object/from16 v10, p6

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s7"

    move-object/from16 v9, p7

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s8"

    move-object/from16 v8, p8

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "zipper"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    nop

    .line 103
    new-instance v2, Lio/reactivex/rxkotlin/Maybes$zip$9;

    invoke-direct {v2, v0}, Lio/reactivex/rxkotlin/Maybes$zip$9;-><init>(Lkotlin/jvm/functions/Function8;)V

    check-cast v2, Lio/reactivex/functions/Function8;

    .line 102
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p8

    move-object v11, v2

    invoke-static/range {v3 .. v11}, Lio/reactivex/Maybe;->zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function8;)Lio/reactivex/Maybe;

    move-result-object v2

    const-string v3, "Maybe.zip(s1, s2, s3, s4\u20263, t4, t5, t6, t7, t8) })"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    return-object v2
.end method

.method public final zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lkotlin/jvm/functions/Function7;)Lio/reactivex/Maybe;
    .locals 16
    .param p1, "s1"    # Lio/reactivex/MaybeSource;
    .param p2, "s2"    # Lio/reactivex/MaybeSource;
    .param p3, "s3"    # Lio/reactivex/MaybeSource;
    .param p4, "s4"    # Lio/reactivex/MaybeSource;
    .param p5, "s5"    # Lio/reactivex/MaybeSource;
    .param p6, "s6"    # Lio/reactivex/MaybeSource;
    .param p7, "s7"    # Lio/reactivex/MaybeSource;
    .param p8, "zipper"    # Lkotlin/jvm/functions/Function7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "TT3;>;",
            "Lio/reactivex/MaybeSource<",
            "TT4;>;",
            "Lio/reactivex/MaybeSource<",
            "TT5;>;",
            "Lio/reactivex/MaybeSource<",
            "TT6;>;",
            "Lio/reactivex/MaybeSource<",
            "TT7;>;",
            "Lkotlin/jvm/functions/Function7<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    move-object/from16 v0, p8

    const/4 v1, 0x0

    .local v1, "$i$f$zip":I
    const-string v2, "s1"

    move-object/from16 v11, p1

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s2"

    move-object/from16 v12, p2

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s3"

    move-object/from16 v13, p3

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s4"

    move-object/from16 v14, p4

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s5"

    move-object/from16 v15, p5

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s6"

    move-object/from16 v10, p6

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s7"

    move-object/from16 v9, p7

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "zipper"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    nop

    .line 91
    new-instance v2, Lio/reactivex/rxkotlin/Maybes$zip$8;

    invoke-direct {v2, v0}, Lio/reactivex/rxkotlin/Maybes$zip$8;-><init>(Lkotlin/jvm/functions/Function7;)V

    check-cast v2, Lio/reactivex/functions/Function7;

    .line 90
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object v10, v2

    invoke-static/range {v3 .. v10}, Lio/reactivex/Maybe;->zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function7;)Lio/reactivex/Maybe;

    move-result-object v2

    const-string v3, "Maybe.zip(s1, s2, s3, s4\u20262, t3, t4, t5, t6, t7) })"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    return-object v2
.end method

.method public final zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lkotlin/jvm/functions/Function6;)Lio/reactivex/Maybe;
    .locals 16
    .param p1, "s1"    # Lio/reactivex/MaybeSource;
    .param p2, "s2"    # Lio/reactivex/MaybeSource;
    .param p3, "s3"    # Lio/reactivex/MaybeSource;
    .param p4, "s4"    # Lio/reactivex/MaybeSource;
    .param p5, "s5"    # Lio/reactivex/MaybeSource;
    .param p6, "s6"    # Lio/reactivex/MaybeSource;
    .param p7, "zipper"    # Lkotlin/jvm/functions/Function6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "TT3;>;",
            "Lio/reactivex/MaybeSource<",
            "TT4;>;",
            "Lio/reactivex/MaybeSource<",
            "TT5;>;",
            "Lio/reactivex/MaybeSource<",
            "TT6;>;",
            "Lkotlin/jvm/functions/Function6<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    move-object/from16 v0, p7

    const/4 v1, 0x0

    .local v1, "$i$f$zip":I
    const-string v2, "s1"

    move-object/from16 v10, p1

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s2"

    move-object/from16 v11, p2

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s3"

    move-object/from16 v12, p3

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s4"

    move-object/from16 v13, p4

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s5"

    move-object/from16 v14, p5

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "s6"

    move-object/from16 v15, p6

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "zipper"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    nop

    .line 79
    new-instance v2, Lio/reactivex/rxkotlin/Maybes$zip$7;

    invoke-direct {v2, v0}, Lio/reactivex/rxkotlin/Maybes$zip$7;-><init>(Lkotlin/jvm/functions/Function6;)V

    move-object v9, v2

    check-cast v9, Lio/reactivex/functions/Function6;

    .line 78
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v9}, Lio/reactivex/Maybe;->zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function6;)Lio/reactivex/Maybe;

    move-result-object v2

    const-string v3, "Maybe.zip(s1, s2, s3, s4\u20261, t2, t3, t4, t5, t6) })"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    return-object v2
.end method

.method public final zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lkotlin/jvm/functions/Function5;)Lio/reactivex/Maybe;
    .locals 8
    .param p1, "s1"    # Lio/reactivex/MaybeSource;
    .param p2, "s2"    # Lio/reactivex/MaybeSource;
    .param p3, "s3"    # Lio/reactivex/MaybeSource;
    .param p4, "s4"    # Lio/reactivex/MaybeSource;
    .param p5, "s5"    # Lio/reactivex/MaybeSource;
    .param p6, "zipper"    # Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "TT3;>;",
            "Lio/reactivex/MaybeSource<",
            "TT4;>;",
            "Lio/reactivex/MaybeSource<",
            "TT5;>;",
            "Lkotlin/jvm/functions/Function5<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lio/reactivex/Maybe<",
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
    const-string v1, "s1"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "s2"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "s3"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "s4"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "s5"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "zipper"

    invoke-static {p6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    nop

    .line 68
    new-instance v1, Lio/reactivex/rxkotlin/Maybes$zip$6;

    invoke-direct {v1, p6}, Lio/reactivex/rxkotlin/Maybes$zip$6;-><init>(Lkotlin/jvm/functions/Function5;)V

    move-object v7, v1

    check-cast v7, Lio/reactivex/functions/Function5;

    .line 67
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v2 .. v7}, Lio/reactivex/Maybe;->zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function5;)Lio/reactivex/Maybe;

    move-result-object v1

    const-string v2, "Maybe.zip(s1, s2, s3, s4\u2026ke(t1, t2, t3, t4, t5) })"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    return-object v1
.end method

.method public final zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lkotlin/jvm/functions/Function4;)Lio/reactivex/Maybe;
    .locals 3
    .param p1, "s1"    # Lio/reactivex/MaybeSource;
    .param p2, "s2"    # Lio/reactivex/MaybeSource;
    .param p3, "s3"    # Lio/reactivex/MaybeSource;
    .param p4, "s4"    # Lio/reactivex/MaybeSource;
    .param p5, "zipper"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "TT3;>;",
            "Lio/reactivex/MaybeSource<",
            "TT4;>;",
            "Lkotlin/jvm/functions/Function4<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lio/reactivex/Maybe<",
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
    const-string v1, "s1"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "s2"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "s3"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "s4"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "zipper"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    nop

    .line 57
    new-instance v1, Lio/reactivex/rxkotlin/Maybes$zip$5;

    invoke-direct {v1, p5}, Lio/reactivex/rxkotlin/Maybes$zip$5;-><init>(Lkotlin/jvm/functions/Function4;)V

    check-cast v1, Lio/reactivex/functions/Function4;

    .line 56
    invoke-static {p1, p2, p3, p4, v1}, Lio/reactivex/Maybe;->zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function4;)Lio/reactivex/Maybe;

    move-result-object v1

    const-string v2, "Maybe.zip(s1, s2, s3, s4\u2026invoke(t1, t2, t3, t4) })"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    return-object v1
.end method

.method public final zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lkotlin/jvm/functions/Function3;)Lio/reactivex/Maybe;
    .locals 3
    .param p1, "s1"    # Lio/reactivex/MaybeSource;
    .param p2, "s2"    # Lio/reactivex/MaybeSource;
    .param p3, "s3"    # Lio/reactivex/MaybeSource;
    .param p4, "zipper"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "TT3;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "Lio/reactivex/Maybe<",
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
    const-string v1, "s1"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "s2"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "s3"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "zipper"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    nop

    .line 37
    new-instance v1, Lio/reactivex/rxkotlin/Maybes$zip$3;

    invoke-direct {v1, p4}, Lio/reactivex/rxkotlin/Maybes$zip$3;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lio/reactivex/functions/Function3;

    .line 36
    invoke-static {p1, p2, p3, v1}, Lio/reactivex/Maybe;->zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function3;)Lio/reactivex/Maybe;

    move-result-object v1

    const-string v2, "Maybe.zip(s1, s2, s3,\n  \u2026per.invoke(t1, t2, t3) })"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    return-object v1
.end method

.method public final zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lkotlin/jvm/functions/Function2;)Lio/reactivex/Maybe;
    .locals 3
    .param p1, "s1"    # Lio/reactivex/MaybeSource;
    .param p2, "s2"    # Lio/reactivex/MaybeSource;
    .param p3, "zipper"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TT;>;",
            "Lio/reactivex/MaybeSource<",
            "TU;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/Maybe<",
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
    const-string v1, "s1"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "s2"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "zipper"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    nop

    .line 19
    new-instance v1, Lio/reactivex/rxkotlin/Maybes$zip$1;

    invoke-direct {v1, p3}, Lio/reactivex/rxkotlin/Maybes$zip$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v1, Lio/reactivex/functions/BiFunction;

    .line 18
    invoke-static {p1, p2, v1}, Lio/reactivex/Maybe;->zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Maybe;

    move-result-object v1

    const-string v2, "Maybe.zip(s1, s2,\n      \u2026-> zipper.invoke(t, u) })"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    return-object v1
.end method
