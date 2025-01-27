.class public final Lorg/apache/commons/lang/math/NumberRange;
.super Lorg/apache/commons/lang/math/Range;
.source "NumberRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4158bbcfe9e6L


# instance fields
.field private transient hashCode:I

.field private final max:Ljava/lang/Number;

.field private final min:Ljava/lang/Number;

.field private transient toString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2
    .param p1, "num"    # Ljava/lang/Number;

    .line 68
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/math/NumberRange;->hashCode:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/NumberRange;->toString:Ljava/lang/String;

    .line 69
    if-eqz p1, :cond_5

    .line 72
    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_4

    .line 75
    instance-of v0, p1, Ljava/lang/Double;

    const-string v1, "The number must not be NaN"

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    :goto_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_3
    :goto_1
    iput-object p1, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    .line 83
    iput-object p1, p0, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    .line 84
    return-void

    .line 73
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number must implement Comparable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 2
    .param p1, "num1"    # Ljava/lang/Number;
    .param p2, "num2"    # Ljava/lang/Number;

    .line 104
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/math/NumberRange;->hashCode:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/NumberRange;->toString:Ljava/lang/String;

    .line 105
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 111
    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_6

    .line 114
    instance-of v0, p1, Ljava/lang/Double;

    const-string v1, "The number must not be NaN"

    if-eqz v0, :cond_1

    .line 115
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 119
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 120
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_3
    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 125
    .local v0, "compare":I
    if-nez v0, :cond_4

    .line 126
    iput-object p1, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    .line 127
    iput-object p1, p0, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    goto :goto_1

    .line 128
    :cond_4
    if-lez v0, :cond_5

    .line 129
    iput-object p2, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    .line 130
    iput-object p1, p0, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    goto :goto_1

    .line 132
    :cond_5
    iput-object p1, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    .line 133
    iput-object p2, p0, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    .line 135
    :goto_1
    return-void

    .line 112
    .end local v0    # "compare":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The numbers must implement Comparable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The numbers must be of the same type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The numbers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public containsNumber(Ljava/lang/Number;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/Number;

    .line 172
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 173
    return v0

    .line 175
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 178
    iget-object v1, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 179
    .local v1, "compareMin":I
    iget-object v2, p0, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    .line 180
    .local v2, "compareMax":I
    if-gtz v1, :cond_1

    if-ltz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 176
    .end local v1    # "compareMin":I
    .end local v2    # "compareMax":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number must be of the same type as the range numbers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 199
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 200
    return v0

    .line 202
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/lang/math/NumberRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 203
    return v2

    .line 205
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/math/NumberRange;

    .line 206
    .local v1, "range":Lorg/apache/commons/lang/math/NumberRange;
    iget-object v3, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    iget-object v4, v1, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    iget-object v4, v1, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getMaximumNumber()Ljava/lang/Number;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    return-object v0
.end method

.method public getMinimumNumber()Ljava/lang/Number;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 215
    iget v0, p0, Lorg/apache/commons/lang/math/NumberRange;->hashCode:I

    if-nez v0, :cond_0

    .line 216
    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/commons/lang/math/NumberRange;->hashCode:I

    .line 217
    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/NumberRange;->hashCode:I

    .line 218
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/NumberRange;->hashCode:I

    .line 219
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/NumberRange;->hashCode:I

    .line 221
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/math/NumberRange;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 232
    iget-object v0, p0, Lorg/apache/commons/lang/math/NumberRange;->toString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 234
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const-string v1, "Range["

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 235
    iget-object v1, p0, Lorg/apache/commons/lang/math/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 236
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 237
    iget-object v1, p0, Lorg/apache/commons/lang/math/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 238
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 239
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/math/NumberRange;->toString:Ljava/lang/String;

    .line 241
    .end local v0    # "buf":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/math/NumberRange;->toString:Ljava/lang/String;

    return-object v0
.end method
