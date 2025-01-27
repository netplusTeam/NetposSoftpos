.class public Lorg/jctools/maps/NonBlockingIdentityHashMap;
.super Ljava/util/AbstractMap;
.source "NonBlockingIdentityHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotE;,
        Lorg/jctools/maps/NonBlockingIdentityHashMap$NBHMEntry;,
        Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotK;,
        Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;,
        Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;,
        Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;
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

.field private static final MATCH_ANY:Ljava/lang/Object;

.field private static final MIN_SIZE:I = 0x8

.field private static final MIN_SIZE_LOG:I = 0x3

.field private static final NO_MATCH_OLD:Ljava/lang/Object;

.field private static final REPROBE_LIMIT:I = 0xa

.field private static final TOMBPRIME:Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

.field private static final TOMBSTONE:Ljava/lang/Object;

.field private static final _Obase:I

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

    .line 87
    nop

    .line 96
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_Obase:I

    .line 97
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_Oscale:I

    .line 104
    const-class v0, Lorg/jctools/maps/NonBlockingHashMap;

    const-string v1, "_kvs"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs_offset:J

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->NO_MATCH_OLD:Ljava/lang/Object;

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->MATCH_ANY:Ljava/lang/Object;

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    .line 168
    new-instance v1, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    invoke-direct {v1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBPRIME:Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 256
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initial_sz"    # I

    .line 263
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 233
    new-instance v0, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v0}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_reprobes:Lorg/jctools/maps/ConcurrentAutoTable;

    .line 263
    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->initialize(I)V

    return-void
.end method

