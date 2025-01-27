.class public final Lcom/woleapp/netpos/contactless/util/BytesUtils;
.super Ljava/lang/Object;
.source "BytesUtils.java"


# static fields
.field private static final CHAR_DIGIT_SEVEN:I = 0x37

.field private static final CHAR_DIGIT_ZERO:I = 0x30

.field private static final CHAR_SPACE:C = ' '

.field private static final HEXA:I = 0x10

.field private static final LEFT_MASK:I = 0xf0

.field private static final MAX_BIT_INTEGER:I = 0x1f

.field private static final RIGHT_MASK:I = 0xf


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 2
    .param p0, "byteArray"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "byteArray"
        }
    .end annotation

    .line 68
    if-eqz p0, :cond_0

    .line 71
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/woleapp/netpos/contactless/util/BytesUtils;->byteArrayToInt([BII)I

    move-result v0

    return v0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter \'byteArray\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteArrayToInt([BII)I
    .locals 4
    .param p0, "byteArray"    # [B
    .param p1, "startPos"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "byteArray",
            "startPos",
            "length"
        }
    .end annotation

    .line 86
    if-eqz p0, :cond_3

    .line 89
    if-lez p2, :cond_2

    const/4 v0, 0x4

    if-gt p2, v0, :cond_2

    .line 92
    if-ltz p1, :cond_1

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_1

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "value":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 97
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    sub-int v3, p2, v1

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    :cond_0
    return v0

    .line 93
    .end local v0    # "value":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length or startPos not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length must be between 1 and 4. Length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter \'byteArray\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 2
    .param p0, "pBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pBytes"
        }
    .end annotation

    .line 111
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/woleapp/netpos/contactless/util/BytesUtils;->formatByte([BZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToString([BZ)Ljava/lang/String;
    .locals 1
    .param p0, "pBytes"    # [B
    .param p1, "pTruncate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pBytes",
            "pTruncate"
        }
    .end annotation

    .line 126
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/woleapp/netpos/contactless/util/BytesUtils;->formatByte([BZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToStringNoSpace(B)Ljava/lang/String;
    .locals 2
    .param p0, "pByte"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pByte"
        }
    .end annotation

    .line 137
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    invoke-static {v0, v1, v1}, Lcom/woleapp/netpos/contactless/util/BytesUtils;->formatByte([BZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToStringNoSpace([B)Ljava/lang/String;
    .locals 1
    .param p0, "pBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pBytes"
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/woleapp/netpos/contactless/util/BytesUtils;->formatByte([BZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToStringNoSpace([BZ)Ljava/lang/String;
    .locals 1
    .param p0, "pBytes"    # [B
    .param p1, "pTruncate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pBytes",
            "pTruncate"
        }
    .end annotation

    .line 161
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/woleapp/netpos/contactless/util/BytesUtils;->formatByte([BZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatByte([BZZ)Ljava/lang/String;
    .locals 7
    .param p0, "pByte"    # [B
    .param p1, "pSpace"    # Z
    .param p2, "pTruncate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pByte",
            "pSpace",
            "pTruncate"
        }
    .end annotation

    .line 177
    if-nez p0, :cond_0

    .line 178
    const-string v0, ""

    .local v0, "result":Ljava/lang/String;
    goto/16 :goto_6

    .line 180
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 181
    .local v0, "i":I
    if-eqz p2, :cond_1

    .line 182
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    if-nez v1, :cond_1

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    array-length v1, p0

    if-ge v0, v1, :cond_8

    .line 187
    if-eqz p1, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    .line 188
    .local v1, "sizeMultiplier":I
    :goto_1
    array-length v2, p0

    sub-int/2addr v2, v0

    mul-int/2addr v2, v1

    new-array v2, v2, [C

    .line 190
    .local v2, "c":[C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v4, p0

    if-ge v0, v4, :cond_6

    .line 191
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    .line 192
    .local v4, "b":B
    const/16 v5, 0x9

    if-le v4, v5, :cond_3

    add-int/lit8 v6, v4, 0x37

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v4, 0x30

    :goto_3
    int-to-char v6, v6

    aput-char v6, v2, v3

    .line 193
    aget-byte v6, p0, v0

    and-int/lit8 v6, v6, 0xf

    int-to-byte v4, v6

    .line 194
    add-int/lit8 v3, v3, 0x1

    if-le v4, v5, :cond_4

    add-int/lit8 v5, v4, 0x37

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v4, 0x30

    :goto_4
    int-to-char v5, v5

    aput-char v5, v2, v3

    .line 195
    if-eqz p1, :cond_5

    .line 196
    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x20

    aput-char v5, v2, v3

    .line 190
    :cond_5
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 199
    .end local v3    # "j":I
    .end local v4    # "b":B
    :cond_6
    new-instance v3, Ljava/lang/String;

    if-eqz p1, :cond_7

    const/4 v4, 0x0

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v3, v2, v4, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_5

    :cond_7
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    :goto_5
    move-object v1, v3

    .line 200
    .end local v2    # "c":[C
    .local v1, "result":Ljava/lang/String;
    move-object v0, v1

    goto :goto_6

    .line 201
    .end local v1    # "result":Ljava/lang/String;
    :cond_8
    const-string v1, ""

    move-object v0, v1

    .line 204
    .local v0, "result":Ljava/lang/String;
    :goto_6
    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)[B
    .locals 8
    .param p0, "pData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pData"
        }
    .end annotation

    .line 215
    if-eqz p0, :cond_4

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 220
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 221
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "j":I
    .local v3, "j":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    move v1, v3

    .line 220
    .end local v3    # "j":I
    .restart local v1    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 230
    .local v2, "result":[B
    const/4 v1, 0x0

    .line 231
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 232
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "j":I
    .local v4, "j":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-static {v7, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    .line 231
    add-int/lit8 v3, v3, 0x2

    move v1, v4

    goto :goto_1

    .line 234
    .end local v3    # "i":I
    .end local v4    # "j":I
    .restart local v1    # "j":I
    :cond_2
    return-object v2

    .line 227
    .end local v2    # "result":[B
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hex binary needs to be even-length :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "j":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static matchBitByBitIndex(II)Z
    .locals 3
    .param p0, "pVal"    # I
    .param p1, "pBitIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pVal",
            "pBitIndex"
        }
    .end annotation

    .line 247
    if-ltz p1, :cond_1

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1

    .line 251
    const/4 v0, 0x1

    shl-int v1, v0, p1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 248
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter \'pBitIndex\' must be between 0 and 31. pBitIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setBit(BIZ)B
    .locals 3
    .param p0, "pData"    # B
    .param p1, "pBitIndex"    # I
    .param p2, "pOn"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pData",
            "pBitIndex",
            "pOn"
        }
    .end annotation

    .line 266
    if-ltz p1, :cond_1

    const/4 v0, 0x7

    if-gt p1, v0, :cond_1

    .line 269
    move v0, p0

    .line 270
    .local v0, "ret":B
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 271
    shl-int/2addr v1, p1

    or-int/2addr v1, v0

    int-to-byte v0, v1

    goto :goto_0

    .line 273
    :cond_0
    shl-int/2addr v1, p1

    not-int v1, v1

    and-int/2addr v1, v0

    int-to-byte v0, v1

    .line 275
    :goto_0
    return v0

    .line 267
    .end local v0    # "ret":B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter \'pBitIndex\' must be between 0 and 7. pBitIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBinary([B)Ljava/lang/String;
    .locals 5
    .param p0, "pBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pBytes"
        }
    .end annotation

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "ret":Ljava/lang/String;
    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    .line 288
    new-instance v1, Ljava/math/BigInteger;

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/util/BytesUtils;->bytesToStringNoSpace([B)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 289
    .local v1, "val":Ljava/math/BigInteger;
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .local v2, "build":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x8

    if-ge v3, v4, :cond_0

    .line 292
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    .line 291
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 294
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .end local v1    # "val":Ljava/math/BigInteger;
    .end local v2    # "build":Ljava/lang/StringBuilder;
    :cond_1
    return-object v0
.end method

.method public static toByteArray(I)[B
    .locals 3
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 307
    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    int-to-byte v1, p0

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    return-object v0
.end method
