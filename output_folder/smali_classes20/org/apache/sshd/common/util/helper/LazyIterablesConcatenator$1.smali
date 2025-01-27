.class Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;
.super Ljava/lang/Object;
.source "LazyIterablesConcatenator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private currentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private finished:Z

.field private final itit:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;

    .line 48
    .local p0, "this":Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;, "Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;"
    iput-object p1, p0, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;->this$0:Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    nop

    .line 51
    invoke-static {p1}, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;->access$000(Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;)Ljava/lang/Iterable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;->access$000(Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;->itit:Ljava/util/Iterator;

    .line 49
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 57
    .local p0, "this":Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;, "Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;"
    iget-boolean v0, p0, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 58
    return v1

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;->currentIterator:Ljava/util/Iterator;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    return v2

    .line 66
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;->itit:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;->itit:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 68
    .local v0, "currentIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;->currentIterator:Ljava/util/Iterator;

    .line 69
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    return v2

    .line 72
    .end local v0    # "currentIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    :cond_2
    goto :goto_0

    .line 75
    :cond_3
    iput-boolean v2, p0, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;->finished:Z

    .line 76
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;, "Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;"
    iget-boolean v0, p0, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;->finished:Z

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;->currentIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'next()\' called without a preceding \'hasNext()\' query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "All elements have been exhausted"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 94
    .local p0, "this":Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;, "Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator$1;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ljava/util/Iterator;

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
