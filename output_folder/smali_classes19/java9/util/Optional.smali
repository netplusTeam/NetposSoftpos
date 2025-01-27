.class public final Ljava9/util/Optional;
.super Ljava/lang/Object;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY:Ljava9/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/Optional<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Ljava9/util/Optional;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava9/util/Optional;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ljava9/util/Optional;->EMPTY:Ljava9/util/Optional;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Ljava9/util/Optional;->value:Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public static empty()Ljava9/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 89
    sget-object v0, Ljava9/util/Optional;->EMPTY:Ljava9/util/Optional;

    .line 90
    .local v0, "t":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Ljava9/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava9/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 113
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava9/util/Optional;

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava9/util/Optional;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Object;)Ljava9/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava9/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 127
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    sget-object v0, Ljava9/util/Optional;->EMPTY:Ljava9/util/Optional;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava9/util/Optional;

    invoke-direct {v0, p0}, Ljava9/util/Optional;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 420
    .local p0, "this":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    if-ne p0, p1, :cond_0

    .line 421
    const/4 v0, 0x1

    return v0

    .line 424
    :cond_0
    instance-of v0, p1, Ljava9/util/Optional;

    if-nez v0, :cond_1

    .line 425
    const/4 v0, 0x0

    return v0

    .line 428
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava9/util/Optional;

    .line 429
    .local v0, "other":Ljava9/util/Optional;, "Ljava9/util/Optional<*>;"
    iget-object v1, p0, Ljava9/util/Optional;->value:Ljava/lang/Object;

    iget-object v2, v0, Ljava9/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava9/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public filter(Ljava9/util/function/Predicate;)Ljava9/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Predicate<",
            "-TT;>;)",
            "Ljava9/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 211
    .local p0, "this":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    .local p1, "predicate":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {p0}, Ljava9/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    return-object p0

    .line 215
    :cond_0
    iget-object v0, p0, Ljava9/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava9/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava9/util/Optional;->empty()Ljava9/util/Optional;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public flatMap(Ljava9/util/function/Function;)Ljava9/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+",
            "Ljava9/util/Optional<",
            "+TU;>;>;)",
            "Ljava9/util/Optional<",
            "TU;>;"
        }
    .end annotation

    .line 281
    .local p0, "this":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    .local p1, "mapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+Ljava9/util/Optional<+TU;>;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-virtual {p0}, Ljava9/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-static {}, Ljava9/util/Optional;->empty()Ljava9/util/Optional;

    move-result-object v0

    return-object v0

    .line 286
    :cond_0
    iget-object v0, p0, Ljava9/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/Optional;

    .line 287
    .local v0, "r":Ljava9/util/Optional;, "Ljava9/util/Optional<TU;>;"
    invoke-static {v0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava9/util/Optional;

    return-object v1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 142
    .local p0, "this":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    invoke-virtual {p0}, Ljava9/util/Optional;->orElseThrow()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 441
    .local p0, "this":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    iget-object v0, p0, Ljava9/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava9/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ifPresent(Ljava9/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 174
    .local p0, "this":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava9/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {p1, v0}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 177
    :cond_0
    return-void
.end method

.method public ifPresentOrElse(Ljava9/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "emptyAction"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 192
    .local p0, "this":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava9/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 193
    invoke-interface {p1, v0}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 197
    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 162
    .local p0, "this":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    iget-object v0, p0, Ljava9/util/Optional;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPresent()Z
    .locals 1

    .line 151
    .local p0, "this":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    iget-object v0, p0, Ljava9/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public map(Ljava9/util/function/Function;)Ljava9/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava9/util/Optional<",
            "TU;>;"
        }
    .end annotation

    .line 253
    .local p0, "this":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    .local p1, "mapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TU;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {p0}, Ljava9/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-static {}, Ljava9/util/Optional;->empty()Ljava9/util/Optional;

    move-result-object v0

    return-object v0

    .line 257
    :cond_0
    iget-object v0, p0, Ljava9/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava9/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava9/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public or(Ljava9/util/function/Supplier;)Ljava9/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Supplier<",
            "+",
            "Ljava9/util/Optional<",
            "+TT;>;>;)",
            "Ljava9/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 305
    .local p0, "this":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    .local p1, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<+Ljava9/util/Optional<+TT;>;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-virtual {p0}, Ljava9/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    return-object p0

    .line 310
    :cond_0
    invoke-interface {p1}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/Optional;

    .line 311
    .local v0, "r":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    invoke-static {v0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava9/util/Optional;

    return-object v1
.end method

.method public orElse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 348
    .local p0, "this":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    .local p1, "other":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava9/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public orElseGet(Ljava9/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 362
    .local p0, "this":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    .local p1, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<+TT;>;"
    iget-object v0, p0, Ljava9/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public orElseThrow()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 374
    .local p0, "this":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    iget-object v0, p0, Ljava9/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 377
    return-object v0

    .line 375
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orElseThrow(Ljava9/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava9/util/function/Supplier<",
            "+TX;>;)TT;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 398
    .local p0, "this":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    .local p1, "exceptionSupplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<+TX;>;"
    iget-object v0, p0, Ljava9/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 399
    return-object v0

    .line 401
    :cond_0
    invoke-interface {p1}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public stream()Ljava9/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 332
    .local p0, "this":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    invoke-virtual {p0}, Ljava9/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    invoke-static {}, Ljava9/util/stream/Stream;->empty()Ljava9/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 335
    :cond_0
    iget-object v0, p0, Ljava9/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava9/util/stream/Stream;->of(Ljava/lang/Object;)Ljava9/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 458
    .local p0, "this":Ljava9/util/Optional;, "Ljava9/util/Optional<TT;>;"
    iget-object v0, p0, Ljava9/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 459
    const-string v0, "Optional[%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Optional.empty"

    :goto_0
    return-object v0
.end method
