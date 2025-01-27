.class public final Lcom/solab/iso8583/util/HexCodec;
.super Ljava/lang/Object;
.source "HexCodec.java"


# static fields
.field static final HEX:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/solab/iso8583/util/HexCodec;->HEX:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hexDecode(Ljava/lang/String;)[B
    .locals 9
    .param p0, "hex"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 50
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 51
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v2, 0x10

    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    return-object v1

    .line 54
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 55
    .local v0, "count":I
    const/4 v1, 0x0

    .line 56
    .local v1, "nibble":I
    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    const/4 v1, 0x1

    .line 60
    :cond_2
    div-int/lit8 v2, v0, 0x2

    new-array v2, v2, [B

    .line 61
    .local v2, "buf":[B
    const/4 v3, 0x0

    .line 62
    .local v3, "c":C
    const/4 v4, 0x0

    .line 63
    .local v4, "holder":I
    const/4 v5, 0x0

    .line 64
    .local v5, "pos":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_8

    .line 65
    const/4 v7, 0x0

    .local v7, "z":I
    :goto_1
    const/4 v8, 0x2

    if-ge v7, v8, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_7

    .line 66
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pos":I
    .local v8, "pos":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 67
    const/16 v5, 0x41

    if-lt v3, v5, :cond_3

    const/16 v5, 0x46

    if-gt v3, v5, :cond_3

    .line 68
    add-int/lit8 v5, v3, -0x37

    int-to-char v3, v5

    goto :goto_2

    .line 69
    :cond_3
    const/16 v5, 0x30

    if-lt v3, v5, :cond_4

    const/16 v5, 0x39

    if-gt v3, v5, :cond_4

    .line 70
    add-int/lit8 v5, v3, -0x30

    int-to-char v3, v5

    goto :goto_2

    .line 71
    :cond_4
    const/16 v5, 0x61

    if-lt v3, v5, :cond_5

    const/16 v5, 0x66

    if-gt v3, v5, :cond_5

    .line 72
    add-int/lit8 v5, v3, -0x57

    int-to-char v3, v5

    .line 74
    :cond_5
    :goto_2
    if-nez v1, :cond_6

    .line 75
    shl-int/lit8 v4, v3, 0x4

    goto :goto_3

    .line 77
    :cond_6
    or-int/2addr v4, v3

    .line 78
    int-to-byte v5, v4

    aput-byte v5, v2, v6

    .line 80
    :goto_3
    rsub-int/lit8 v1, v1, 0x1

    .line 65
    add-int/lit8 v7, v7, 0x1

    move v5, v8

    goto :goto_1

    .line 64
    .end local v7    # "z":I
    .end local v8    # "pos":I
    .restart local v5    # "pos":I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 83
    .end local v6    # "i":I
    :cond_8
    return-object v2

    .line 49
    .end local v0    # "count":I
    .end local v1    # "nibble":I
    .end local v2    # "buf":[B
    .end local v3    # "c":C
    .end local v4    # "holder":I
    .end local v5    # "pos":I
    :cond_9
    :goto_4
    new-array v0, v0, [B

    return-object v0
.end method

.method public static hexEncode([BII)Ljava/lang/String;
    .locals 7
    .param p0, "buffer"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 31
    array-length v0, p0

    if-nez v0, :cond_0

    .line 32
    const-string v0, ""

    return-object v0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    .local v0, "holder":I
    mul-int/lit8 v1, p2, 0x2

    new-array v1, v1, [C

    .line 36
    .local v1, "chars":[C
    const/4 v2, -0x1

    .line 37
    .local v2, "pos":I
    move v3, p1

    .local v3, "i":I
    :goto_0
    add-int v4, p1, p2

    if-ge v3, v4, :cond_1

    .line 38
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v0, v4, 0x4

    .line 39
    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v4, v2, 0x2

    sget-object v5, Lcom/solab/iso8583/util/HexCodec;->HEX:[C

    aget-char v6, v5, v0

    aput-char v6, v1, v4

    .line 40
    aget-byte v4, p0, v3

    and-int/lit8 v0, v4, 0xf

    .line 41
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-char v5, v5, v0

    aput-char v5, v1, v4

    .line 37
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method
