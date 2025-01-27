.class public Lorg/jctools/maps/NonBlockingHashMap;
.super Ljava/util/AbstractMap;
.source "NonBlockingHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jctools/maps/NonBlockingHashMap$SnapshotE;,
        Lorg/jctools/maps/NonBlockingHashMap$NBHMEntry;,
        Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;,
        Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;,
        Lorg/jctools/maps/NonBlockingHashMap$CHM;,
        Lorg/jctools/maps/NonBlockingHashMap$Prime;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TypeK:",
        "Ljava/lang/Object;",
        "TypeV:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TTypeK;TTypeV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TTypeK;TTypeV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static volatile DUMMY_VOLATILE:I = 0x0

.field private static final MATCH_ANY:Ljava/lang/Object;

.field private static final MIN_SIZE:I = 0x8

.field private static final MIN_SIZE_LOG:I = 0x3

.field private static final NO_MATCH_OLD:Ljava/lang/Object;

.field private static final REPROBE_LIMIT:I = 0xa

.field private static final TOMBPRIME:Lorg/jctools/maps/NonBlockingHashMap$Prime;

.field public static final TOMBSTONE:Ljava/lang/Object;

.field private static final _Obase:I

.field private static final _Olog:I

.field private static final _Oscale:I

.field private static final _kvs_offset:J

.field private static final serialVersionUID:J = 0x11207cb4719799cbL


# instance fields
.field private transient _kvs:[Ljava/lang/Object;

.field private transient _last_resize_milli:J

.field private transient _reprobes:Lorg/jctools/maps/ConcurrentAutoTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    nop

    .line 92
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lorg/jctools/maps/NonBlockingHashMap;->_Obase:I

    .line 93
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lorg/jctools/maps/NonBlockingHashMap;->_Oscale:I

    .line 94
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/16 v0, 0x270f

    :goto_0
    sput v0, Lorg/jctools/maps/NonBlockingHashMap;->_Olog:I

    .line 103
    const-class v0, Lorg/jctools/maps/NonBlockingHashMap;

    const-string v1, "_kvs"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/maps/NonBlockingHashMap;->_kvs_offset:J

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/maps/NonBlockingHashMap;->NO_MATCH_OLD:Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/maps/NonBlockingHashMap;->MATCH_ANY:Ljava/lang/Object;

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    .line 170
    new-instance v1, Lorg/jctools/maps/NonBlockingHashMap$Prime;

    invoke-direct {v1, v0}, Lorg/jctools/maps/NonBlockingHashMap$Prime;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/jctools/maps/NonBlockingHashMap;->TOMBPRIME:Lorg/jctools/maps/NonBlockingHashMap$Prime;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 258
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingHashMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initial_sz"    # I

    .line 265
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 235
    new-instance v0, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v0}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap;->_reprobes:Lorg/jctools/maps/ConcurrentAutoTable;

    .line 265
    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->initialize(I)V

    return-void
.end method

