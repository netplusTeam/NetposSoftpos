.class public Lcom/sleepycat/je/tree/INLongRep$DefaultRep;
.super Lcom/sleepycat/je/tree/INLongRep;
.source "INLongRep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/tree/INLongRep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultRep"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static MAX_VALUE:[J


# instance fields
.field private final byteArray:[B

.field final bytesPerValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 125
    const-class v0, Lcom/sleepycat/je/tree/INLongRep;

    .line 128
    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->MAX_VALUE:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0xff
        0xffff
        0xffffff
        0xffffffffL
        0xffffffffffL
        0xffffffffffffL
        0xffffffffffffffL
        0x7fffffffffffffffL
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "nBytes"    # I

    .line 143
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INLongRep;-><init>()V

    .line 144
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    .line 145
    if-lt p2, v0, :cond_1

    .line 146
    const/16 v0, 0x8

    if-gt p2, v0, :cond_0

    .line 148
    iput p2, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->bytesPerValue:I

    .line 149
    mul-int v0, p1, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->byteArray:[B

    .line 150
    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 144
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/SizeofMarker;)V
    .locals 1
    .param p1, "marker"    # Lcom/sleepycat/je/utilint/SizeofMarker;

    .line 153
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INLongRep;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->bytesPerValue:I

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->byteArray:[B

    .line 156
    return-void
.end method

.method private constructor <init>([BI)V
    .locals 0
    .param p1, "byteArray"    # [B
    .param p2, "bytesPerValue"    # I

    .line 158
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INLongRep;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->byteArray:[B

    .line 160
    iput p2, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->bytesPerValue:I

    .line 161
    return-void
.end method


# virtual methods
.method public clear(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/INLongRep$EmptyRep;)Lcom/sleepycat/je/tree/INLongRep;
    .locals 4
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "emptyRep"    # Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    .line 260
    nop

    .line 261
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->getMemorySize()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sleepycat/je/tree/INLongRep$EmptyRep;->getMemorySize()J

    move-result-wide v2

    .line 260
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 263
    return-object p2
.end method

.method public compact(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/INLongRep$EmptyRep;)Lcom/sleepycat/je/tree/INLongRep;
    .locals 1
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "emptyRep"    # Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    .line 250
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->clear(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/INLongRep$EmptyRep;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    return-object v0

    .line 254
    :cond_0
    return-object p0
.end method

.method public copy(IIILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "n"    # I
    .param p4, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 280
    iget-object v0, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->byteArray:[B

    iget v1, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->bytesPerValue:I

    mul-int v2, p1, v1

    mul-int v3, p2, v1

    mul-int/2addr v1, p3

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    return-object p0
.end method

.method public get(I)J
    .locals 6
    .param p1, "idx"    # I

    .line 173
    iget v0, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->bytesPerValue:I

    mul-int v1, p1, v0

    .line 174
    .local v1, "i":I
    add-int/2addr v0, v1

    .line 176
    .local v0, "end":I
    iget-object v2, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->byteArray:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    .line 178
    .local v2, "val":J
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    .line 179
    const/16 v4, 0x8

    shl-long/2addr v2, v4

    .line 180
    iget-object v4, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->byteArray:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    goto :goto_0

    .line 183
    :cond_0
    return-wide v2
.end method

.method public getMemorySize()J
    .locals 2

    .line 290
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->DEFAULT_LONG_REP_OVERHEAD:I

    iget-object v1, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->byteArray:[B

    array-length v1, v1

    .line 291
    invoke-static {v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 290
    return-wide v0
.end method

.method public isEmpty()Z
    .locals 5

    .line 269
    iget-object v0, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->byteArray:[B

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, v0, v3

    .line 270
    .local v4, "b":B
    if-eqz v4, :cond_0

    .line 271
    return v2

    .line 269
    .end local v4    # "b":B
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public resize(I)Lcom/sleepycat/je/tree/INLongRep$DefaultRep;
    .locals 4
    .param p1, "capacity"    # I

    .line 165
    new-instance v0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;

    iget-object v1, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->byteArray:[B

    iget v2, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->bytesPerValue:I

    mul-int/2addr v2, p1

    .line 166
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->bytesPerValue:I

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;-><init>([BI)V

    .line 165
    return-object v0
.end method

.method public bridge synthetic resize(I)Lcom/sleepycat/je/tree/INLongRep;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->resize(I)Lcom/sleepycat/je/tree/INLongRep$DefaultRep;

    move-result-object p1

    return-object p1
.end method

.method public set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;
    .locals 9
    .param p1, "idx"    # I
    .param p2, "val"    # J
    .param p4, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 193
    if-ltz p1, :cond_8

    .line 194
    iget-object v0, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->byteArray:[B

    array-length v1, v0

    iget v2, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->bytesPerValue:I

    div-int/2addr v1, v2

    if-ge p1, v1, :cond_7

    .line 195
    const-wide/16 v3, 0x0

    cmp-long v1, p2, v3

    if-ltz v1, :cond_6

    .line 201
    sget-object v1, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->MAX_VALUE:[J

    aget-wide v5, v1, v2

    cmp-long v1, p2, v5

    if-lez v1, :cond_3

    .line 203
    array-length v0, v0

    div-int/2addr v0, v2

    .line 207
    .local v0, "capacity":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/sleepycat/je/tree/INLongRep$SparseRep;

    if-ne v1, v2, :cond_0

    .line 208
    new-instance v1, Lcom/sleepycat/je/tree/INLongRep$SparseRep;

    iget v2, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->bytesPerValue:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Lcom/sleepycat/je/tree/INLongRep$SparseRep;-><init>(I)V

    .local v1, "newRep":Lcom/sleepycat/je/tree/INLongRep;
    goto :goto_0

    .line 210
    .end local v1    # "newRep":Lcom/sleepycat/je/tree/INLongRep;
    :cond_0
    new-instance v1, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;

    iget v2, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->bytesPerValue:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;-><init>(II)V

    .line 213
    .restart local v1    # "newRep":Lcom/sleepycat/je/tree/INLongRep;
    :goto_0
    nop

    .line 214
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->getMemorySize()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v4

    .line 213
    invoke-virtual {p4, v2, v3, v4, v5}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 220
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sleepycat/je/tree/INLongRep;->set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v1

    .line 222
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 223
    if-eq v2, p1, :cond_1

    .line 224
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->get(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4, p4}, Lcom/sleepycat/je/tree/INLongRep;->set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v1

    .line 222
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 228
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 232
    .end local v0    # "capacity":I
    .end local v1    # "newRep":Lcom/sleepycat/je/tree/INLongRep;
    :cond_3
    add-int/lit8 v1, p1, 0x1

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 233
    .local v1, "i":I
    sub-int v2, v1, v2

    .line 235
    .local v2, "end":I
    const-wide/16 v5, 0xff

    and-long v7, p2, v5

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    .line 237
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-le v1, v2, :cond_4

    .line 238
    const/16 v0, 0x8

    shr-long/2addr p2, v0

    .line 239
    iget-object v0, p0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->byteArray:[B

    and-long v7, p2, v5

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    goto :goto_2

    .line 242
    :cond_4
    const-wide/16 v5, -0x100

    and-long/2addr v5, p2

    cmp-long v0, v5, v3

    if-nez v0, :cond_5

    .line 244
    return-object p0

    .line 242
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2, p3}, Ljava/lang/AssertionError;-><init>(J)V

    throw v0

    .line 195
    .end local v1    # "i":I
    .end local v2    # "end":I
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 194
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 193
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
