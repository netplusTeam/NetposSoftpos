.class Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;
.super Ljava/lang/Object;
.source "ImmutableIntElement.java"

# interfaces
.implements Lcom/hivemq/client/internal/util/collections/ImmutableIntList;


# instance fields
.field private final element:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "element"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;->element:I

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 48
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 49
    return v0

    .line 51
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 52
    return v2

    .line 54
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    .line 56
    .local v1, "that":Lcom/hivemq/client/internal/util/collections/ImmutableIntList;
    invoke-interface {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->size()I

    move-result v3

    if-ne v3, v0, :cond_2

    iget v3, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;->element:I

    invoke-interface {v1, v2}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public get(I)I
    .locals 1
    .param p1, "index"    # I

    .line 42
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->index(II)I

    .line 43
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;->element:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;->element:I

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public size()I
    .locals 1

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;->element:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
