.class public abstract Lio/reactivex/observers/BaseTestConsumer;
.super Ljava/lang/Object;
.source "BaseTestConsumer.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Lio/reactivex/observers/BaseTestConsumer<",
        "TT;TU;>;>",
        "Ljava/lang/Object;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field protected checkSubscriptionOnce:Z

.field protected completions:J

.field protected final done:Ljava/util/concurrent/CountDownLatch;

.field protected final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field protected establishedFusionMode:I

.field protected initialFusionMode:I

.field protected lastThread:Ljava/lang/Thread;

.field protected tag:Ljava/lang/CharSequence;

.field protected timeout:Z

.field protected final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lio/reactivex/internal/util/VolatileSizeArrayList;

    invoke-direct {v0}, Lio/reactivex/internal/util/VolatileSizeArrayList;-><init>()V

    iput-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    .line 63
    new-instance v0, Lio/reactivex/internal/util/VolatileSizeArrayList;

    invoke-direct {v0}, Lio/reactivex/internal/util/VolatileSizeArrayList;-><init>()V

    iput-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->errors:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->done:Ljava/util/concurrent/CountDownLatch;

    .line 65
    return-void
.end method

.method public static valueAndClass(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 500
    if-eqz p0, :cond_0

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 503
    :cond_0
    const-string v0, "null"

    return-object v0
.end method


# virtual methods
.method public final assertComplete()Lio/reactivex/observers/BaseTestConsumer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 240
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iget-wide v0, p0, Lio/reactivex/observers/BaseTestConsumer;->completions:J

    .line 241
    .local v0, "c":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 244
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 247
    return-object p0

    .line 245
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple completions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2

    .line 242
    :cond_1
    const-string v2, "Not completed"

    invoke-virtual {p0, v2}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2
.end method

.method public final assertEmpty()Lio/reactivex/observers/BaseTestConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 875
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    invoke-virtual {p0}, Lio/reactivex/observers/BaseTestConsumer;->assertSubscribed()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 876
    invoke-virtual {v0}, Lio/reactivex/observers/BaseTestConsumer;->assertNoValues()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 877
    invoke-virtual {v0}, Lio/reactivex/observers/BaseTestConsumer;->assertNoErrors()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 878
    invoke-virtual {v0}, Lio/reactivex/observers/BaseTestConsumer;->assertNotComplete()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 875
    return-object v0
.end method

.method public final assertError(Lio/reactivex/functions/Predicate;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Predicate<",
            "Ljava/lang/Throwable;",
            ">;)TU;"
        }
    .end annotation

    .line 316
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    .local p1, "errorPredicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<Ljava/lang/Throwable;>;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 317
    .local v0, "s":I
    if-eqz v0, :cond_4

    .line 321
    const/4 v1, 0x0

    .line 323
    .local v1, "found":Z
    iget-object v2, p0, Lio/reactivex/observers/BaseTestConsumer;->errors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 325
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_0
    invoke-interface {p1, v3}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 326
    const/4 v1, 0x1

    .line 327
    goto :goto_1

    .line 331
    :cond_0
    nop

    .line 332
    .end local v3    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 329
    .restart local v3    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v2

    .line 330
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 334
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 335
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 341
    return-object p0

    .line 336
    :cond_2
    const-string v2, "Error present but other errors as well"

    invoke-virtual {p0, v2}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2

    .line 339
    :cond_3
    const-string v2, "Error not present"

    invoke-virtual {p0, v2}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2

    .line 318
    .end local v1    # "found":Z
    :cond_4
    const-string v1, "No errors"

    invoke-virtual {p0, v1}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method public final assertError(Ljava/lang/Class;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)TU;"
        }
    .end annotation

    .line 303
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    .local p1, "errorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->isInstanceOf(Ljava/lang/Class;)Lio/reactivex/functions/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/observers/BaseTestConsumer;->assertError(Lio/reactivex/functions/Predicate;)Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    return-object v0
.end method

