.class public Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
.super Ljava/lang/Object;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INITIAL_CAPACITY:I = 0x4


# instance fields
.field private array:[Ljava/lang/Object;

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 261
    const-class v0, Lcom/hivemq/client/internal/util/collections/ImmutableList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 269
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 271
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 273
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->array:[Ljava/lang/Object;

    .line 275
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(ILcom/hivemq/client/internal/util/collections/ImmutableList$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/hivemq/client/internal/util/collections/ImmutableList$1;

    .line 261
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<TE;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hivemq/client/internal/util/collections/ImmutableList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hivemq/client/internal/util/collections/ImmutableList$1;

    .line 261
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<TE;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;-><init>()V

    return-void
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 3
    .param p1, "capacity"    # I

    .line 282
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<TE;>;"
    const/4 v0, 0x1

    if-le p1, v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->array:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 284
    const/4 v0, 0x4

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->array:[Ljava/lang/Object;

    goto :goto_0

    .line 285
    :cond_0
    array-length v1, v0

    if-le p1, v1, :cond_1

    .line 286
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->newCapacity(I)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-class v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->array:[Ljava/lang/Object;

    .line 288
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->e:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 289
    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->array:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->e:Ljava/lang/Object;

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->array:[Ljava/lang/Object;

    return-object v0

    .line 282
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static first(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 365
    .local p0, "elements":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private newCapacity(I)I
    .locals 1
    .param p1, "capacity"    # I

    .line 278
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<TE;>;"
    shr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 303
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const-string v0, "Immutable list element"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->size:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 305
    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->e:Ljava/lang/Object;

    .line 306
    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->size:I

    goto :goto_0

    .line 308
    :cond_0
    add-int/2addr v0, v1

    .line 309
    .local v0, "newSize":I
    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->size:I

    aput-object p1, v1, v2

    .line 310
    iput v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->size:I

    .line 312
    .end local v0    # "newSize":I
    :goto_0
    return-object p0
.end method

.method public addAll(Ljava/util/Collection;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 316
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<TE;>;"
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const-string v0, "Immutable list elements"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 318
    .local v0, "elementsSize":I
    packed-switch v0, :pswitch_data_0

    .line 325
    iget v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->size:I

    add-int/2addr v1, v0

    .line 326
    .local v1, "newSize":I
    invoke-direct {p0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v2

    .line 327
    .local v2, "array":[Ljava/lang/Object;
    instance-of v3, p1, Ljava/util/List;

    const-string v4, "Immutable list"

    if-eqz v3, :cond_1

    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_1

    .line 329
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    .line 330
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    goto :goto_0

    .line 322
    .end local v1    # "newSize":I
    .end local v2    # "array":[Ljava/lang/Object;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    .end local v5    # "i":I
    :pswitch_0
    invoke-static {p1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->first(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 323
    goto :goto_3

    .line 320
    :pswitch_1
    goto :goto_3

    .line 330
    .restart local v1    # "newSize":I
    .restart local v2    # "array":[Ljava/lang/Object;
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    .restart local v5    # "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 331
    iget v6, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->size:I

    add-int/2addr v6, v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v2, v6

    .line 330
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 333
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    .end local v5    # "i":I
    :cond_0
    goto :goto_2

    .line 334
    :cond_1
    iget v3, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->size:I

    .line 335
    .local v3, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 336
    .local v6, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .local v7, "i":I
    invoke-static {v6, v4}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v2, v3

    .line 337
    .end local v6    # "e":Ljava/lang/Object;, "TE;"
    move v3, v7

    goto :goto_1

    .line 339
    .end local v7    # "i":I
    :cond_2
    :goto_2
    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->size:I

    .line 341
    .end local v1    # "newSize":I
    .end local v2    # "array":[Ljava/lang/Object;
    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public build()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 349
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<TE;>;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->size:I

    packed-switch v0, :pswitch_data_0

    .line 356
    goto :goto_0

    .line 353
    :pswitch_0
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 354
    new-instance v1, Lcom/hivemq/client/internal/util/collections/ImmutableElement;

    invoke-direct {v1, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 351
    :pswitch_1
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->of()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0

    .line 356
    :goto_0
    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->array:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 357
    array-length v1, v1

    if-ne v1, v0, :cond_1

    .line 358
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->array:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;-><init>([Ljava/lang/Object;)V

    return-object v0

    .line 360
    :cond_1
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->array:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->size:I

    const-class v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;-><init>([Ljava/lang/Object;)V

    return-object v0

    .line 356
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ensureFree(I)V
    .locals 2
    .param p1, "free"    # I

    .line 296
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<TE;>;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->size:I

    add-int/2addr v0, p1

    .line 297
    .local v0, "newCapacity":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 298
    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->ensureCapacity(I)[Ljava/lang/Object;

    .line 300
    :cond_0
    return-void
.end method

.method public getSize()I
    .locals 1

    .line 345
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<TE;>;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->size:I

    return v0
.end method
