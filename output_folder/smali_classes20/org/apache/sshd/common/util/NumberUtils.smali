.class public final Lorg/apache/sshd/common/util/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final NUMERIC_PRIMITIVE_CLASSES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 36
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->unmodifiableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/util/NumberUtils;->NUMERIC_PRIMITIVE_CLASSES:Ljava/util/List;

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs asList([I)Ljava/util/List;
    .locals 6
    .param p0, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 262
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->length([I)I

    move-result v0

    .line 263
    .local v0, "len":I
    if-gtz v0, :cond_0

    .line 264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 267
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p0, v3

    .line 269
    .local v4, "v":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v4    # "v":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    :cond_1
    return-object v1
.end method

.method public static diffOffset([BI[BII)I
    .locals 5
    .param p0, "a1"    # [B
    .param p1, "startPos1"    # I
    .param p2, "a2"    # [B
    .param p3, "startPos2"    # I
    .param p4, "len"    # I

    .line 92
    move v0, p1

    .local v0, "pos1":I
    move v1, p3

    .local v1, "pos2":I
    const/4 v2, 0x0

    .local v2, "count":I
    :goto_0
    if-ge v2, p4, :cond_1

    .line 93
    aget-byte v3, p0, v0

    .line 94
    .local v3, "v1":B
    aget-byte v4, p2, v1

    .line 95
    .local v4, "v2":B
    if-eq v3, v4, :cond_0

    .line 96
    return v2

    .line 92
    .end local v3    # "v1":B
    .end local v4    # "v2":B
    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "pos1":I
    .end local v1    # "pos2":I
    .end local v2    # "count":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static emptyIfNull([B)[B
    .locals 1
    .param p0, "a"    # [B

    .line 234
    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static getNextPowerOf2(I)I
    .locals 3
    .param p0, "value"    # I

    .line 49
    if-ltz p0, :cond_2

    .line 53
    const/4 v0, 0x1

    .line 54
    .local v0, "j":I
    :cond_0
    if-ge v0, p0, :cond_1

    .line 55
    shl-int/lit8 v0, v0, 0x1

    .line 57
    if-gtz v0, :cond_0

    .line 58
    return p0

    .line 62
    :cond_1
    return v0

    .line 50
    .end local v0    # "j":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative value N/A: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs hashCode([B)I
    .locals 1
    .param p0, "values"    # [B

    .line 74
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public static hashCode([BII)I
    .locals 5
    .param p0, "a"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 78
    if-nez p2, :cond_0

    .line 79
    const/4 v0, 0x0

    return v0

    .line 82
    :cond_0
    const/4 v0, 0x1

    .line 83
    .local v0, "result":I
    move v1, p1

    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "count":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 84
    aget-byte v3, p0, v1

    .line 85
    .local v3, "element":B
    mul-int/lit8 v4, v0, 0x1f

    add-int v0, v4, v3

    .line 83
    .end local v3    # "element":B
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "pos":I
    .end local v2    # "count":I
    :cond_1
    return v0
.end method

.method public static varargs hashCode([I)I
    .locals 1
    .param p0, "values"    # [I

    .line 70
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public static varargs hashCode([J)I
    .locals 1
    .param p0, "values"    # [J

    .line 66
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0
.end method

.method public static isEmpty([B)Z
    .locals 1
    .param p0, "a"    # [B

    .line 238
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEmpty([I)Z
    .locals 1
    .param p0, "a"    # [I

    .line 242
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->length([I)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEmpty([J)Z
    .locals 1
    .param p0, "a"    # [J

    .line 246
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->length([J)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIntegerNumber(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 281
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 282
    return v1

    .line 285
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 286
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 287
    .local v3, "c":C
    const/16 v4, 0x30

    if-lt v3, v4, :cond_1

    const/16 v4, 0x39

    if-gt v3, v4, :cond_1

    .line 288
    goto :goto_1

    .line 291
    :cond_1
    const/16 v4, 0x2b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_3

    .line 292
    :cond_2
    if-nez v0, :cond_3

    .line 293
    nop

    .line 285
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    .restart local v3    # "c":C
    :cond_3
    return v1

    .line 300
    .end local v0    # "index":I
    .end local v2    # "len":I
    .end local v3    # "c":C
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static isNumericClass(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 109
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 110
    return v0

    .line 114
    :cond_0
    const-class v1, Ljava/lang/Number;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 115
    return v2

    .line 118
    :cond_1
    sget-object v1, Lorg/apache/sshd/common/util/NumberUtils;->NUMERIC_PRIMITIVE_CLASSES:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method public static varargs join(CZ[B)Ljava/lang/String;
    .locals 5
    .param p0, "separator"    # C
    .param p1, "unsigned"    # Z
    .param p2, "values"    # [B

    .line 186
    invoke-static {p2}, Lorg/apache/sshd/common/util/NumberUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const-string v0, ""

    return-object v0

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p2

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 191
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v3, p2, v2

    .line 192
    .local v3, "v":B
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 193
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    :cond_1
    if-eqz p1, :cond_2

    and-int/lit16 v4, v3, 0xff

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .end local v3    # "v":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs join(C[I)Ljava/lang/String;
    .locals 5
    .param p0, "separator"    # C
    .param p1, "values"    # [I

    .line 218
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string v0, ""

    return-object v0

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 223
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    .line 224
    .local v3, "v":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .end local v3    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs join(C[J)Ljava/lang/String;
    .locals 6
    .param p0, "separator"    # C
    .param p1, "values"    # [J

    .line 154
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const-string v0, ""

    return-object v0

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 159
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-wide v3, p1, v2

    .line 160
    .local v3, "v":J
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 161
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    :cond_1
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 159
    .end local v3    # "v":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs join(Ljava/lang/CharSequence;Z[B)Ljava/lang/String;
    .locals 5
    .param p0, "separator"    # Ljava/lang/CharSequence;
    .param p1, "unsigned"    # Z
    .param p2, "values"    # [B

    .line 170
    invoke-static {p2}, Lorg/apache/sshd/common/util/NumberUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string v0, ""

    return-object v0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p2

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 175
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v3, p2, v2

    .line 176
    .local v3, "v":B
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 177
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 179
    :cond_1
    if-eqz p1, :cond_2

    and-int/lit16 v4, v3, 0xff

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .end local v3    # "v":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs join(Ljava/lang/CharSequence;[I)Ljava/lang/String;
    .locals 5
    .param p0, "separator"    # Ljava/lang/CharSequence;
    .param p1, "values"    # [I

    .line 202
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, ""

    return-object v0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 207
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    .line 208
    .local v3, "v":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 209
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 211
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .end local v3    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs join(Ljava/lang/CharSequence;[J)Ljava/lang/String;
    .locals 6
    .param p0, "separator"    # Ljava/lang/CharSequence;
    .param p1, "values"    # [J

    .line 138
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string v0, ""

    return-object v0

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 143
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-wide v3, p1, v2

    .line 144
    .local v3, "v":J
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 147
    :cond_1
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 143
    .end local v3    # "v":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs length([B)I
    .locals 1
    .param p0, "a"    # [B

    .line 250
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p0

    :goto_0
    return v0
.end method

.method public static varargs length([I)I
    .locals 1
    .param p0, "a"    # [I

    .line 254
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p0

    :goto_0
    return v0
.end method

.method public static varargs length([J)I
    .locals 1
    .param p0, "a"    # [J

    .line 258
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p0

    :goto_0
    return v0
.end method

.method public static toInteger(Ljava/lang/Number;)Ljava/lang/Integer;
    .locals 1
    .param p0, "n"    # Ljava/lang/Number;

    .line 128
    if-nez p0, :cond_0

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 131
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 133
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
