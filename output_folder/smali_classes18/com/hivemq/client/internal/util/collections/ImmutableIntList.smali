.class public interface abstract Lcom/hivemq/client/internal/util/collections/ImmutableIntList;
.super Ljava/lang/Object;
.source "ImmutableIntList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    }
.end annotation


# direct methods
.method public static builder()Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    .locals 2

    .line 69
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableIntList$1;)V

    return-object v0
.end method

.method public static builder(I)Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    .locals 2
    .param p0, "capacity"    # I

    .line 73
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;-><init>(ILcom/hivemq/client/internal/util/collections/ImmutableIntList$1;)V

    return-object v0
.end method

.method public static copyOf([I)Lcom/hivemq/client/internal/util/collections/ImmutableIntList;
    .locals 2
    .param p0, "array"    # [I

    .line 57
    const-string v0, "Int array"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 64
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;-><init>([I)V

    return-object v0

    .line 62
    :pswitch_0
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;

    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;-><init>(I)V

    return-object v0

    .line 60
    :pswitch_1
    sget-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;->INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static of()Lcom/hivemq/client/internal/util/collections/ImmutableIntList;
    .locals 1

    .line 31
    sget-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;->INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;

    return-object v0
.end method

.method public static of(I)Lcom/hivemq/client/internal/util/collections/ImmutableIntList;
    .locals 1
    .param p0, "i"    # I

    .line 35
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;-><init>(I)V

    return-object v0
.end method

.method public static of(II)Lcom/hivemq/client/internal/util/collections/ImmutableIntList;
    .locals 3
    .param p0, "i1"    # I
    .param p1, "i2"    # I

    .line 39
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(III)Lcom/hivemq/client/internal/util/collections/ImmutableIntList;
    .locals 3
    .param p0, "i1"    # I
    .param p1, "i2"    # I
    .param p2, "i3"    # I

    .line 43
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v2, 0x2

    aput p2, v1, v2

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static varargs of(III[I)Lcom/hivemq/client/internal/util/collections/ImmutableIntList;
    .locals 4
    .param p0, "i1"    # I
    .param p1, "i2"    # I
    .param p2, "i3"    # I
    .param p3, "others"    # [I

    .line 47
    const-string v0, "Int array"

    invoke-static {p3, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    array-length v0, p3

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 49
    .local v0, "array":[I
    const/4 v2, 0x0

    aput p0, v0, v2

    .line 50
    aput p1, v0, v2

    .line 51
    aput p2, v0, v2

    .line 52
    array-length v3, p3

    invoke-static {p3, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    new-instance v1, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;

    invoke-direct {v1, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;-><init>([I)V

    return-object v1
.end method


# virtual methods
.method public abstract get(I)I
.end method

.method public isEmpty()Z
    .locals 1

    .line 79
    invoke-interface {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract size()I
.end method
