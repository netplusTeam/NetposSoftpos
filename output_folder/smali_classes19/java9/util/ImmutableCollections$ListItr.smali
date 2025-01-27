.class final Ljava9/util/ImmutableCollections$ListItr;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private final isListIterator:Z

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 1
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;I)V"
        }
    .end annotation

    .line 242
    .local p0, "this":Ljava9/util/ImmutableCollections$ListItr;, "Ljava9/util/ImmutableCollections$ListItr<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Ljava9/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    .line 244
    iput p2, p0, Ljava9/util/ImmutableCollections$ListItr;->size:I

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I

    .line 246
    iput-boolean v0, p0, Ljava9/util/ImmutableCollections$ListItr;->isListIterator:Z

    .line 247
    return-void
.end method

.method constructor <init>(Ljava/util/List;II)V
    .locals 1
    .param p2, "size"    # I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;II)V"
        }
    .end annotation

    .line 249
    .local p0, "this":Ljava9/util/ImmutableCollections$ListItr;, "Ljava9/util/ImmutableCollections$ListItr<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Ljava9/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    .line 251
    iput p2, p0, Ljava9/util/ImmutableCollections$ListItr;->size:I

    .line 252
    iput p3, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/ImmutableCollections$ListItr;->isListIterator:Z

    .line 254
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 315
    .local p0, "this":Ljava9/util/ImmutableCollections$ListItr;, "Ljava9/util/ImmutableCollections$ListItr<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 257
    .local p0, "this":Ljava9/util/ImmutableCollections$ListItr;, "Ljava9/util/ImmutableCollections$ListItr<TE;>;"
    iget v0, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I

    iget v1, p0, Ljava9/util/ImmutableCollections$ListItr;->size:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 276
    .local p0, "this":Ljava9/util/ImmutableCollections$ListItr;, "Ljava9/util/ImmutableCollections$ListItr<TE;>;"
    iget-boolean v0, p0, Ljava9/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_1

    .line 279
    iget v0, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 277
    :cond_1
    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 262
    .local p0, "this":Ljava9/util/ImmutableCollections$ListItr;, "Ljava9/util/ImmutableCollections$ListItr<TE;>;"
    :try_start_0
    iget v0, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I

    .line 263
    .local v0, "i":I
    iget-object v1, p0, Ljava9/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 264
    .local v1, "next":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    return-object v1

    .line 266
    .end local v0    # "i":I
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public nextIndex()I
    .locals 1

    .line 297
    .local p0, "this":Ljava9/util/ImmutableCollections$ListItr;, "Ljava9/util/ImmutableCollections$ListItr<TE;>;"
    iget-boolean v0, p0, Ljava9/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_0

    .line 300
    iget v0, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I

    return v0

    .line 298
    :cond_0
    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 283
    .local p0, "this":Ljava9/util/ImmutableCollections$ListItr;, "Ljava9/util/ImmutableCollections$ListItr<TE;>;"
    iget-boolean v0, p0, Ljava9/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_0

    .line 287
    :try_start_0
    iget v0, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    .line 288
    .local v0, "i":I
    iget-object v1, p0, Ljava9/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 289
    .local v1, "previous":Ljava/lang/Object;, "TE;"
    iput v0, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    return-object v1

    .line 291
    .end local v0    # "i":I
    .end local v1    # "previous":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 284
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 304
    .local p0, "this":Ljava9/util/ImmutableCollections$ListItr;, "Ljava9/util/ImmutableCollections$ListItr<TE;>;"
    iget-boolean v0, p0, Ljava9/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_0

    .line 307
    iget v0, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 305
    :cond_0
    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 272
    .local p0, "this":Ljava9/util/ImmutableCollections$ListItr;, "Ljava9/util/ImmutableCollections$ListItr<TE;>;"
    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 311
    .local p0, "this":Ljava9/util/ImmutableCollections$ListItr;, "Ljava9/util/ImmutableCollections$ListItr<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method
