.class public final Lcom/hivemq/client/internal/util/Utf8Util;
.super Ljava/lang/Object;
.source "Utf8Util.java"


# static fields
.field private static final INVALID_CODE_POINTS:J = -0x1000000000000000L

.field private static final NON_SHORTEST_FORM:J = -0x8000000000000000L

.field private static final NO_FOLLOWING_BYTE:J = -0x4000000000000000L

.field private static final UTF_16_SURROGATES:J = -0x2000000000000000L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodedLength(Ljava/lang/String;)I
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 100
    .local v0, "utf16Length":I
    move v1, v0

    .line 101
    .local v1, "utf8Length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 102
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 103
    .local v3, "c":C
    const/16 v4, 0x7f

    if-le v3, v4, :cond_0

    .line 104
    add-int/lit8 v1, v1, 0x1

    .line 105
    const/16 v4, 0x7ff

    if-le v3, v4, :cond_0

    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 107
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    add-int/lit8 v2, v2, 0x1

    .line 101
    .end local v3    # "c":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public static isWellFormed([B)J
    .locals 11
    .param p0, "bytes"    # [B

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "index":I
    array-length v1, p0

    .line 38
    .local v1, "end":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 39
    const-wide/16 v2, 0x0

    return-wide v2

    .line 41
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .local v2, "index":I
    aget-byte v0, p0, v0

    move v3, v0

    .local v3, "byte1":B
    if-gez v0, :cond_13

    .line 43
    const/16 v0, -0x20

    const-wide/high16 v4, -0x8000000000000000L

    const/16 v6, -0x41

    const-wide/high16 v7, -0x4000000000000000L    # -2.0

    if-ge v3, v0, :cond_4

    .line 44
    if-ne v2, v1, :cond_1

    .line 45
    int-to-long v4, v2

    add-long/2addr v4, v7

    return-wide v4

    .line 47
    :cond_1
    const/16 v0, -0x3e

    if-ge v3, v0, :cond_2

    .line 48
    int-to-long v6, v2

    add-long/2addr v6, v4

    return-wide v6

    .line 50
    :cond_2
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "index":I
    .restart local v0    # "index":I
    aget-byte v2, p0, v2

    .line 51
    .local v2, "byte2":B
    if-le v2, v6, :cond_3

    .line 52
    int-to-long v4, v0

    add-long/2addr v4, v7

    return-wide v4

    .line 54
    .end local v2    # "byte2":B
    :cond_3
    goto/16 :goto_1

    .end local v0    # "index":I
    .local v2, "index":I
    :cond_4
    const/16 v9, -0x10

    if-ge v3, v9, :cond_a

    .line 55
    add-int/lit8 v9, v2, 0x1

    if-lt v9, v1, :cond_5

    .line 56
    int-to-long v4, v2

    add-long/2addr v4, v7

    return-wide v4

    .line 58
    :cond_5
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "index":I
    .local v9, "index":I
    aget-byte v2, p0, v2

    .line 59
    .local v2, "byte2":B
    if-le v2, v6, :cond_6

    .line 60
    int-to-long v4, v9

    add-long/2addr v4, v7

    return-wide v4

    .line 62
    :cond_6
    const/16 v10, -0x60

    if-ne v3, v0, :cond_7

    if-ge v2, v10, :cond_7

    .line 63
    int-to-long v6, v9

    add-long/2addr v6, v4

    return-wide v6

    .line 65
    :cond_7
    const/16 v0, -0x13

    if-ne v3, v0, :cond_8

    if-lt v2, v10, :cond_8

    .line 66
    int-to-long v4, v9

    const-wide/high16 v6, -0x2000000000000000L    # -2.6815615859885194E154

    add-long/2addr v4, v6

    return-wide v4

    .line 68
    :cond_8
    add-int/lit8 v0, v9, 0x1

    .end local v9    # "index":I
    .restart local v0    # "index":I
    aget-byte v4, p0, v9

    .line 69
    .local v4, "byte3":B
    if-le v4, v6, :cond_9

    .line 70
    int-to-long v5, v0

    add-long/2addr v5, v7

    return-wide v5

    .line 72
    .end local v2    # "byte2":B
    .end local v4    # "byte3":B
    :cond_9
    goto :goto_1

    .line 73
    .end local v0    # "index":I
    .local v2, "index":I
    :cond_a
    add-int/lit8 v0, v2, 0x2

    if-lt v0, v1, :cond_b

    .line 74
    int-to-long v4, v2

    add-long/2addr v4, v7

    return-wide v4

    .line 76
    :cond_b
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "index":I
    .restart local v0    # "index":I
    aget-byte v2, p0, v2

    .line 77
    .local v2, "byte2":B
    if-le v2, v6, :cond_c

    .line 78
    int-to-long v4, v0

    add-long/2addr v4, v7

    return-wide v4

    .line 80
    :cond_c
    if-ne v3, v9, :cond_d

    const/16 v9, -0x70

    if-ge v2, v9, :cond_d

    .line 81
    int-to-long v6, v0

    add-long/2addr v6, v4

    return-wide v6

    .line 83
    :cond_d
    const/16 v4, -0xc

    if-ne v3, v4, :cond_e

    const/16 v5, -0x71

    if-gt v2, v5, :cond_f

    :cond_e
    if-le v3, v4, :cond_10

    .line 84
    :cond_f
    int-to-long v4, v0

    const-wide/high16 v6, -0x1000000000000000L    # -3.105036184601418E231

    add-long/2addr v4, v6

    return-wide v4

    .line 86
    :cond_10
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "index":I
    .local v4, "index":I
    aget-byte v0, p0, v0

    .line 87
    .local v0, "byte3":B
    if-le v0, v6, :cond_11

    .line 88
    int-to-long v5, v4

    add-long/2addr v5, v7

    return-wide v5

    .line 90
    :cond_11
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    aget-byte v4, p0, v4

    .line 91
    .local v4, "byte4":B
    if-le v4, v6, :cond_12

    .line 92
    int-to-long v9, v5

    add-long/2addr v9, v7

    return-wide v9

    .line 91
    :cond_12
    move v0, v5

    .line 95
    .end local v2    # "byte2":B
    .end local v3    # "byte1":B
    .end local v4    # "byte4":B
    .end local v5    # "index":I
    .local v0, "index":I
    :goto_1
    goto/16 :goto_0

    .line 41
    .end local v0    # "index":I
    .local v2, "index":I
    .restart local v3    # "byte1":B
    :cond_13
    move v0, v2

    goto/16 :goto_0
.end method
