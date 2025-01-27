.class public interface abstract Lorg/jline/reader/History;
.super Ljava/lang/Object;
.source "History.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/reader/History$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/jline/reader/History$Entry;",
        ">;"
    }
.end annotation


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .line 93
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lorg/jline/reader/History;->add(Ljava/time/Instant;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public abstract add(Ljava/time/Instant;Ljava/lang/String;)V
.end method

.method public abstract append(Ljava/nio/file/Path;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract attach(Lorg/jline/reader/LineReader;)V
.end method

.method public abstract current()Ljava/lang/String;
.end method

.method public abstract first()I
.end method

.method public abstract get(I)Ljava/lang/String;
.end method

.method public abstract index()I
.end method

.method public isEmpty()Z
    .locals 1

    .line 81
    invoke-interface {p0}, Lorg/jline/reader/History;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPersistable(Lorg/jline/reader/History$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lorg/jline/reader/History$Entry;

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 24
    invoke-interface {p0}, Lorg/jline/reader/History;->iterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Lorg/jline/reader/History$Entry;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-interface {p0}, Lorg/jline/reader/History;->first()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/jline/reader/History;->iterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract iterator(I)Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Lorg/jline/reader/History$Entry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract last()I
.end method

.method public abstract load()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract moveTo(I)Z
.end method

.method public abstract moveToEnd()V
.end method

.method public abstract moveToFirst()Z
.end method

.method public abstract moveToLast()Z
.end method

.method public abstract next()Z
.end method

.method public abstract previous()Z
.end method

.method public abstract purge()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract read(Ljava/nio/file/Path;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract resetIndex()V
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jline/reader/History$Entry;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-interface {p0}, Lorg/jline/reader/History;->last()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/jline/reader/History;->reverseIterator(I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reverseIterator(I)Ljava/util/Iterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Lorg/jline/reader/History$Entry;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Lorg/jline/reader/History$1;

    invoke-direct {v0, p0, p1}, Lorg/jline/reader/History$1;-><init>(Lorg/jline/reader/History;I)V

    return-object v0
.end method

.method public abstract save()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public abstract write(Ljava/nio/file/Path;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