.method private static final CAS_key([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p0, "kvs"    # [Ljava/lang/Object;
    .param p1, "idx"    # I
    .param p2, "old"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/Object;

    .line 182
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x2

    invoke-static {p0, v1}, Lorg/jctools/maps/NonBlockingHashMap;->rawIndex([Ljava/lang/Object;I)J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final CAS_kvs([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 6
    .param p1, "oldkvs"    # [Ljava/lang/Object;
    .param p2, "newkvs"    # [Ljava/lang/Object;

    .line 106
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jctools/maps/NonBlockingHashMap;->_kvs_offset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static final CAS_val([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p0, "kvs"    # [Ljava/lang/Object;
    .param p1, "idx"    # I
    .param p2, "old"    # Ljava/lang/Object;
    .param p3, "val"    # Ljava/lang/Object;

    .line 185
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x3

    invoke-static {p0, v1}, Lorg/jctools/maps/NonBlockingHashMap;->rawIndex([Ljava/lang/Object;I)J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMap;
    .param p1, "x1"    # [Ljava/lang/Object;

    .line 83
    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->help_copy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lorg/jctools/maps/NonBlockingHashMap;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMap;

    .line 83
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap;->_kvs:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMap;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # [Ljava/lang/Object;

    .line 83
    invoke-direct {p0, p1, p2}, Lorg/jctools/maps/NonBlockingHashMap;->CAS_kvs([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;
    .param p1, "x1"    # I

    .line 83
    invoke-static {p0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->key([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Ljava/lang/Object;

    .line 83
    invoke-static {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingHashMap;->CAS_key([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;
    .param p1, "x1"    # I

    .line 83
    invoke-static {p0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->val([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Lorg/jctools/maps/NonBlockingHashMap$Prime;
    .locals 1

    .line 83
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMap;->TOMBPRIME:Lorg/jctools/maps/NonBlockingHashMap$Prime;

    return-object v0
.end method

.method static synthetic access$1700([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Ljava/lang/Object;

    .line 83
    invoke-static {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingHashMap;->CAS_val([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMap;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Ljava/lang/Object;
    .param p4, "x4"    # Ljava/lang/Object;

    .line 83
    invoke-static {p0, p1, p2, p3, p4}, Lorg/jctools/maps/NonBlockingHashMap;->putIfMatch(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 83
    invoke-static {p0}, Lorg/jctools/maps/NonBlockingHashMap;->reprobe_limit(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMap$CHM;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;

    .line 83
    invoke-static {p0}, Lorg/jctools/maps/NonBlockingHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMap$CHM;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800([Ljava/lang/Object;)I
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;

    .line 83
    invoke-static {p0}, Lorg/jctools/maps/NonBlockingHashMap;->len([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lorg/jctools/maps/NonBlockingHashMap;)J
    .locals 2
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMap;

    .line 83
    iget-wide v0, p0, Lorg/jctools/maps/NonBlockingHashMap;->_last_resize_milli:J

    return-wide v0
.end method

.method static synthetic access$902(Lorg/jctools/maps/NonBlockingHashMap;J)J
    .locals 0
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMap;
    .param p1, "x1"    # J

    .line 83
    iput-wide p1, p0, Lorg/jctools/maps/NonBlockingHashMap;->_last_resize_milli:J

    return-wide p1
.end method

.method private static final chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMap$CHM;
    .locals 1
    .param p0, "kvs"    # [Ljava/lang/Object;

    .line 142
    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lorg/jctools/maps/NonBlockingHashMap$CHM;

    return-object v0
.end method

.method private static final get_impl(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p0, "topmap"    # Lorg/jctools/maps/NonBlockingHashMap;
    .param p1, "kvs"    # [Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    .line 529
    invoke-static {p2}, Lorg/jctools/maps/NonBlockingHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 530
    .local v0, "fullhash":I
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingHashMap;->len([Ljava/lang/Object;)I

    move-result v1

    .line 531
    .local v1, "len":I
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMap$CHM;

    move-result-object v2

    .line 532
    .local v2, "chm":Lorg/jctools/maps/NonBlockingHashMap$CHM;
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingHashMap;->hashes([Ljava/lang/Object;)[I

    move-result-object v3

    .line 534
    .local v3, "hashes":[I
    add-int/lit8 v4, v1, -0x1

    and-int/2addr v4, v0

    .line 537
    .local v4, "idx":I
    const/4 v5, 0x0

    .line 541
    .local v5, "reprobe_cnt":I
    :goto_0
    invoke-static {p1, v4}, Lorg/jctools/maps/NonBlockingHashMap;->key([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 542
    .local v6, "K":Ljava/lang/Object;
    invoke-static {p1, v4}, Lorg/jctools/maps/NonBlockingHashMap;->val([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    .line 543
    .local v7, "V":Ljava/lang/Object;
    const/4 v8, 0x0

    if-nez v6, :cond_0

    return-object v8

    .line 554
    :cond_0
    iget-object v9, v2, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 557
    .local v9, "newkvs":[Ljava/lang/Object;
    invoke-static {v6, p2, v3, v4, v0}, Lorg/jctools/maps/NonBlockingHashMap;->keyeq(Ljava/lang/Object;Ljava/lang/Object;[III)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 559
    instance-of v10, v7, Lorg/jctools/maps/NonBlockingHashMap$Prime;

    if-nez v10, :cond_2

    .line 560
    sget-object v10, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne v7, v10, :cond_1

    goto :goto_1

    :cond_1
    move-object v8, v7

    :goto_1
    return-object v8

    .line 563
    :cond_2
    invoke-static {v2, p0, p1, v4, p2}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->access$000(Lorg/jctools/maps/NonBlockingHashMap$CHM;Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {p0, v8, p2}, Lorg/jctools/maps/NonBlockingHashMap;->get_impl(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 568
    :cond_3
    add-int/lit8 v5, v5, 0x1

    invoke-static {v1}, Lorg/jctools/maps/NonBlockingHashMap;->reprobe_limit(I)I

    move-result v10

    if-ge v5, v10, :cond_5

    sget-object v10, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne v6, v10, :cond_4

    goto :goto_2

    .line 572
    :cond_4
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v1, -0x1

    and-int v4, v8, v10

    .line 573
    .end local v6    # "K":Ljava/lang/Object;
    .end local v7    # "V":Ljava/lang/Object;
    .end local v9    # "newkvs":[Ljava/lang/Object;
    goto :goto_0

    .line 570
    .restart local v6    # "K":Ljava/lang/Object;
    .restart local v7    # "V":Ljava/lang/Object;
    .restart local v9    # "newkvs":[Ljava/lang/Object;
    :cond_5
    :goto_2
    if-nez v9, :cond_6

    goto :goto_3

    :cond_6
    invoke-direct {p0, v9}, Lorg/jctools/maps/NonBlockingHashMap;->help_copy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {p0, v8, p2}, Lorg/jctools/maps/NonBlockingHashMap;->get_impl(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :goto_3
    return-object v8
.end method

.method private static final getk_impl(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p0, "topmap"    # Lorg/jctools/maps/NonBlockingHashMap;
    .param p1, "kvs"    # [Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    .line 586
    invoke-static {p2}, Lorg/jctools/maps/NonBlockingHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 587
    .local v0, "fullhash":I
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingHashMap;->len([Ljava/lang/Object;)I

    move-result v1

    .line 588
    .local v1, "len":I
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMap$CHM;

    move-result-object v2

    .line 589
    .local v2, "chm":Lorg/jctools/maps/NonBlockingHashMap$CHM;
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingHashMap;->hashes([Ljava/lang/Object;)[I

    move-result-object v3

    .line 591
    .local v3, "hashes":[I
    add-int/lit8 v4, v1, -0x1

    and-int/2addr v4, v0

    .line 594
    .local v4, "idx":I
    const/4 v5, 0x0

    .line 597
    .local v5, "reprobe_cnt":I
    :goto_0
    invoke-static {p1, v4}, Lorg/jctools/maps/NonBlockingHashMap;->key([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 598
    .local v6, "K":Ljava/lang/Object;
    const/4 v7, 0x0

    if-nez v6, :cond_0

    return-object v7

    .line 609
    :cond_0
    iget-object v8, v2, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 612
    .local v8, "newkvs":[Ljava/lang/Object;
    invoke-static {v6, p2, v3, v4, v0}, Lorg/jctools/maps/NonBlockingHashMap;->keyeq(Ljava/lang/Object;Ljava/lang/Object;[III)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 613
    return-object v6

    .line 618
    :cond_1
    add-int/lit8 v5, v5, 0x1

    invoke-static {v1}, Lorg/jctools/maps/NonBlockingHashMap;->reprobe_limit(I)I

    move-result v9

    if-ge v5, v9, :cond_3

    sget-object v9, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne v6, v9, :cond_2

    goto :goto_1

    .line 623
    :cond_2
    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v9, v1, -0x1

    and-int v4, v7, v9

    .line 624
    .end local v6    # "K":Ljava/lang/Object;
    .end local v8    # "newkvs":[Ljava/lang/Object;
    goto :goto_0

    .line 620
    .restart local v6    # "K":Ljava/lang/Object;
    .restart local v8    # "newkvs":[Ljava/lang/Object;
    :cond_3
    :goto_1
    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, v8}, Lorg/jctools/maps/NonBlockingHashMap;->help_copy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v7, p2}, Lorg/jctools/maps/NonBlockingHashMap;->getk_impl(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_2
    return-object v7
.end method

.method private static final hash(Ljava/lang/Object;)I
    .locals 3
    .param p0, "key"    # Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 122
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0x14

    ushr-int/lit8 v2, v0, 0xc

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 123
    ushr-int/lit8 v1, v0, 0x7

    ushr-int/lit8 v2, v0, 0x4

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 124
    shl-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    .line 125
    return v0
.end method

.method private static final hashes([Ljava/lang/Object;)[I
    .locals 1
    .param p0, "kvs"    # [Ljava/lang/Object;

    .line 143
    const/4 v0, 0x1

    aget-object v0, p0, v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method private final help_copy([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p1, "helper"    # [Ljava/lang/Object;

    .line 803
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap;->_kvs:[Ljava/lang/Object;

    .line 804
    .local v0, "topkvs":[Ljava/lang/Object;
    invoke-static {v0}, Lorg/jctools/maps/NonBlockingHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMap$CHM;

    move-result-object v1

    .line 805
    .local v1, "topchm":Lorg/jctools/maps/NonBlockingHashMap$CHM;
    iget-object v2, v1, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    if-nez v2, :cond_0

    return-object p1

    .line 806
    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->access$500(Lorg/jctools/maps/NonBlockingHashMap$CHM;Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Z)V

    .line 807
    return-object p1
.end method

.method private final initialize(I)V
    .locals 6
    .param p1, "initial_sz"    # I

    .line 267
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    const-string v0, "initial_sz"

    invoke-static {p1, v0}, Lorg/jctools/util/RangeUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 269
    const/high16 v0, 0x100000

    if-le p1, v0, :cond_0

    const/high16 p1, 0x100000

    .line 270
    :cond_0
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    shl-int v2, v1, v0

    shl-int/lit8 v3, p1, 0x2

    if-ge v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_1
    shl-int v2, v1, v0

    shl-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lorg/jctools/maps/NonBlockingHashMap;->_kvs:[Ljava/lang/Object;

    .line 273
    const/4 v3, 0x0

    new-instance v4, Lorg/jctools/maps/NonBlockingHashMap$CHM;

    new-instance v5, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v5}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    invoke-direct {v4, v5}, Lorg/jctools/maps/NonBlockingHashMap$CHM;-><init>(Lorg/jctools/maps/ConcurrentAutoTable;)V

    aput-object v4, v2, v3

    .line 274
    iget-object v2, p0, Lorg/jctools/maps/NonBlockingHashMap;->_kvs:[Ljava/lang/Object;

    shl-int v3, v1, v0

    new-array v3, v3, [I

    aput-object v3, v2, v1

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/jctools/maps/NonBlockingHashMap;->_last_resize_milli:J

    .line 276
    return-void
.end method

.method private static final key([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p0, "kvs"    # [Ljava/lang/Object;
    .param p1, "idx"    # I

    .line 179
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x2

    aget-object v0, p0, v0

    return-object v0
.end method

.method private static keyeq(Ljava/lang/Object;Ljava/lang/Object;[III)Z
    .locals 1
    .param p0, "K"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hashes"    # [I
    .param p3, "hash"    # I
    .param p4, "fullhash"    # I

    .line 494
    if-eq p0, p1, :cond_2

    aget v0, p2, p3

    if-eqz v0, :cond_0

    aget v0, p2, p3

    if-ne v0, p4, :cond_1

    :cond_0
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq p0, v0, :cond_1

    .line 508
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 494
    :goto_1
    return v0
.end method

.method private static final len([Ljava/lang/Object;)I
    .locals 1
    .param p0, "kvs"    # [Ljava/lang/Object;

    .line 145
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final print([Ljava/lang/Object;)V
    .locals 10
    .param p1, "kvs"    # [Ljava/lang/Object;

    .line 198
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingHashMap;->len([Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 199
    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingHashMap;->key([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 200
    .local v1, "K":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 201
    sget-object v2, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const-string v3, "XXX"

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "KS":Ljava/lang/String;
    :goto_1
    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingHashMap;->val([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 203
    .local v4, "V":Ljava/lang/Object;
    invoke-static {v4}, Lorg/jctools/maps/NonBlockingHashMap$Prime;->unbox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 204
    .local v5, "U":Ljava/lang/Object;
    const-string v6, ""

    if-ne v4, v5, :cond_1

    move-object v7, v6

    goto :goto_2

    :cond_1
    const-string v7, "prime_"

    .line 205
    .local v7, "p":Ljava/lang/String;
    :goto_2
    if-ne v5, v2, :cond_2

    const-string/jumbo v2, "tombstone"

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "US":Ljava/lang/String;
    :goto_3
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ")"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    .end local v1    # "K":Ljava/lang/Object;
    .end local v2    # "US":Ljava/lang/String;
    .end local v3    # "KS":Ljava/lang/String;
    .end local v4    # "V":Ljava/lang/Object;
    .end local v5    # "U":Ljava/lang/Object;
    .end local v7    # "p":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "i":I
    :cond_4
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMap$CHM;

    move-result-object v0

    iget-object v0, v0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 210
    .local v0, "newkvs":[Ljava/lang/Object;
    if-eqz v0, :cond_5

    .line 211
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingHashMap;->print([Ljava/lang/Object;)V

    .line 214
    :cond_5
    return-void
.end method

.method private final print2([Ljava/lang/Object;)V
    .locals 8
    .param p1, "kvs"    # [Ljava/lang/Object;

    .line 217
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingHashMap;->len([Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 218
    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingHashMap;->key([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 219
    .local v1, "key":Ljava/lang/Object;
    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingHashMap;->val([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 220
    .local v2, "val":Ljava/lang/Object;
    invoke-static {v2}, Lorg/jctools/maps/NonBlockingHashMap$Prime;->unbox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 221
    .local v3, "U":Ljava/lang/Object;
    if-eqz v1, :cond_1

    sget-object v4, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq v1, v4, :cond_1

    if-eqz v2, :cond_1

    if-eq v3, v4, :cond_1

    .line 223
    const-string v4, ""

    if-ne v2, v3, :cond_0

    move-object v5, v4

    goto :goto_1

    :cond_0
    const-string v5, "prime_"

    .line 224
    .local v5, "p":Ljava/lang/String;
    :goto_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "val":Ljava/lang/Object;
    .end local v3    # "U":Ljava/lang/Object;
    .end local v5    # "p":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "i":I
    :cond_2
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMap$CHM;

    move-result-object v0

    iget-object v0, v0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 228
    .local v0, "newkvs":[Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 229
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingHashMap;->print2([Ljava/lang/Object;)V

    .line 232
    :cond_3
    return-void
.end method

.method private static final putIfMatch(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p0, "topmap"    # Lorg/jctools/maps/NonBlockingHashMap;
    .param p1, "kvs"    # [Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "putval"    # Ljava/lang/Object;
    .param p4, "expVal"    # Ljava/lang/Object;

    .line 635
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    if-eqz v3, :cond_1c

    .line 636
    instance-of v5, v3, Lorg/jctools/maps/NonBlockingHashMap$Prime;

    if-nez v5, :cond_1b

    .line 637
    instance-of v5, v4, Lorg/jctools/maps/NonBlockingHashMap$Prime;

    if-nez v5, :cond_1a

    .line 638
    invoke-static/range {p2 .. p2}, Lorg/jctools/maps/NonBlockingHashMap;->hash(Ljava/lang/Object;)I

    move-result v5

    .line 639
    .local v5, "fullhash":I
    invoke-static/range {p1 .. p1}, Lorg/jctools/maps/NonBlockingHashMap;->len([Ljava/lang/Object;)I

    move-result v6

    .line 640
    .local v6, "len":I
    invoke-static/range {p1 .. p1}, Lorg/jctools/maps/NonBlockingHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMap$CHM;

    move-result-object v7

    .line 641
    .local v7, "chm":Lorg/jctools/maps/NonBlockingHashMap$CHM;
    invoke-static/range {p1 .. p1}, Lorg/jctools/maps/NonBlockingHashMap;->hashes([Ljava/lang/Object;)[I

    move-result-object v8

    .line 642
    .local v8, "hashes":[I
    add-int/lit8 v9, v6, -0x1

    and-int/2addr v9, v5

    .line 646
    .local v9, "idx":I
    const/4 v10, 0x0

    .line 647
    .local v10, "reprobe_cnt":I
    const/4 v11, 0x0

    .local v11, "K":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 648
    .local v12, "V":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 650
    .local v13, "newkvs":[Ljava/lang/Object;
    :goto_0
    invoke-static {v1, v9}, Lorg/jctools/maps/NonBlockingHashMap;->val([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v12

    .line 651
    invoke-static {v1, v9}, Lorg/jctools/maps/NonBlockingHashMap;->key([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    .line 652
    if-nez v11, :cond_3

    .line 655
    sget-object v14, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne v3, v14, :cond_0

    return-object v3

    .line 656
    :cond_0
    sget-object v14, Lorg/jctools/maps/NonBlockingHashMap;->MATCH_ANY:Ljava/lang/Object;

    const/4 v15, 0x0

    if-ne v4, v14, :cond_1

    return-object v15

    .line 658
    :cond_1
    invoke-static {v1, v9, v15, v2}, Lorg/jctools/maps/NonBlockingHashMap;->CAS_key([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 659
    invoke-static {v7}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->access$100(Lorg/jctools/maps/NonBlockingHashMap$CHM;)Lorg/jctools/maps/ConcurrentAutoTable;

    move-result-object v14

    move-object/from16 v17, v12

    move-object v15, v13

    const-wide/16 v12, 0x1

    .end local v12    # "V":Ljava/lang/Object;
    .end local v13    # "newkvs":[Ljava/lang/Object;
    .local v15, "newkvs":[Ljava/lang/Object;
    .local v17, "V":Ljava/lang/Object;
    invoke-virtual {v14, v12, v13}, Lorg/jctools/maps/ConcurrentAutoTable;->add(J)V

    .line 660
    aput v5, v8, v9

    .line 661
    move-object v13, v15

    move-object/from16 v12, v17

    goto :goto_1

    .line 680
    .end local v15    # "newkvs":[Ljava/lang/Object;
    .end local v17    # "V":Ljava/lang/Object;
    .restart local v12    # "V":Ljava/lang/Object;
    .restart local v13    # "newkvs":[Ljava/lang/Object;
    :cond_2
    move-object/from16 v17, v12

    move-object v15, v13

    .end local v12    # "V":Ljava/lang/Object;
    .end local v13    # "newkvs":[Ljava/lang/Object;
    .restart local v15    # "newkvs":[Ljava/lang/Object;
    .restart local v17    # "V":Ljava/lang/Object;
    sget v12, Lorg/jctools/maps/NonBlockingHashMap;->DUMMY_VOLATILE:I

    .line 681
    .local v12, "dummy":I
    move-object/from16 v12, v17

    goto :goto_0

    .line 689
    .end local v15    # "newkvs":[Ljava/lang/Object;
    .end local v17    # "V":Ljava/lang/Object;
    .local v12, "V":Ljava/lang/Object;
    .restart local v13    # "newkvs":[Ljava/lang/Object;
    :cond_3
    move-object/from16 v17, v12

    move-object v15, v13

    .end local v12    # "V":Ljava/lang/Object;
    .end local v13    # "newkvs":[Ljava/lang/Object;
    .restart local v15    # "newkvs":[Ljava/lang/Object;
    .restart local v17    # "V":Ljava/lang/Object;
    iget-object v13, v7, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 691
    .end local v15    # "newkvs":[Ljava/lang/Object;
    .restart local v13    # "newkvs":[Ljava/lang/Object;
    invoke-static {v11, v2, v8, v9, v5}, Lorg/jctools/maps/NonBlockingHashMap;->keyeq(Ljava/lang/Object;Ljava/lang/Object;[III)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 692
    move-object/from16 v12, v17

    .line 716
    .end local v17    # "V":Ljava/lang/Object;
    .restart local v12    # "V":Ljava/lang/Object;
    :goto_1
    if-ne v3, v12, :cond_4

    return-object v12

    .line 723
    :cond_4
    if-nez v13, :cond_7

    if-nez v12, :cond_5

    .line 725
    invoke-static {v7, v10, v6}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->access$300(Lorg/jctools/maps/NonBlockingHashMap$CHM;II)Z

    move-result v14

    if-nez v14, :cond_6

    :cond_5
    instance-of v14, v12, Lorg/jctools/maps/NonBlockingHashMap$Prime;

    if-eqz v14, :cond_7

    .line 734
    :cond_6
    invoke-static {v7, v0, v1}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->access$200(Lorg/jctools/maps/NonBlockingHashMap$CHM;Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    .line 737
    :cond_7
    if-eqz v13, :cond_8

    .line 738
    invoke-static {v7, v0, v1, v9, v4}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->access$000(Lorg/jctools/maps/NonBlockingHashMap$CHM;Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    invoke-static {v0, v14, v2, v3, v4}, Lorg/jctools/maps/NonBlockingHashMap;->putIfMatch(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    return-object v14

    .line 742
    :cond_8
    instance-of v14, v12, Lorg/jctools/maps/NonBlockingHashMap$Prime;

    if-nez v14, :cond_15

    .line 748
    sget-object v14, Lorg/jctools/maps/NonBlockingHashMap;->NO_MATCH_OLD:Ljava/lang/Object;

    if-eq v4, v14, :cond_c

    if-eq v12, v4, :cond_c

    sget-object v14, Lorg/jctools/maps/NonBlockingHashMap;->MATCH_ANY:Ljava/lang/Object;

    if-ne v4, v14, :cond_9

    sget-object v14, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq v12, v14, :cond_9

    if-nez v12, :cond_c

    :cond_9
    if-nez v12, :cond_a

    sget-object v14, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq v4, v14, :cond_c

    :cond_a
    if-eqz v4, :cond_b

    .line 752
    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 753
    :cond_b
    return-object v12

    .line 756
    :cond_c
    invoke-static {v1, v9, v12, v3}, Lorg/jctools/maps/NonBlockingHashMap;->CAS_val([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 784
    if-eqz v4, :cond_11

    .line 786
    if-eqz v12, :cond_e

    sget-object v14, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne v12, v14, :cond_d

    goto :goto_2

    :cond_d
    move v15, v5

    move/from16 v18, v6

    goto :goto_3

    :cond_e
    :goto_2
    sget-object v14, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq v3, v14, :cond_f

    invoke-static {v7}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->access$400(Lorg/jctools/maps/NonBlockingHashMap$CHM;)Lorg/jctools/maps/ConcurrentAutoTable;

    move-result-object v14

    move v15, v5

    move/from16 v18, v6

    const-wide/16 v5, 0x1

    .end local v5    # "fullhash":I
    .end local v6    # "len":I
    .local v15, "fullhash":I
    .local v18, "len":I
    invoke-virtual {v14, v5, v6}, Lorg/jctools/maps/ConcurrentAutoTable;->add(J)V

    goto :goto_3

    .end local v15    # "fullhash":I
    .end local v18    # "len":I
    .restart local v5    # "fullhash":I
    .restart local v6    # "len":I
    :cond_f
    move v15, v5

    move/from16 v18, v6

    .line 787
    .end local v5    # "fullhash":I
    .end local v6    # "len":I
    .restart local v15    # "fullhash":I
    .restart local v18    # "len":I
    :goto_3
    if-eqz v12, :cond_10

    sget-object v5, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq v12, v5, :cond_10

    if-ne v3, v5, :cond_10

    invoke-static {v7}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->access$400(Lorg/jctools/maps/NonBlockingHashMap$CHM;)Lorg/jctools/maps/ConcurrentAutoTable;

    move-result-object v5

    move-object/from16 v16, v13

    .end local v13    # "newkvs":[Ljava/lang/Object;
    .local v16, "newkvs":[Ljava/lang/Object;
    const-wide/16 v13, -0x1

    invoke-virtual {v5, v13, v14}, Lorg/jctools/maps/ConcurrentAutoTable;->add(J)V

    goto :goto_4

    .end local v16    # "newkvs":[Ljava/lang/Object;
    .restart local v13    # "newkvs":[Ljava/lang/Object;
    :cond_10
    move-object/from16 v16, v13

    .end local v13    # "newkvs":[Ljava/lang/Object;
    .restart local v16    # "newkvs":[Ljava/lang/Object;
    goto :goto_4

    .line 784
    .end local v15    # "fullhash":I
    .end local v16    # "newkvs":[Ljava/lang/Object;
    .end local v18    # "len":I
    .restart local v5    # "fullhash":I
    .restart local v6    # "len":I
    .restart local v13    # "newkvs":[Ljava/lang/Object;
    :cond_11
    move v15, v5

    move/from16 v18, v6

    move-object/from16 v16, v13

    .line 791
    .end local v5    # "fullhash":I
    .end local v6    # "len":I
    .end local v13    # "newkvs":[Ljava/lang/Object;
    .restart local v15    # "fullhash":I
    .restart local v16    # "newkvs":[Ljava/lang/Object;
    .restart local v18    # "len":I
    :goto_4
    if-nez v12, :cond_12

    if-eqz v4, :cond_12

    sget-object v5, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    goto :goto_5

    :cond_12
    move-object v5, v12

    :goto_5
    return-object v5

    .line 768
    .end local v15    # "fullhash":I
    .end local v16    # "newkvs":[Ljava/lang/Object;
    .end local v18    # "len":I
    .restart local v5    # "fullhash":I
    .restart local v6    # "len":I
    .restart local v13    # "newkvs":[Ljava/lang/Object;
    :cond_13
    move v15, v5

    move/from16 v18, v6

    move-object/from16 v16, v13

    const-wide/16 v5, 0x1

    .end local v5    # "fullhash":I
    .end local v6    # "len":I
    .end local v13    # "newkvs":[Ljava/lang/Object;
    .restart local v15    # "fullhash":I
    .restart local v16    # "newkvs":[Ljava/lang/Object;
    .restart local v18    # "len":I
    invoke-static {v1, v9}, Lorg/jctools/maps/NonBlockingHashMap;->val([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v12

    .line 772
    instance-of v13, v12, Lorg/jctools/maps/NonBlockingHashMap$Prime;

    if-eqz v13, :cond_14

    .line 773
    invoke-static {v7, v0, v1, v9, v4}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->access$000(Lorg/jctools/maps/NonBlockingHashMap$CHM;Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5, v2, v3, v4}, Lorg/jctools/maps/NonBlockingHashMap;->putIfMatch(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 778
    :cond_14
    nop

    .line 779
    move v5, v15

    move-object/from16 v13, v16

    move/from16 v6, v18

    goto/16 :goto_1

    .line 742
    .end local v15    # "fullhash":I
    .end local v16    # "newkvs":[Ljava/lang/Object;
    .end local v18    # "len":I
    .restart local v5    # "fullhash":I
    .restart local v6    # "len":I
    .restart local v13    # "newkvs":[Ljava/lang/Object;
    :cond_15
    move v15, v5

    .end local v5    # "fullhash":I
    .restart local v15    # "fullhash":I
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 697
    .end local v12    # "V":Ljava/lang/Object;
    .end local v15    # "fullhash":I
    .restart local v5    # "fullhash":I
    .restart local v17    # "V":Ljava/lang/Object;
    :cond_16
    move v15, v5

    move/from16 v18, v6

    .end local v5    # "fullhash":I
    .end local v6    # "len":I
    .restart local v15    # "fullhash":I
    .restart local v18    # "len":I
    add-int/lit8 v10, v10, 0x1

    invoke-static/range {v18 .. v18}, Lorg/jctools/maps/NonBlockingHashMap;->reprobe_limit(I)I

    move-result v5

    if-ge v10, v5, :cond_18

    sget-object v5, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne v11, v5, :cond_17

    goto :goto_6

    .line 707
    :cond_17
    add-int/lit8 v5, v9, 0x1

    add-int/lit8 v6, v18, -0x1

    and-int v9, v5, v6

    move v5, v15

    move-object/from16 v12, v17

    move/from16 v6, v18

    goto/16 :goto_0

    .line 702
    :cond_18
    :goto_6
    invoke-static {v7, v0, v1}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->access$200(Lorg/jctools/maps/NonBlockingHashMap$CHM;Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .line 703
    .end local v13    # "newkvs":[Ljava/lang/Object;
    .local v5, "newkvs":[Ljava/lang/Object;
    if-eqz v4, :cond_19

    invoke-direct {v0, v5}, Lorg/jctools/maps/NonBlockingHashMap;->help_copy([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 704
    :cond_19
    invoke-static {v0, v5, v2, v3, v4}, Lorg/jctools/maps/NonBlockingHashMap;->putIfMatch(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 637
    .end local v5    # "newkvs":[Ljava/lang/Object;
    .end local v7    # "chm":Lorg/jctools/maps/NonBlockingHashMap$CHM;
    .end local v8    # "hashes":[I
    .end local v9    # "idx":I
    .end local v10    # "reprobe_cnt":I
    .end local v11    # "K":Ljava/lang/Object;
    .end local v15    # "fullhash":I
    .end local v17    # "V":Ljava/lang/Object;
    .end local v18    # "len":I
    :cond_1a
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 636
    :cond_1b
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 635
    :cond_1c
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method private static rawIndex([Ljava/lang/Object;I)J
    .locals 5
    .param p0, "ary"    # [Ljava/lang/Object;
    .param p1, "idx"    # I

    .line 96
    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 99
    sget v0, Lorg/jctools/maps/NonBlockingHashMap;->_Obase:I

    int-to-long v0, v0

    int-to-long v2, p1

    sget v4, Lorg/jctools/maps/NonBlockingHashMap;->_Olog:I

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1423
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1424
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingHashMap;->initialize(I)V

    .line 1426
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1427
    .local v0, "K":Ljava/lang/Object;, "TTypeK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 1428
    .local v1, "V":Ljava/lang/Object;, "TTypeV;"
    if-nez v0, :cond_0

    .line 1431
    .end local v0    # "K":Ljava/lang/Object;, "TTypeK;"
    .end local v1    # "V":Ljava/lang/Object;, "TTypeV;"
    return-void

    .line 1429
    .restart local v0    # "K":Ljava/lang/Object;, "TTypeK;"
    .restart local v1    # "V":Ljava/lang/Object;, "TTypeV;"
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/jctools/maps/NonBlockingHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    .end local v0    # "K":Ljava/lang/Object;, "TTypeK;"
    .end local v1    # "V":Ljava/lang/Object;, "TTypeV;"
    goto :goto_0
.end method

.method private static reprobe_limit(I)I
    .locals 1
    .param p0, "len"    # I

    .line 250
    shr-int/lit8 v0, p0, 0x4

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private static final val([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p0, "kvs"    # [Ljava/lang/Object;
    .param p1, "idx"    # I

    .line 180
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x3

    aget-object v0, p0, v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1410
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1411
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1412
    .local v1, "K":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/jctools/maps/NonBlockingHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1413
    .local v2, "V":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1414
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1415
    .end local v1    # "K":Ljava/lang/Object;
    .end local v2    # "V":Ljava/lang/Object;
    goto :goto_0

    .line 1416
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1417
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1418
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 399
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    new-instance v0, Lorg/jctools/maps/NonBlockingHashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/jctools/maps/NonBlockingHashMap;-><init>(I)V

    iget-object v0, v0, Lorg/jctools/maps/NonBlockingHashMap;->_kvs:[Ljava/lang/Object;

    .line 400
    .local v0, "newkvs":[Ljava/lang/Object;
    :goto_0
    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMap;->_kvs:[Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lorg/jctools/maps/NonBlockingHashMap;->CAS_kvs([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    goto :goto_0

    .line 402
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .line 437
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jctools/maps/NonBlockingHashMap;

    .line 443
    .local v0, "t":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMap;->clear()V

    .line 445
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 446
    .local v2, "K":Ljava/lang/Object;, "TTypeK;"
    invoke-virtual {p0, v2}, Lorg/jctools/maps/NonBlockingHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 447
    .local v3, "V":Ljava/lang/Object;, "TTypeV;"
    invoke-virtual {v0, v2, v3}, Lorg/jctools/maps/NonBlockingHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    nop

    .end local v2    # "K":Ljava/lang/Object;, "TTypeK;"
    .end local v3    # "V":Ljava/lang/Object;, "TTypeV;"
    goto :goto_0

    .line 449
    :cond_0
    return-object v0

    .line 450
    .end local v0    # "t":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .line 305
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 295
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "val"    # Ljava/lang/Object;

    .line 412
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    if-eqz p1, :cond_3

    .line 413
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 414
    .local v1, "V":Ljava/lang/Object;, "TTypeV;"
    if-eq v1, p1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .end local v1    # "V":Ljava/lang/Object;, "TTypeV;"
    :cond_0
    goto :goto_0

    .line 415
    .restart local v1    # "V":Ljava/lang/Object;, "TTypeV;"
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 416
    .end local v1    # "V":Ljava/lang/Object;, "TTypeV;"
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 412
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TTypeV;>;"
        }
    .end annotation

    .line 1251
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    new-instance v0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;-><init>(Lorg/jctools/maps/NonBlockingHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TTypeK;TTypeV;>;>;"
        }
    .end annotation

    .line 1389
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    new-instance v0, Lorg/jctools/maps/NonBlockingHashMap$3;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingHashMap$3;-><init>(Lorg/jctools/maps/NonBlockingHashMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TTypeV;"
        }
    .end annotation

    .line 522
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap;->_kvs:[Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->get_impl(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 523
    .local v0, "V":Ljava/lang/Object;
    instance-of v1, v0, Lorg/jctools/maps/NonBlockingHashMap$Prime;

    if-nez v1, :cond_1

    .line 524
    sget-object v1, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 525
    return-object v0

    .line 524
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 523
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public getk(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeK;)TTypeK;"
        }
    .end annotation

    .line 582
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    .local p1, "key":Ljava/lang/Object;, "TTypeK;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap;->_kvs:[Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->getk_impl(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final initialize()V
    .locals 1

    .line 278
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingHashMap;->initialize(I)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 289
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TTypeK;>;"
        }
    .end annotation

    .line 1308
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    new-instance v0, Lorg/jctools/maps/NonBlockingHashMap$2;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingHashMap$2;-><init>(Lorg/jctools/maps/NonBlockingHashMap;)V

    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TTypeK;>;"
        }
    .end annotation

    .line 1291
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    new-instance v0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;-><init>(Lorg/jctools/maps/NonBlockingHashMap;)V

    return-object v0
.end method

.method public final print()V
    .locals 2

    .line 192
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "========="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap;->_kvs:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingHashMap;->print2([Ljava/lang/Object;)V

    .line 194
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeK;TTypeV;)TTypeV;"
        }
    .end annotation

    .line 317
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    .local p1, "key":Ljava/lang/Object;, "TTypeK;"
    .local p2, "val":Ljava/lang/Object;, "TTypeV;"
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMap;->NO_MATCH_OLD:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jctools/maps/NonBlockingHashMap;->putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TTypeK;+TTypeV;>;)V"
        }
    .end annotation

    .line 392
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TTypeK;+TTypeV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 393
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TTypeK;+TTypeV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/jctools/maps/NonBlockingHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 394
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TTypeK;+TTypeV;>;"
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeK;TTypeV;)TTypeV;"
        }
    .end annotation

    .line 326
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    .local p1, "key":Ljava/lang/Object;, "TTypeK;"
    .local p2, "val":Ljava/lang/Object;, "TTypeV;"
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jctools/maps/NonBlockingHashMap;->putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "newVal"    # Ljava/lang/Object;
    .param p3, "oldVal"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TTypeV;"
        }
    .end annotation

    .line 379
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    .line 380
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap;->_kvs:[Ljava/lang/Object;

    invoke-static {p0, v0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingHashMap;->putIfMatch(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 381
    .local v0, "res":Ljava/lang/Object;
    instance-of v1, v0, Lorg/jctools/maps/NonBlockingHashMap$Prime;

    if-nez v1, :cond_2

    .line 382
    if-eqz v0, :cond_1

    .line 383
    sget-object v1, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 382
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 381
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 379
    .end local v0    # "res":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final putIfMatchAllowNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "newVal"    # Ljava/lang/Object;
    .param p3, "oldVal"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TTypeV;"
        }
    .end annotation

    .line 363
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    if-nez p3, :cond_0

    sget-object p3, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    .line 364
    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    .line 365
    :cond_1
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap;->_kvs:[Ljava/lang/Object;

    invoke-static {p0, v0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingHashMap;->putIfMatch(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 366
    .local v0, "res":Ljava/lang/Object;, "TTypeV;"
    instance-of v1, v0, Lorg/jctools/maps/NonBlockingHashMap$Prime;

    if-nez v1, :cond_3

    .line 368
    sget-object v1, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    return-object v1

    .line 366
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public raw_array()[Ljava/lang/Object;
    .locals 1

    .line 1246
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    new-instance v0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;-><init>(Lorg/jctools/maps/NonBlockingHashMap;)V

    iget-object v0, v0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_sskvs:[Ljava/lang/Object;

    return-object v0
.end method

.method protected rehash()V
    .locals 0

    .line 423
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TTypeV;"
        }
    .end annotation

    .line 334
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    sget-object v1, Lorg/jctools/maps/NonBlockingHashMap;->NO_MATCH_OLD:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lorg/jctools/maps/NonBlockingHashMap;->putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    .line 340
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, p2}, Lorg/jctools/maps/NonBlockingHashMap;->putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeK;TTypeV;)TTypeV;"
        }
    .end annotation

    .line 347
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    .local p1, "key":Ljava/lang/Object;, "TTypeK;"
    .local p2, "val":Ljava/lang/Object;, "TTypeV;"
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMap;->MATCH_ANY:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jctools/maps/NonBlockingHashMap;->putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeK;TTypeV;TTypeV;)Z"
        }
    .end annotation

    .line 354
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    .local p1, "key":Ljava/lang/Object;, "TTypeK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TTypeV;"
    .local p3, "newValue":Ljava/lang/Object;, "TTypeV;"
    invoke-virtual {p0, p1, p3, p2}, Lorg/jctools/maps/NonBlockingHashMap;->putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reprobes()J
    .locals 3

    .line 241
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap;->_reprobes:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable;->get()J

    move-result-wide v0

    .local v0, "r":J
    new-instance v2, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v2}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    iput-object v2, p0, Lorg/jctools/maps/NonBlockingHashMap;->_reprobes:Lorg/jctools/maps/ConcurrentAutoTable;

    return-wide v0
.end method

.method public size()I
    .locals 1

    .line 285
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap;->_kvs:[Ljava/lang/Object;

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMap$CHM;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 470
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 471
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TTypeK;TTypeV;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 472
    const-string/jumbo v1, "{}"

    return-object v1

    .line 474
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 477
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 478
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TTypeK;TTypeV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 479
    .local v3, "key":Ljava/lang/Object;, "TTypeK;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 480
    .local v4, "value":Ljava/lang/Object;, "TTypeV;"
    const-string v5, "(this Map)"

    if-ne v3, p0, :cond_1

    move-object v6, v5

    goto :goto_1

    :cond_1
    move-object v6, v3

    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 481
    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 482
    if-ne v4, p0, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, v4

    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 483
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 484
    const/16 v5, 0x7d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 485
    :cond_3
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TTypeK;TTypeV;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TTypeK;"
    .end local v4    # "value":Ljava/lang/Object;, "TTypeV;"
    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TTypeV;>;"
        }
    .end annotation

    .line 1269
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>;"
    new-instance v0, Lorg/jctools/maps/NonBlockingHashMap$1;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingHashMap$1;-><init>(Lorg/jctools/maps/NonBlockingHashMap;)V

    return-object v0
.end method
