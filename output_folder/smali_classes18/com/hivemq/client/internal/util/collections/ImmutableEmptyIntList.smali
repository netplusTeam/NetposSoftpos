.class Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;
.super Ljava/lang/Object;
.source "ImmutableEmptyIntList.java"

# interfaces
.implements Lcom/hivemq/client/internal/util/collections/ImmutableIntList;


# static fields
.field static final INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;

    invoke-direct {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;->INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 44
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 45
    return v0

    .line 47
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 48
    return v2

    .line 50
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    invoke-interface {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public get(I)I
    .locals 2
    .param p1, "index"    # I

    .line 39
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Empty int list"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "[]"

    return-object v0
.end method
