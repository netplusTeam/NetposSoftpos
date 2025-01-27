.class final Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;
.super Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList;
.source "BooleanArrayList.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Internal$BooleanList;
.implements Ljava/util/RandomAccess;
.implements Lcom/google/crypto/tink/shaded/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/Internal$BooleanList;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/crypto/tink/shaded/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;


# instance fields
.field private array:[Z

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Z

    invoke-direct {v0, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;-><init>([ZI)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->EMPTY_LIST:Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;

    .line 50
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->makeImmutable()V

    .line 51
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;-><init>([ZI)V

    .line 69
    return-void
.end method

.method private constructor <init>([ZI)V
    .locals 0
    .param p1, "other"    # [Z
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "size"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    .line 77
    iput p2, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    .line 78
    return-void
.end method

.method private addBoolean(IZ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "element"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 212
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    if-gt p1, v0, :cond_1

    .line 216
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 218
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 221
    :cond_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 222
    .local v0, "length":I
    new-array v2, v0, [Z

    .line 225
    .local v2, "newArray":[Z
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iput-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    .line 232
    .end local v0    # "length":I
    .end local v2    # "newArray":[Z
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    aput-boolean p2, v0, p1

    .line 233
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    .line 234
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->modCount:I

    .line 235
    return-void

    .line 213
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static emptyList()Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;
    .locals 1

    .line 54
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->EMPTY_LIST:Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;

    return-object v0
.end method

.method private ensureIndexInRange(I)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 290
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    if-ge p1, v0, :cond_0

    .line 293
    return-void

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Boolean;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .line 190
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->addBoolean(IZ)V

    .line 191
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .line 45
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->add(ILjava/lang/Boolean;)V

    return-void
.end method

.method public add(Ljava/lang/Boolean;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 184
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "element"
        }
    .end annotation

    .line 45
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->add(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 239
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 241
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;

    if-nez v0, :cond_0

    .line 245
    invoke-super {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 248
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;

    .line 249
    .local v0, "list":Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;
    iget v1, v0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 250
    return v2

    .line 253
    :cond_1
    const v3, 0x7fffffff

    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v3, v4

    .line 254
    .local v3, "overflow":I
    if-lt v3, v1, :cond_3

    .line 259
    add-int/2addr v4, v1

    .line 260
    .local v4, "newSize":I
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    array-length v5, v1

    if-le v4, v5, :cond_2

    .line 261
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    .line 264
    :cond_2
    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    iget-object v5, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    iget v6, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    iget v7, v0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    invoke-static {v1, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iput v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    .line 266
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->modCount:I

    .line 267
    return v2

    .line 256
    .end local v4    # "newSize":I
    :cond_3
    new-instance v1, Ljava/lang/OutOfMemoryError;

    invoke-direct {v1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v1
.end method

.method public addBoolean(Z)V
    .locals 5
    .param p1, "element"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 197
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 199
    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 200
    .local v2, "length":I
    new-array v3, v2, [Z

    .line 202
    .local v3, "newArray":[Z
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iput-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    .line 206
    .end local v2    # "length":I
    .end local v3    # "newArray":[Z
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    aput-boolean p1, v0, v1

    .line 207
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 160
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 94
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 95
    return v0

    .line 97
    :cond_0
    instance-of v1, p1, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;

    if-nez v1, :cond_1

    .line 98
    invoke-super {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 100
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;

    .line 101
    .local v1, "other":Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    iget v3, v1, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    .line 102
    return v4

    .line 105
    :cond_2
    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    .line 106
    .local v2, "arr":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v5, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    if-ge v3, v5, :cond_4

    .line 107
    iget-object v5, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v5, v5, v3

    aget-boolean v6, v2, v3

    if-eq v5, v6, :cond_3

    .line 108
    return v4

    .line 106
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method public get(I)Ljava/lang/Boolean;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 134
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->get(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(I)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->ensureIndexInRange(I)V

    .line 140
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 117
    const/4 v0, 0x1

    .line 118
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    if-ge v1, v2, :cond_0

    .line 119
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v3, v3, v1

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->hashBoolean(Z)I

    move-result v3

    add-int v0, v2, v3

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 145
    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 146
    return v1

    .line 148
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 149
    .local v0, "unboxedElement":Z
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size()I

    move-result v2

    .line 150
    .local v2, "numElems":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 151
    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v4, v4, v3

    if-ne v4, v0, :cond_1

    .line 152
    return v3

    .line 150
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    .end local v3    # "i":I
    :cond_2
    return v1
.end method

.method public mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$BooleanList;
    .locals 3
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 126
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    if-lt p1, v0, :cond_0

    .line 129
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;-><init>([ZI)V

    return-object v0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$BooleanList;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Boolean;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 273
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->ensureIndexInRange(I)V

    .line 274
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v1, v0, p1

    .line 275
    .local v1, "value":Z
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    .line 276
    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    :cond_0
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    .line 279
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->modCount:I

    .line 280
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->remove(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected removeRange(II)V
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 83
    if-lt p2, p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    .line 89
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->modCount:I

    .line 90
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .line 170
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->setBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .line 45
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->set(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public setBoolean(IZ)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 176
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->ensureIndexInRange(I)V

    .line 177
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v1, v0, p1

    .line 178
    .local v1, "previousValue":Z
    aput-boolean p2, v0, p1

    .line 179
    return v1
.end method

.method public size()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->size:I

    return v0
.end method
