.class Lcom/hivemq/client/internal/util/collections/ImmutableElement;
.super Ljava/lang/Object;
.source "ImmutableElement.java"

# interfaces
.implements Lcom/hivemq/client/internal/util/collections/ImmutableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;,
        Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method static synthetic access$100(Lcom/hivemq/client/internal/util/collections/ImmutableElement;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/hivemq/client/internal/util/collections/ImmutableElement;

    .line 34
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    return-object v0
.end method

.method static of(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 38
    .local p0, "e":Ljava/lang/Object;, "TE;"
    const-string v0, "Immutable list"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->of(Ljava/lang/Object;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method static of(Ljava/lang/Object;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 43
    .local p0, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/hivemq/client/internal/util/Checks;->elementNotNull(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 115
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 116
    return v0

    .line 118
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 119
    return v2

    .line 121
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 123
    .local v1, "that":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v0, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

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
            "-TE;>;)V"
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->index(II)I

    .line 60
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 128
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 83
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 88
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>;"
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>;"
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/hivemq/client/internal/util/Checks;->cursorIndex(II)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableElement;I)V

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 34
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>;"
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->listIterator(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 54
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>;"
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableElement;Lcom/hivemq/client/internal/util/collections/ImmutableElement$1;)V

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
            "TE;>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>;"
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/util/Checks;->indexRange(III)V

    .line 110
    if-ne p2, p1, :cond_0

    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->of()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 34
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->subList(II)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 65
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>;"
    .local p1, "other":[Ljava/lang/Object;, "[TT;"
    const-string v0, "Array"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    check-cast p1, [Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_0
    array-length v0, p1

    if-le v0, v1, :cond_1

    .line 75
    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 77
    :cond_1
    :goto_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 78
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