.method private static final CAS_key([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p0, "kvs"    # [Ljava/lang/Object;
    .param p1, "idx"    # I
    .param p2, "old"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/Object;

    .line 180
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x2

    invoke-static {p0, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->rawIndex([Ljava/lang/Object;I)J

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

    .line 107
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs_offset:J

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

    .line 183
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x3

    invoke-static {p0, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->rawIndex([Ljava/lang/Object;I)J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingIdentityHashMap;
    .param p1, "x1"    # [Ljava/lang/Object;

    .line 87
    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->help_copy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lorg/jctools/maps/NonBlockingIdentityHashMap;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingIdentityHashMap;

    .line 87
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingIdentityHashMap;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # [Ljava/lang/Object;

    .line 87
    invoke-direct {p0, p1, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->CAS_kvs([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;
    .param p1, "x1"    # I

    .line 87
    invoke-static {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->key([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/Object;
    .locals 1

    .line 87
    sget-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Ljava/lang/Object;

    .line 87
    invoke-static {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->CAS_key([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;
    .param p1, "x1"    # I

    .line 87
    invoke-static {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->val([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;
    .locals 1

    .line 87
    sget-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBPRIME:Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    return-object v0
.end method

.method static synthetic access$1800([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Ljava/lang/Object;

    .line 87
    invoke-static {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->CAS_val([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingIdentityHashMap;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Ljava/lang/Object;
    .param p4, "x4"    # Ljava/lang/Object;

    .line 87
    invoke-static {p0, p1, p2, p3, p4}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 87
    invoke-static {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->reprobe_limit(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;

    .line 87
    invoke-static {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800([Ljava/lang/Object;)I
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;

    .line 87
    invoke-static {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->len([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lorg/jctools/maps/NonBlockingIdentityHashMap;)J
    .locals 2
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingIdentityHashMap;

    .line 87
    iget-wide v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_last_resize_milli:J

    return-wide v0
.end method

.method static synthetic access$902(Lorg/jctools/maps/NonBlockingIdentityHashMap;J)J
    .locals 0
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingIdentityHashMap;
    .param p1, "x1"    # J

    .line 87
    iput-wide p1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_last_resize_milli:J

    return-wide p1
.end method

.method private static final chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;
    .locals 1
    .param p0, "kvs"    # [Ljava/lang/Object;

    .line 140
    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    return-object v0
.end method

.method private static final get_impl(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p0, "topmap"    # Lorg/jctools/maps/NonBlockingIdentityHashMap;
    .param p1, "kvs"    # [Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    .line 478
    invoke-static {p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 479
    .local v0, "fullhash":I
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->len([Ljava/lang/Object;)I

    move-result v1

    .line 480
    .local v1, "len":I
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object v2

    .line 482
    .local v2, "chm":Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;
    add-int/lit8 v3, v1, -0x1

    and-int/2addr v3, v0

    .line 485
    .local v3, "idx":I
    const/4 v4, 0x0

    .line 489
    .local v4, "reprobe_cnt":I
    :goto_0
    invoke-static {p1, v3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->key([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 490
    .local v5, "K":Ljava/lang/Object;
    invoke-static {p1, v3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->val([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 491
    .local v6, "V":Ljava/lang/Object;
    const/4 v7, 0x0

    if-nez v5, :cond_0

    return-object v7

    .line 502
    :cond_0
    iget-object v8, v2, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 505
    .local v8, "newkvs":[Ljava/lang/Object;
    if-ne v5, p2, :cond_3

    .line 507
    instance-of v9, v6, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    if-nez v9, :cond_2

    .line 508
    sget-object v9, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne v6, v9, :cond_1

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    return-object v7

    .line 511
    :cond_2
    invoke-static {v2, p0, p1, v3, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$000(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v7, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->get_impl(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    return-object v7

    .line 516
    :cond_3
    add-int/lit8 v4, v4, 0x1

    invoke-static {v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->reprobe_limit(I)I

    move-result v9

    if-ge v4, v9, :cond_5

    sget-object v9, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne p2, v9, :cond_4

    goto :goto_2

    .line 520
    :cond_4
    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v9, v1, -0x1

    and-int v3, v7, v9

    .line 521
    .end local v5    # "K":Ljava/lang/Object;
    .end local v6    # "V":Ljava/lang/Object;
    .end local v8    # "newkvs":[Ljava/lang/Object;
    goto :goto_0

    .line 518
    .restart local v5    # "K":Ljava/lang/Object;
    .restart local v6    # "V":Ljava/lang/Object;
    .restart local v8    # "newkvs":[Ljava/lang/Object;
    :cond_5
    :goto_2
    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    invoke-direct {p0, v8}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->help_copy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v7, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->get_impl(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_3
    return-object v7
.end method

.method private static final hash(Ljava/lang/Object;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;

    .line 120
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 125
    .local v0, "h":I
    return v0
.end method

.method private static final hashes([Ljava/lang/Object;)[I
    .locals 1
    .param p0, "kvs"    # [Ljava/lang/Object;

    .line 141
    const/4 v0, 0x1

    aget-object v0, p0, v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method private final help_copy([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p1, "helper"    # [Ljava/lang/Object;

    .line 677
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    .line 678
    .local v0, "topkvs":[Ljava/lang/Object;
    invoke-static {v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object v1

    .line 679
    .local v1, "topchm":Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;
    iget-object v2, v1, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    if-nez v2, :cond_0

    return-object p1

    .line 680
    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$500(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Z)V

    .line 681
    return-object p1
.end method

.method private final initialize(I)V
    .locals 6
    .param p1, "initial_sz"    # I

    .line 265
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    const-string v0, "initial_sz"

    invoke-static {p1, v0}, Lorg/jctools/util/RangeUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 267
    const/high16 v0, 0x100000

    if-le p1, v0, :cond_0

    const/high16 p1, 0x100000

    .line 268
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

    .line 270
    :cond_1
    shl-int v2, v1, v0

    shl-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    .line 271
    const/4 v3, 0x0

    new-instance v4, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    new-instance v5, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v5}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    invoke-direct {v4, v5}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;-><init>(Lorg/jctools/maps/ConcurrentAutoTable;)V

    aput-object v4, v2, v3

    .line 272
    iget-object v2, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    shl-int v3, v1, v0

    new-array v3, v3, [I

    aput-object v3, v2, v1

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_last_resize_milli:J

    .line 274
    return-void
.end method

.method private static final key([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p0, "kvs"    # [Ljava/lang/Object;
    .param p1, "idx"    # I

    .line 177
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x2

    aget-object v0, p0, v0

    return-object v0
.end method

.method private static final len([Ljava/lang/Object;)I
    .locals 1
    .param p0, "kvs"    # [Ljava/lang/Object;

    .line 143
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final print([Ljava/lang/Object;)V
    .locals 10
    .param p1, "kvs"    # [Ljava/lang/Object;

    .line 196
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->len([Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 197
    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->key([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 198
    .local v1, "K":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 199
    sget-object v2, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const-string v3, "XXX"

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "KS":Ljava/lang/String;
    :goto_1
    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->val([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 201
    .local v4, "V":Ljava/lang/Object;
    invoke-static {v4}, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;->unbox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 202
    .local v5, "U":Ljava/lang/Object;
    const-string v6, ""

    if-ne v4, v5, :cond_1

    move-object v7, v6

    goto :goto_2

    :cond_1
    const-string v7, "prime_"

    .line 203
    .local v7, "p":Ljava/lang/String;
    :goto_2
    if-ne v5, v2, :cond_2

    const-string/jumbo v2, "tombstone"

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
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

    .line 196
    .end local v1    # "K":Ljava/lang/Object;
    .end local v2    # "US":Ljava/lang/String;
    .end local v3    # "KS":Ljava/lang/String;
    .end local v4    # "V":Ljava/lang/Object;
    .end local v5    # "U":Ljava/lang/Object;
    .end local v7    # "p":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "i":I
    :cond_4
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object v0

    iget-object v0, v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 208
    .local v0, "newkvs":[Ljava/lang/Object;
    if-eqz v0, :cond_5

    .line 209
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->print([Ljava/lang/Object;)V

    .line 212
    :cond_5
    return-void
.end method

.method private final print2([Ljava/lang/Object;)V
    .locals 8
    .param p1, "kvs"    # [Ljava/lang/Object;

    .line 215
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->len([Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 216
    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->key([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 217
    .local v1, "key":Ljava/lang/Object;
    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->val([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 218
    .local v2, "val":Ljava/lang/Object;
    invoke-static {v2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;->unbox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 219
    .local v3, "U":Ljava/lang/Object;
    if-eqz v1, :cond_1

    sget-object v4, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq v1, v4, :cond_1

    if-eqz v2, :cond_1

    if-eq v3, v4, :cond_1

    .line 221
    const-string v4, ""

    if-ne v2, v3, :cond_0

    move-object v5, v4

    goto :goto_1

    :cond_0
    const-string v5, "prime_"

    .line 222
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

    .line 215
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "val":Ljava/lang/Object;
    .end local v3    # "U":Ljava/lang/Object;
    .end local v5    # "p":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v0    # "i":I
    :cond_2
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object v0

    iget-object v0, v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 226
    .local v0, "newkvs":[Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 227
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->print2([Ljava/lang/Object;)V

    .line 230
    :cond_3
    return-void
.end method

.method private final putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 351
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    .line 352
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    invoke-static {p0, v0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 353
    .local v0, "res":Ljava/lang/Object;
    instance-of v1, v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    if-nez v1, :cond_2

    .line 354
    if-eqz v0, :cond_1

    .line 355
    sget-object v1, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 354
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 353
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 351
    .end local v0    # "res":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static final putIfMatch(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p0, "topmap"    # Lorg/jctools/maps/NonBlockingIdentityHashMap;
    .param p1, "kvs"    # [Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "putval"    # Ljava/lang/Object;
    .param p4, "expVal"    # Ljava/lang/Object;

    .line 531
    if-eqz p3, :cond_19

    .line 532
    instance-of v0, p3, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    if-nez v0, :cond_18

    .line 533
    instance-of v0, p4, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    if-nez v0, :cond_17

    .line 534
    invoke-static {p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 535
    .local v0, "fullhash":I
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->len([Ljava/lang/Object;)I

    move-result v1

    .line 536
    .local v1, "len":I
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object v2

    .line 537
    .local v2, "chm":Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;
    add-int/lit8 v3, v1, -0x1

    and-int/2addr v3, v0

    .line 541
    .local v3, "idx":I
    const/4 v4, 0x0

    .line 542
    .local v4, "reprobe_cnt":I
    const/4 v5, 0x0

    .local v5, "K":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 543
    .local v6, "V":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 545
    .local v7, "newkvs":[Ljava/lang/Object;
    :goto_0
    invoke-static {p1, v3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->val([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 546
    invoke-static {p1, v3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->key([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 547
    const-wide/16 v8, 0x1

    if-nez v5, :cond_3

    .line 550
    sget-object v10, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne p3, v10, :cond_0

    return-object p3

    .line 552
    :cond_0
    const/4 v10, 0x0

    invoke-static {p1, v3, v10, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->CAS_key([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 553
    invoke-static {v2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$100(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;)Lorg/jctools/maps/ConcurrentAutoTable;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Lorg/jctools/maps/ConcurrentAutoTable;->add(J)V

    .line 554
    goto :goto_2

    .line 569
    :cond_1
    invoke-static {p1, v3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->key([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 570
    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 578
    :cond_3
    :goto_1
    iget-object v7, v2, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 580
    if-ne v5, p2, :cond_13

    .line 581
    nop

    .line 604
    :goto_2
    if-ne p3, v6, :cond_4

    return-object v6

    .line 611
    :cond_4
    if-nez v7, :cond_7

    if-nez v6, :cond_5

    .line 613
    invoke-static {v2, v4, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$300(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;II)Z

    move-result v10

    if-nez v10, :cond_6

    :cond_5
    instance-of v10, v6, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    if-eqz v10, :cond_7

    .line 622
    :cond_6
    invoke-static {v2, p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$200(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .line 625
    :cond_7
    if-eqz v7, :cond_8

    .line 626
    invoke-static {v2, p0, p1, v3, p4}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$000(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {p0, v8, p2, p3, p4}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 630
    :cond_8
    instance-of v10, v6, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    if-nez v10, :cond_12

    .line 637
    sget-object v10, Lorg/jctools/maps/NonBlockingIdentityHashMap;->NO_MATCH_OLD:Ljava/lang/Object;

    if-eq p4, v10, :cond_c

    if-eq v6, p4, :cond_c

    sget-object v10, Lorg/jctools/maps/NonBlockingIdentityHashMap;->MATCH_ANY:Ljava/lang/Object;

    if-ne p4, v10, :cond_9

    sget-object v10, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq v6, v10, :cond_9

    if-nez v6, :cond_c

    :cond_9
    if-nez v6, :cond_a

    sget-object v10, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq p4, v10, :cond_c

    :cond_a
    if-eqz p4, :cond_b

    .line 641
    invoke-virtual {p4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 642
    :cond_b
    return-object v6

    .line 645
    :cond_c
    invoke-static {p1, v3, v6, p3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->CAS_val([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 649
    if-eqz p4, :cond_10

    .line 651
    if-eqz v6, :cond_d

    sget-object v10, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne v6, v10, :cond_e

    :cond_d
    sget-object v10, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq p3, v10, :cond_e

    invoke-static {v2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$400(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;)Lorg/jctools/maps/ConcurrentAutoTable;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Lorg/jctools/maps/ConcurrentAutoTable;->add(J)V

    .line 652
    :cond_e
    if-eqz v6, :cond_10

    sget-object v8, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq v6, v8, :cond_10

    if-ne p3, v8, :cond_10

    invoke-static {v2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$400(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;)Lorg/jctools/maps/ConcurrentAutoTable;

    move-result-object v8

    const-wide/16 v9, -0x1

    invoke-virtual {v8, v9, v10}, Lorg/jctools/maps/ConcurrentAutoTable;->add(J)V

    goto :goto_3

    .line 655
    :cond_f
    invoke-static {p1, v3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->val([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 659
    instance-of v8, v6, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    if-eqz v8, :cond_10

    .line 660
    invoke-static {v2, p0, p1, v3, p4}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$000(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {p0, v8, p2, p3, p4}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 665
    :cond_10
    :goto_3
    if-nez v6, :cond_11

    if-eqz p4, :cond_11

    sget-object v8, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    goto :goto_4

    :cond_11
    move-object v8, v6

    :goto_4
    return-object v8

    .line 630
    :cond_12
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 586
    :cond_13
    add-int/lit8 v4, v4, 0x1

    invoke-static {v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->reprobe_limit(I)I

    move-result v8

    if-ge v4, v8, :cond_15

    sget-object v8, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne p2, v8, :cond_14

    goto :goto_5

    .line 596
    :cond_14
    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v9, v1, -0x1

    and-int v3, v8, v9

    goto/16 :goto_0

    .line 591
    :cond_15
    :goto_5
    invoke-static {v2, p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$200(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .line 592
    if-eqz p4, :cond_16

    invoke-direct {p0, v7}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->help_copy([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 593
    :cond_16
    invoke-static {p0, v7, p2, p3, p4}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 533
    .end local v0    # "fullhash":I
    .end local v1    # "len":I
    .end local v2    # "chm":Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;
    .end local v3    # "idx":I
    .end local v4    # "reprobe_cnt":I
    .end local v5    # "K":Ljava/lang/Object;
    .end local v6    # "V":Ljava/lang/Object;
    .end local v7    # "newkvs":[Ljava/lang/Object;
    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 532
    :cond_18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 531
    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static rawIndex([Ljava/lang/Object;I)J
    .locals 2
    .param p0, "ary"    # [Ljava/lang/Object;
    .param p1, "idx"    # I

    .line 99
    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 100
    sget v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_Obase:I

    sget v1, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_Oscale:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    .line 99
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

    .line 1261
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1262
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->initialize(I)V

    .line 1264
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1265
    .local v0, "K":Ljava/lang/Object;, "TTypeK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 1266
    .local v1, "V":Ljava/lang/Object;, "TTypeV;"
    if-nez v0, :cond_0

    .line 1269
    .end local v0    # "K":Ljava/lang/Object;, "TTypeK;"
    .end local v1    # "V":Ljava/lang/Object;, "TTypeV;"
    return-void

    .line 1267
    .restart local v0    # "K":Ljava/lang/Object;, "TTypeK;"
    .restart local v1    # "V":Ljava/lang/Object;, "TTypeV;"
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    .end local v0    # "K":Ljava/lang/Object;, "TTypeK;"
    .end local v1    # "V":Ljava/lang/Object;, "TTypeV;"
    goto :goto_0
.end method

.method private static final reprobe_limit(I)I
    .locals 1
    .param p0, "len"    # I

    .line 248
    shr-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private static final val([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p0, "kvs"    # [Ljava/lang/Object;
    .param p1, "idx"    # I

    .line 178
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

    .line 1248
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1249
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1250
    .local v1, "K":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1251
    .local v2, "V":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1252
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1253
    .end local v1    # "K":Ljava/lang/Object;
    .end local v2    # "V":Ljava/lang/Object;
    goto :goto_0

    .line 1254
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1255
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1256
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 371
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;-><init>(I)V

    iget-object v0, v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    .line 372
    .local v0, "newkvs":[Ljava/lang/Object;
    :goto_0
    iget-object v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->CAS_kvs([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    goto :goto_0

    .line 374
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .line 409
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;

    .line 415
    .local v0, "t":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->clear()V

    .line 417
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 418
    .local v2, "K":Ljava/lang/Object;, "TTypeK;"
    invoke-virtual {p0, v2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 419
    .local v3, "V":Ljava/lang/Object;, "TTypeV;"
    invoke-virtual {v0, v2, v3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    nop

    .end local v2    # "K":Ljava/lang/Object;, "TTypeK;"
    .end local v3    # "V":Ljava/lang/Object;, "TTypeV;"
    goto :goto_0

    .line 421
    :cond_0
    return-object v0

    .line 422
    .end local v0    # "t":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .line 303
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 293
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 384
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    if-eqz p1, :cond_3

    .line 385
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 386
    .local v1, "V":Ljava/lang/Object;, "TTypeV;"
    if-eq v1, p1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .end local v1    # "V":Ljava/lang/Object;, "TTypeV;"
    :cond_0
    goto :goto_0

    .line 387
    .restart local v1    # "V":Ljava/lang/Object;, "TTypeV;"
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 388
    .end local v1    # "V":Ljava/lang/Object;, "TTypeV;"
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 384
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

    .line 1118
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;-><init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V

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

    .line 1227
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$3;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$3;-><init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V

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

    .line 472
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->get_impl(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 473
    .local v0, "V":Ljava/lang/Object;
    instance-of v1, v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    if-nez v1, :cond_0

    .line 474
    return-object v0

    .line 473
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method protected final initialize()V
    .locals 1

    .line 276
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->initialize(I)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 287
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->size()I

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

    .line 1175
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$2;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$2;-><init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V

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

    .line 1158
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotK;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotK;-><init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V

    return-object v0
.end method

.method public final print()V
    .locals 2

    .line 190
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "========="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->print2([Ljava/lang/Object;)V

    .line 192
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeK;TTypeV;)TTypeV;"
        }
    .end annotation

    .line 315
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    .local p1, "key":Ljava/lang/Object;, "TTypeK;"
    .local p2, "val":Ljava/lang/Object;, "TTypeV;"
    sget-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->NO_MATCH_OLD:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 364
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
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

    .line 365
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TTypeK;+TTypeV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 366
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

    .line 323
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    .local p1, "key":Ljava/lang/Object;, "TTypeK;"
    .local p2, "val":Ljava/lang/Object;, "TTypeV;"
    sget-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected rehash()V
    .locals 0

    .line 395
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
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

    .line 331
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    sget-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    sget-object v1, Lorg/jctools/maps/NonBlockingIdentityHashMap;->NO_MATCH_OLD:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    .line 336
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    sget-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeK;TTypeV;)TTypeV;"
        }
    .end annotation

    .line 341
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    .local p1, "key":Ljava/lang/Object;, "TTypeK;"
    .local p2, "val":Ljava/lang/Object;, "TTypeV;"
    sget-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->MATCH_ANY:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 347
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    .local p1, "key":Ljava/lang/Object;, "TTypeK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TTypeV;"
    .local p3, "newValue":Ljava/lang/Object;, "TTypeV;"
    invoke-direct {p0, p1, p3, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reprobes()J
    .locals 3

    .line 239
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_reprobes:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable;->get()J

    move-result-wide v0

    .local v0, "r":J
    new-instance v2, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v2}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    iput-object v2, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_reprobes:Lorg/jctools/maps/ConcurrentAutoTable;

    return-wide v0
.end method

.method public size()I
    .locals 1

    .line 283
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 442
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 443
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TTypeK;TTypeV;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 444
    const-string/jumbo v1, "{}"

    return-object v1

    .line 446
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 450
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TTypeK;TTypeV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 451
    .local v3, "key":Ljava/lang/Object;, "TTypeK;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 452
    .local v4, "value":Ljava/lang/Object;, "TTypeV;"
    const-string v5, "(this Map)"

    if-ne v3, p0, :cond_1

    move-object v6, v5

    goto :goto_1

    :cond_1
    move-object v6, v3

    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 453
    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    if-ne v4, p0, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, v4

    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 455
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 456
    const/16 v5, 0x7d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 457
    :cond_3
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
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

    .line 1136
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>;"
    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$1;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$1;-><init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V

    return-object v0
.end method
