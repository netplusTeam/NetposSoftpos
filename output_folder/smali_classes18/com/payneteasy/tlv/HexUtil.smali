.class public Lcom/payneteasy/tlv/HexUtil;
.super Ljava/lang/Object;
.source "HexUtil.java"


# static fields
.field static final BYTES:[B

.field private static final CHARS_TABLES:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 5
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/payneteasy/tlv/HexUtil;->CHARS_TABLES:[C

    .line 6
    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lcom/payneteasy/tlv/HexUtil;->BYTES:[B

    .line 9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 10
    sget-object v1, Lcom/payneteasy/tlv/HexUtil;->BYTES:[B

    add-int/lit8 v2, v0, 0x30

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 11
    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 12
    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseHex(Ljava/lang/String;)[B
    .locals 7
    .param p0, "aHexString"    # Ljava/lang/String;

    .line 29
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 30
    .local v0, "src":[C
    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 32
    .local v1, "dst":[B
    const/4 v2, 0x0

    .local v2, "si":I
    const/4 v3, 0x0

    .local v3, "di":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 33
    sget-object v4, Lcom/payneteasy/tlv/HexUtil;->BYTES:[B

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "si":I
    .local v5, "si":I
    aget-char v2, v0, v2

    and-int/lit8 v2, v2, 0x7f

    aget-byte v2, v4, v2

    .line 34
    .local v2, "high":B
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "si":I
    .local v6, "si":I
    aget-char v5, v0, v5

    and-int/lit8 v5, v5, 0x7f

    aget-byte v4, v4, v5

    .line 35
    .local v4, "low":B
    shl-int/lit8 v5, v2, 0x4

    add-int/2addr v5, v4

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 32
    .end local v2    # "high":B
    .end local v4    # "low":B
    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_0

    .line 38
    .end local v3    # "di":I
    .end local v6    # "si":I
    :cond_0
    return-object v1
.end method

.method public static toFormattedHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "aBytes"    # [B

    .line 21
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/payneteasy/tlv/HexUtil;->toFormattedHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toFormattedHexString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "aBytes"    # [B
    .param p1, "aOffset"    # I
    .param p2, "aLength"    # I

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "] :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move v1, p1

    .local v1, "si":I
    const/4 v2, 0x0

    .local v2, "di":I
    :goto_0
    add-int v3, p1, p2

    if-ge v1, v3, :cond_1

    .line 47
    aget-byte v3, p0, v1

    .line 48
    .local v3, "b":B
    rem-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_0

    .line 49
    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 51
    :cond_0
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    :goto_1
    sget-object v4, Lcom/payneteasy/tlv/HexUtil;->CHARS_TABLES:[C

    and-int/lit16 v5, v3, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    and-int/lit8 v5, v3, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .end local v3    # "b":B
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "si":I
    .end local v2    # "di":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "aBytes"    # [B

    .line 17
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/payneteasy/tlv/HexUtil;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([BI)Ljava/lang/String;
    .locals 1
    .param p0, "aBytes"    # [B
    .param p1, "aLength"    # I

    .line 25
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/payneteasy/tlv/HexUtil;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 7
    .param p0, "aBytes"    # [B
    .param p1, "aOffset"    # I
    .param p2, "aLength"    # I

    .line 63
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [C

    .line 65
    .local v0, "dst":[C
    move v1, p1

    .local v1, "si":I
    const/4 v2, 0x0

    .local v2, "di":I
    :goto_0
    add-int v3, p1, p2

    if-ge v1, v3, :cond_0

    .line 66
    aget-byte v3, p0, v1

    .line 67
    .local v3, "b":B
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "di":I
    .local v4, "di":I
    sget-object v5, Lcom/payneteasy/tlv/HexUtil;->CHARS_TABLES:[C

    and-int/lit16 v6, v3, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v5, v6

    aput-char v6, v0, v2

    .line 68
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "di":I
    .restart local v2    # "di":I
    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 65
    .end local v3    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "si":I
    .end local v2    # "di":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
