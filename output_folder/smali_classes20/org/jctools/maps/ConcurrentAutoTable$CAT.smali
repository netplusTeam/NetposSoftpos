.class Lorg/jctools/maps/ConcurrentAutoTable$CAT;
.super Ljava/lang/Object;
.source "ConcurrentAutoTable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/ConcurrentAutoTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CAT"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_SPIN:I = 0x1

.field private static final _Lbase:I

.field private static final _Lscale:I


# instance fields
.field private volatile _fuzzy_sum_cache:J

.field private volatile _fuzzy_time:J

.field private final _next:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

.field private final _t:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 111
    const-class v0, [J

    const-class v1, Lorg/jctools/maps/ConcurrentAutoTable;

    .line 114
    sget-object v1, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    sput v1, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_Lbase:I

    .line 115
    sget-object v1, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_Lscale:I

    return-void
.end method

.method constructor <init>(Lorg/jctools/maps/ConcurrentAutoTable$CAT;IJ)V
    .locals 2
    .param p1, "next"    # Lorg/jctools/maps/ConcurrentAutoTable$CAT;
    .param p2, "sz"    # I
    .param p3, "init"    # J

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_next:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    .line 136
    new-array v0, p2, [J

    iput-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_t:[J

    .line 137
    const/4 v1, 0x0

    aput-wide p3, v0, v1

    .line 138
    return-void
.end method

.method private static CAS([JIJJ)Z
    .locals 8
    .param p0, "A"    # [J
    .param p1, "idx"    # I
    .param p2, "old"    # J
    .param p4, "nnn"    # J

    .line 121
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-static {p0, p1}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->rawIndex([JI)J

    move-result-wide v2

    move-object v1, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$000(Lorg/jctools/maps/ConcurrentAutoTable$CAT;)[J
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    .line 111
    iget-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_t:[J

    return-object v0
.end method

.method private static rawIndex([JI)J
    .locals 2
    .param p0, "ary"    # [J
    .param p1, "i"    # I

    .line 117
    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 118
    sget v0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_Lbase:I

    sget v1, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_Lscale:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public add_if(JILorg/jctools/maps/ConcurrentAutoTable;)J
    .locals 17
    .param p1, "x"    # J
    .param p3, "hash"    # I
    .param p4, "master"    # Lorg/jctools/maps/ConcurrentAutoTable;

    .line 144
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_t:[J

    .line 145
    .local v7, "t":[J
    array-length v1, v7

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    and-int v9, p3, v1

    .line 147
    .local v9, "idx":I
    aget-wide v10, v7, v9

    .line 148
    .local v10, "old":J
    add-long v5, v10, p1

    move-object v1, v7

    move v2, v9

    move-wide v3, v10

    invoke-static/range {v1 .. v6}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->CAS([JIJJ)Z

    move-result v12

    .line 149
    .local v12, "ok":Z
    if-eqz v12, :cond_0

    return-wide v10

    .line 151
    :cond_0
    const/4 v1, 0x0

    move-wide v15, v10

    move v10, v1

    move-wide v1, v15

    .line 153
    .local v1, "old":J
    .local v10, "cnt":I
    :goto_0
    aget-wide v13, v7, v9

    .line 154
    .end local v1    # "old":J
    .local v13, "old":J
    add-long v5, v13, p1

    move-object v1, v7

    move v2, v9

    move-wide v3, v13

    invoke-static/range {v1 .. v6}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->CAS([JIJJ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 157
    if-ge v10, v8, :cond_1

    return-wide v13

    .line 158
    :cond_1
    array-length v1, v7

    const/high16 v2, 0x100000

    if-lt v1, v2, :cond_2

    return-wide v13

    .line 166
    :cond_2
    invoke-static/range {p4 .. p4}, Lorg/jctools/maps/ConcurrentAutoTable;->access$100(Lorg/jctools/maps/ConcurrentAutoTable;)Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    move-result-object v1

    if-eq v1, v0, :cond_3

    return-wide v13

    .line 176
    :cond_3
    new-instance v1, Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    array-length v2, v7

    mul-int/lit8 v2, v2, 0x2

    const-wide/16 v3, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;-><init>(Lorg/jctools/maps/ConcurrentAutoTable$CAT;IJ)V

    .line 180
    .local v1, "newcat":Lorg/jctools/maps/ConcurrentAutoTable$CAT;
    :goto_1
    invoke-static/range {p4 .. p4}, Lorg/jctools/maps/ConcurrentAutoTable;->access$100(Lorg/jctools/maps/ConcurrentAutoTable;)Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    move-result-object v2

    if-ne v2, v0, :cond_4

    move-object/from16 v2, p4

    invoke-static {v2, v0, v1}, Lorg/jctools/maps/ConcurrentAutoTable;->access$200(Lorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/ConcurrentAutoTable$CAT;Lorg/jctools/maps/ConcurrentAutoTable$CAT;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_4
    move-object/from16 v2, p4

    .line 181
    :cond_5
    return-wide v13

    .line 155
    .end local v1    # "newcat":Lorg/jctools/maps/ConcurrentAutoTable$CAT;
    :cond_6
    move-object/from16 v2, p4

    add-int/lit8 v10, v10, 0x1

    move-wide v1, v13

    goto :goto_0
.end method

.method public estimate_sum()J
    .locals 4

    .line 198
    iget-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_t:[J

    array-length v0, v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->sum()J

    move-result-wide v0

    return-wide v0

    .line 200
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 201
    .local v0, "millis":J
    iget-wide v2, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_fuzzy_time:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 202
    invoke-virtual {p0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->sum()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_fuzzy_sum_cache:J

    .line 203
    iput-wide v0, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_fuzzy_time:J

    .line 205
    :cond_1
    iget-wide v2, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_fuzzy_sum_cache:J

    return-wide v2
.end method

.method public print()V
    .locals 6

    .line 211
    iget-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_t:[J

    .line 212
    .local v0, "t":[J
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 213
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 214
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v0, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_next:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->print()V

    .line 217
    :cond_1
    return-void
.end method

.method public sum()J
    .locals 7

    .line 188
    iget-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_next:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->sum()J

    move-result-wide v0

    .line 189
    .local v0, "sum":J
    :goto_0
    iget-object v2, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_t:[J

    .line 190
    .local v2, "t":[J
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-wide v5, v2, v4

    .local v5, "cnt":J
    add-long/2addr v0, v5

    .end local v5    # "cnt":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 191
    :cond_1
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 208
    invoke-virtual {p0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->sum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
