.class final Lorg/jctools/maps/NonBlockingSetInt$NBSI;
.super Ljava/lang/Object;
.source "NonBlockingSetInt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingSetInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NBSI"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final _Lbase:I

.field private static final _Lscale:I

.field private static final _new_offset:J


# instance fields
.field private final _bits:[J

.field private final transient _copyDone:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final transient _copyIdx:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _nbsi64:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

.field private _new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

.field private final transient _non_blocking_set_int:Lorg/jctools/maps/NonBlockingSetInt;

.field private final transient _size:Lorg/jctools/maps/ConcurrentAutoTable;

.field private final transient _sum_bits_length:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 205
    const-class v0, [J

    const-class v1, Lorg/jctools/maps/NonBlockingSetInt;

    .line 215
    sget-object v1, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    sput v1, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_Lbase:I

    .line 216
    sget-object v1, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_Lscale:I

    .line 229
    const-class v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    const-string v1, "_new"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new_offset:J

    return-void
.end method

.method private constructor <init>(ILorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/NonBlockingSetInt;)V
    .locals 5
    .param p1, "max_elem"    # I
    .param p2, "ctr"    # Lorg/jctools/maps/ConcurrentAutoTable;
    .param p3, "nonb"    # Lorg/jctools/maps/NonBlockingSetInt;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p3, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_non_blocking_set_int:Lorg/jctools/maps/NonBlockingSetInt;

    .line 253
    iput-object p2, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    .line 254
    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    :goto_0
    iput-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyIdx:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 255
    if-nez p2, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    :goto_1
    iput-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyDone:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 257
    int-to-long v1, p1

    const-wide/16 v3, 0x3f

    add-long/2addr v1, v3

    const/4 v3, 0x6

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    .line 260
    add-int/lit8 v2, p1, 0x1

    ushr-int/2addr v2, v3

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    add-int/lit8 v4, p1, 0x1

    ushr-int/lit8 v3, v4, 0x6

    invoke-direct {v2, v3, v0, v0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;-><init>(ILorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/NonBlockingSetInt;)V

    move-object v0, v2

    :goto_2
    iput-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_nbsi64:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    .line 261
    array-length v1, v1

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    iget v0, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_sum_bits_length:I

    :goto_3
    add-int/2addr v1, v0

    iput v1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_sum_bits_length:I

    .line 262
    return-void
.end method

.method synthetic constructor <init>(ILorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/NonBlockingSetInt;Lorg/jctools/maps/NonBlockingSetInt$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/jctools/maps/ConcurrentAutoTable;
    .param p3, "x2"    # Lorg/jctools/maps/NonBlockingSetInt;
    .param p4, "x3"    # Lorg/jctools/maps/NonBlockingSetInt$1;

    .line 205
    invoke-direct {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;-><init>(ILorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/NonBlockingSetInt;)V

    return-void
.end method

.method private final CAS(IJJ)Z
    .locals 8
    .param p1, "idx"    # I
    .param p2, "old"    # J
    .param p4, "nnn"    # J

    .line 222
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    invoke-static {v1, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->rawIndex([JI)J

    move-result-wide v2

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method private final CAS_new(Lorg/jctools/maps/NonBlockingSetInt$NBSI;)Z
    .locals 6
    .param p1, "nnn"    # Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    .line 232
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new_offset:J

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/jctools/maps/NonBlockingSetInt$NBSI;)[J
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    .line 205
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    return-object v0
.end method

.method static synthetic access$200(Lorg/jctools/maps/NonBlockingSetInt$NBSI;I)V
    .locals 0
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    .param p1, "x1"    # I

    .line 205
    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->print(I)V

    return-void
.end method

.method static synthetic access$400(Lorg/jctools/maps/NonBlockingSetInt$NBSI;)Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    .line 205
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    return-object v0
.end method

.method private help_copy()Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    .locals 6

    .line 363
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_non_blocking_set_int:Lorg/jctools/maps/NonBlockingSetInt;

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingSetInt;->access$300(Lorg/jctools/maps/NonBlockingSetInt;)Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object v0

    .line 364
    .local v0, "top_nbsi":Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    const/16 v1, 0x8

    .line 367
    .local v1, "HELP":I
    iget-object v2, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyIdx:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v2

    .line 368
    .local v2, "idx":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 369
    mul-int/lit8 v4, v3, 0x40

    add-int/2addr v4, v2

    .line 370
    .local v4, "j":I
    iget-object v5, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    array-length v5, v5

    shl-int/lit8 v5, v5, 0x6

    rem-int/2addr v4, v5

    .line 371
    invoke-direct {v0, v4}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy_impl(I)Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    .line 372
    add-int/lit8 v5, v4, 0x3f

    invoke-direct {v0, v5}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy_impl(I)Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    .line 368
    .end local v4    # "j":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 377
    .end local v3    # "i":I
    :cond_0
    iget-object v3, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyDone:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_sum_bits_length:I

    if-ne v3, v4, :cond_1

    .line 380
    iget-object v3, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_non_blocking_set_int:Lorg/jctools/maps/NonBlockingSetInt;

    iget-object v4, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-static {v3, v0, v4}, Lorg/jctools/maps/NonBlockingSetInt;->access$500(Lorg/jctools/maps/NonBlockingSetInt;Lorg/jctools/maps/NonBlockingSetInt$NBSI;Lorg/jctools/maps/NonBlockingSetInt$NBSI;)Z

    .line 385
    :cond_1
    iget-object v3, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    return-object v3
.end method

.method private help_copy_impl(I)Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    .locals 18
    .param p1, "i"    # I

    .line 397
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    .line 398
    .local v1, "old":Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    iget-object v2, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    .line 399
    .local v2, "nnn":Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    if-nez v2, :cond_0

    return-object v0

    .line 400
    :cond_0
    move/from16 v3, p1

    move-object v10, v2

    move v11, v3

    .line 401
    .end local v2    # "nnn":Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    .local v10, "nnn":Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    .local v11, "j":I
    :goto_0
    and-int/lit8 v2, v11, 0x3f

    const/16 v12, 0x3f

    if-ne v2, v12, :cond_1

    .line 402
    iget-object v1, v1, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_nbsi64:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    .line 403
    iget-object v10, v10, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_nbsi64:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    .line 404
    shr-int/lit8 v11, v11, 0x6

    goto :goto_0

    .line 409
    :cond_1
    iget-object v2, v1, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    shr-int/lit8 v3, v11, 0x6

    aget-wide v2, v2, v3

    .line 410
    .local v2, "bits":J
    :goto_1
    const-wide/16 v13, 0x0

    cmp-long v4, v2, v13

    const/4 v15, 0x1

    if-ltz v4, :cond_4

    .line 411
    move-wide/from16 v16, v2

    .line 412
    .local v16, "oldbits":J
    invoke-static {v12}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->mask(I)J

    move-result-wide v4

    or-long/2addr v2, v4

    .line 413
    shr-int/lit8 v5, v11, 0x6

    move-object v4, v1

    move-wide/from16 v6, v16

    move-wide v8, v2

    invoke-direct/range {v4 .. v9}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->CAS(IJJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 414
    cmp-long v4, v16, v13

    if-nez v4, :cond_2

    iget-object v4, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyDone:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v15}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 421
    .end local v16    # "oldbits":J
    :cond_2
    move-wide/from16 v16, v2

    goto :goto_2

    .line 417
    .restart local v16    # "oldbits":J
    :cond_3
    iget-object v4, v1, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    shr-int/lit8 v5, v11, 0x6

    aget-wide v2, v4, v5

    .line 418
    .end local v16    # "oldbits":J
    goto :goto_1

    .line 410
    :cond_4
    move-wide/from16 v16, v2

    .line 421
    .end local v2    # "bits":J
    .local v16, "bits":J
    :goto_2
    invoke-static {v12}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->mask(I)J

    move-result-wide v2

    cmp-long v2, v16, v2

    if-eqz v2, :cond_8

    .line 422
    iget-object v2, v10, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    shr-int/lit8 v3, v11, 0x6

    aget-wide v2, v2, v3

    .line 423
    .local v2, "new_bits":J
    cmp-long v4, v2, v13

    if-nez v4, :cond_7

    .line 424
    invoke-static {v12}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->mask(I)J

    move-result-wide v4

    not-long v4, v4

    and-long v8, v16, v4

    .line 427
    .end local v2    # "new_bits":J
    .local v8, "new_bits":J
    shr-int/lit8 v3, v11, 0x6

    const-wide/16 v4, 0x0

    move-object v2, v10

    move-wide v6, v8

    invoke-direct/range {v2 .. v7}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->CAS(IJJ)Z

    move-result v2

    if-nez v2, :cond_5

    .line 428
    iget-object v2, v10, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    shr-int/lit8 v3, v11, 0x6

    aget-wide v2, v2, v3

    .end local v8    # "new_bits":J
    .restart local v2    # "new_bits":J
    goto :goto_3

    .line 427
    .end local v2    # "new_bits":J
    .restart local v8    # "new_bits":J
    :cond_5
    move-wide v2, v8

    .line 429
    .end local v8    # "new_bits":J
    .restart local v2    # "new_bits":J
    :goto_3
    cmp-long v4, v2, v13

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 434
    :cond_7
    :goto_4
    shr-int/lit8 v5, v11, 0x6

    invoke-static {v12}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->mask(I)J

    move-result-wide v8

    move-object v4, v1

    move-wide/from16 v6, v16

    invoke-direct/range {v4 .. v9}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->CAS(IJJ)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 435
    iget-object v4, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyDone:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v15}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 441
    .end local v2    # "new_bits":J
    :cond_8
    return-object v0
.end method

.method private install_larger_new_bits(I)Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    .locals 4
    .param p1, "i"    # I

    .line 344
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x6

    shl-int/lit8 v0, v0, 0x1

    .line 352
    .local v0, "sz":I
    new-instance v1, Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    iget-object v3, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_non_blocking_set_int:Lorg/jctools/maps/NonBlockingSetInt;

    invoke-direct {v1, v0, v2, v3}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;-><init>(ILorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/NonBlockingSetInt;)V

    invoke-direct {p0, v1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->CAS_new(Lorg/jctools/maps/NonBlockingSetInt$NBSI;)Z

    .line 355
    .end local v0    # "sz":I
    :cond_0
    return-object p0
.end method

.method private static final mask(I)J
    .locals 3
    .param p0, "i"    # I

    .line 239
    and-int/lit8 v0, p0, 0x3f

    const-wide/16 v1, 0x1

    shl-long v0, v1, v0

    return-wide v0
.end method

.method private print(I)V
    .locals 8
    .param p1, "d"    # I

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "NBSI - _bits.len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    move-object v1, p0

    .line 454
    .local v1, "x":Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    :goto_0
    const-string v2, " "

    if-eqz v1, :cond_0

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-object v1, v1, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_nbsi64:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    goto :goto_0

    .line 458
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->print(ILjava/lang/String;)V

    .line 460
    move-object v1, p0

    .line 461
    :goto_1
    if-eqz v1, :cond_2

    .line 462
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v4, v1, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 463
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    aget-wide v6, v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 462
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 464
    .end local v3    # "i":I
    :cond_1
    iget-object v1, v1, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_nbsi64:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    .line 465
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    goto :goto_1

    .line 468
    :cond_2
    iget-object v2, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyIdx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyDone:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v2, :cond_4

    .line 469
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_copyIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyIdx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " _copyDone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyDone:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " _words_to_cpy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_sum_bits_length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->print(ILjava/lang/String;)V

    .line 470
    :cond_4
    iget-object v2, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    if-eqz v2, :cond_5

    .line 471
    const-string v2, "__has_new - "

    invoke-direct {p0, p1, v2}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->print(ILjava/lang/String;)V

    .line 472
    iget-object v2, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    add-int/lit8 v3, p1, 0x1

    invoke-direct {v2, v3}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->print(I)V

    .line 474
    :cond_5
    return-void
.end method

.method private print(ILjava/lang/String;)V
    .locals 3
    .param p1, "d"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 445
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 446
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    .end local v0    # "i":I
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method private static rawIndex([JI)J
    .locals 2
    .param p0, "ary"    # [J
    .param p1, "idx"    # I

    .line 218
    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 219
    sget v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_Lbase:I

    sget v1, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_Lscale:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public add(I)Z
    .locals 12
    .param p1, "i"    # I

    .line 269
    shr-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 270
    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->install_larger_new_bits(I)Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object v0

    .line 271
    invoke-direct {v0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy()Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->add(I)Z

    move-result v0

    .line 270
    return v0

    .line 274
    :cond_0
    move-object v0, p0

    .line 275
    .local v0, "nbsi":Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    move v1, p1

    .line 276
    .local v1, "j":I
    :goto_0
    and-int/lit8 v2, v1, 0x3f

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_1

    .line 277
    iget-object v0, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_nbsi64:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    .line 278
    shr-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 281
    :cond_1
    invoke-static {v1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->mask(I)J

    move-result-wide v8

    .line 284
    .local v8, "mask":J
    :goto_1
    iget-object v2, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    shr-int/lit8 v3, v1, 0x6

    aget-wide v10, v2, v3

    .line 285
    .local v10, "old":J
    const-wide/16 v2, 0x0

    cmp-long v4, v10, v2

    if-gez v4, :cond_2

    .line 287
    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy_impl(I)Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object v2

    invoke-direct {v2}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy()Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->add(I)Z

    move-result v2

    return v2

    .line 288
    :cond_2
    and-long v4, v10, v8

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    return v2

    .line 289
    :cond_3
    shr-int/lit8 v3, v1, 0x6

    or-long v6, v10, v8

    move-object v2, v0

    move-wide v4, v10

    invoke-direct/range {v2 .. v7}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->CAS(IJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 290
    iget-object v2, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/jctools/maps/ConcurrentAutoTable;->add(J)V

    .line 291
    const/4 v2, 0x1

    return v2

    .line 289
    :cond_4
    goto :goto_1
.end method

.method public contains(I)Z
    .locals 12
    .param p1, "i"    # I

    .line 320
    shr-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 321
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy()Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 324
    :cond_1
    move-object v0, p0

    .line 325
    .local v0, "nbsi":Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    move v1, p1

    .line 326
    .local v1, "j":I
    :goto_1
    and-int/lit8 v4, v1, 0x3f

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_2

    .line 327
    iget-object v0, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_nbsi64:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    .line 328
    shr-int/lit8 v1, v1, 0x6

    goto :goto_1

    .line 331
    :cond_2
    invoke-static {v1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->mask(I)J

    move-result-wide v4

    .line 332
    .local v4, "mask":J
    iget-object v6, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    shr-int/lit8 v7, v1, 0x6

    aget-wide v6, v6, v7

    .line 333
    .local v6, "old":J
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gez v10, :cond_3

    .line 335
    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy_impl(I)Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object v2

    invoke-direct {v2}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy()Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->contains(I)Z

    move-result v2

    return v2

    .line 337
    :cond_3
    and-long v10, v6, v4

    cmp-long v8, v10, v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2
.end method

.method public remove(I)Z
    .locals 14
    .param p1, "i"    # I

    .line 295
    shr-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 296
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy()Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->remove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 299
    :cond_1
    move-object v0, p0

    .line 300
    .local v0, "nbsi":Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    move v1, p1

    .line 301
    .local v1, "j":I
    :goto_1
    and-int/lit8 v4, v1, 0x3f

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_2

    .line 302
    iget-object v0, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_nbsi64:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    .line 303
    shr-int/lit8 v1, v1, 0x6

    goto :goto_1

    .line 306
    :cond_2
    invoke-static {v1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->mask(I)J

    move-result-wide v10

    .line 309
    .local v10, "mask":J
    :goto_2
    iget-object v4, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    shr-int/lit8 v5, v1, 0x6

    aget-wide v12, v4, v5

    .line 310
    .local v12, "old":J
    const-wide/16 v4, 0x0

    cmp-long v6, v12, v4

    if-gez v6, :cond_3

    .line 312
    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy_impl(I)Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object v2

    invoke-direct {v2}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy()Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->remove(I)Z

    move-result v2

    return v2

    .line 313
    :cond_3
    and-long v6, v12, v10

    cmp-long v4, v6, v4

    if-nez v4, :cond_4

    return v3

    .line 314
    :cond_4
    shr-int/lit8 v5, v1, 0x6

    not-long v6, v10

    and-long v8, v12, v6

    move-object v4, v0

    move-wide v6, v12

    invoke-direct/range {v4 .. v9}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->CAS(IJJ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 315
    iget-object v3, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Lorg/jctools/maps/ConcurrentAutoTable;->add(J)V

    .line 316
    return v2

    .line 314
    :cond_5
    goto :goto_2
.end method

.method public size()I
    .locals 2

    .line 340
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
