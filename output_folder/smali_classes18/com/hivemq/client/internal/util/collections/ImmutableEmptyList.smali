.class Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;
.super Ljava/lang/Object;
.source "ImmutableEmptyList.java"

# interfaces
.implements Lcom/hivemq/client/internal/util/collections/ImmutableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;,
        Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptyIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY:[Ljava/lang/Object;

.field private static final INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;

    invoke-direct {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static of()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 102
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 103
    return v0

    .line 105
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 106
    return v2

    .line 108
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Object;>;"
    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 51
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Empty list"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 70
    const/4 v0, -0x1

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 75
    const/4 v0, -0x1

    return v0
.end method

.method public listIterator(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->cursorIndex(II)I

    .line 81
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptyIterator;->of()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->listIterator(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;->of()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/util/Checks;->indexRange(III)V

    .line 97
    return-object p0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->subList(II)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 56
    sget-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->EMPTY:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 61
    .local p1, "other":[Ljava/lang/Object;, "[TT;"
    const-string v0, "Array"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    array-length v0, p1

    if-lez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 65
    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 118
    const-string v0, "[]"

    return-object v0
.end method
