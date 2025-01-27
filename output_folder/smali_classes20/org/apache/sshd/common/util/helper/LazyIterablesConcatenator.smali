.class public Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;
.super Ljava/lang/Object;
.source "LazyIterablesConcatenator.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final iterables:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;, "Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator<TT;>;"
    .local p1, "iterables":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Iterable<+TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;->iterables:Ljava/lang/Iterable;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;)Ljava/lang/Iterable;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;

    .line 35
    iget-object v0, p0, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;->iterables:Ljava/lang/Iterable;

    return-object v0
.end method

.method public static lazyConcatenateIterables(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 112
    .local p0, "iterables":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Iterable<+TT;>;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;-><init>(Ljava/lang/Iterable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getIterables()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;, "Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;->iterables:Ljava/lang/Iterable;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;, "Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator<TT;>;"
    new-instance v0, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;-><init>(Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 101
    .local p0, "this":Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;, "Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[lazy-concat]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
