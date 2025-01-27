.class public Lorg/jctools/maps/NonBlockingHashMapLong;
.super Ljava/util/AbstractMap;
.source "NonBlockingHashMapLong.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;,
        Lorg/jctools/maps/NonBlockingHashMapLong$NBHMLEntry;,
        Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;,
        Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;,
        Lorg/jctools/maps/NonBlockingHashMapLong$CHM;,
        Lorg/jctools/maps/NonBlockingHashMapLong$Prime;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TypeV:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "Ljava/lang/Long;",
        "TTypeV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "Ljava/lang/Long;",
        "TTypeV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MATCH_ANY:Ljava/lang/Object;

.field private static final MIN_SIZE:I = 0x10

.field private static final MIN_SIZE_LOG:I = 0x4

.field private static final NO_KEY:J = 0x0L

.field private static final NO_MATCH_OLD:Ljava/lang/Object;

.field private static final REPROBE_LIMIT:I = 0xa

.field private static final TOMBPRIME:Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

.field private static final TOMBSTONE:Ljava/lang/Object;

.field private static final _Lbase:I

.field private static final _Lscale:I

.field private static final _Obase:I

.field private static final _Oscale:I

.field private static final _chm_offset:J

.field private static final _val_1_offset:J

.field private static final serialVersionUID:J = 0x11207cb4719799ccL


# instance fields
.field private transient _chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

.field private transient _last_resize_milli:J

.field private final _opt_for_space:Z

