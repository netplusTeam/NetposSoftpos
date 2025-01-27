.class public Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;
.super Ljava/lang/Object;
.source "LazyMatchingTypeIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected finished:Z

.field protected nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;, "Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator<TT;>;"
    .local p1, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;->values:Ljava/util/Iterator;

    .line 46
    const-string v0, "No type selector specified"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;->type:Ljava/lang/Class;

    .line 47
    return-void
.end method

.method public static lazySelectMatchingTypes(Ljava/util/Iterator;Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 102
    .local p0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "No type selector specified"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;-><init>(Ljava/util/Iterator;Ljava/lang/Class;)V

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

    .line 54
    .local p0, "this":Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;, "Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getValues()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "*>;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;, "Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;->values:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 59
    .local p0, "this":Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;, "Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator<TT;>;"
    iget-boolean v0, p0, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;->finished:Z

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    return v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;->getValues()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->selectNextMatchingValue(Ljava/util/Iterator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;->nextValue:Ljava/lang/Object;

    .line 64
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 65
    iput-boolean v1, p0, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;->finished:Z

    .line 68
    :cond_1
    iget-boolean v0, p0, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;->finished:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;, "Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator<TT;>;"
    iget-boolean v0, p0, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;->finished:Z

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;->nextValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;->nextValue:Ljava/lang/Object;

    .line 81
    .local v0, "v":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;->nextValue:Ljava/lang/Object;

    .line 82
    return-object v0

    .line 77
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'next()\' called without asking \'hasNext()\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "All values have been exhausted"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 87
    .local p0, "this":Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;, "Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 88
    .local v0, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Ljava/util/Iterator;

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
