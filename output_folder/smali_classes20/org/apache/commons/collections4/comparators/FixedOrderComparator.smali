.class public Lorg/apache/commons/collections4/comparators/FixedOrderComparator;
.super Ljava/lang/Object;
.source "FixedOrderComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1262551aae85061L


# instance fields
.field private counter:I

.field private isLocked:Z

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/comparators/FixedOrderComparator;, "Lorg/apache/commons/collections4/comparators/FixedOrderComparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    .line 72
    sget-object v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->EXCEPTION:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    iput-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/apache/commons/collections4/comparators/FixedOrderComparator;, "Lorg/apache/commons/collections4/comparators/FixedOrderComparator<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    .line 72
    sget-object v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->EXCEPTION:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    iput-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    .line 113
    if-eqz p1, :cond_1

    .line 116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 117
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 119
    :cond_0
    return-void

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The list of items must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/apache/commons/collections4/comparators/FixedOrderComparator;, "Lorg/apache/commons/collections4/comparators/FixedOrderComparator<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    .line 72
    sget-object v1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->EXCEPTION:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    iput-object v1, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    .line 94
    if-eqz p1, :cond_1

    .line 97
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 98
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-void

    .line 95
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The list of items must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 183
    .local p0, "this":Lorg/apache/commons/collections4/comparators/FixedOrderComparator;, "Lorg/apache/commons/collections4/comparators/FixedOrderComparator<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->checkLocked()V

    .line 184
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    iget v1, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 185
    .local v0, "position":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public addAsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 202
    .local p0, "this":Lorg/apache/commons/collections4/comparators/FixedOrderComparator;, "Lorg/apache/commons/collections4/comparators/FixedOrderComparator<TT;>;"
    .local p1, "existingObj":Ljava/lang/Object;, "TT;"
    .local p2, "newObj":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->checkLocked()V

    .line 203
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 204
    .local v0, "position":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 207
    iget-object v1, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 208
    .local v1, "result":Ljava/lang/Integer;
    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 205
    .end local v1    # "result":Ljava/lang/Integer;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not known to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected checkLocked()V
    .locals 2

    .line 140
    .local p0, "this":Lorg/apache/commons/collections4/comparators/FixedOrderComparator;, "Lorg/apache/commons/collections4/comparators/FixedOrderComparator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot modify a FixedOrderComparator after a comparison"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 229
    .local p0, "this":Lorg/apache/commons/collections4/comparators/FixedOrderComparator;, "Lorg/apache/commons/collections4/comparators/FixedOrderComparator<TT;>;"
    .local p1, "obj1":Ljava/lang/Object;, "TT;"
    .local p2, "obj2":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    .line 230
    iget-object v1, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 231
    .local v1, "position1":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 232
    .local v2, "position2":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0

    .line 233
    :cond_1
    :goto_0
    sget-object v3, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$1;->$SwitchMap$org$apache$commons$collections4$comparators$FixedOrderComparator$UnknownObjectBehavior:[I

    iget-object v4, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    invoke-virtual {v4}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, -0x1

    packed-switch v3, :pswitch_data_0

    .line 243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown unknownObjectBehavior: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :pswitch_0
    if-nez v1, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    move-object v0, p2

    .line 240
    .local v0, "unknownObj":Ljava/lang/Object;
    :goto_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to compare unknown object "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 237
    .end local v0    # "unknownObj":Ljava/lang/Object;
    :pswitch_1
    if-nez v1, :cond_3

    if-nez v2, :cond_4

    move v0, v4

    goto :goto_2

    :cond_3
    move v0, v5

    :cond_4
    :goto_2
    return v0

    .line 235
    :pswitch_2
    if-nez v1, :cond_6

    if-nez v2, :cond_5

    move v0, v4

    goto :goto_3

    :cond_5
    move v0, v5

    :cond_6
    :goto_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 281
    .local p0, "this":Lorg/apache/commons/collections4/comparators/FixedOrderComparator;, "Lorg/apache/commons/collections4/comparators/FixedOrderComparator<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 282
    return v0

    .line 284
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 285
    return v1

    .line 287
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 288
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;

    .line 289
    .local v2, "comp":Lorg/apache/commons/collections4/comparators/FixedOrderComparator;, "Lorg/apache/commons/collections4/comparators/FixedOrderComparator<*>;"
    iget-object v3, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    if-nez v3, :cond_2

    iget-object v3, v2, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_2
    iget-object v4, v2, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    if-nez v3, :cond_3

    iget-object v3, v2, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    if-nez v3, :cond_4

    :goto_1
    goto :goto_2

    :cond_3
    iget-object v4, v2, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    if-ne v3, v4, :cond_4

    iget v5, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    iget v6, v2, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    if-ne v5, v6, :cond_4

    iget-boolean v5, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    iget-boolean v6, v2, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    if-ne v5, v6, :cond_4

    if-ne v3, v4, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_2
    return v0

    .line 296
    .end local v2    # "comp":Lorg/apache/commons/collections4/comparators/FixedOrderComparator;, "Lorg/apache/commons/collections4/comparators/FixedOrderComparator<*>;"
    :cond_5
    return v1
.end method

.method public getUnknownObjectBehavior()Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;
    .locals 1

    .line 151
    .local p0, "this":Lorg/apache/commons/collections4/comparators/FixedOrderComparator;, "Lorg/apache/commons/collections4/comparators/FixedOrderComparator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 259
    .local p0, "this":Lorg/apache/commons/collections4/comparators/FixedOrderComparator;, "Lorg/apache/commons/collections4/comparators/FixedOrderComparator<TT;>;"
    const/16 v0, 0x11

    .line 260
    .local v0, "total":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    .line 261
    .end local v0    # "total":I
    .local v1, "total":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    .line 262
    .end local v1    # "total":I
    .restart local v0    # "total":I
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    add-int/2addr v1, v2

    .line 263
    .end local v0    # "total":I
    .restart local v1    # "total":I
    mul-int/lit8 v0, v1, 0x25

    iget-boolean v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 264
    .end local v1    # "total":I
    .restart local v0    # "total":I
    return v0
.end method

.method public isLocked()Z
    .locals 1

    .line 131
    .local p0, "this":Lorg/apache/commons/collections4/comparators/FixedOrderComparator;, "Lorg/apache/commons/collections4/comparators/FixedOrderComparator<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    return v0
.end method

.method public setUnknownObjectBehavior(Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;)V
    .locals 2
    .param p1, "unknownObjectBehavior"    # Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    .line 163
    .local p0, "this":Lorg/apache/commons/collections4/comparators/FixedOrderComparator;, "Lorg/apache/commons/collections4/comparators/FixedOrderComparator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->checkLocked()V

    .line 164
    if-eqz p1, :cond_0

    .line 167
    iput-object p1, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    .line 168
    return-void

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Unknown object behavior must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
