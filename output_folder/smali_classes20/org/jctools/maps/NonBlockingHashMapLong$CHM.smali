.class final Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
.super Ljava/lang/Object;
.source "NonBlockingHashMapLong.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingHashMapLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHM"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final _copyDoneUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/maps/NonBlockingHashMapLong$CHM;",
            ">;"
        }
    .end annotation
.end field

.field private static final _copyIdxUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/maps/NonBlockingHashMapLong$CHM;",
            ">;"
        }
    .end annotation
.end field

.field private static final _newchmUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/jctools/maps/NonBlockingHashMapLong$CHM;",
            "Lorg/jctools/maps/NonBlockingHashMapLong$CHM;",
            ">;"
        }
    .end annotation
.end field

.field private static final _resizerUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/maps/NonBlockingHashMapLong$CHM;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile _copyDone:J

.field volatile _copyIdx:J

.field final _keys:[J

.field final _nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

.field volatile _newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

.field volatile _resizers:J

.field private final _size:Lorg/jctools/maps/ConcurrentAutoTable;

.field private final _slots:Lorg/jctools/maps/ConcurrentAutoTable;

.field final _vals:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 400
    const-class v0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    const-class v1, Lorg/jctools/maps/NonBlockingHashMapLong;

    .line 429
    nop

    .line 430
    const-string v1, "_newchm"

    invoke-static {v0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchmUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 448
    nop

    .line 449
    const-string v1, "_resizers"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_resizerUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 794
    nop

    .line 795
    const-string v1, "_copyIdx"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyIdxUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 801
    nop

    .line 802
    const-string v1, "_copyDone"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyDoneUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 801
    return-void
.end method

.method constructor <init>(Lorg/jctools/maps/NonBlockingHashMapLong;Lorg/jctools/maps/ConcurrentAutoTable;I)V
    .locals 2
    .param p1, "nbhml"    # Lorg/jctools/maps/NonBlockingHashMapLong;
    .param p2, "size"    # Lorg/jctools/maps/ConcurrentAutoTable;
    .param p3, "logsize"    # I

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyIdx:J

    .line 800
    iput-wide v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyDone:J

    .line 465
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

    .line 466
    iput-object p2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    .line 467
    new-instance v0, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v0}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    .line 468
    const/4 v0, 0x1

    shl-int v1, v0, p3

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    .line 469
    shl-int/2addr v0, p3

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    .line 470
    return-void
.end method

.method private CAS_key(IJJ)Z
    .locals 8
    .param p1, "idx"    # I
    .param p2, "old"    # J
    .param p4, "key"    # J

    .line 454
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    invoke-static {v1, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$400([JI)J

    move-result-wide v2

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method private CAS_val(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "idx"    # I
    .param p2, "old"    # Ljava/lang/Object;
    .param p3, "val"    # Ljava/lang/Object;

    .line 457
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$500([Ljava/lang/Object;I)J

    move-result-wide v2

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$000(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;)V
    .locals 0
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    .line 400
    invoke-direct {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->print()V

    return-void
.end method

.method static synthetic access$100(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .line 400
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;J)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    .param p1, "x1"    # J

    .line 400
    invoke-direct {p0, p1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->get_impl(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    .param p1, "x1"    # Z

    .line 400
    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->help_copy_impl(Z)V

    return-void
.end method

.method private final copy_check_and_promote(I)V
    .locals 10
    .param p1, "workdone"    # I

    .line 883
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    array-length v0, v0

    .line 885
    .local v0, "oldlen":I
    iget-wide v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyDone:J

    .line 886
    .local v1, "copyDone":J
    int-to-long v3, p1

    add-long/2addr v3, v1

    int-to-long v5, v0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    .line 887
    if-lez p1, :cond_1

    .line 888
    :goto_0
    sget-object v4, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyDoneUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v5, p1

    add-long v8, v1, v5

    move-object v5, p0

    move-wide v6, v1

    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 889
    iget-wide v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyDone:J

    .line 890
    int-to-long v3, p1

    add-long/2addr v3, v1

    int-to-long v5, v0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 897
    :cond_1
    int-to-long v3, p1

    add-long/2addr v3, v1

    int-to-long v5, v0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

    .line 898
    invoke-static {v3}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1500(Lorg/jctools/maps/NonBlockingHashMapLong;)Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    move-result-object v3

    if-ne v3, p0, :cond_2

    iget-object v3, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

    .line 900
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1600()J

    move-result-wide v4

    iget-object v6, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    invoke-static {v3, v4, v5, p0, v6}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1700(Lorg/jctools/maps/NonBlockingHashMapLong;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 901
    iget-object v3, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1402(Lorg/jctools/maps/NonBlockingHashMapLong;J)J

    .line 903
    :cond_2
    return-void

    .line 886
    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method private copy_slot(I)Z
    .locals 11
    .param p1, "idx"    # I

    .line 922
    :goto_0
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    aget-wide v1, v0, p1

    move-wide v3, v1

    .local v3, "key":J
    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    .line 923
    const-wide/16 v7, 0x0

    array-length v0, v0

    add-int/2addr v0, p1

    int-to-long v9, v0

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v5 .. v10}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->CAS_key(IJJ)Z

    goto :goto_0

    .line 928
    :cond_0
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 929
    .local v0, "oldval":Ljava/lang/Object;
    :goto_1
    instance-of v1, v0, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    const/4 v2, 0x1

    if-nez v1, :cond_5

    .line 930
    if-eqz v0, :cond_2

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    new-instance v1, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    invoke-direct {v1, v0}, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    :goto_2
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1800()Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    move-result-object v1

    .line 931
    .local v1, "box":Lorg/jctools/maps/NonBlockingHashMapLong$Prime;
    :goto_3
    invoke-direct {p0, p1, v0, v1}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->CAS_val(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 937
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1800()Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    move-result-object v5

    if-ne v1, v5, :cond_3

    .line 938
    return v2

    .line 941
    :cond_3
    move-object v0, v1

    .line 942
    goto :goto_4

    .line 944
    :cond_4
    iget-object v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    aget-object v0, v2, p1

    .line 945
    .end local v1    # "box":Lorg/jctools/maps/NonBlockingHashMapLong$Prime;
    goto :goto_1

    .line 946
    :cond_5
    :goto_4
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1800()Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    move-result-object v1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_6

    return v5

    .line 953
    :cond_6
    move-object v1, v0

    check-cast v1, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    iget-object v1, v1, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;->_V:Ljava/lang/Object;

    .line 954
    .local v1, "old_unboxed":Ljava/lang/Object;
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v6

    if-eq v1, v6, :cond_9

    .line 955
    iget-object v6, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v4, v1, v7}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    :goto_5
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1800()Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    move-result-object v6

    if-eq v0, v6, :cond_7

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1800()Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    move-result-object v6

    invoke-direct {p0, p1, v0, v6}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->CAS_val(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 963
    iget-object v6, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    aget-object v0, v6, p1

    goto :goto_5

    .line 965
    :cond_7
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1800()Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    move-result-object v6

    if-eq v0, v6, :cond_8

    goto :goto_6

    :cond_8
    move v2, v5

    :goto_6
    return v2

    .line 954
    :cond_9
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private copy_slot_and_check(ILjava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    .locals 1
    .param p1, "idx"    # I
    .param p2, "should_help"    # Ljava/lang/Object;

    .line 873
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    if-eqz v0, :cond_2

    .line 874
    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->copy_slot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->copy_check_and_promote(I)V

    .line 877
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1100(Lorg/jctools/maps/NonBlockingHashMapLong;)V

    .line 878
    :cond_1
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    return-object v0

    .line 873
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private get_impl(J)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # J

    .line 503
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    array-length v0, v0

    .line 504
    .local v0, "len":I
    add-int/lit8 v1, v0, -0x1

    int-to-long v1, v1

    and-long/2addr v1, p1

    long-to-int v1, v1

    .line 507
    .local v1, "idx":I
    const/4 v2, 0x0

    .line 509
    .local v2, "reprobe_cnt":I
    :goto_0
    iget-object v3, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    aget-wide v3, v3, v1

    .line 510
    .local v3, "K":J
    iget-object v5, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    aget-object v5, v5, v1

    .line 511
    .local v5, "V":Ljava/lang/Object;
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return-object v7

    .line 514
    :cond_0
    cmp-long v6, p1, v3

    if-nez v6, :cond_3

    .line 516
    instance-of v6, v5, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    if-nez v6, :cond_2

    .line 517
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_1

    return-object v7

    .line 521
    :cond_1
    iget-object v6, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    .line 522
    .local v6, "newchm":Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    return-object v5

    .line 526
    .end local v6    # "newchm":Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->copy_slot_and_check(ILjava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    move-result-object v6

    invoke-direct {v6, p1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->get_impl(J)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 531
    :cond_3
    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$900(I)I

    move-result v6

    if-lt v2, v6, :cond_5

    .line 532
    iget-object v6, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    if-nez v6, :cond_4

    goto :goto_1

    .line 534
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->copy_slot_and_check(ILjava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    move-result-object v6

    invoke-direct {v6, p1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->get_impl(J)Ljava/lang/Object;

    move-result-object v7

    .line 532
    :goto_1
    return-object v7

    .line 536
    :cond_5
    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v0, -0x1

    and-int v1, v6, v7

    .line 537
    .end local v3    # "K":J
    .end local v5    # "V":Ljava/lang/Object;
    goto :goto_0
.end method

.method private final help_copy_impl(Z)V
    .locals 12
    .param p1, "copy_all"    # Z

    .line 809
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    .line 810
    .local v0, "newchm":Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    if-eqz v0, :cond_7

    .line 811
    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    array-length v1, v1

    .line 812
    .local v1, "oldlen":I
    const/16 v2, 0x400

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 815
    .local v2, "MIN_COPY_WORK":I
    const/4 v3, -0x1

    .line 816
    .local v3, "panic_start":I
    const/16 v4, -0x270f

    .line 817
    .local v4, "copyidx":I
    :goto_0
    iget-wide v5, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyDone:J

    int-to-long v7, v1

    cmp-long v5, v5, v7

    if-gez v5, :cond_6

    .line 828
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 829
    iget-wide v6, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyIdx:J

    long-to-int v4, v6

    .line 830
    :goto_1
    sget-object v6, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyIdxUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v8, v4

    add-int v7, v4, v2

    int-to-long v10, v7

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 831
    iget-wide v6, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyIdx:J

    long-to-int v4, v6

    goto :goto_1

    .line 832
    :cond_0
    shl-int/lit8 v6, v1, 0x1

    if-lt v4, v6, :cond_1

    .line 833
    move v3, v4

    .line 837
    :cond_1
    const/4 v6, 0x0

    .line 838
    .local v6, "workdone":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v2, :cond_3

    .line 839
    add-int v8, v4, v7

    add-int/lit8 v9, v1, -0x1

    and-int/2addr v8, v9

    invoke-direct {p0, v8}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->copy_slot(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 840
    add-int/lit8 v6, v6, 0x1

    .line 838
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 841
    .end local v7    # "i":I
    :cond_3
    if-lez v6, :cond_4

    .line 842
    invoke-direct {p0, v6}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->copy_check_and_promote(I)V

    .line 847
    :cond_4
    add-int/2addr v4, v2

    .line 850
    if-nez p1, :cond_5

    if-ne v3, v5, :cond_5

    .line 851
    return-void

    .line 852
    .end local v6    # "workdone":I
    :cond_5
    goto :goto_0

    .line 855
    :cond_6
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->copy_check_and_promote(I)V

    .line 856
    return-void

    .line 810
    .end local v1    # "oldlen":I
    .end local v2    # "MIN_COPY_WORK":I
    .end local v3    # "panic_start":I
    .end local v4    # "copyidx":I
    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private print()V
    .locals 5

    .line 474
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 475
    aget-wide v1, v1, v0

    .line 476
    .local v1, "K":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 477
    iget-object v3, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {v0, v1, v2, v3}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$600(IJLjava/lang/Object;)V

    .line 474
    .end local v1    # "K":J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    .line 480
    .local v0, "newchm":Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    if-eqz v0, :cond_2

    .line 481
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 482
    invoke-direct {v0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->print()V

    .line 484
    :cond_2
    return-void
.end method

.method private print2()V
    .locals 5

    .line 488
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 489
    aget-wide v1, v1, v0

    .line 490
    .local v1, "K":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 491
    iget-object v3, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {v0, v1, v2, v3}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$700(IJLjava/lang/Object;)V

    .line 488
    .end local v1    # "K":J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    .line 494
    .local v0, "newchm":Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    if-eqz v0, :cond_2

    .line 495
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 496
    invoke-direct {v0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->print2()V

    .line 498
    :cond_2
    return-void
.end method

.method private putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .param p1, "key"    # J
    .param p3, "putval"    # Ljava/lang/Object;
    .param p4, "expVal"    # Ljava/lang/Object;

    .line 547
    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    if-eqz v9, :cond_17

    .line 548
    instance-of v0, v9, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    if-nez v0, :cond_16

    .line 549
    instance-of v0, v10, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    if-nez v0, :cond_15

    .line 550
    iget-object v0, v6, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    array-length v11, v0

    .line 551
    .local v11, "len":I
    add-int/lit8 v0, v11, -0x1

    int-to-long v0, v0

    and-long/2addr v0, v7

    long-to-int v0, v0

    .line 555
    .local v0, "idx":I
    const/4 v1, 0x0

    move v12, v0

    move v13, v1

    .line 559
    .end local v0    # "idx":I
    .local v12, "idx":I
    .local v13, "reprobe_cnt":I
    :goto_0
    iget-object v0, v6, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    aget-object v14, v0, v12

    .line 560
    .local v14, "V":Ljava/lang/Object;
    iget-object v0, v6, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    aget-wide v15, v0, v12

    .line 561
    .local v15, "K":J
    const-wide/16 v17, 0x0

    cmp-long v0, v15, v17

    const-wide/16 v4, 0x1

    if-nez v0, :cond_4

    .line 564
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v0

    if-ne v9, v0, :cond_0

    return-object v9

    .line 565
    :cond_0
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1000()Ljava/lang/Object;

    move-result-object v0

    if-ne v10, v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 567
    :cond_1
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move/from16 v19, v11

    move-wide v10, v4

    .end local v11    # "len":I
    .local v19, "len":I
    move-wide/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->CAS_key(IJJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 568
    iget-object v0, v6, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {v0, v10, v11}, Lorg/jctools/maps/ConcurrentAutoTable;->add(J)V

    .line 569
    goto :goto_2

    .line 584
    :cond_2
    iget-object v0, v6, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    aget-wide v0, v0, v12

    .line 585
    .end local v15    # "K":J
    .local v0, "K":J
    cmp-long v2, v0, v17

    if-eqz v2, :cond_3

    .line 588
    move-wide v15, v0

    goto :goto_1

    .line 585
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 561
    .end local v0    # "K":J
    .end local v19    # "len":I
    .restart local v11    # "len":I
    .restart local v15    # "K":J
    :cond_4
    move/from16 v19, v11

    move-wide v10, v4

    .line 588
    .end local v11    # "len":I
    .restart local v19    # "len":I
    :goto_1
    cmp-long v0, v15, v7

    if-nez v0, :cond_12

    .line 589
    nop

    .line 611
    :goto_2
    if-ne v9, v14, :cond_5

    return-object v14

    .line 616
    :cond_5
    if-nez v14, :cond_6

    move/from16 v0, v19

    .end local v19    # "len":I
    .local v0, "len":I
    invoke-direct {v6, v13, v0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->tableFull(II)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    .end local v0    # "len":I
    .restart local v19    # "len":I
    :cond_6
    move/from16 v0, v19

    .end local v19    # "len":I
    .restart local v0    # "len":I
    :goto_3
    instance-of v1, v14, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    if-eqz v1, :cond_8

    .line 620
    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->resize()Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    .line 621
    move-object/from16 v1, p4

    invoke-direct {v6, v12, v1}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->copy_slot_and_check(ILjava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    move-result-object v2

    invoke-direct {v2, v7, v8, v9, v1}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 633
    :cond_8
    move-object/from16 v1, p4

    move-wide v2, v10

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1200()Ljava/lang/Object;

    move-result-object v4

    if-eq v1, v4, :cond_c

    if-eq v14, v1, :cond_c

    .line 635
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1000()Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_9

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v4

    if-eq v14, v4, :cond_9

    if-nez v14, :cond_c

    :cond_9
    if-nez v14, :cond_a

    .line 636
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v4

    if-eq v1, v4, :cond_c

    :cond_a
    if-eqz v1, :cond_b

    .line 637
    invoke-virtual {v1, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 638
    :cond_b
    return-object v14

    .line 641
    :cond_c
    invoke-direct {v6, v12, v14, v9}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->CAS_val(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 645
    if-eqz v1, :cond_10

    .line 647
    if-eqz v14, :cond_d

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v4

    if-ne v14, v4, :cond_e

    :cond_d
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v4

    if-eq v9, v4, :cond_e

    iget-object v4, v6, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {v4, v2, v3}, Lorg/jctools/maps/ConcurrentAutoTable;->add(J)V

    .line 648
    :cond_e
    if-eqz v14, :cond_10

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v2

    if-eq v14, v2, :cond_10

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v2

    if-ne v9, v2, :cond_10

    iget-object v2, v6, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/jctools/maps/ConcurrentAutoTable;->add(J)V

    goto :goto_4

    .line 651
    :cond_f
    iget-object v2, v6, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    aget-object v14, v2, v12

    .line 655
    instance-of v2, v14, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    if-eqz v2, :cond_10

    .line 656
    invoke-direct {v6, v12, v1}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->copy_slot_and_check(ILjava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    move-result-object v2

    invoke-direct {v2, v7, v8, v9, v1}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 661
    :cond_10
    :goto_4
    if-nez v14, :cond_11

    if-eqz v1, :cond_11

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v2

    goto :goto_5

    :cond_11
    move-object v2, v14

    :goto_5
    return-object v2

    .line 594
    .end local v0    # "len":I
    .restart local v19    # "len":I
    :cond_12
    move-object/from16 v1, p4

    move/from16 v0, v19

    .end local v19    # "len":I
    .restart local v0    # "len":I
    add-int/lit8 v13, v13, 0x1

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$900(I)I

    move-result v2

    if-lt v13, v2, :cond_14

    .line 598
    invoke-direct/range {p0 .. p0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->resize()Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    move-result-object v2

    .line 599
    .local v2, "newchm":Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    if-eqz v1, :cond_13

    iget-object v3, v6, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-static {v3}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1100(Lorg/jctools/maps/NonBlockingHashMapLong;)V

    .line 600
    :cond_13
    invoke-direct {v2, v7, v8, v9, v1}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 603
    .end local v2    # "newchm":Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    :cond_14
    add-int/lit8 v2, v12, 0x1

    add-int/lit8 v11, v0, -0x1

    and-int v12, v2, v11

    move v11, v0

    move-object v10, v1

    goto/16 :goto_0

    .line 549
    .end local v0    # "len":I
    .end local v12    # "idx":I
    .end local v13    # "reprobe_cnt":I
    .end local v14    # "V":Ljava/lang/Object;
    .end local v15    # "K":J
    :cond_15
    move-object v1, v10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 548
    :cond_16
    move-object v1, v10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 547
    :cond_17
    move-object v1, v10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private final resize()Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    .locals 24

    .line 690
    move-object/from16 v7, p0

    iget-object v0, v7, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    .line 691
    .local v0, "newchm":Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    if-eqz v0, :cond_0

    .line 692
    return-object v0

    .line 695
    :cond_0
    iget-object v1, v7, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    array-length v8, v1

    .line 696
    .local v8, "oldlen":I
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->size()I

    move-result v9

    .line 697
    .local v9, "sz":I
    move v1, v9

    .line 701
    .local v1, "newsz":I
    iget-object v2, v7, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-static {v2}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1300(Lorg/jctools/maps/NonBlockingHashMapLong;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 703
    shr-int/lit8 v2, v8, 0x1

    if-lt v9, v2, :cond_2

    .line 704
    shl-int/lit8 v1, v8, 0x1

    goto :goto_0

    .line 706
    :cond_1
    shr-int/lit8 v2, v8, 0x2

    if-lt v9, v2, :cond_2

    .line 707
    shl-int/lit8 v1, v8, 0x1

    .line 708
    shr-int/lit8 v2, v8, 0x1

    if-lt v9, v2, :cond_2

    .line 709
    shl-int/lit8 v1, v8, 0x2

    .line 719
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 720
    .local v10, "tm":J
    if-gt v1, v8, :cond_3

    iget-object v2, v7, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

    .line 721
    invoke-static {v2}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1400(Lorg/jctools/maps/NonBlockingHashMapLong;)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    cmp-long v2, v10, v2

    if-gtz v2, :cond_3

    .line 722
    shl-int/lit8 v1, v8, 0x1

    .line 726
    :cond_3
    if-ge v1, v8, :cond_4

    move v1, v8

    :cond_4
    move v12, v1

    .line 730
    .end local v1    # "newsz":I
    .local v12, "newsz":I
    const/4 v1, 0x4

    .local v1, "log2":I
    :goto_1
    const/4 v13, 0x1

    shl-int v2, v13, v1

    if-ge v2, v12, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 731
    :cond_5
    const-wide/16 v14, 0x1

    shl-long v2, v14, v1

    shl-long/2addr v2, v13

    const-wide/16 v16, 0x2

    add-long v2, v2, v16

    .line 734
    .local v2, "len":J
    long-to-int v4, v2

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_7

    .line 735
    const/16 v1, 0x1e

    .line 736
    shl-long v4, v14, v1

    add-long v2, v4, v16

    .line 737
    int-to-long v4, v9

    const/4 v6, 0x2

    shr-long v18, v2, v6

    shr-long v20, v2, v13

    add-long v18, v18, v20

    cmp-long v4, v4, v18

    if-gtz v4, :cond_6

    move v5, v1

    move-wide/from16 v18, v2

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Table is full."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 734
    :cond_7
    move v5, v1

    move-wide/from16 v18, v2

    .line 743
    .end local v1    # "log2":I
    .end local v2    # "len":J
    .local v5, "log2":I
    .local v18, "len":J
    :goto_2
    iget-wide v1, v7, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_resizers:J

    move-wide/from16 v20, v1

    .line 744
    .local v20, "r":J
    :goto_3
    sget-object v1, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_resizerUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    add-long v22, v20, v14

    move-object/from16 v2, p0

    move-wide/from16 v3, v20

    move v13, v5

    .end local v5    # "log2":I
    .local v13, "log2":I
    move-wide/from16 v5, v22

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-nez v1, :cond_8

    .line 745
    iget-wide v1, v7, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_resizers:J

    move-wide/from16 v20, v1

    move v5, v13

    const/4 v13, 0x1

    .end local v20    # "r":J
    .local v1, "r":J
    goto :goto_3

    .line 749
    .end local v1    # "r":J
    .restart local v20    # "r":J
    :cond_8
    shl-long v1, v14, v13

    const/4 v3, 0x1

    shl-long/2addr v1, v3

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    const/4 v3, 0x3

    shl-long/2addr v1, v3

    const/16 v3, 0x14

    shr-long/2addr v1, v3

    .line 750
    .local v1, "megs":J
    cmp-long v3, v20, v16

    if-ltz v3, :cond_a

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_a

    .line 751
    iget-object v3, v7, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    .line 752
    .end local v0    # "newchm":Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    .local v3, "newchm":Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    if-eqz v3, :cond_9

    .line 753
    return-object v3

    .line 759
    :cond_9
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 763
    :goto_4
    move-object v0, v3

    .end local v3    # "newchm":Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    .restart local v0    # "newchm":Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    :cond_a
    iget-object v0, v7, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    .line 764
    if-eqz v0, :cond_b

    .line 765
    return-object v0

    .line 768
    :cond_b
    new-instance v3, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    iget-object v4, v7, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

    iget-object v5, v7, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v3, v4, v5, v13}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;Lorg/jctools/maps/ConcurrentAutoTable;I)V

    move-object v0, v3

    .line 771
    iget-object v3, v7, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    if-eqz v3, :cond_c

    .line 772
    iget-object v3, v7, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    return-object v3

    .line 776
    :cond_c
    invoke-virtual {v7, v0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->CAS_newchm(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_5

    .line 782
    :cond_d
    iget-object v0, v7, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    .line 783
    :goto_5
    return-object v0
.end method

.method private final tableFull(II)Z
    .locals 4
    .param p1, "reprobe_cnt"    # I
    .param p2, "len"    # I

    .line 674
    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    .line 677
    invoke-static {p2}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$900(I)I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    .line 679
    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable;->estimate_get()J

    move-result-wide v0

    shr-int/lit8 v2, p2, 0x1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 674
    :goto_0
    return v0
.end method


# virtual methods
.method CAS_newchm(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;)Z
    .locals 2
    .param p1, "newchm"    # Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    .line 433
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchmUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 2

    .line 406
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public slots()I
    .locals 2

    .line 419
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
