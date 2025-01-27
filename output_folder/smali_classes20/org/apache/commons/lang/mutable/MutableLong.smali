.class public Lorg/apache/commons/lang/mutable/MutableLong;
.super Ljava/lang/Number;
.source "MutableLong.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang/mutable/Mutable;


# static fields
.field private static final serialVersionUID:J = 0xeaa4a2677L


# instance fields
.field private value:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "value"    # J

    .line 52
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 53
    iput-wide p1, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Number;

    .line 63
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 76
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 77
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 2
    .param p1, "operand"    # J

    .line 136
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 137
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 4
    .param p1, "operand"    # Ljava/lang/Number;

    .line 147
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 148
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 253
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/lang/mutable/MutableLong;

    .line 254
    .local v0, "other":Lorg/apache/commons/lang/mutable/MutableLong;
    iget-wide v1, v0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 255
    .local v1, "anotherVal":J
    iget-wide v3, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    cmp-long v3, v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3
.end method

.method public decrement()V
    .locals 4

    .line 125
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 126
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .line 206
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 229
    instance-of v0, p1, Lorg/apache/commons/lang/mutable/MutableLong;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 230
    iget-wide v2, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/lang/mutable/MutableLong;

    invoke-virtual {v0}, Lorg/apache/commons/lang/mutable/MutableLong;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 232
    :cond_1
    return v1
.end method

.method public floatValue()F
    .locals 2

    .line 197
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 241
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public increment()V
    .locals 4

    .line 116
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 117
    return-void
.end method

.method public intValue()I
    .locals 2

    .line 179
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 188
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public setValue(J)V
    .locals 0
    .param p1, "value"    # J

    .line 95
    iput-wide p1, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 96
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 106
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/mutable/MutableLong;->setValue(J)V

    .line 107
    return-void
.end method

.method public subtract(J)V
    .locals 2
    .param p1, "operand"    # J

    .line 157
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 158
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 4
    .param p1, "operand"    # Ljava/lang/Number;

    .line 168
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    .line 169
    return-void
.end method

.method public toLong()Ljava/lang/Long;
    .locals 3

    .line 216
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lorg/apache/commons/lang/mutable/MutableLong;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 265
    iget-wide v0, p0, Lorg/apache/commons/lang/mutable/MutableLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
