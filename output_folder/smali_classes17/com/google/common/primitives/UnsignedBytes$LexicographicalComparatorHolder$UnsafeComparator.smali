.class final enum Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;
.super Ljava/lang/Enum;
.source "UnsignedBytes.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UnsafeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;",
        ">;",
        "Ljava/util/Comparator<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

.field static final BIG_ENDIAN:Z

.field static final BYTE_ARRAY_BASE_OFFSET:I

.field public static final enum INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

.field static final theUnsafe:Lsun/misc/Unsafe;


# direct methods
.method private static synthetic $values()[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;
    .locals 3

    .line 295
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    sget-object v1, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 297
    const-class v0, [B

    new-instance v1, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    const-string v2, "INSTANCE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    .line 295
    invoke-static {}, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->$values()[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    move-result-object v1

    sput-object v1, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->$VALUES:[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    .line 299
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->BIG_ENDIAN:Z

    .line 317
    invoke-static {}, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->theUnsafe:Lsun/misc/Unsafe;

    .line 320
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->BYTE_ARRAY_BASE_OFFSET:I

    .line 325
    const-string v3, "sun.arch.data.model"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "64"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    rem-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    .line 328
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 331
    return-void

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 296
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 4

    .line 341
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 342
    :catch_0
    move-exception v0

    .line 346
    :try_start_1
    new-instance v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator$1;

    invoke-direct {v0}, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 361
    :catch_1
    move-exception v0

    .line 362
    .local v0, "e":Ljava/security/PrivilegedActionException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "Could not initialize intrinsics"

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 295
    const-class v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    return-object v0
.end method

.method public static values()[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;
    .locals 1

    .line 295
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->$VALUES:[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    invoke-virtual {v0}, [Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 295
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->compare([B[B)I

    move-result p1

    return p1
.end method

.method public compare([B[B)I
    .locals 17
    .param p1, "left"    # [B
    .param p2, "right"    # [B

    .line 368
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/16 v2, 0x8

    .line 369
    .local v2, "stride":I
    array-length v3, v0

    array-length v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 370
    .local v3, "minLength":I
    and-int/lit8 v4, v3, -0x8

    .line 377
    .local v4, "strideLimit":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 378
    sget-object v6, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->theUnsafe:Lsun/misc/Unsafe;

    sget v7, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->BYTE_ARRAY_BASE_OFFSET:I

    int-to-long v8, v7

    int-to-long v10, v5

    add-long/2addr v8, v10

    invoke-virtual {v6, v0, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 379
    .local v8, "lw":J
    int-to-long v10, v7

    int-to-long v12, v5

    add-long/2addr v10, v12

    invoke-virtual {v6, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    .line 380
    .local v6, "rw":J
    cmp-long v10, v8, v6

    if-eqz v10, :cond_1

    .line 381
    sget-boolean v10, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->BIG_ENDIAN:Z

    if-eqz v10, :cond_0

    .line 382
    invoke-static {v8, v9, v6, v7}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v10

    return v10

    .line 392
    :cond_0
    xor-long v10, v8, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    and-int/lit8 v10, v10, -0x8

    .line 393
    .local v10, "n":I
    ushr-long v11, v8, v10

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    long-to-int v11, v11

    ushr-long v15, v6, v10

    and-long v12, v15, v13

    long-to-int v12, v12

    sub-int/2addr v11, v12

    return v11

    .line 377
    .end local v6    # "rw":J
    .end local v8    # "lw":J
    .end local v10    # "n":I
    :cond_1
    add-int/lit8 v5, v5, 0x8

    goto :goto_0

    .line 398
    :cond_2
    :goto_1
    if-ge v5, v3, :cond_4

    .line 399
    aget-byte v6, v0, v5

    aget-byte v7, v1, v5

    invoke-static {v6, v7}, Lcom/google/common/primitives/UnsignedBytes;->compare(BB)I

    move-result v6

    .line 400
    .local v6, "result":I
    if-eqz v6, :cond_3

    .line 401
    return v6

    .line 398
    .end local v6    # "result":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 404
    :cond_4
    array-length v6, v0

    array-length v7, v1

    sub-int/2addr v6, v7

    return v6
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 409
    const-string v0, "UnsignedBytes.lexicographicalComparator() (sun.misc.Unsafe version)"

    return-object v0
.end method