.method public final assertError(Ljava/lang/Throwable;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TU;"
        }
    .end annotation

    .line 292
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->equalsWith(Ljava/lang/Object;)Lio/reactivex/functions/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/observers/BaseTestConsumer;->assertError(Lio/reactivex/functions/Predicate;)Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    return-object v0
.end method

.method public final assertErrorMessage(Ljava/lang/String;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TU;"
        }
    .end annotation

    .line 732
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 733
    .local v0, "s":I
    if-eqz v0, :cond_2

    .line 736
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 737
    iget-object v1, p0, Lio/reactivex/observers/BaseTestConsumer;->errors:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 738
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 739
    .local v2, "errorMessage":Ljava/lang/String;
    invoke-static {p1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 742
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "errorMessage":Ljava/lang/String;
    nop

    .line 745
    return-object p0

    .line 740
    .restart local v1    # "e":Ljava/lang/Throwable;
    .restart local v2    # "errorMessage":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error message differs; exptected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v3

    throw v3

    .line 743
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_1
    const-string v1, "Multiple errors"

    invoke-virtual {p0, v1}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1

    .line 734
    :cond_2
    const-string v1, "No errors"

    invoke-virtual {p0, v1}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method public final varargs assertFailure(Lio/reactivex/functions/Predicate;[Ljava/lang/Object;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Predicate<",
            "Ljava/lang/Throwable;",
            ">;[TT;)TU;"
        }
    .end annotation

    .line 824
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    .local p1, "errorPredicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<Ljava/lang/Throwable;>;"
    .local p2, "values":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lio/reactivex/observers/BaseTestConsumer;->assertSubscribed()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 825
    invoke-virtual {v0, p2}, Lio/reactivex/observers/BaseTestConsumer;->assertValues([Ljava/lang/Object;)Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 826
    invoke-virtual {v0, p1}, Lio/reactivex/observers/BaseTestConsumer;->assertError(Lio/reactivex/functions/Predicate;)Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 827
    invoke-virtual {v0}, Lio/reactivex/observers/BaseTestConsumer;->assertNotComplete()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 824
    return-object v0
.end method

.method public final varargs assertFailure(Ljava/lang/Class;[Ljava/lang/Object;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;[TT;)TU;"
        }
    .end annotation

    .line 808
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    .local p1, "error":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    .local p2, "values":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lio/reactivex/observers/BaseTestConsumer;->assertSubscribed()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 809
    invoke-virtual {v0, p2}, Lio/reactivex/observers/BaseTestConsumer;->assertValues([Ljava/lang/Object;)Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 810
    invoke-virtual {v0, p1}, Lio/reactivex/observers/BaseTestConsumer;->assertError(Ljava/lang/Class;)Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 811
    invoke-virtual {v0}, Lio/reactivex/observers/BaseTestConsumer;->assertNotComplete()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 808
    return-object v0
.end method

.method public final varargs assertFailureAndMessage(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 1
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/String;",
            "[TT;)TU;"
        }
    .end annotation

    .line 841
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    .local p1, "error":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    .local p3, "values":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lio/reactivex/observers/BaseTestConsumer;->assertSubscribed()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 842
    invoke-virtual {v0, p3}, Lio/reactivex/observers/BaseTestConsumer;->assertValues([Ljava/lang/Object;)Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 843
    invoke-virtual {v0, p1}, Lio/reactivex/observers/BaseTestConsumer;->assertError(Ljava/lang/Class;)Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 844
    invoke-virtual {v0, p2}, Lio/reactivex/observers/BaseTestConsumer;->assertErrorMessage(Ljava/lang/String;)Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 845
    invoke-virtual {v0}, Lio/reactivex/observers/BaseTestConsumer;->assertNotComplete()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 841
    return-object v0
.end method

.method public final assertNever(Lio/reactivex/functions/Predicate;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)TU;"
        }
    .end annotation

    .line 416
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    .local p1, "valuePredicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 418
    .local v0, "s":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 419
    iget-object v2, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 421
    .local v2, "v":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-interface {p1, v2}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 426
    nop

    .line 418
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    .restart local v2    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " matches predicate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", which was not expected."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v3

    .end local v0    # "s":I
    .end local v1    # "i":I
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    .end local p1    # "valuePredicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .restart local v0    # "s":I
    .restart local v1    # "i":I
    .restart local v2    # "v":Ljava/lang/Object;, "TT;"
    .restart local p1    # "valuePredicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    :catch_0
    move-exception v3

    .line 425
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 428
    .end local v1    # "i":I
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_1
    return-object p0
.end method

.method public final assertNever(Ljava/lang/Object;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TU;"
        }
    .end annotation

    .line 374
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 376
    .local v0, "s":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 377
    iget-object v2, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 378
    .local v2, "v":Ljava/lang/Object;, "TT;"
    invoke-static {v2, p1}, Lio/reactivex/internal/functions/ObjectHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 376
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    .restart local v2    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is equal to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lio/reactivex/observers/BaseTestConsumer;->valueAndClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; Expected them to be different"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v3

    throw v3

    .line 382
    .end local v1    # "i":I
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object p0
.end method

.method public final assertNoErrors()Lio/reactivex/observers/BaseTestConsumer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 272
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 273
    .local v0, "s":I
    if-nez v0, :cond_0

    .line 276
    return-object p0

    .line 274
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error(s) present: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/reactivex/observers/BaseTestConsumer;->errors:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method public final assertNoTimeout()Lio/reactivex/observers/BaseTestConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 1072
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/observers/BaseTestConsumer;->timeout:Z

    if-nez v0, :cond_0

    .line 1075
    return-object p0

    .line 1073
    :cond_0
    const-string v0, "Timeout?!"

    invoke-virtual {p0, v0}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public final assertNoValues()Lio/reactivex/observers/BaseTestConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 525
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/reactivex/observers/BaseTestConsumer;->assertValueCount(I)Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    return-object v0
.end method

.method public final assertNotComplete()Lio/reactivex/observers/BaseTestConsumer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 256
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iget-wide v0, p0, Lio/reactivex/observers/BaseTestConsumer;->completions:J

    .line 257
    .local v0, "c":J
    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 260
    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 263
    return-object p0

    .line 261
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple completions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2

    .line 258
    :cond_1
    const-string v2, "Completed!"

    invoke-virtual {p0, v2}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2
.end method

.method public abstract assertNotSubscribed()Lio/reactivex/observers/BaseTestConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation
.end method

.method public final assertNotTerminated()Lio/reactivex/observers/BaseTestConsumer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 688
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 691
    return-object p0

    .line 689
    :cond_0
    const-string v0, "Subscriber terminated!"

    invoke-virtual {p0, v0}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public final varargs assertResult([Ljava/lang/Object;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)TU;"
        }
    .end annotation

    .line 794
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lio/reactivex/observers/BaseTestConsumer;->assertSubscribed()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 795
    invoke-virtual {v0, p1}, Lio/reactivex/observers/BaseTestConsumer;->assertValues([Ljava/lang/Object;)Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 796
    invoke-virtual {v0}, Lio/reactivex/observers/BaseTestConsumer;->assertNoErrors()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 797
    invoke-virtual {v0}, Lio/reactivex/observers/BaseTestConsumer;->assertComplete()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 794
    return-object v0
.end method

.method public abstract assertSubscribed()Lio/reactivex/observers/BaseTestConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation
.end method

.method public final assertTerminated()Lio/reactivex/observers/BaseTestConsumer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 664
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 667
    iget-wide v0, p0, Lio/reactivex/observers/BaseTestConsumer;->completions:J

    .line 668
    .local v0, "c":J
    const-wide/16 v4, 0x1

    cmp-long v4, v0, v4

    if-gtz v4, :cond_3

    .line 671
    iget-object v4, p0, Lio/reactivex/observers/BaseTestConsumer;->errors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 672
    .local v4, "s":I
    const/4 v5, 0x1

    if-gt v4, v5, :cond_2

    .line 676
    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    .line 677
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Terminated with multiple completions and errors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2

    .line 679
    :cond_1
    :goto_0
    return-object p0

    .line 673
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Terminated with multiple errors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2

    .line 669
    .end local v4    # "s":I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Terminated with multiple completions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2

    .line 665
    .end local v0    # "c":J
    :cond_4
    const-string v0, "Subscriber still running!"

    invoke-virtual {p0, v0}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public final assertTimeout()Lio/reactivex/observers/BaseTestConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 1058
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/observers/BaseTestConsumer;->timeout:Z

    if-eqz v0, :cond_0

    .line 1061
    return-object p0

    .line 1059
    :cond_0
    const-string v0, "No timeout?!"

    invoke-virtual {p0, v0}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public final assertValue(Lio/reactivex/functions/Predicate;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Predicate<",
            "TT;>;)TU;"
        }
    .end annotation

    .line 395
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    .local p1, "valuePredicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/observers/BaseTestConsumer;->assertValueAt(ILio/reactivex/functions/Predicate;)Lio/reactivex/observers/BaseTestConsumer;

    .line 397
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 401
    return-object p0

    .line 398
    :cond_0
    const-string v0, "Value present but other values as well"

    invoke-virtual {p0, v0}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public final assertValue(Ljava/lang/Object;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TU;"
        }
    .end annotation

    .line 352
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 353
    .local v0, "s":I
    const-string v1, " but was: "

    const-string v2, "expected: "

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 356
    iget-object v3, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 357
    .local v3, "v":Ljava/lang/Object;, "TT;"
    invoke-static {p1, v3}, Lio/reactivex/internal/functions/ObjectHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 360
    return-object p0

    .line 358
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lio/reactivex/observers/BaseTestConsumer;->valueAndClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lio/reactivex/observers/BaseTestConsumer;->valueAndClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1

    .line 354
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lio/reactivex/observers/BaseTestConsumer;->valueAndClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method public final assertValueAt(ILio/reactivex/functions/Predicate;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/functions/Predicate<",
            "TT;>;)TU;"
        }
    .end annotation

    .line 469
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    .local p2, "valuePredicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 470
    .local v0, "s":I
    if-eqz v0, :cond_3

    .line 474
    iget-object v1, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 478
    const/4 v1, 0x0

    .line 481
    .local v1, "found":Z
    :try_start_0
    iget-object v2, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 482
    const/4 v1, 0x1

    .line 486
    :cond_0
    nop

    .line 488
    if-eqz v1, :cond_1

    .line 491
    return-object p0

    .line 489
    :cond_1
    const-string v2, "Value not present"

    invoke-virtual {p0, v2}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2

    .line 484
    :catch_0
    move-exception v2

    .line 485
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 475
    .end local v1    # "found":Z
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1

    .line 471
    :cond_3
    const-string v1, "No values"

    invoke-virtual {p0, v1}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method public final assertValueAt(ILjava/lang/Object;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TU;"
        }
    .end annotation

    .line 442
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 443
    .local v0, "s":I
    if-eqz v0, :cond_2

    .line 447
    if-ge p1, v0, :cond_1

    .line 451
    iget-object v1, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 452
    .local v1, "v":Ljava/lang/Object;, "TT;"
    invoke-static {p2, v1}, Lio/reactivex/internal/functions/ObjectHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    return-object p0

    .line 453
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lio/reactivex/observers/BaseTestConsumer;->valueAndClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lio/reactivex/observers/BaseTestConsumer;->valueAndClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2

    .line 448
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1

    .line 444
    :cond_2
    const-string v1, "No values"

    invoke-virtual {p0, v1}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method public final assertValueCount(I)Lio/reactivex/observers/BaseTestConsumer;
    .locals 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TU;"
        }
    .end annotation

    .line 513
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 514
    .local v0, "s":I
    if-ne v0, p1, :cond_0

    .line 517
    return-object p0

    .line 515
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value counts differ; expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method public final assertValueSequence(Ljava/lang/Iterable;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)TU;"
        }
    .end annotation

    .line 613
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    .local p1, "sequence":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    const/4 v0, 0x0

    .line 614
    .local v0, "i":I
    iget-object v1, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 615
    .local v1, "actualIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 619
    .local v2, "expectedIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 620
    .local v3, "expectedNext":Z
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 622
    .local v4, "actualNext":Z
    if-eqz v4, :cond_2

    if-nez v3, :cond_0

    .line 623
    goto :goto_1

    .line 626
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 627
    .local v5, "u":Ljava/lang/Object;, "TT;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 629
    .local v6, "v":Ljava/lang/Object;, "TT;"
    invoke-static {v5, v6}, Lio/reactivex/internal/functions/ObjectHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 632
    nop

    .end local v5    # "u":Ljava/lang/Object;, "TT;"
    .end local v6    # "v":Ljava/lang/Object;, "TT;"
    add-int/lit8 v0, v0, 0x1

    .line 633
    goto :goto_0

    .line 630
    .restart local v5    # "u":Ljava/lang/Object;, "TT;"
    .restart local v6    # "v":Ljava/lang/Object;, "TT;"
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Values at position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " differ; expected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lio/reactivex/observers/BaseTestConsumer;->valueAndClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but was: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lio/reactivex/observers/BaseTestConsumer;->valueAndClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v7

    throw v7

    .line 635
    .end local v5    # "u":Ljava/lang/Object;, "TT;"
    .end local v6    # "v":Ljava/lang/Object;, "TT;"
    :cond_2
    :goto_1
    const-string v5, ")"

    if-nez v4, :cond_4

    .line 638
    if-nez v3, :cond_3

    .line 641
    return-object p0

    .line 639
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fewer values received than expected ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v5

    throw v5

    .line 636
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "More values received than expected ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v5

    throw v5
.end method

.method public final assertValueSequenceOnly(Ljava/lang/Iterable;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)TU;"
        }
    .end annotation

    .line 652
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    .local p1, "sequence":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-virtual {p0}, Lio/reactivex/observers/BaseTestConsumer;->assertSubscribed()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 653
    invoke-virtual {v0, p1}, Lio/reactivex/observers/BaseTestConsumer;->assertValueSequence(Ljava/lang/Iterable;)Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 654
    invoke-virtual {v0}, Lio/reactivex/observers/BaseTestConsumer;->assertNoErrors()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 655
    invoke-virtual {v0}, Lio/reactivex/observers/BaseTestConsumer;->assertNotComplete()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 652
    return-object v0
.end method

.method public final assertValueSet(Ljava/util/Collection;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)TU;"
        }
    .end annotation

    .line 580
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    .local p1, "expected":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {p0}, Lio/reactivex/observers/BaseTestConsumer;->assertNoValues()Lio/reactivex/observers/BaseTestConsumer;

    .line 582
    return-object p0

    .line 584
    :cond_0
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 585
    .local v1, "v":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 586
    .restart local v1    # "v":Ljava/lang/Object;, "TT;"
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value not in the expected collection: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lio/reactivex/observers/BaseTestConsumer;->valueAndClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 589
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    :cond_2
    return-object p0
.end method

.method public final assertValueSetOnly(Ljava/util/Collection;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)TU;"
        }
    .end annotation

    .line 600
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    .local p1, "expected":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-virtual {p0}, Lio/reactivex/observers/BaseTestConsumer;->assertSubscribed()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 601
    invoke-virtual {v0, p1}, Lio/reactivex/observers/BaseTestConsumer;->assertValueSet(Ljava/util/Collection;)Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Lio/reactivex/observers/BaseTestConsumer;->assertNoErrors()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 603
    invoke-virtual {v0}, Lio/reactivex/observers/BaseTestConsumer;->assertNotComplete()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 600
    return-object v0
.end method

.method public final varargs assertValues([Ljava/lang/Object;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)TU;"
        }
    .end annotation

    .line 536
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 537
    .local v0, "s":I
    array-length v1, p1

    const-string v2, " but was: "

    if-ne v0, v1, :cond_2

    .line 541
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 542
    iget-object v3, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 543
    .local v3, "v":Ljava/lang/Object;, "TT;"
    aget-object v4, p1, v1

    .line 544
    .local v4, "u":Ljava/lang/Object;, "TT;"
    invoke-static {v4, v3}, Lio/reactivex/internal/functions/ObjectHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 541
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    .end local v4    # "u":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 545
    .restart local v3    # "v":Ljava/lang/Object;, "TT;"
    .restart local v4    # "u":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Values at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " differ; expected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lio/reactivex/observers/BaseTestConsumer;->valueAndClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Lio/reactivex/observers/BaseTestConsumer;->valueAndClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2

    .line 548
    .end local v1    # "i":I
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    .end local v4    # "u":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object p0

    .line 538
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value count differs; expected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/reactivex/observers/BaseTestConsumer;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method public final varargs assertValuesOnly([Ljava/lang/Object;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)TU;"
        }
    .end annotation

    .line 559
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lio/reactivex/observers/BaseTestConsumer;->assertSubscribed()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 560
    invoke-virtual {v0, p1}, Lio/reactivex/observers/BaseTestConsumer;->assertValues([Ljava/lang/Object;)Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Lio/reactivex/observers/BaseTestConsumer;->assertNoErrors()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 562
    invoke-virtual {v0}, Lio/reactivex/observers/BaseTestConsumer;->assertNotComplete()Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    .line 559
    return-object v0
.end method

.method public final await()Lio/reactivex/observers/BaseTestConsumer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 209
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 210
    return-object p0

    .line 213
    :cond_0
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 214
    return-object p0
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 227
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 228
    .local v0, "d":Z
    :goto_1
    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lio/reactivex/observers/BaseTestConsumer;->timeout:Z

    .line 229
    return v0
.end method

.method public final awaitCount(I)Lio/reactivex/observers/BaseTestConsumer;
    .locals 3
    .param p1, "atLeast"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TU;"
        }
    .end annotation

    .line 969
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    sget-object v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->SLEEP_10MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, p1, v0, v1, v2}, Lio/reactivex/observers/BaseTestConsumer;->awaitCount(ILjava/lang/Runnable;J)Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    return-object v0
.end method

