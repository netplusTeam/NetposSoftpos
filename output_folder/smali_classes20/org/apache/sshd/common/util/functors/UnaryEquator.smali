.class public interface abstract Lorg/apache/sshd/common/util/functors/UnaryEquator;
.super Ljava/lang/Object;
.source "UnaryEquator.java"

# interfaces
.implements Ljava/util/function/BiPredicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/BiPredicate<",
        "TT;TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static comparing(Ljava/util/Comparator;)Lorg/apache/sshd/common/util/functors/UnaryEquator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lorg/apache/sshd/common/util/functors/UnaryEquator<",
            "TT;>;"
        }
    .end annotation

    .line 98
    .local p0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const-string v0, "No comparator"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    new-instance v0, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda4;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static defaultEquality()Lorg/apache/sshd/common/util/functors/UnaryEquator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/sshd/common/util/functors/UnaryEquator<",
            "TT;>;"
        }
    .end annotation

    .line 77
    new-instance v0, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda5;-><init>()V

    return-object v0
.end method

.method public static falsum()Lorg/apache/sshd/common/util/functors/UnaryEquator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/sshd/common/util/functors/UnaryEquator<",
            "TT;>;"
        }
    .end annotation

    .line 117
    new-instance v0, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda3;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$and$0(Lorg/apache/sshd/common/util/functors/UnaryEquator;Lorg/apache/sshd/common/util/functors/UnaryEquator;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Lorg/apache/sshd/common/util/functors/UnaryEquator;
    .param p1, "other"    # Lorg/apache/sshd/common/util/functors/UnaryEquator;
    .param p2, "t1"    # Ljava/lang/Object;
    .param p3, "t2"    # Ljava/lang/Object;

    .line 46
    .local p0, "this":Lorg/apache/sshd/common/util/functors/UnaryEquator;, "Lorg/apache/sshd/common/util/functors/UnaryEquator<TT;>;"
    invoke-interface {p0, p2, p3}, Lorg/apache/sshd/common/util/functors/UnaryEquator;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2, p3}, Lorg/apache/sshd/common/util/functors/UnaryEquator;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$comparing$3(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "c"    # Ljava/util/Comparator;
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 99
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$falsum$5(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$negate$2(Lorg/apache/sshd/common/util/functors/UnaryEquator;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Lorg/apache/sshd/common/util/functors/UnaryEquator;
    .param p1, "t1"    # Ljava/lang/Object;
    .param p2, "t2"    # Ljava/lang/Object;

    .line 68
    .local p0, "this":Lorg/apache/sshd/common/util/functors/UnaryEquator;, "Lorg/apache/sshd/common/util/functors/UnaryEquator<TT;>;"
    invoke-interface {p0, p1, p2}, Lorg/apache/sshd/common/util/functors/UnaryEquator;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic lambda$or$1(Lorg/apache/sshd/common/util/functors/UnaryEquator;Lorg/apache/sshd/common/util/functors/UnaryEquator;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Lorg/apache/sshd/common/util/functors/UnaryEquator;
    .param p1, "other"    # Lorg/apache/sshd/common/util/functors/UnaryEquator;
    .param p2, "t1"    # Ljava/lang/Object;
    .param p3, "t2"    # Ljava/lang/Object;

    .line 60
    .local p0, "this":Lorg/apache/sshd/common/util/functors/UnaryEquator;, "Lorg/apache/sshd/common/util/functors/UnaryEquator<TT;>;"
    invoke-interface {p0, p2, p3}, Lorg/apache/sshd/common/util/functors/UnaryEquator;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2, p3}, Lorg/apache/sshd/common/util/functors/UnaryEquator;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic lambda$verum$4(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public static referenceEquality()Lorg/apache/sshd/common/util/functors/UnaryEquator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/sshd/common/util/functors/UnaryEquator<",
            "TT;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public static verum()Lorg/apache/sshd/common/util/functors/UnaryEquator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/sshd/common/util/functors/UnaryEquator<",
            "TT;>;"
        }
    .end annotation

    .line 108
    new-instance v0, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda2;-><init>()V

    return-object v0
.end method


# virtual methods
.method public and(Lorg/apache/sshd/common/util/functors/UnaryEquator;)Lorg/apache/sshd/common/util/functors/UnaryEquator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/functors/UnaryEquator<",
            "-TT;>;)",
            "Lorg/apache/sshd/common/util/functors/UnaryEquator<",
            "TT;>;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lorg/apache/sshd/common/util/functors/UnaryEquator;, "Lorg/apache/sshd/common/util/functors/UnaryEquator<TT;>;"
    .local p1, "other":Lorg/apache/sshd/common/util/functors/UnaryEquator;, "Lorg/apache/sshd/common/util/functors/UnaryEquator<-TT;>;"
    const-string v0, "No other equator to compose"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    new-instance v0, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/common/util/functors/UnaryEquator;Lorg/apache/sshd/common/util/functors/UnaryEquator;)V

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/util/function/BiPredicate;
    .locals 1

    .line 33
    .local p0, "this":Lorg/apache/sshd/common/util/functors/UnaryEquator;, "Lorg/apache/sshd/common/util/functors/UnaryEquator<TT;>;"
    invoke-interface {p0}, Lorg/apache/sshd/common/util/functors/UnaryEquator;->negate()Lorg/apache/sshd/common/util/functors/UnaryEquator;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/sshd/common/util/functors/UnaryEquator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/sshd/common/util/functors/UnaryEquator<",
            "TT;>;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lorg/apache/sshd/common/util/functors/UnaryEquator;, "Lorg/apache/sshd/common/util/functors/UnaryEquator<TT;>;"
    new-instance v0, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda7;-><init>(Lorg/apache/sshd/common/util/functors/UnaryEquator;)V

    return-object v0
.end method

.method public or(Lorg/apache/sshd/common/util/functors/UnaryEquator;)Lorg/apache/sshd/common/util/functors/UnaryEquator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/functors/UnaryEquator<",
            "-TT;>;)",
            "Lorg/apache/sshd/common/util/functors/UnaryEquator<",
            "TT;>;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/apache/sshd/common/util/functors/UnaryEquator;, "Lorg/apache/sshd/common/util/functors/UnaryEquator<TT;>;"
    .local p1, "other":Lorg/apache/sshd/common/util/functors/UnaryEquator;, "Lorg/apache/sshd/common/util/functors/UnaryEquator<-TT;>;"
    const-string v0, "No other equator to compose"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    new-instance v0, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda6;-><init>(Lorg/apache/sshd/common/util/functors/UnaryEquator;Lorg/apache/sshd/common/util/functors/UnaryEquator;)V

    return-object v0
.end method
