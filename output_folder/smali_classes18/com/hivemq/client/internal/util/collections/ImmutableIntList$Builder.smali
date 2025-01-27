.class public Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
.super Ljava/lang/Object;
.source "ImmutableIntList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/ImmutableIntList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INITIAL_CAPACITY:I = 0x4


# instance fields
.field private array:[I

.field private i:I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    const-class v0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 96
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->array:[I

    .line 98
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(ILcom/hivemq/client/internal/util/collections/ImmutableIntList$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/hivemq/client/internal/util/collections/ImmutableIntList$1;

    .line 84
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hivemq/client/internal/util/collections/ImmutableIntList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hivemq/client/internal/util/collections/ImmutableIntList$1;

    .line 84
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;-><init>()V

    return-void
.end method

.method private newCapacity(I)I
    .locals 1
    .param p1, "capacity"    # I

    .line 101
    shr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public add(I)Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    .locals 4
    .param p1, "i"    # I

    .line 105
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->size:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 106
    iput p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->i:I

    .line 107
    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->size:I

    goto :goto_1

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->array:[I

    if-nez v2, :cond_1

    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->array:[I

    goto :goto_0

    .line 111
    :cond_1
    array-length v3, v2

    if-ne v0, v3, :cond_2

    .line 112
    array-length v0, v2

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->newCapacity(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->array:[I

    .line 114
    :cond_2
    :goto_0
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->size:I

    if-ne v0, v1, :cond_3

    .line 115
    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->array:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->i:I

    aput v3, v1, v2

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->array:[I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->size:I

    aput p1, v1, v0

    .line 119
    :goto_1
    return-object p0
.end method

.method public build()Lcom/hivemq/client/internal/util/collections/ImmutableIntList;
    .locals 4

    .line 123
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->size:I

    packed-switch v0, :pswitch_data_0

    .line 129
    goto :goto_0

    .line 127
    :pswitch_0
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;

    iget v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->i:I

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntElement;-><init>(I)V

    return-object v0

    .line 125
    :pswitch_1
    sget-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;->INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyIntList;

    return-object v0

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->array:[I

    if-eqz v1, :cond_1

    .line 130
    array-length v1, v1

    if-ne v1, v0, :cond_0

    .line 131
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->array:[I

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;-><init>([I)V

    return-object v0

    .line 133
    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->array:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->size:I

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntArray;-><init>([I)V

    return-object v0

    .line 129
    :cond_1
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