.field private transient _val_1:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 91
    const-class v0, Lorg/jctools/maps/NonBlockingHashMapLong;

    const-class v1, [J

    .line 100
    sget-object v2, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lorg/jctools/maps/NonBlockingHashMapLong;->_Obase:I

    .line 101
    sget-object v2, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lorg/jctools/maps/NonBlockingHashMapLong;->_Oscale:I

    .line 108
    sget-object v2, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lorg/jctools/maps/NonBlockingHashMapLong;->_Lbase:I

    .line 109
    sget-object v2, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    sput v1, Lorg/jctools/maps/NonBlockingHashMapLong;->_Lscale:I

    .line 118
    const-string v1, "_chm"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm_offset:J

    .line 119
    const-string v1, "_val_1"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1_offset:J

    .line 153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->NO_MATCH_OLD:Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->MATCH_ANY:Ljava/lang/Object;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    .line 164
    new-instance v1, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    invoke-direct {v1, v0}, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBPRIME:Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 211
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jctools/maps/NonBlockingHashMapLong;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initial_sz"    # I

    .line 218
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jctools/maps/NonBlockingHashMapLong;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "initial_sz"    # I
    .param p2, "opt_for_space"    # Z

    .line 230
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 231
    iput-boolean p2, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_opt_for_space:Z

    .line 232
    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->initialize(I)V

    .line 233
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "opt_for_space"    # Z

    .line 224
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;-><init>(IZ)V

    return-void
.end method

.method private final CAS(JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "offset"    # J
    .param p3, "old"    # Ljava/lang/Object;
    .param p4, "nnn"    # Ljava/lang/Object;

    .line 122
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/Object;
    .locals 1

    .line 91
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->MATCH_ANY:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/jctools/maps/NonBlockingHashMapLong;)V
    .locals 0
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMapLong;

    .line 91
    invoke-direct {p0}, Lorg/jctools/maps/NonBlockingHashMapLong;->help_copy()V

    return-void
.end method

.method static synthetic access$1200()Ljava/lang/Object;
    .locals 1

    .line 91
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->NO_MATCH_OLD:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/jctools/maps/NonBlockingHashMapLong;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMapLong;

    .line 91
    iget-boolean v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_opt_for_space:Z

    return v0
.end method

.method static synthetic access$1400(Lorg/jctools/maps/NonBlockingHashMapLong;)J
    .locals 2
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMapLong;

    .line 91
    iget-wide v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_last_resize_milli:J

    return-wide v0
.end method

.method static synthetic access$1402(Lorg/jctools/maps/NonBlockingHashMapLong;J)J
    .locals 0
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMapLong;
    .param p1, "x1"    # J

    .line 91
    iput-wide p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_last_resize_milli:J

    return-wide p1
.end method

.method static synthetic access$1500(Lorg/jctools/maps/NonBlockingHashMapLong;)Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMapLong;

    .line 91
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    return-object v0
.end method

.method static synthetic access$1600()J
    .locals 2

    .line 91
    sget-wide v0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm_offset:J

    return-wide v0
.end method

.method static synthetic access$1700(Lorg/jctools/maps/NonBlockingHashMapLong;JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMapLong;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jctools/maps/NonBlockingHashMapLong;->CAS(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800()Lorg/jctools/maps/NonBlockingHashMapLong$Prime;
    .locals 1

    .line 91
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBPRIME:Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    return-object v0
.end method

.method static synthetic access$400([JI)J
    .locals 2
    .param p0, "x0"    # [J
    .param p1, "x1"    # I

    .line 91
    invoke-static {p0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->rawIndex([JI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500([Ljava/lang/Object;I)J
    .locals 2
    .param p0, "x0"    # [Ljava/lang/Object;
    .param p1, "x1"    # I

    .line 91
    invoke-static {p0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->rawIndex([Ljava/lang/Object;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(IJLjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/Object;

    .line 91
    invoke-static {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingHashMapLong;->print_impl(IJLjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(IJLjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/Object;

    .line 91
    invoke-static {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingHashMapLong;->print2_impl(IJLjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    .line 91
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 91
    invoke-static {p0}, Lorg/jctools/maps/NonBlockingHashMapLong;->reprobe_limit(I)I

    move-result v0

    return v0
.end method

.method private help_copy()V
    .locals 2

    .line 392
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    .line 393
    .local v0, "topchm":Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    iget-object v1, v0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    if-nez v1, :cond_0

    return-void

    .line 394
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->access$300(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;Z)V

    .line 395
    return-void
.end method

.method private initialize(I)V
    .locals 3
    .param p1, "initial_sz"    # I

    .line 235
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    const-string v0, "initial_sz"

    invoke-static {p1, v0}, Lorg/jctools/util/RangeUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 237
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    if-ge v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    new-instance v1, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    new-instance v2, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v2}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    invoke-direct {v1, p0, v2, v0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;Lorg/jctools/maps/ConcurrentAutoTable;I)V

    iput-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    .line 239
    sget-object v1, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    iput-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1:Ljava/lang/Object;

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_last_resize_milli:J

    .line 241
    return-void
.end method

.method private print2()V
    .locals 5

    .line 187
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "========="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1:Ljava/lang/Object;

    const/16 v2, -0x63

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4, v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->print2_impl(IJLjava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->access$000(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;)V

    .line 190
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method private static print2_impl(IJLjava/lang/Object;)V
    .locals 2
    .param p0, "i"    # I
    .param p1, "K"    # J
    .param p3, "V"    # Ljava/lang/Object;

    .line 193
    if-eqz p3, :cond_0

    invoke-static {p3}, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;->unbox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 194
    invoke-static {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingHashMapLong;->print_impl(IJLjava/lang/Object;)V

    .line 195
    :cond_0
    return-void
.end method

.method private static print_impl(IJLjava/lang/Object;)V
    .locals 6
    .param p0, "i"    # I
    .param p1, "K"    # J
    .param p3, "V"    # Ljava/lang/Object;

    .line 180
    instance-of v0, p3, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    if-eqz v0, :cond_0

    const-string v0, "prime_"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 181
    .local v0, "p":Ljava/lang/String;
    :goto_0
    invoke-static {p3}, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;->unbox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    .local v1, "V2":Ljava/lang/Object;
    sget-object v2, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    const-string/jumbo v2, "tombstone"

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "VS":Ljava/lang/String;
    :goto_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # J
    .param p3, "newVal"    # Ljava/lang/Object;
    .param p4, "oldVal"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TTypeV;"
        }
    .end annotation

    .line 304
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    if-eqz p4, :cond_8

    if-eqz p3, :cond_8

    .line 305
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 306
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1:Ljava/lang/Object;

    .line 307
    .local v0, "curVal":Ljava/lang/Object;
    sget-object v2, Lorg/jctools/maps/NonBlockingHashMapLong;->NO_MATCH_OLD:Ljava/lang/Object;

    if-eq p4, v2, :cond_1

    if-eq v0, p4, :cond_1

    sget-object v2, Lorg/jctools/maps/NonBlockingHashMapLong;->MATCH_ANY:Ljava/lang/Object;

    if-ne p4, v2, :cond_0

    sget-object v2, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    .line 310
    :cond_0
    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    :cond_1
    sget-wide v2, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1_offset:J

    invoke-direct {p0, v2, v3, v0, p3}, Lorg/jctools/maps/NonBlockingHashMapLong;->CAS(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 312
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1:Ljava/lang/Object;

    .line 314
    :cond_2
    sget-object v2, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    return-object v1

    .line 316
    .end local v0    # "curVal":Ljava/lang/Object;
    :cond_4
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->access$100(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 317
    .local v0, "res":Ljava/lang/Object;
    instance-of v2, v0, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    if-nez v2, :cond_7

    .line 318
    if-eqz v0, :cond_6

    .line 319
    sget-object v2, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    if-ne v0, v2, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, v0

    :goto_1
    return-object v1

    .line 318
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 317
    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 304
    .end local v0    # "res":Ljava/lang/Object;
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static rawIndex([JI)J
    .locals 6
    .param p0, "ary"    # [J
    .param p1, "idx"    # I

    .line 111
    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 114
    sget v0, Lorg/jctools/maps/NonBlockingHashMapLong;->_Lbase:I

    int-to-long v0, v0

    int-to-long v2, p1

    sget v4, Lorg/jctools/maps/NonBlockingHashMapLong;->_Lscale:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static rawIndex([Ljava/lang/Object;I)J
    .locals 6
    .param p0, "ary"    # [Ljava/lang/Object;
    .param p1, "idx"    # I

    .line 103
    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 106
    sget v0, Lorg/jctools/maps/NonBlockingHashMapLong;->_Obase:I

    int-to-long v0, v0

    int-to-long v2, p1

    sget v4, Lorg/jctools/maps/NonBlockingHashMapLong;->_Oscale:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1198
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1199
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->initialize(I)V

    .line 1201
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    .line 1202
    .local v0, "K":J
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1203
    .local v2, "V":Ljava/lang/Object;, "TTypeV;"
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 1206
    .end local v0    # "K":J
    .end local v2    # "V":Ljava/lang/Object;, "TTypeV;"
    return-void

    .line 1204
    .restart local v0    # "K":J
    .restart local v2    # "V":Ljava/lang/Object;, "TTypeV;"
    :cond_0
    invoke-virtual {p0, v0, v1, v2}, Lorg/jctools/maps/NonBlockingHashMapLong;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1205
    .end local v0    # "K":J
    .end local v2    # "V":Ljava/lang/Object;, "TTypeV;"
    goto :goto_0
.end method

.method private static reprobe_limit(I)I
    .locals 1
    .param p0, "len"    # I

    .line 203
    shr-int/lit8 v0, p0, 0x4

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1185
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1186
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1187
    .local v1, "K":J
    invoke-virtual {p0, v1, v2}, Lorg/jctools/maps/NonBlockingHashMapLong;->get(J)Ljava/lang/Object;

    move-result-object v3

    .line 1188
    .local v3, "V":Ljava/lang/Object;
    invoke-virtual {p1, v1, v2}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1189
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1190
    .end local v1    # "K":J
    .end local v3    # "V":Ljava/lang/Object;
    goto :goto_0

    .line 1191
    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1192
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1193
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .line 324
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    new-instance v1, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v1}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    const/4 v2, 0x4

    invoke-direct {v0, p0, v1, v2}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;Lorg/jctools/maps/ConcurrentAutoTable;I)V

    .line 325
    .local v0, "newchm":Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    :goto_0
    sget-wide v1, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm_offset:J

    iget-object v3, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->CAS(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    sget-wide v1, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1_offset:J

    iget-object v3, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1:Ljava/lang/Object;

    sget-object v4, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/jctools/maps/NonBlockingHashMapLong;->CAS(JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 327
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .line 260
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(J)Z
    .locals 1
    .param p1, "key"    # J

    .line 250
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 371
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/jctools/maps/NonBlockingHashMapLong;->containsKey(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "val"    # Ljava/lang/Object;

    .line 336
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 337
    :cond_0
    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1:Ljava/lang/Object;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    return v2

    .line 338
    :cond_1
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 339
    .local v3, "V":Ljava/lang/Object;, "TTypeV;"
    if-eq v3, p1, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .end local v3    # "V":Ljava/lang/Object;, "TTypeV;"
    :cond_2
    goto :goto_0

    .line 340
    .restart local v3    # "V":Ljava/lang/Object;, "TTypeV;"
    :cond_3
    :goto_1
    return v2

    .line 341
    .end local v3    # "V":Ljava/lang/Object;, "TTypeV;"
    :cond_4
    return v0
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

    .line 1036
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "TTypeV;>;>;"
        }
    .end annotation

    .line 1164
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$3;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingHashMapLong$3;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V

    return-object v0
.end method

.method public final get(J)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TTypeV;"
        }
    .end annotation

    .line 354
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1:Ljava/lang/Object;

    .line 356
    .local v0, "V":Ljava/lang/Object;
    sget-object v1, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 358
    .end local v0    # "V":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    invoke-static {v0, p1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->access$200(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;J)Ljava/lang/Object;

    move-result-object v0

    .line 359
    .restart local v0    # "V":Ljava/lang/Object;
    instance-of v1, v0, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    if-nez v1, :cond_3

    .line 360
    sget-object v1, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    .line 361
    return-object v0

    .line 360
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 359
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
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

    .line 365
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/jctools/maps/NonBlockingHashMapLong;->get(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1103
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$2;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingHashMapLong$2;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V

    return-object v0
.end method

.method public keySetLong()[J
    .locals 6

    .line 1114
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 1115
    .local v0, "dom":[J
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    check-cast v1, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;

    .line 1116
    .local v1, "i":Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>.IteratorLong;"
    const/4 v2, 0x0

    .line 1117
    .local v2, "j":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1118
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    invoke-virtual {v1}, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;->nextLong()J

    move-result-wide v4

    aput-wide v4, v0, v2

    move v2, v3

    goto :goto_0

    .line 1119
    .end local v3    # "j":I
    .restart local v2    # "j":I
    :cond_0
    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1086
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V

    return-object v0
.end method

.method public final print()V
    .locals 5

    .line 174
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "========="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1:Ljava/lang/Object;

    const/16 v2, -0x63

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4, v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->print_impl(IJLjava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->access$000(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;)V

    .line 177
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public put(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTTypeV;)TTypeV;"
        }
    .end annotation

    .line 270
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    .local p3, "val":Ljava/lang/Object;, "TTypeV;"
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->NO_MATCH_OLD:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TTypeV;)TTypeV;"
        }
    .end annotation

    .line 377
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    .local p2, "val":Ljava/lang/Object;, "TTypeV;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong;->put(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong;->put(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putIfAbsent(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTTypeV;)TTypeV;"
        }
    .end annotation

    .line 278
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    .local p3, "val":Ljava/lang/Object;, "TTypeV;"
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TTypeV;)TTypeV;"
        }
    .end annotation

    .line 373
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    .local p2, "val":Ljava/lang/Object;, "TTypeV;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong;->putIfAbsent(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong;->putIfAbsent(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(J)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TTypeV;"
        }
    .end annotation

    .line 284
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    sget-object v1, Lorg/jctools/maps/NonBlockingHashMapLong;->NO_MATCH_OLD:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jctools/maps/NonBlockingHashMapLong;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 367
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/jctools/maps/NonBlockingHashMapLong;->remove(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public remove(JLjava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # J
    .param p3, "val"    # Ljava/lang/Object;

    .line 289
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jctools/maps/NonBlockingHashMapLong;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "Val"    # Ljava/lang/Object;

    .line 369
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong;->remove(JLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public replace(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTTypeV;)TTypeV;"
        }
    .end annotation

    .line 294
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    .local p3, "val":Ljava/lang/Object;, "TTypeV;"
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->MATCH_ANY:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TTypeV;)TTypeV;"
        }
    .end annotation

    .line 375
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    .local p2, "Val":Ljava/lang/Object;, "TTypeV;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong;->replace(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong;->replace(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public replace(JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTTypeV;TTypeV;)Z"
        }
    .end annotation

    .line 300
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    .local p3, "oldValue":Ljava/lang/Object;, "TTypeV;"
    .local p4, "newValue":Ljava/lang/Object;, "TTypeV;"
    invoke-direct {p0, p1, p2, p4, p3}, Lorg/jctools/maps/NonBlockingHashMapLong;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public replace(Ljava/lang/Long;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TTypeV;TTypeV;)Z"
        }
    .end annotation

    .line 380
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    .local p2, "oldValue":Ljava/lang/Object;, "TTypeV;"
    .local p3, "newValue":Ljava/lang/Object;, "TTypeV;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/jctools/maps/NonBlockingHashMapLong;->replace(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 91
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingHashMapLong;->replace(Ljava/lang/Long;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 2

    .line 247
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1:Ljava/lang/Object;

    sget-object v1, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    invoke-virtual {v1}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
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

    .line 1053
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>;"
    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$1;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingHashMapLong$1;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V

    return-object v0
.end method
