.class public Lorg/apache/commons/lang/mutable/MutableShort;
.super Ljava/lang/Number;
.source "MutableShort.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang/mutable/Mutable;


# static fields
.field private static final serialVersionUID:J = -0x7f4d983fL


# instance fields
.field private value:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .line 63
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    iput-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 76
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    iput-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 77
    return-void
.end method

.method public constructor <init>(S)V
    .locals 0
    .param p1, "value"    # S

    .line 52
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 53
    iput-short p1, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 54
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 147
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 148
    return-void
.end method

.method public add(S)V
    .locals 1
    .param p1, "operand"    # S

    .line 136
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 137
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 262
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/lang/mutable/MutableShort;

    .line 263
    .local v0, "other":Lorg/apache/commons/lang/mutable/MutableShort;
    iget-short v1, v0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 264
    .local v1, "anotherVal":S
    iget-short v2, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    if-ge v2, v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    if-ne v2, v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2
.end method

.method public decrement()V
    .locals 1

    .line 125
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 126
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .line 215
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 238
    instance-of v0, p1, Lorg/apache/commons/lang/mutable/MutableShort;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 239
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    move-object v2, p1

    check-cast v2, Lorg/apache/commons/lang/mutable/MutableShort;

    invoke-virtual {v2}, Lorg/apache/commons/lang/mutable/MutableShort;->shortValue()S

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 241
    :cond_1
    return v1
.end method

.method public floatValue()F
    .locals 1

    .line 206
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    int-to-float v0, v0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/Short;

    iget-short v1, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 250
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    return v0
.end method

.method public increment()V
    .locals 1

    .line 116
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 117
    return-void
.end method

.method public intValue()I
    .locals 1

    .line 188
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 197
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 106
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/mutable/MutableShort;->setValue(S)V

    .line 107
    return-void
.end method

.method public setValue(S)V
    .locals 0
    .param p1, "value"    # S

    .line 95
    iput-short p1, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 96
    return-void
.end method

.method public shortValue()S
    .locals 1

    .line 179
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    return v0
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 168
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 169
    return-void
.end method

.method public subtract(S)V
    .locals 1
    .param p1, "operand"    # S

    .line 157
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    .line 158
    return-void
.end method

.method public toShort()Ljava/lang/Short;
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/Short;

    invoke-virtual {p0}, Lorg/apache/commons/lang/mutable/MutableShort;->shortValue()S

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 274
    iget-short v0, p0, Lorg/apache/commons/lang/mutable/MutableShort;->value:S

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
