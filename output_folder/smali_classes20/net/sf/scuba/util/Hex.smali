.class public final Lnet/sf/scuba/util/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final HEXCHARS:Ljava/lang/String; = "0123456789abcdefABCDEF"

.field private static final LEFT:Z = true

.field private static final PRINTABLE:Ljava/lang/String; = " .,:;\'`\"<>()[]{}?/\\!@#$%^&*_-=+|~0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static final RIGHT:Z = false


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static byteToHexString(B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # B

    .line 60
    and-int/lit16 v0, p0, 0xff

    .line 61
    .local v0, "n":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static bytesToASCIIString([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .local v0, "result":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    .line 411
    .local v3, "element":B
    int-to-char v4, v3

    .line 412
    .local v4, "c":C
    const-string v5, " .,:;\'`\"<>()[]{}?/\\!@#$%^&*_-=+|~0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    const/16 v5, 0x2e

    :goto_1
    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .end local v3    # "element":B
    .end local v4    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static bytesToASCIIStrings([BI)[Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "columns"    # I

    .line 428
    invoke-static {p0, p1}, Lnet/sf/scuba/util/Hex;->split([BI)[[B

    move-result-object v0

    .line 429
    .local v0, "src":[[B
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 430
    .local v1, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 431
    aget-object v3, v0, v2

    invoke-static {v3}, Lnet/sf/scuba/util/Hex;->bytesToASCIIString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 433
    .end local v2    # "j":I
    :cond_0
    return-object v1
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # [B

    .line 120
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Lnet/sf/scuba/util/Hex;->bytesToHexString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHexString([BI)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # [B
    .param p1, "numRow"    # I

    .line 124
    if-nez p0, :cond_0

    .line 125
    const-string v0, "NULL"

    return-object v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHexString([BII)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 181
    const/16 v0, 0x3e8

    invoke-static {p0, p1, p2, v0}, Lnet/sf/scuba/util/Hex;->bytesToHexString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHexString([BIII)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "numRow"    # I

    .line 167
    if-nez p0, :cond_0

    .line 168
    const-string v0, "NULL"

    return-object v0

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 172
    if-eqz v1, :cond_1

    rem-int v2, v1, p3

    if-nez v2, :cond_1

    .line 173
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_1
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    invoke-static {v2}, Lnet/sf/scuba/util/Hex;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static bytesToPrettyString([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .line 473
    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lnet/sf/scuba/util/Hex;->bytesToPrettyString([BIZILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToPrettyString([BIZILjava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .param p1, "columns"    # I
    .param p2, "useIndex"    # Z
    .param p3, "indexPadWidth"    # I
    .param p4, "altIndex"    # Ljava/lang/String;
    .param p5, "useASCII"    # Z

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .local v0, "result":Ljava/lang/StringBuilder;
    mul-int/lit8 v1, p1, 0x3

    invoke-static {p0, p1, v1}, Lnet/sf/scuba/util/Hex;->bytesToSpacedHexStrings([BII)[Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, "hexStrings":[Ljava/lang/String;
    invoke-static {p0, p1}, Lnet/sf/scuba/util/Hex;->bytesToASCIIStrings([BI)[Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "asciiStrings":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 501
    const-string v4, " "

    const/4 v5, 0x1

    if-eqz p2, :cond_0

    .line 502
    mul-int v6, v3, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 503
    .local v6, "prefix":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x30

    invoke-static {v6, p3, v8, v5}, Lnet/sf/scuba/util/Hex;->pad(Ljava/lang/String;ICZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .end local v6    # "prefix":Ljava/lang/String;
    goto :goto_2

    .line 505
    :cond_0
    if-nez v3, :cond_1

    move-object v6, p4

    goto :goto_1

    :cond_1
    const-string v6, ""

    .line 506
    .restart local v6    # "prefix":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x20

    invoke-static {v6, p3, v8, v5}, Lnet/sf/scuba/util/Hex;->pad(Ljava/lang/String;ICZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .end local v6    # "prefix":Ljava/lang/String;
    :goto_2
    aget-object v5, v1, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    if-eqz p5, :cond_2

    .line 510
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :cond_2
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 514
    .end local v3    # "j":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static bytesToSpacedHexString([B)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 380
    aget-byte v2, p0, v1

    invoke-static {v2}, Lnet/sf/scuba/util/Hex;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, " "

    goto :goto_1

    :cond_0
    const-string v2, ""

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static bytesToSpacedHexStrings([BII)[Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "columns"    # I
    .param p2, "padWidth"    # I

    .line 400
    invoke-static {p0, p1}, Lnet/sf/scuba/util/Hex;->split([BI)[[B

    move-result-object v0

    .line 401
    .local v0, "src":[[B
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 402
    .local v1, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 403
    aget-object v3, v0, v2

    invoke-static {v3}, Lnet/sf/scuba/util/Hex;->bytesToSpacedHexString([B)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-static {v3, p2, v4, v5}, Lnet/sf/scuba/util/Hex;->pad(Ljava/lang/String;ICZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 405
    .end local v2    # "j":I
    :cond_0
    return-object v1
.end method

.method static hexDigitToInt(C)I
    .locals 1
    .param p0, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 293
    sparse-switch p0, :sswitch_data_0

    .line 333
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 331
    :sswitch_0
    const/16 v0, 0xf

    return v0

    .line 328
    :sswitch_1
    const/16 v0, 0xe

    return v0

    .line 325
    :sswitch_2
    const/16 v0, 0xd

    return v0

    .line 322
    :sswitch_3
    const/16 v0, 0xc

    return v0

    .line 319
    :sswitch_4
    const/16 v0, 0xb

    return v0

    .line 316
    :sswitch_5
    const/16 v0, 0xa

    return v0

    .line 313
    :sswitch_6
    const/16 v0, 0x9

    return v0

    .line 311
    :sswitch_7
    const/16 v0, 0x8

    return v0

    .line 309
    :sswitch_8
    const/4 v0, 0x7

    return v0

    .line 307
    :sswitch_9
    const/4 v0, 0x6

    return v0

    .line 305
    :sswitch_a
    const/4 v0, 0x5

    return v0

    .line 303
    :sswitch_b
    const/4 v0, 0x4

    return v0

    .line 301
    :sswitch_c
    const/4 v0, 0x3

    return v0

    .line 299
    :sswitch_d
    const/4 v0, 0x2

    return v0

    .line 297
    :sswitch_e
    const/4 v0, 0x1

    return v0

    .line 295
    :sswitch_f
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_f
        0x31 -> :sswitch_e
        0x32 -> :sswitch_d
        0x33 -> :sswitch_c
        0x34 -> :sswitch_b
        0x35 -> :sswitch_a
        0x36 -> :sswitch_9
        0x37 -> :sswitch_8
        0x38 -> :sswitch_7
        0x39 -> :sswitch_6
        0x41 -> :sswitch_5
        0x42 -> :sswitch_4
        0x43 -> :sswitch_3
        0x44 -> :sswitch_2
        0x45 -> :sswitch_1
        0x46 -> :sswitch_0
        0x61 -> :sswitch_5
        0x62 -> :sswitch_4
        0x63 -> :sswitch_3
        0x64 -> :sswitch_2
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method public static hexStringToByte(Ljava/lang/String;)B
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 196
    invoke-static {p0}, Lnet/sf/scuba/util/Hex;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 197
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 200
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    return v1

    .line 198
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 257
    if-nez p0, :cond_0

    .line 258
    const/4 v0, 0x0

    return-object v0

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v0, "hexText":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 262
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 263
    .local v2, "c":C
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    goto :goto_1

    .line 265
    :cond_1
    const-string v3, "0123456789abcdefABCDEF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    .end local v2    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    .restart local v2    # "c":C
    :cond_2
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3}, Ljava/lang/NumberFormatException;-><init>()V

    throw v3

    .line 271
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 272
    const/4 v1, 0x0

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 275
    .local v1, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 276
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lnet/sf/scuba/util/Hex;->hexDigitToInt(C)I

    move-result v3

    .line 277
    .local v3, "hi":I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lnet/sf/scuba/util/Hex;->hexDigitToInt(C)I

    move-result v4

    .line 278
    .local v4, "lo":I
    div-int/lit8 v5, v2, 0x2

    and-int/lit16 v6, v3, 0xff

    shl-int/lit8 v6, v6, 0x4

    and-int/lit16 v7, v4, 0xff

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 275
    .end local v3    # "hi":I
    .end local v4    # "lo":I
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 280
    .end local v2    # "i":I
    :cond_5
    return-object v1
.end method

.method public static hexStringToInt(Ljava/lang/String;)I
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 233
    invoke-static {p0}, Lnet/sf/scuba/util/Hex;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 234
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 237
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1

    .line 235
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method public static hexStringToShort(Ljava/lang/String;)S
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 214
    invoke-static {p0}, Lnet/sf/scuba/util/Hex;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 215
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 218
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1

    .line 216
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method public static intToHexString(I)Ljava/lang/String;
    .locals 4
    .param p0, "n"    # I

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    const-string v2, ""

    const/high16 v3, 0x10000000

    if-ge p0, v3, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 97
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v3, 0x1000000

    if-ge p0, v3, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 98
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v3, 0x100000

    if-ge p0, v3, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    move-object v3, v2

    .line 99
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v3, 0x10000

    if-ge p0, v3, :cond_3

    move-object v3, v1

    goto :goto_3

    :cond_3
    move-object v3, v2

    .line 100
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x1000

    if-ge p0, v3, :cond_4

    move-object v3, v1

    goto :goto_4

    :cond_4
    move-object v3, v2

    .line 101
    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x100

    if-ge p0, v3, :cond_5

    move-object v3, v1

    goto :goto_5

    :cond_5
    move-object v3, v2

    .line 102
    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x10

    if-ge p0, v3, :cond_6

    goto :goto_6

    :cond_6
    move-object v1, v2

    .line 103
    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 96
    return-object v0
.end method

.method private static pad(Ljava/lang/String;ICZ)Ljava/lang/String;
    .locals 5
    .param p0, "txt"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "padChar"    # C
    .param p3, "left"    # Z

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 355
    .local v1, "txtLength":I
    if-lt v1, p1, :cond_0

    .line 356
    return-object p0

    .line 358
    :cond_0
    sub-int v2, p1, v1

    .line 359
    .local v2, "padLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 360
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 362
    .end local v3    # "i":I
    :cond_1
    if-eqz p3, :cond_2

    .line 363
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 365
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static shortToHexString(S)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # S

    .line 75
    const v0, 0xffff

    and-int/2addr v0, p0

    .line 76
    .local v0, "n":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    const-string v3, ""

    const/16 v4, 0x1000

    if-ge v0, v4, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x100

    if-ge v0, v4, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x10

    if-ge v0, v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_3

    .line 81
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 83
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static split([BI)[[B
    .locals 7
    .param p0, "src"    # [B
    .param p1, "width"    # I

    .line 447
    array-length v0, p0

    div-int/2addr v0, p1

    .line 448
    .local v0, "rows":I
    array-length v1, p0

    rem-int/2addr v1, p1

    .line 449
    .local v1, "rest":I
    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v3, v0

    new-array v3, v3, [[B

    .line 450
    .local v3, "dest":[[B
    const/4 v4, 0x0

    .line 451
    .local v4, "k":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 452
    new-array v6, p1, [B

    aput-object v6, v3, v5

    .line 453
    aget-object v6, v3, v5

    invoke-static {p0, v4, v6, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    add-int/2addr v4, p1

    .line 451
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 456
    .end local v5    # "j":I
    :cond_1
    if-lez v1, :cond_2

    .line 457
    new-array v5, v1, [B

    aput-object v5, v3, v0

    .line 458
    aget-object v5, v3, v0

    invoke-static {p0, v4, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    :cond_2
    return-object v3
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # [B

    .line 142
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-static {p0, v1, v0, v2}, Lnet/sf/scuba/util/Hex;->bytesToHexString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([BI)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # [B
    .param p1, "numRow"    # I

    .line 147
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
