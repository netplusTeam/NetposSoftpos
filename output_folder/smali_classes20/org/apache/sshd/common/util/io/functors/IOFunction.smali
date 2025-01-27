.class public interface abstract Lorg/apache/sshd/common/util/io/functors/IOFunction;
.super Ljava/lang/Object;
.source "IOFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static identity()Lorg/apache/sshd/common/util/io/functors/IOFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/sshd/common/util/io/functors/IOFunction<",
            "TT;TT;>;"
        }
    .end annotation

    .line 84
    new-instance v0, Lorg/apache/sshd/common/util/io/functors/IOFunction$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/io/functors/IOFunction$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$andThen$1(Lorg/apache/sshd/common/util/io/functors/IOFunction;Lorg/apache/sshd/common/util/io/functors/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/sshd/common/util/io/functors/IOFunction;
    .param p1, "after"    # Lorg/apache/sshd/common/util/io/functors/IOFunction;
    .param p2, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/apache/sshd/common/util/io/functors/IOFunction;, "Lorg/apache/sshd/common/util/io/functors/IOFunction<TT;TR;>;"
    invoke-interface {p0, p2}, Lorg/apache/sshd/common/util/io/functors/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/sshd/common/util/io/functors/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$compose$0(Lorg/apache/sshd/common/util/io/functors/IOFunction;Lorg/apache/sshd/common/util/io/functors/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/sshd/common/util/io/functors/IOFunction;
    .param p1, "before"    # Lorg/apache/sshd/common/util/io/functors/IOFunction;
    .param p2, "v"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/apache/sshd/common/util/io/functors/IOFunction;, "Lorg/apache/sshd/common/util/io/functors/IOFunction<TT;TR;>;"
    invoke-interface {p1, p2}, Lorg/apache/sshd/common/util/io/functors/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/util/io/functors/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$identity$2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    return-object p0
.end method


# virtual methods
.method public andThen(Lorg/apache/sshd/common/util/io/functors/IOFunction;)Lorg/apache/sshd/common/util/io/functors/IOFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/util/io/functors/IOFunction<",
            "-TR;+TV;>;)",
            "Lorg/apache/sshd/common/util/io/functors/IOFunction<",
            "TT;TV;>;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/apache/sshd/common/util/io/functors/IOFunction;, "Lorg/apache/sshd/common/util/io/functors/IOFunction<TT;TR;>;"
    .local p1, "after":Lorg/apache/sshd/common/util/io/functors/IOFunction;, "Lorg/apache/sshd/common/util/io/functors/IOFunction<-TR;+TV;>;"
    const-string v0, "No composing function provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    new-instance v0, Lorg/apache/sshd/common/util/io/functors/IOFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/util/io/functors/IOFunction$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/util/io/functors/IOFunction;Lorg/apache/sshd/common/util/io/functors/IOFunction;)V

    return-object v0
.end method

.method public abstract apply(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public compose(Lorg/apache/sshd/common/util/io/functors/IOFunction;)Lorg/apache/sshd/common/util/io/functors/IOFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/util/io/functors/IOFunction<",
            "-TV;+TT;>;)",
            "Lorg/apache/sshd/common/util/io/functors/IOFunction<",
            "TV;TR;>;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/apache/sshd/common/util/io/functors/IOFunction;, "Lorg/apache/sshd/common/util/io/functors/IOFunction<TT;TR;>;"
    .local p1, "before":Lorg/apache/sshd/common/util/io/functors/IOFunction;, "Lorg/apache/sshd/common/util/io/functors/IOFunction<-TV;+TT;>;"
    const-string v0, "No composing function provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    new-instance v0, Lorg/apache/sshd/common/util/io/functors/IOFunction$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/util/io/functors/IOFunction$$ExternalSyntheticLambda2;-><init>(Lorg/apache/sshd/common/util/io/functors/IOFunction;Lorg/apache/sshd/common/util/io/functors/IOFunction;)V

    return-object v0
.end method
