.class Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;
.super Ljava/lang/Object;
.source "ImmutableIntArray.java"

# interfaces
.implements Lcom/hivemq/client/internal/util/collections/ImmutableIntList;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final array:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 29
    return-void
.end method

.method varargs constructor <init>([I)V
    .locals 2
    .param p1, "array"    # [I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;->array:[I

    .line 35
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 36
    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 50
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 51
    return v0

    .line 53
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 54
    return v2

    .line 56
    :cond_1
    instance-of v1, p1, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;

    if-eqz v1, :cond_2

    .line 57
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;->array:[I

    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;

    iget-object v1, v1, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;->array:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    .line 59
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    .line 61
    .local v1, "that":Lcom/hivemq/client/internal/util/collections/ImmutableIntList;
    iget-object v3, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;->array:[I

    array-length v3, v3

    invoke-interface {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 62
    return v2

    .line 64
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;->array:[I

    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 65
    aget v4, v4, v3

    invoke-interface {v1, v3}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 66
    return v2

    .line 64
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v3    # "i":I
    :cond_5
    return v0
.end method

.method public get(I)I
    .locals 2
    .param p1, "index"    # I

    .line 45
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;->array:[I

    array-length v1, v0

    invoke-static {p1, v1}, Lcom/hivemq/client/internal/util/Checks;->index(II)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;->array:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;->array:[I

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;->array:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