.method public final awaitCount(ILjava/lang/Runnable;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 2
    .param p1, "atLeast"    # I
    .param p2, "waitStrategy"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Runnable;",
            ")TU;"
        }
    .end annotation

    .line 987
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/reactivex/observers/BaseTestConsumer;->awaitCount(ILjava/lang/Runnable;J)Lio/reactivex/observers/BaseTestConsumer;

    move-result-object v0

    return-object v0
.end method

.method public final awaitCount(ILjava/lang/Runnable;J)Lio/reactivex/observers/BaseTestConsumer;
    .locals 6
    .param p1, "atLeast"    # I
    .param p2, "waitStrategy"    # Ljava/lang/Runnable;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Runnable;",
            "J)TU;"
        }
    .end annotation

    .line 1006
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1008
    .local v0, "start":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v4, v4, p3

    if-ltz v4, :cond_0

    .line 1009
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/reactivex/observers/BaseTestConsumer;->timeout:Z

    .line 1010
    goto :goto_1

    .line 1012
    :cond_0
    iget-object v4, p0, Lio/reactivex/observers/BaseTestConsumer;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    .line 1013
    goto :goto_1

    .line 1015
    :cond_1
    iget-object v2, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, p1, :cond_2

    .line 1016
    nop

    .line 1021
    :goto_1
    return-object p0

    .line 1019
    :cond_2
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public final awaitDone(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 2
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TU;"
        }
    .end annotation

    .line 859
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    :try_start_0
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/observers/BaseTestConsumer;->timeout:Z

    .line 861
    invoke-virtual {p0}, Lio/reactivex/observers/BaseTestConsumer;->dispose()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :cond_0
    nop

    .line 867
    return-object p0

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lio/reactivex/observers/BaseTestConsumer;->dispose()V

    .line 865
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final awaitTerminalEvent()Z
    .locals 2

    .line 701
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    :try_start_0
    invoke-virtual {p0}, Lio/reactivex/observers/BaseTestConsumer;->await()Lio/reactivex/observers/BaseTestConsumer;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    const/4 v0, 0x1

    return v0

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 705
    const/4 v1, 0x0

    return v1
