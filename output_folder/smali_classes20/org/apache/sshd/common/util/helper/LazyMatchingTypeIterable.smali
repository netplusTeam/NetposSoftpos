.class public Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable;
.super Ljava/lang/Object;
.source "LazyMatchingTypeIterable.java"

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
.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final values:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable;, "Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable<TT;>;"
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable;->values:Ljava/lang/Iterable;

    .line 41
    const-string v0, "No type selector specified"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable;->type:Ljava/lang/Class;

    .line 42
    return-void
.end method

.method public static lazySelectMatchingTypes(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 79
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "No type selector specified"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable;-><init>(Ljava/lang/Iterable;Ljava/lang/Class;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 49
    .local p0, "this":Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable;, "Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getValues()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "*>;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable;, "Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable;->values:Ljava/lang/Iterable;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable;, "Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable<TT;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable;->getValues()Ljava/lang/Iterable;

    move-result-object v0

    .line 55
    .local v0, "vals":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 59
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;->lazySelectMatchingTypes(Ljava/util/Iterator;Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    .local p0, "this":Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable;, "Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable<TT;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 65
    .local v0, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[lazy-select]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
