.class public Lio/netty/handler/codec/EmptyHeaders;
.super Ljava/lang/Object;
.source "EmptyHeaders.java"

# interfaces
.implements Lio/netty/handler/codec/Headers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "T::",
        "Lio/netty/handler/codec/Headers<",
        "TK;TV;TT;>;>",
        "Ljava/lang/Object;",
        "Lio/netty/handler/codec/Headers<",
        "TK;TV;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private thisT()Lio/netty/handler/codec/Headers;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 524
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    return-object p0
.end method


# virtual methods
.method public add(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/Headers<",
            "+TK;+TV;*>;)TT;"
        }
    .end annotation

    .line 388
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "headers":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<+TK;+TV;*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)TT;"
        }
    .end annotation

    .line 318
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TT;"
        }
    .end annotation

    .line 313
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs add(Ljava/lang/Object;[Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)TT;"
        }
    .end annotation

    .line 323
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addBoolean(Ljava/lang/Object;Z)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)TT;"
        }
    .end annotation

    .line 343
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addByte(Ljava/lang/Object;B)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)TT;"
        }
    .end annotation

    .line 348
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addChar(Ljava/lang/Object;C)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)TT;"
        }
    .end annotation

    .line 353
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addDouble(Ljava/lang/Object;D)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)TT;"
        }
    .end annotation

    .line 378
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addFloat(Ljava/lang/Object;F)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)TT;"
        }
    .end annotation

    .line 373
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addInt(Ljava/lang/Object;I)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TT;"
        }
    .end annotation

    .line 363
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addLong(Ljava/lang/Object;J)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TT;"
        }
    .end annotation

    .line 368
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addObject(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "*>;)TT;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addObject(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 328
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs addObject(Ljava/lang/Object;[Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 338
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addShort(Ljava/lang/Object;S)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)TT;"
        }
    .end annotation

    .line 358
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTimeMillis(Ljava/lang/Object;J)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TT;"
        }
    .end annotation

    .line 383
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()Lio/netty/handler/codec/Headers;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 483
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    invoke-direct {p0}, Lio/netty/handler/codec/EmptyHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 238
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 243
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsBoolean(Ljava/lang/Object;Z)Z
    .locals 1
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    .line 253
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsByte(Ljava/lang/Object;B)Z
    .locals 1
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)Z"
        }
    .end annotation

    .line 258
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsChar(Ljava/lang/Object;C)Z
    .locals 1
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)Z"
        }
    .end annotation

    .line 263
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsDouble(Ljava/lang/Object;D)Z
    .locals 1
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)Z"
        }
    .end annotation

    .line 288
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsFloat(Ljava/lang/Object;F)Z
    .locals 1
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)Z"
        }
    .end annotation

    .line 283
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsInt(Ljava/lang/Object;I)Z
    .locals 1
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)Z"
        }
    .end annotation

    .line 273
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsLong(Ljava/lang/Object;J)Z
    .locals 1
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)Z"
        }
    .end annotation

    .line 278
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsObject(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 248
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsShort(Ljava/lang/Object;S)Z
    .locals 1
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)Z"
        }
    .end annotation

    .line 268
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsTimeMillis(Ljava/lang/Object;J)Z
    .locals 1
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)Z"
        }
    .end annotation

    .line 293
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 504
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    instance-of v0, p1, Lio/netty/handler/codec/Headers;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 505
    return v1

    .line 508
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/Headers;

    .line 509
    .local v0, "rhs":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<***>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/EmptyHeaders;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lio/netty/handler/codec/Headers;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 28
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 33
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    return-object p2
.end method

.method public getAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllAndRemove(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 38
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAndRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    return-object p2
.end method

.method public getBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/Object;Z)Z
    .locals 0
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    .line 63
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    return p2
.end method

.method public getBooleanAndRemove(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBooleanAndRemove(Ljava/lang/Object;Z)Z
    .locals 0
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    .line 153
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    return p2
.end method

.method public getByte(Ljava/lang/Object;B)B
    .locals 0
    .param p2, "defaultValue"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)B"
        }
    .end annotation

    .line 73
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    return p2
.end method

.method public getByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Byte;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getByteAndRemove(Ljava/lang/Object;B)B
    .locals 0
    .param p2, "defaultValue"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)B"
        }
    .end annotation

    .line 163
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    return p2
.end method

.method public getByteAndRemove(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Byte;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChar(Ljava/lang/Object;C)C
    .locals 0
    .param p2, "defaultValue"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)C"
        }
    .end annotation

    .line 83
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    return p2
.end method

