.class public final Lorg/apache/commons/lang/NumberRange;
.super Ljava/lang/Object;
.source "NumberRange.java"


# instance fields
.field private final max:Ljava/lang/Number;

.field private final min:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2
    .param p1, "num"    # Ljava/lang/Number;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-eqz p1, :cond_0

    .line 59
    iput-object p1, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    .line 60
    iput-object p1, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    .line 61
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The number must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 4
    .param p1, "min"    # Ljava/lang/Number;
    .param p2, "max"    # Ljava/lang/Number;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-eqz p1, :cond_2

    .line 78
    if-eqz p2, :cond_1

    .line 82
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 83
    iput-object p1, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    iput-object p1, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    goto :goto_0

    .line 85
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    .line 86
    iput-object p2, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    .line 88
    :goto_0
    return-void

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The maximum value must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The minimum value must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 167
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 168
    return v0

    .line 169
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/lang/NumberRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 170
    return v2

    .line 172
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/NumberRange;

    .line 173
    .local v1, "range":Lorg/apache/commons/lang/NumberRange;
    iget-object v3, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    iget-object v4, v1, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    iget-object v4, v1, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getMaximum()Ljava/lang/Number;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    return-object v0
.end method

.method public getMinimum()Ljava/lang/Number;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 183
    const/16 v0, 0x11

    .line 184
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 185
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v2, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 186
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public includesNumber(Ljava/lang/Number;)Z
    .locals 5
    .param p1, "number"    # Ljava/lang/Number;

    .line 117
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 118
    return v0

    .line 120
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public includesRange(Lorg/apache/commons/lang/NumberRange;)Z
    .locals 2
    .param p1, "range"    # Lorg/apache/commons/lang/NumberRange;

    .line 134
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 135
    return v0

    .line 137
    :cond_0
    iget-object v1, p1, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/NumberRange;->includesNumber(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/NumberRange;->includesNumber(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public overlaps(Lorg/apache/commons/lang/NumberRange;)Z
    .locals 2
    .param p1, "range"    # Lorg/apache/commons/lang/NumberRange;

    .line 150
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 151
    return v0

    .line 153
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {p1, v1}, Lorg/apache/commons/lang/NumberRange;->includesNumber(Ljava/lang/Number;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {p1, v1}, Lorg/apache/commons/lang/NumberRange;->includesNumber(Ljava/lang/Number;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/NumberRange;->includesRange(Lorg/apache/commons/lang/NumberRange;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 199
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/text/StrBuilder;-><init>()V

    .line 201
    .local v0, "sb":Lorg/apache/commons/lang/text/StrBuilder;
    iget-object v1, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    const/16 v2, 0x29

    const/16 v5, 0x28

    if-gez v1, :cond_0

    .line 202
    invoke-virtual {v0, v5}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v1, v6}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_0

    .line 206
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/lang/NumberRange;->min:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 209
    :goto_0
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 211
    iget-object v1, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpg-double v1, v6, v3

    if-gez v1, :cond_1

    .line 212
    invoke-virtual {v0, v5}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {v1, v3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_1

    .line 216
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/NumberRange;->max:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 219
    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
