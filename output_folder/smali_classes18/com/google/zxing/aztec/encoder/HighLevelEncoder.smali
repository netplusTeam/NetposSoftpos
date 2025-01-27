.class public final Lcom/google/zxing/aztec/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# static fields
.field private static final CHAR_MAP:[[I

.field static final LATCH_TABLE:[[I

.field static final MODE_DIGIT:I = 0x2

.field static final MODE_LOWER:I = 0x1

.field static final MODE_MIXED:I = 0x3

.field static final MODE_NAMES:[Ljava/lang/String;

.field static final MODE_PUNCT:I = 0x4

.field static final MODE_UPPER:I

.field static final SHIFT_TABLE:[[I


# instance fields
.field private final text:[B


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 42
    const-string v0, "UPPER"

    const-string v1, "LOWER"

    const-string v2, "DIGIT"

    const-string v3, "MIXED"

    const-string v4, "PUNCT"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x5

    new-array v1, v0, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v2, v0, [I

    fill-array-data v2, :array_3

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    .line 96
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 98
    sput-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v0, v0, v3

    const/16 v1, 0x20

    aput v4, v0, v1

    .line 99
    const/16 v0, 0x41

    .local v0, "c":I
    :goto_0
    const/16 v7, 0x5a

    if-gt v0, v7, :cond_0

    .line 100
    sget-object v7, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v7, v7, v3

    add-int/lit8 v8, v0, -0x41

    add-int/2addr v8, v5

    aput v8, v7, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "c":I
    :cond_0
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v0, v0, v4

    aput v4, v0, v1

    .line 103
    const/16 v0, 0x61

    .restart local v0    # "c":I
    :goto_1
    const/16 v7, 0x7a

    if-gt v0, v7, :cond_1

    .line 104
    sget-object v7, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v7, v7, v4

    add-int/lit8 v8, v0, -0x61

    add-int/2addr v8, v5

    aput v8, v7, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    .end local v0    # "c":I
    :cond_1
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v0, v0, v5

    aput v4, v0, v1

    .line 107
    const/16 v0, 0x30

    .restart local v0    # "c":I
    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 108
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v1, v1, v5

    add-int/lit8 v7, v0, -0x30

    add-int/2addr v7, v5

    aput v7, v1, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 110
    .end local v0    # "c":I
    :cond_2
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v0, v0, v5

    const/16 v1, 0x2c

    const/16 v7, 0xc

    aput v7, v0, v1

    .line 111
    const/16 v1, 0x2e

    const/16 v7, 0xd

    aput v7, v0, v1

    .line 112
    const/16 v0, 0x1c

    new-array v1, v0, [I

    fill-array-data v1, :array_6

    .line 117
    .local v1, "mixedTable":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v0, :cond_3

    .line 118
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v8, v8, v6

    aget v9, v1, v7

    aput v7, v8, v9

    .line 117
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 120
    .end local v7    # "i":I
    :cond_3
    const/16 v7, 0x1f

    new-array v8, v7, [I

    fill-array-data v8, :array_7

    .line 125
    .local v8, "punctTable":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    if-ge v9, v7, :cond_5

    .line 126
    aget v10, v8, v9

    if-lez v10, :cond_4

    .line 127
    sget-object v10, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v10, v10, v2

    aget v11, v8, v9

    aput v9, v10, v11

    .line 125
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 134
    .end local v1    # "mixedTable":[I
    .end local v8    # "punctTable":[I
    .end local v9    # "i":I
    :cond_5
    new-array v1, v5, [I

    fill-array-data v1, :array_8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 136
    sput-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    array-length v7, v1

    move v8, v3

    :goto_5
    if-ge v8, v7, :cond_6

    aget-object v9, v1, v8

    .line 137
    const/4 v10, -0x1

    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([II)V

    .line 136
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 139
    :cond_6
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v7, v1, v3

    aput v3, v7, v2

    .line 141
    aget-object v4, v1, v4

    aput v3, v4, v2

    .line 142
    aput v0, v4, v3

    .line 144
    aget-object v0, v1, v6

    aput v3, v0, v2

    .line 146
    aget-object v0, v1, v5

    aput v3, v0, v2

    .line 147
    const/16 v1, 0xf

    aput v1, v0, v3

    .line 148
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5001c
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_1
    .array-data 4
        0x901ee
        0x0
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_2
    .array-data 4
        0x4000e
        0x901dc
        0x0
        0x901dd
        0xe3bbe
    .end array-data

    :array_3
    .array-data 4
        0x5001d
        0x5001c
        0xa03be
        0x0
        0x5001e
    .end array-data

    :array_4
    .array-data 4
        0x5001f
        0xa03fc
        0xa03fe
        0xa03fd
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x5
        0x100
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x20
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x40
        0x5c
        0x5e
        0x5f
        0x60
        0x7c
        0x7e
        0x7f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0xd
        0x0
        0x0
        0x0
        0x0
        0x21
        0x27
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x5b
        0x5d
        0x7b
        0x7d
    .end array-data

    :array_8
    .array-data 4
        0x6
        0x6
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "text"    # [B

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    .line 154
    return-void
.end method

.method private static simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .line 286
    .local p0, "states":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/aztec/encoder/State;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 287
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/aztec/encoder/State;

    .line 288
    .local v3, "newState":Lcom/google/zxing/aztec/encoder/State;
    const/4 v4, 0x1

    .line 289
    .local v4, "add":Z
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/aztec/encoder/State;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 290
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/aztec/encoder/State;

    .line 291
    .local v2, "oldState":Lcom/google/zxing/aztec/encoder/State;
    move-object v2, v6

    invoke-virtual {v6, v3}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 292
    const/4 v4, 0x0

    .line 293
    goto :goto_2

    .line 295
    :cond_0
    invoke-virtual {v3, v2}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 296
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 298
    .end local v2    # "oldState":Lcom/google/zxing/aztec/encoder/State;
    :cond_1
    goto :goto_1

    .line 299
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/aztec/encoder/State;>;"
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 300
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v3    # "newState":Lcom/google/zxing/aztec/encoder/State;
    .end local v4    # "add":Z
    :cond_3
    goto :goto_0

    .line 303
    :cond_4
    return-object v0
.end method

.method private updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V
    .locals 7
    .param p1, "state"    # Lcom/google/zxing/aztec/encoder/State;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "I",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    .line 216
    .local p3, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    aget-byte v0, v0, p2

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 217
    .local v0, "ch":C
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v2

    aget-object v1, v1, v2

    aget v1, v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 218
    .local v1, "charInCurrentTable":Z
    :goto_0
    const/4 v3, 0x0

    .line 219
    .local v3, "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    const/4 v4, 0x0

    .local v4, "mode":I
    :goto_1
    const/4 v5, 0x4

    if-gt v4, v5, :cond_5

    .line 220
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v4

    aget v5, v5, v0

    .line 221
    .local v2, "charInMode":I
    move v2, v5

    if-lez v5, :cond_4

    .line 222
    if-nez v3, :cond_1

    .line 224
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    .line 227
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v5

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 232
    :cond_2
    invoke-virtual {v3, v4, v2}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v5

    .line 233
    .local v5, "latchState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v5    # "latchState":Lcom/google/zxing/aztec/encoder/State;
    :cond_3
    if-nez v1, :cond_4

    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v6

    aget-object v5, v5, v6

    aget v5, v5, v4

    if-ltz v5, :cond_4

    .line 239
    invoke-virtual {v3, v4, v2}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v5

    .line 240
    .local v5, "shiftState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v2    # "charInMode":I
    .end local v5    # "shiftState":Lcom/google/zxing/aztec/encoder/State;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 244
    .end local v4    # "mode":I
    :cond_5
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result v2

    if-gtz v2, :cond_6

    sget-object v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v4

    aget-object v2, v2, v4

    aget v2, v2, v0

    if-nez v2, :cond_7

    .line 248
    :cond_6
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    .line 249
    .local v2, "binaryState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v2    # "binaryState":Lcom/google/zxing/aztec/encoder/State;
    :cond_7
    return-void
.end method

.method private static updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V
    .locals 4
    .param p0, "state"    # Lcom/google/zxing/aztec/encoder/State;
    .param p1, "index"    # I
    .param p2, "pairCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "II",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    .line 262
    .local p3, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v0

    .line 264
    .local v0, "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 268
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_0
    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_2

    .line 272
    :cond_1
    rsub-int/lit8 v1, p2, 0x10

    .line 273
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v1

    .line 274
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v1

    .line 275
    .local v1, "digitState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v1    # "digitState":Lcom/google/zxing/aztec/encoder/State;
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 280
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v1

    .line 281
    .local v1, "binaryState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v1    # "binaryState":Lcom/google/zxing/aztec/encoder/State;
    :cond_3
    return-void
.end method

.method private updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;
    .locals 3
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;I)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .line 205
    .local p1, "states":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/aztec/encoder/State;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 206
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/aztec/encoder/State;

    .line 207
    .local v2, "state":Lcom/google/zxing/aztec/encoder/State;
    invoke-direct {p0, v2, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V

    .line 208
    .end local v2    # "state":Lcom/google/zxing/aztec/encoder/State;
    goto :goto_0

    .line 209
    :cond_0
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method private static updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;
    .locals 3
    .param p1, "index"    # I
    .param p2, "pairCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;II)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .line 254
    .local p0, "states":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/aztec/encoder/State;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 255
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/aztec/encoder/State;

    .line 256
    invoke-static {v2, p1, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V

    .line 257
    goto :goto_0

    .line 258
    :cond_0
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public encode()Lcom/google/zxing/common/BitArray;
    .locals 6

    .line 160
    sget-object v0, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 161
    .local v0, "states":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    array-length v3, v2

    if-ge v1, v3, :cond_6

    .line 163
    add-int/lit8 v3, v1, 0x1

    array-length v4, v2

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v2, v3

    goto :goto_1

    :cond_0
    move v3, v5

    .line 164
    .local v3, "nextChar":I
    :goto_1
    aget-byte v2, v2, v1

    const/16 v4, 0x20

    sparse-switch v2, :sswitch_data_0

    .line 178
    const/4 v2, 0x0

    .local v2, "pairCode":I
    goto :goto_2

    .line 175
    .end local v2    # "pairCode":I
    :sswitch_0
    if-ne v3, v4, :cond_1

    const/4 v5, 0x5

    :cond_1
    move v2, v5

    .line 176
    .restart local v2    # "pairCode":I
    goto :goto_2

    .line 169
    .end local v2    # "pairCode":I
    :sswitch_1
    if-ne v3, v4, :cond_2

    const/4 v5, 0x3

    :cond_2
    move v2, v5

    .line 170
    .restart local v2    # "pairCode":I
    goto :goto_2

    .line 172
    .end local v2    # "pairCode":I
    :sswitch_2
    if-ne v3, v4, :cond_3

    const/4 v5, 0x4

    :cond_3
    move v2, v5

    .line 173
    .restart local v2    # "pairCode":I
    goto :goto_2

    .line 166
    .end local v2    # "pairCode":I
    :sswitch_3
    const/16 v2, 0xa

    if-ne v3, v2, :cond_4

    const/4 v5, 0x2

    :cond_4
    move v2, v5

    .line 167
    .restart local v2    # "pairCode":I
    nop

    .line 180
    :goto_2
    if-lez v2, :cond_5

    .line 183
    invoke-static {v0, v1, v2}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;

    move-result-object v0

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 187
    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;

    move-result-object v0

    .line 161
    .end local v2    # "pairCode":I
    .end local v3    # "nextChar":I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "index":I
    :cond_6
    new-instance v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;

    invoke-direct {v2, p0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;-><init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/aztec/encoder/State;

    .line 198
    .local v1, "minState":Lcom/google/zxing/aztec/encoder/State;
    iget-object v3, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    invoke-virtual {v2, v3}, Lcom/google/zxing/aztec/encoder/State;->toBitArray([B)Lcom/google/zxing/common/BitArray;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_3
        0x2c -> :sswitch_2
        0x2e -> :sswitch_1
        0x3a -> :sswitch_0
    .end sparse-switch
.end method