.method public getChar(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Character;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharAndRemove(Ljava/lang/Object;C)C
    .locals 0
    .param p2, "defaultValue"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)C"
        }
    .end annotation

    .line 173
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    return p2
.end method

.method public getCharAndRemove(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Character;"
        }
    .end annotation

    .line 168
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDouble(Ljava/lang/Object;D)D
    .locals 0
    .param p2, "defaultValue"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)D"
        }
    .end annotation

    .line 133
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    return-wide p2
.end method

.method public getDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDoubleAndRemove(Ljava/lang/Object;D)D
    .locals 0
    .param p2, "defaultValue"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)D"
        }
    .end annotation

    .line 223
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    return-wide p2
.end method

.method public getDoubleAndRemove(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 218
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloat(Ljava/lang/Object;F)F
    .locals 0
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)F"
        }
    .end annotation

    .line 123
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    return p2
.end method

.method public getFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloatAndRemove(Ljava/lang/Object;F)F
    .locals 0
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)F"
        }
    .end annotation

    .line 213
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    return p2
.end method

.method public getFloatAndRemove(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 208
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInt(Ljava/lang/Object;I)I
    .locals 0
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 103
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    return p2
.end method

.method public getInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntAndRemove(Ljava/lang/Object;I)I
    .locals 0
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 193
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    return p2
.end method

.method public getIntAndRemove(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLong(Ljava/lang/Object;J)J
    .locals 0
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 113
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    return-wide p2
.end method

.method public getLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLongAndRemove(Ljava/lang/Object;J)J
    .locals 0
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 203
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    return-wide p2
.end method

.method public getLongAndRemove(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 198
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShort(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Short;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShort(Ljava/lang/Object;S)S
    .locals 0
    .param p2, "defaultValue"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)S"
        }
    .end annotation

    .line 93
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    return p2
.end method

.method public getShortAndRemove(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Short;"
        }
    .end annotation

    .line 178
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortAndRemove(Ljava/lang/Object;S)S
    .locals 0
    .param p2, "defaultValue"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)S"
        }
    .end annotation

    .line 183
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    return p2
.end method

.method public getTimeMillis(Ljava/lang/Object;J)J
    .locals 0
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 143
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    return-wide p2
.end method

.method public getTimeMillis(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeMillisAndRemove(Ljava/lang/Object;J)J
    .locals 0
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 233
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    return-wide p2
.end method

.method public getTimeMillisAndRemove(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 228
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 514
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    const v0, -0x3d4d51cb

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 303
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 498
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 499
    .local v0, "empty":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public names()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 308
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 478
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return v0
.end method

.method public set(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/Headers<",
            "+TK;+TV;*>;)TT;"
        }
    .end annotation

    .line 468
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "headers":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<+TK;+TV;*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)TT;"
        }
    .end annotation

    .line 398
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TT;"
        }
    .end annotation

    .line 393
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs set(Ljava/lang/Object;[Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)TT;"
        }
    .end annotation

    .line 403
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAll(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/Headers<",
            "+TK;+TV;*>;)TT;"
        }
    .end annotation

    .line 473
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "headers":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<+TK;+TV;*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBoolean(Ljava/lang/Object;Z)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)TT;"
        }
    .end annotation

    .line 423
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setByte(Ljava/lang/Object;B)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)TT;"
        }
    .end annotation

    .line 428
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChar(Ljava/lang/Object;C)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)TT;"
        }
    .end annotation

    .line 433
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDouble(Ljava/lang/Object;D)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)TT;"
        }
    .end annotation

    .line 458
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFloat(Ljava/lang/Object;F)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)TT;"
        }
    .end annotation

    .line 453
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInt(Ljava/lang/Object;I)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TT;"
        }
    .end annotation

    .line 443
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLong(Ljava/lang/Object;J)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TT;"
        }
    .end annotation

    .line 448
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setObject(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "*>;)TT;"
        }
    .end annotation

    .line 413
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setObject(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 408
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs setObject(Ljava/lang/Object;[Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 418
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShort(Ljava/lang/Object;S)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)TT;"
        }
    .end annotation

    .line 438
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTimeMillis(Ljava/lang/Object;J)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TT;"
        }
    .end annotation

    .line 463
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 298
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 519
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 492
    .local p0, "this":Lio/netty/handler/codec/EmptyHeaders;, "Lio/netty/handler/codec/EmptyHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 493
    .local v0, "empty":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method
