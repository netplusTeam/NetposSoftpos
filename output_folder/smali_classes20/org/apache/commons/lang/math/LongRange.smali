.class public final Lorg/apache/commons/lang/math/LongRange;
.super Lorg/apache/commons/lang/math/Range;
.source "LongRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4158bbcfe9f0L


# instance fields
.field private transient hashCode:I

.field private final max:J

.field private transient maxObject:Ljava/lang/Long;

.field private final min:J

.field private transient minObject:Ljava/lang/Long;

.field private transient toString:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .param p1, "number"    # J

    .line 72
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 55
    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 63
    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    .line 73
    iput-wide p1, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    .line 74
    iput-wide p1, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    .line 75
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2
    .param p1, "number1"    # J
    .param p3, "number2"    # J

    .line 109
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 55
    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 63
    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    .line 110
    cmp-long v0, p3, p1

    if-gez v0, :cond_0

    .line 111
    iput-wide p3, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    .line 112
    iput-wide p1, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    goto :goto_0

    .line 114
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    .line 115
    iput-wide p3, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    .line 117
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/Number;

    .line 86
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 55
    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 63
    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    .line 87
    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    .line 91
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    .line 92
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 93
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 94
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 96
    :cond_0
    return-void

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 5
    .param p1, "number1"    # Ljava/lang/Number;
    .param p2, "number2"    # Ljava/lang/Number;

    .line 131
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 55
    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 63
    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    .line 132
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 135
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 136
    .local v0, "number1val":J
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 137
    .local v2, "number2val":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 138
    iput-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    .line 139
    iput-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    .line 140
    instance-of v4, p2, Ljava/lang/Long;

    if-eqz v4, :cond_0

    .line 141
    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    iput-object v4, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 143
    :cond_0
    instance-of v4, p1, Ljava/lang/Long;

    if-eqz v4, :cond_3

    .line 144
    move-object v4, p1

    check-cast v4, Ljava/lang/Long;

    iput-object v4, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    goto :goto_0

    .line 147
    :cond_1
    iput-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    .line 148
    iput-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    .line 149
    instance-of v4, p1, Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 150
    move-object v4, p1

    check-cast v4, Ljava/lang/Long;

    iput-object v4, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 152
    :cond_2
    instance-of v4, p2, Ljava/lang/Long;

    if-eqz v4, :cond_3

    .line 153
    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    iput-object v4, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 156
    :cond_3
    :goto_0
    return-void

    .line 133
    .end local v0    # "number1val":J
    .end local v2    # "number2val":J
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The numbers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public containsLong(J)Z
    .locals 2
    .param p1, "value"    # J

    .line 300
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsNumber(Ljava/lang/Number;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/Number;

    .line 282
    if-nez p1, :cond_0

    .line 283
    const/4 v0, 0x0

    return v0

    .line 285
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/math/LongRange;->containsLong(J)Z

    move-result v0

    return v0
.end method

.method public containsRange(Lorg/apache/commons/lang/math/Range;)Z
    .locals 3
    .param p1, "range"    # Lorg/apache/commons/lang/math/Range;

    .line 317
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 318
    return v0

    .line 320
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/math/LongRange;->containsLong(J)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMaximumLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/math/LongRange;->containsLong(J)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 354
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 355
    return v0

    .line 357
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/lang/math/LongRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 358
    return v2

    .line 360
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/math/LongRange;

    .line 361
    .local v1, "range":Lorg/apache/commons/lang/math/LongRange;
    iget-wide v3, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    iget-wide v5, v1, Lorg/apache/commons/lang/math/LongRange;->min:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    iget-wide v5, v1, Lorg/apache/commons/lang/math/LongRange;->max:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getMaximumDouble()D
    .locals 2

    .line 255
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public getMaximumFloat()F
    .locals 2

    .line 266
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    long-to-float v0, v0

    return v0
.end method

.method public getMaximumInteger()I
    .locals 2

    .line 244
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    long-to-int v0, v0

    return v0
.end method

.method public getMaximumLong()J
    .locals 2

    .line 233
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    return-wide v0
.end method

.method public getMaximumNumber()Ljava/lang/Number;
    .locals 3

    .line 221
    iget-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->maxObject:Ljava/lang/Long;

    return-object v0
.end method

.method public getMinimumDouble()D
    .locals 2

    .line 201
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public getMinimumFloat()F
    .locals 2

    .line 212
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    long-to-float v0, v0

    return v0
.end method

.method public getMinimumInteger()I
    .locals 2

    .line 190
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    long-to-int v0, v0

    return v0
.end method

.method public getMinimumLong()J
    .locals 2

    .line 179
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    return-wide v0
.end method

.method public getMinimumNumber()Ljava/lang/Number;
    .locals 3

    .line 167
    iget-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->minObject:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 370
    iget v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    if-nez v0, :cond_0

    .line 371
    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 372
    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 373
    mul-int/lit8 v0, v0, 0x25

    iget-wide v1, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    const/16 v3, 0x20

    shr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 374
    mul-int/lit8 v0, v0, 0x25

    iget-wide v1, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    shr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    .line 376
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/math/LongRange;->hashCode:I

    return v0
.end method

.method public overlapsRange(Lorg/apache/commons/lang/math/Range;)Z
    .locals 3
    .param p1, "range"    # Lorg/apache/commons/lang/math/Range;

    .line 334
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 335
    return v0

    .line 337
    :cond_0
    iget-wide v1, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/lang/math/Range;->containsLong(J)Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/lang/math/Range;->containsLong(J)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/math/LongRange;->containsLong(J)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public toArray()[J
    .locals 6

    .line 406
    iget-wide v0, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    iget-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    new-array v0, v0, [J

    .line 407
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 408
    iget-wide v2, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 387
    iget-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 389
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const-string v1, "Range["

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 390
    iget-wide v1, p0, Lorg/apache/commons/lang/math/LongRange;->min:J

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(J)Lorg/apache/commons/lang/text/StrBuilder;

    .line 391
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 392
    iget-wide v1, p0, Lorg/apache/commons/lang/math/LongRange;->max:J

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(J)Lorg/apache/commons/lang/text/StrBuilder;

    .line 393
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 394
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    .line 396
    .end local v0    # "buf":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/math/LongRange;->toString:Ljava/lang/String;

    return-object v0
.end method