.end method

.method public final awaitTerminalEvent(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 718
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lio/reactivex/observers/BaseTestConsumer;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 721
    const/4 v1, 0x0

    return v1
.end method

.method public final clearTimeout()Lio/reactivex/observers/BaseTestConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 1046
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/reactivex/observers/BaseTestConsumer;->timeout:Z

    .line 1047
    return-object p0
.end method

.method public final completions()J
    .locals 2

    .line 124
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iget-wide v0, p0, Lio/reactivex/observers/BaseTestConsumer;->completions:J

    return-wide v0
.end method

.method public final errorCount()I
    .locals 1

    .line 148
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final errors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->errors:Ljava/util/List;

    return-object v0
.end method

.method protected final fail(Ljava/lang/String;)Ljava/lang/AssertionError;
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .line 161
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 162
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    const-string v2, "latch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/reactivex/observers/BaseTestConsumer;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    const-string v3, "values = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    const-string v3, "errors = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lio/reactivex/observers/BaseTestConsumer;->errors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    const-string v2, "completions = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/reactivex/observers/BaseTestConsumer;->completions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 171
    iget-boolean v1, p0, Lio/reactivex/observers/BaseTestConsumer;->timeout:Z

    if-eqz v1, :cond_0

    .line 172
    const-string v1, ", timeout!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/observers/BaseTestConsumer;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    const-string v1, ", disposed!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_1
    iget-object v1, p0, Lio/reactivex/observers/BaseTestConsumer;->tag:Ljava/lang/CharSequence;

    .line 180
    .local v1, "tag":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 181
    const-string v2, ", tag = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 182
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 185
    :cond_2
    const/16 v2, 0x29

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 190
    .local v2, "ae":Ljava/lang/AssertionError;
    iget-object v3, p0, Lio/reactivex/observers/BaseTestConsumer;->errors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 191
    iget-object v3, p0, Lio/reactivex/observers/BaseTestConsumer;->errors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 192
    iget-object v3, p0, Lio/reactivex/observers/BaseTestConsumer;->errors:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0

    .line 194
    :cond_3
    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    iget-object v4, p0, Lio/reactivex/observers/BaseTestConsumer;->errors:Ljava/util/List;

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    .line 195
    .local v3, "ce":Lio/reactivex/exceptions/CompositeException;
    invoke-virtual {v2, v3}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 198
    .end local v3    # "ce":Lio/reactivex/exceptions/CompositeException;
    :cond_4
    :goto_0
    return-object v2
.end method

.method public final getEvents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 757
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-virtual {p0}, Lio/reactivex/observers/BaseTestConsumer;->values()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-virtual {p0}, Lio/reactivex/observers/BaseTestConsumer;->errors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .local v1, "completeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-wide/16 v2, 0x0

    .local v2, "i":J
    :goto_0
    iget-wide v4, p0, Lio/reactivex/observers/BaseTestConsumer;->completions:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 765
    invoke-static {}, Lio/reactivex/Notification;->createOnComplete()Lio/reactivex/Notification;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    .line 767
    .end local v2    # "i":J
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    return-object v0
.end method

.method public final isTerminated()Z
    .locals 4

    .line 132
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isTimeout()Z
    .locals 1

    .line 1034
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/observers/BaseTestConsumer;->timeout:Z

    return v0
.end method

.method public final lastThread()Ljava/lang/Thread;
    .locals 1

    .line 72
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->lastThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public final valueCount()I
    .locals 1

    .line 140
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final values()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/observers/BaseTestConsumer;->values:Ljava/util/List;

    return-object v0
.end method

.method public final withTag(Ljava/lang/CharSequence;)Lio/reactivex/observers/BaseTestConsumer;
    .locals 0
    .param p1, "tag"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TU;"
        }
    .end annotation

    .line 891
    .local p0, "this":Lio/reactivex/observers/BaseTestConsumer;, "Lio/reactivex/observers/BaseTestConsumer<TT;TU;>;"
    iput-object p1, p0, Lio/reactivex/observers/BaseTestConsumer;->tag:Ljava/lang/CharSequence;

    .line 892
    return-object p0
.end method
