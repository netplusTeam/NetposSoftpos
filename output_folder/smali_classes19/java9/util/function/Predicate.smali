.class public interface abstract Ljava9/util/function/Predicate;
.super Ljava/lang/Object;
.source "Predicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static isEqual(Ljava/lang/Object;)Ljava9/util/function/Predicate;
    .locals 1
    .param p0, "targetRef"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava9/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 114
    if-nez p0, :cond_0

    new-instance v0, Ljava9/util/function/Predicate$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava9/util/function/Predicate$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava9/util/function/Predicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ljava9/util/function/Predicate$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$and$13(Ljava9/util/function/Predicate;Ljava9/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Ljava9/util/function/Predicate;
    .param p2, "t"    # Ljava/lang/Object;

    .line 68
    .local p0, "this":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<TT;>;"
    invoke-interface {p0, p2}, Ljava9/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava9/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$isEqual$16(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$negate$14(Ljava9/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Ljava9/util/function/Predicate;
    .param p1, "t"    # Ljava/lang/Object;

    .line 79
    .local p0, "this":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<TT;>;"
    invoke-interface {p0, p1}, Ljava9/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic lambda$or$15(Ljava9/util/function/Predicate;Ljava9/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Ljava9/util/function/Predicate;
    .param p2, "t"    # Ljava/lang/Object;

    .line 100
    .local p0, "this":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<TT;>;"
    invoke-interface {p0, p2}, Ljava9/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Ljava9/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static not(Ljava9/util/function/Predicate;)Ljava9/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Predicate<",
            "-TT;>;)",
            "Ljava9/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 135
    .local p0, "target":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<-TT;>;"
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-interface {p0}, Ljava9/util/function/Predicate;->negate()Ljava9/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public and(Ljava9/util/function/Predicate;)Ljava9/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Predicate<",
            "-TT;>;)",
            "Ljava9/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 67
    .local p0, "this":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<TT;>;"
    .local p1, "other":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava9/util/function/Predicate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Ljava9/util/function/Predicate$$ExternalSyntheticLambda3;-><init>(Ljava9/util/function/Predicate;Ljava9/util/function/Predicate;)V

    return-object v0
.end method

.method public negate()Ljava9/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 79
    .local p0, "this":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<TT;>;"
    new-instance v0, Ljava9/util/function/Predicate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Ljava9/util/function/Predicate$$ExternalSyntheticLambda4;-><init>(Ljava9/util/function/Predicate;)V

    return-object v0
.end method

.method public or(Ljava9/util/function/Predicate;)Ljava9/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Predicate<",
            "-TT;>;)",
            "Ljava9/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<TT;>;"
    .local p1, "other":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava9/util/function/Predicate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Ljava9/util/function/Predicate$$ExternalSyntheticLambda2;-><init>(Ljava9/util/function/Predicate;Ljava9/util/function/Predicate;)V

    return-object v0
.end method

.method public abstract test(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
