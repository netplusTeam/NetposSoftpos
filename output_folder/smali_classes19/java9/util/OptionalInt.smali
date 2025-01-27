.class public final Ljava9/util/OptionalInt;
.super Ljava/lang/Object;
.source "OptionalInt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/OptionalInt$OICache;
    }
.end annotation


# static fields
.field private static final EMPTY:Ljava9/util/OptionalInt;


# instance fields
.field private final isPresent:Z

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Ljava9/util/OptionalInt;

    invoke-direct {v0}, Ljava9/util/OptionalInt;-><init>()V

    sput-object v0, Ljava9/util/OptionalInt;->EMPTY:Ljava9/util/OptionalInt;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava9/util/OptionalInt;->isPresent:Z

    .line 91
    iput v0, p0, Ljava9/util/OptionalInt;->value:I

    .line 92
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "value"    # I

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/OptionalInt;->isPresent:Z

    .line 117
    iput p1, p0, Ljava9/util/OptionalInt;->value:I

    .line 118
    return-void
.end method

.method public static empty()Ljava9/util/OptionalInt;
    .locals 1

    .line 107
    sget-object v0, Ljava9/util/OptionalInt;->EMPTY:Ljava9/util/OptionalInt;

    return-object v0
.end method

.method public static of(I)Ljava9/util/OptionalInt;
    .locals 3
    .param p0, "value"    # I

    .line 127
    const/16 v0, 0x80

    .line 128
    .local v0, "offset":I
    const/16 v1, -0x80

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7f

    if-gt p0, v1, :cond_0

    .line 129
    sget-object v1, Ljava9/util/OptionalInt$OICache;->cache:[Ljava9/util/OptionalInt;

    add-int v2, p0, v0

    aget-object v1, v1, v2

    return-object v1

    .line 131
    :cond_0
    new-instance v1, Ljava9/util/OptionalInt;

    invoke-direct {v1, p0}, Ljava9/util/OptionalInt;-><init>(I)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 306
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 307
    return v0

    .line 310
    :cond_0
    instance-of v1, p1, Ljava9/util/OptionalInt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 311
    return v2

    .line 314
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava9/util/OptionalInt;

    .line 315
    .local v1, "other":Ljava9/util/OptionalInt;
    iget-boolean v3, p0, Ljava9/util/OptionalInt;->isPresent:Z

    if-eqz v3, :cond_2

    iget-boolean v4, v1, Ljava9/util/OptionalInt;->isPresent:Z

    if-eqz v4, :cond_2

    iget v3, p0, Ljava9/util/OptionalInt;->value:I

    iget v4, v1, Ljava9/util/OptionalInt;->value:I

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_2
    iget-boolean v4, v1, Ljava9/util/OptionalInt;->isPresent:Z

    if-ne v3, v4, :cond_3

    :goto_0
    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method public getAsInt()I
    .locals 1

    .line 145
    invoke-virtual {p0}, Ljava9/util/OptionalInt;->orElseThrow()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 329
    iget-boolean v0, p0, Ljava9/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava9/util/OptionalInt;->value:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ifPresent(Ljava9/util/function/IntConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava9/util/function/IntConsumer;

    .line 177
    iget-boolean v0, p0, Ljava9/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 178
    iget v0, p0, Ljava9/util/OptionalInt;->value:I

    invoke-interface {p1, v0}, Ljava9/util/function/IntConsumer;->accept(I)V

    .line 180
    :cond_0
    return-void
.end method

.method public ifPresentOrElse(Ljava9/util/function/IntConsumer;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava9/util/function/IntConsumer;
    .param p2, "emptyAction"    # Ljava/lang/Runnable;

    .line 195
    iget-boolean v0, p0, Ljava9/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 196
    iget v0, p0, Ljava9/util/OptionalInt;->value:I

    invoke-interface {p1, v0}, Ljava9/util/function/IntConsumer;->accept(I)V

    goto :goto_0

    .line 198
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 200
    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Ljava9/util/OptionalInt;->isPresent:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPresent()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Ljava9/util/OptionalInt;->isPresent:Z

    return v0
.end method

.method public orElse(I)I
    .locals 1
    .param p1, "other"    # I

    .line 234
    iget-boolean v0, p0, Ljava9/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava9/util/OptionalInt;->value:I

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public orElseGet(Ljava9/util/function/IntSupplier;)I
    .locals 1
    .param p1, "supplier"    # Ljava9/util/function/IntSupplier;

    .line 248
    iget-boolean v0, p0, Ljava9/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava9/util/OptionalInt;->value:I

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava9/util/function/IntSupplier;->getAsInt()I

    move-result v0

    :goto_0
    return v0
.end method

.method public orElseThrow()I
    .locals 2

    .line 260
    iget-boolean v0, p0, Ljava9/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 263
    iget v0, p0, Ljava9/util/OptionalInt;->value:I

    return v0

    .line 261
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orElseThrow(Ljava9/util/function/Supplier;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava9/util/function/Supplier<",
            "+TX;>;)I^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 284
    .local p1, "exceptionSupplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<+TX;>;"
    iget-boolean v0, p0, Ljava9/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 285
    iget v0, p0, Ljava9/util/OptionalInt;->value:I

    return v0

    .line 287
    :cond_0
    invoke-interface {p1}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public stream()Ljava9/util/stream/IntStream;
    .locals 1

    .line 219
    iget-boolean v0, p0, Ljava9/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 220
    iget v0, p0, Ljava9/util/OptionalInt;->value:I

    invoke-static {v0}, Ljava9/util/stream/IntStream;->of(I)Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    invoke-static {}, Ljava9/util/stream/IntStream;->empty()Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 346
    iget-boolean v0, p0, Ljava9/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Ljava9/util/OptionalInt;->value:I

    .line 347
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "OptionalInt[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "OptionalInt.empty"

    :goto_0
    return-object v0
.end method
