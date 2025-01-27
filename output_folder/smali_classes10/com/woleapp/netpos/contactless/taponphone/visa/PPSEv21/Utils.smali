.class public Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final LEN:B = 0x1t

.field static final TAG:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayCompare([BI[BII)Z
    .locals 6
    .param p0, "array1"    # [B
    .param p1, "array1Offset"    # I
    .param p2, "array2"    # [B
    .param p3, "array2Offset"    # I
    .param p4, "maxlength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "array1",
            "array1Offset",
            "array2",
            "array2Offset",
            "maxlength"
        }
    .end annotation

    .line 47
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 49
    return v0

    .line 53
    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 55
    return v1

    .line 58
    :cond_1
    move v2, p3

    .line 59
    .local v2, "j":I
    move v3, p1

    .local v3, "i":I
    :goto_0
    add-int v4, p1, p4

    if-ge v3, v4, :cond_3

    .line 61
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "j":I
    .local v4, "j":I
    aget-byte v2, p2, v2

    aget-byte v5, p0, v3

    if-eq v2, v5, :cond_2

    .line 63
    return v1

    .line 59
    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_0

    .line 67
    .end local v3    # "i":I
    .end local v4    # "j":I
    .restart local v2    # "j":I
    :cond_3
    return v0
.end method

.method public static getHexString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "offset",
            "len",
            "delimiter"
        }
    .end annotation

    .line 80
    if-eqz p0, :cond_3

    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 83
    .local v0, "str":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 85
    if-eqz v1, :cond_0

    rem-int/lit8 v2, v1, 0x10

    .line 90
    :cond_0
    add-int v2, v1, p1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "digit":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    .end local v2    # "digit":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 101
    .end local v0    # "str":Ljava/lang/StringBuffer;
    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public static getString([B)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 111
    if-eqz p0, :cond_0

    .line 113
    const/4 v0, 0x0

    array-length v1, p0

    const-string v2, " "

    invoke-static {p0, v0, v1, v2}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Utils;->getHexString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hexString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hexString"
        }
    .end annotation

    .line 199
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 200
    .local v0, "len":I
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p0, v1

    .line 203
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v0, v1

    .line 205
    :cond_0
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 206
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 207
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 208
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 207
    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 210
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 211
    .end local v0    # "len":I
    .end local v1    # "data":[B
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static parseDOL([BS[S)S
    .locals 8
    .param p0, "arr"    # [B
    .param p1, "offset"    # S
    .param p2, "result"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "arr",
            "offset",
            "result"
        }
    .end annotation

    .line 133
    move v0, p1

    .line 144
    .local v0, "off":S
    move v1, v0

    .line 145
    .local v1, "offsetOfT":S
    :try_start_0
    aget-byte v2, p0, v0

    const/16 v3, 0x1f

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    .line 149
    :cond_0
    add-int/lit8 v2, v0, 0x1

    int-to-short v0, v2

    .line 151
    aget-byte v2, p0, v0

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_0

    .line 154
    :cond_1
    add-int/lit8 v2, v0, 0x1

    int-to-short v0, v2

    .line 155
    sub-int v2, v0, v1

    int-to-short v2, v2

    .line 157
    .local v2, "lengthOfT":S
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 158
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, p2, v3

    goto :goto_0

    .line 159
    :cond_2
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 160
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v1, 0x1

    int-to-short v6, v6

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    add-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, p2, v3

    .line 167
    :cond_3
    :goto_0
    aput-short v3, p2, v4

    .line 168
    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, -0x80

    if-nez v3, :cond_4

    .line 170
    aget-byte v3, p0, v0

    int-to-short v3, v3

    aput-short v3, p2, v4

    goto :goto_2

    .line 174
    :cond_4
    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0x7f

    int-to-short v3, v3

    .line 175
    .local v3, "numBytes":S
    const/4 v5, 0x0

    .line 176
    .local v5, "j":S
    :goto_1
    if-lez v3, :cond_7

    .line 178
    add-int/lit8 v6, v0, 0x1

    int-to-short v0, v6

    .line 179
    aget-byte v6, p0, v0

    int-to-short v5, v6

    .line 180
    aget-short v6, p2, v4

    if-gez v5, :cond_5

    add-int/lit16 v7, v5, 0x100

    int-to-short v5, v7

    :cond_5
    add-int/2addr v6, v5

    int-to-short v6, v6

    aput-short v6, p2, v4

    .line 181
    if-le v3, v4, :cond_6

    .line 182
    aget-short v6, p2, v4

    mul-int/lit16 v6, v6, 0x100

    int-to-short v6, v6

    aput-short v6, p2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_6
    add-int/lit8 v6, v3, -0x1

    int-to-short v3, v6

    goto :goto_1

    .line 186
    .end local v3    # "numBytes":S
    .end local v5    # "j":S
    :cond_7
    :goto_2
    add-int/lit8 v3, v0, 0x1

    int-to-short v0, v3

    .line 191
    goto :goto_3

    .line 188
    .end local v1    # "offsetOfT":S
    .end local v2    # "lengthOfT":S
    :catch_0
    move-exception v1

    .line 193
    :goto_3
    sub-int v1, v0, p1

    int-to-short v1, v1

    return v1
.end method
