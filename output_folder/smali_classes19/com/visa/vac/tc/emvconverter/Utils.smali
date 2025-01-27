.class public Lcom/visa/vac/tc/emvconverter/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static $$a:I

.field private static getInstance:Ljava/lang/String;

.field private static getTerminalData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static BuildConfig(Ljava/lang/String;)[B
    .locals 7

    .line 65
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 59
    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    if-eqz p0, :cond_1

    goto :goto_1

    :pswitch_0
    :try_start_0
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :catchall_0
    move-exception p0

    throw p0

    .line 59
    :goto_1
    move v0, v3

    goto :goto_2

    :cond_1
    move v0, v4

    :goto_2
    packed-switch v0, :pswitch_data_1

    :goto_3
    goto :goto_6

    :pswitch_1
    if-eqz p0, :cond_2

    const/16 v0, 0x31

    goto :goto_4

    :cond_2
    const/16 v0, 0x20

    :goto_4
    const/16 v6, 0xa

    packed-switch v0, :pswitch_data_2

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v6, :cond_4

    goto :goto_5

    :cond_4
    move v3, v4

    :goto_5
    packed-switch v3, :pswitch_data_3

    goto :goto_3

    .line 62
    :pswitch_2
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 64
    invoke-static {p0, v0, v4}, Lcom/visa/vac/tc/emvconverter/Utils;->ContactlessConfiguration(Ljava/lang/String;[BS)S

    .line 65
    return-object v0

    .line 60
    :goto_6
    nop

    .line 65
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method static ContactlessConfiguration(Ljava/lang/String;[BS)S
    .locals 7

    .line 108
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 91
    :cond_0
    nop

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    .line 94
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    .line 108
    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    move v4, v2

    .line 95
    :goto_1
    rsub-int/lit8 v5, v0, 0x3

    if-ge v4, v5, :cond_3

    .line 108
    sget v5, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v5, v5, 0x5d

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 96
    :cond_2
    add-int/lit8 v5, p2, 0x1

    int-to-short v5, v5

    aput-byte v2, p1, p2

    .line 95
    add-int/lit8 v4, v4, 0x1

    .line 108
    move p2, v5

    goto :goto_1

    .line 99
    :cond_3
    :pswitch_0
    nop

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 108
    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 101
    add-int/lit8 v0, p2, 0x1

    int-to-short v0, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    move p2, v0

    move v0, v3

    goto :goto_3

    .line 108
    :pswitch_1
    move v0, v2

    .line 104
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 108
    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    packed-switch v1, :pswitch_data_2

    .line 105
    add-int/lit8 v1, p2, 0x1

    int-to-short v1, v1

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    move p2, v1

    move v0, v5

    goto :goto_3

    .line 108
    :pswitch_2
    return p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method static ContactlessConfiguration(Ljava/lang/String;)V
    .locals 2

    .line 19
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    sput-object p0, Lcom/visa/vac/tc/emvconverter/Utils;->getInstance:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public static arrayCompare([BI[BI)Z
    .locals 4

    .line 177
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v1, v0, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 161
    :cond_0
    const/4 v1, 0x1

    if-nez p0, :cond_1

    .line 162
    return v1

    .line 166
    :cond_1
    const/4 v2, 0x0

    if-nez p2, :cond_3

    .line 167
    nop

    .line 177
    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/16 p0, 0x22

    goto :goto_0

    :cond_2
    const/16 p0, 0x40

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v2

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    .line 170
    :cond_3
    nop

    .line 171
    nop

    :goto_2
    array-length v0, p0

    if-ge p1, v0, :cond_4

    .line 177
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    packed-switch v0, :pswitch_data_1

    return v1

    :pswitch_1
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    .line 172
    :cond_5
    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    aget-byte v3, p0, p1

    if-eq p3, v3, :cond_6

    .line 173
    return v2

    .line 171
    :cond_6
    add-int/lit8 p1, p1, 0x1

    move p3, v0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static arrayCompare([BI[BII)Z
    .locals 5

    .line 202
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 186
    :cond_0
    const/4 v0, 0x1

    if-nez p0, :cond_1

    .line 187
    nop

    .line 202
    return v0

    .line 191
    :cond_1
    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 202
    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 192
    return v1

    .line 195
    :pswitch_0
    nop

    .line 196
    move v2, p1

    :goto_1
    add-int v3, p1, p4

    if-ge v2, v3, :cond_4

    .line 197
    add-int/lit8 v3, p3, 0x1

    aget-byte p3, p2, p3

    aget-byte v4, p0, v2

    if-eq p3, v4, :cond_3

    .line 202
    move p3, v1

    goto :goto_2

    :cond_3
    move p3, v0

    :goto_2
    packed-switch p3, :pswitch_data_1

    sget p0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_3

    .line 196
    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    .line 202
    move p3, v3

    goto :goto_1

    .line 198
    :goto_3
    return v1

    .line 202
    :cond_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static arrayCopy([BS[BSS)S
    .locals 3

    .line 404
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 401
    :cond_0
    const/4 v0, 0x0

    .line 404
    :goto_0
    nop

    .line 401
    if-ge v0, p4, :cond_1

    .line 404
    const/16 v1, 0x15

    goto :goto_1

    :cond_1
    const/16 v1, 0x1d

    :goto_1
    packed-switch v1, :pswitch_data_0

    add-int/2addr p1, p4

    int-to-short p0, p1

    goto :goto_2

    .line 402
    :pswitch_0
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :goto_2
    sget p1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/16 p1, 0x57

    goto :goto_3

    :cond_2
    const/16 p1, 0x4d

    :goto_3
    packed-switch p1, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    return p0

    :goto_4
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4d
        :pswitch_1
    .end packed-switch
.end method

.method public static asciiToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 266
    nop

    .line 259
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    const/16 v3, 0x30

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 266
    sget v3, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v3, v3, 0x63

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    goto :goto_2

    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 263
    :goto_2
    aget-char v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    add-int/lit8 v2, v2, 0x36

    goto :goto_3

    .line 263
    :cond_1
    aget-char v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    add-int/lit8 v2, v2, 0x1

    .line 266
    :goto_3
    sget v3, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v3, v3, 0x19

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 262
    const/16 v3, 0x1e

    goto :goto_4

    :cond_2
    const/16 v3, 0x54

    :goto_4
    packed-switch v3, :pswitch_data_1

    .line 266
    :pswitch_1
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_1
    .end packed-switch
.end method

.method public static byteHexString(I)Ljava/lang/String;
    .locals 4

    .line 226
    nop

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    const v1, 0xffff

    and-int/2addr p0, v1

    .line 212
    const v1, 0xff00

    and-int v2, p0, v1

    if-ne v2, v1, :cond_1

    .line 213
    and-int/lit16 p0, p0, 0xff

    .line 226
    sget v1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 217
    const/16 v1, 0x39

    goto :goto_0

    :cond_0
    const/16 v1, 0x3a

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 226
    :pswitch_0
    nop

    .line 216
    :cond_1
    const/16 v1, 0x10

    if-ge p0, v1, :cond_2

    .line 217
    const/16 v2, 0x5d

    goto :goto_1

    :cond_2
    const/16 v2, 0x3b

    :goto_1
    const-string v3, "0"

    packed-switch v2, :pswitch_data_1

    .line 226
    sget v1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    goto :goto_2

    .line 218
    :pswitch_1
    const/16 v2, 0x100

    if-le p0, v2, :cond_3

    if-ge p0, v1, :cond_3

    .line 219
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 220
    :cond_3
    const/16 v1, 0xff

    if-le p0, v1, :cond_4

    const/16 v1, 0x1000

    if-ge p0, v1, :cond_4

    .line 221
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    goto :goto_3

    .line 217
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_4
    :goto_3
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 217
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_1
    .end packed-switch
.end method

.method public static compareArray([BI[BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 481
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v1, v0, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 470
    :cond_0
    if-eqz p0, :cond_13

    .line 481
    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 470
    if-eqz p2, :cond_13

    .line 471
    add-int v0, p1, p4

    array-length v2, p0

    if-gt v0, v2, :cond_11

    .line 472
    add-int v0, p3, p4

    array-length v2, p2

    if-gt v0, v2, :cond_10

    .line 474
    nop

    .line 475
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p4, :cond_1

    .line 481
    const/16 v3, 0x2f

    goto :goto_1

    :cond_1
    const/16 v3, 0x5c

    :goto_1
    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_14

    .line 476
    :pswitch_0
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    add-int v5, p3, v2

    aget-byte v5, p2, v5

    if-eq v3, v5, :cond_2

    .line 481
    move v6, v0

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    packed-switch v6, :pswitch_data_1

    :goto_3
    goto/16 :goto_13

    .line 477
    :pswitch_1
    if-ge v3, v5, :cond_3

    .line 481
    move v6, v4

    goto :goto_4

    :cond_3
    move v6, v0

    :goto_4
    packed-switch v6, :pswitch_data_2

    .line 477
    move v6, v0

    goto :goto_5

    :pswitch_2
    move v6, v4

    :goto_5
    if-gez v3, :cond_4

    move v7, v4

    goto :goto_6

    :cond_4
    move v7, v0

    :goto_6
    if-gez v5, :cond_5

    .line 481
    move v8, v0

    goto :goto_7

    :cond_5
    move v8, v4

    :goto_7
    packed-switch v8, :pswitch_data_3

    .line 477
    move v8, v0

    goto :goto_8

    :pswitch_3
    move v8, v4

    :goto_8
    if-eq v7, v8, :cond_6

    .line 481
    move v7, v4

    goto :goto_9

    .line 477
    :cond_6
    move v7, v0

    :goto_9
    xor-int/2addr v6, v7

    if-eqz v6, :cond_7

    .line 481
    move v6, v4

    goto :goto_a

    :cond_7
    move v6, v0

    :goto_a
    packed-switch v6, :pswitch_data_4

    sget p0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 p0, p0, 0x17

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_f

    goto :goto_12

    .line 478
    :pswitch_4
    if-le v3, v5, :cond_9

    .line 481
    sget v6, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v6, v6, 0x29

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_8

    :cond_8
    move v6, v4

    goto :goto_b

    .line 478
    :cond_9
    move v6, v0

    :goto_b
    if-gez v3, :cond_b

    .line 481
    sget v3, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v3, v3, 0x5b

    rem-int/lit16 v7, v3, 0x80

    sput v7, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_a

    .line 478
    :cond_a
    nop

    .line 481
    move v3, v4

    goto :goto_c

    .line 478
    :cond_b
    move v3, v0

    :goto_c
    if-gez v5, :cond_c

    .line 481
    const/16 v5, 0x3f

    goto :goto_d

    :cond_c
    const/16 v5, 0x45

    :goto_d
    packed-switch v5, :pswitch_data_5

    .line 478
    move v5, v0

    goto :goto_e

    :pswitch_5
    move v5, v4

    :goto_e
    if-eq v3, v5, :cond_d

    .line 481
    move v3, v0

    goto :goto_f

    :cond_d
    move v3, v4

    :goto_f
    packed-switch v3, :pswitch_data_6

    .line 478
    move v3, v4

    goto :goto_10

    :pswitch_6
    move v3, v0

    :goto_10
    xor-int/2addr v3, v6

    if-eqz v3, :cond_e

    .line 481
    move v3, v0

    goto :goto_11

    :cond_e
    move v3, v4

    :goto_11
    packed-switch v3, :pswitch_data_7

    goto :goto_3

    .line 478
    :pswitch_7
    move v0, v4

    goto :goto_14

    .line 477
    :goto_12
    const/4 v0, -0x1

    goto :goto_14

    .line 481
    :cond_f
    :try_start_0
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    .line 475
    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 481
    :goto_14
    sget p0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 p0, p0, 0x2d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 p0, p0, 0x2

    return v0

    .line 472
    :cond_10
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    .line 471
    :cond_11
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    .line 481
    :cond_12
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    throw p0

    .line 470
    :cond_13
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x3f
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public static copyByteArray([BII)[B
    .locals 2

    .line 143
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 140
    new-array v0, p2, [B

    .line 142
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 140
    :pswitch_0
    new-array v0, p2, [B

    .line 142
    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static getAsciiString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 348
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/visa/vac/tc/emvconverter/Utils;->getAsciiString([BIILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/16 p1, 0x2e

    goto :goto_0

    :cond_1
    const/16 p1, 0x60

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-object p0

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_0
    .end packed-switch
.end method

.method public static getAsciiString([BIILjava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .line 376
    nop

    .line 362
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    const/16 v1, 0x7d

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    .line 351
    if-eqz p0, :cond_7

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 355
    nop

    .line 376
    const/4 v2, 0x0

    move v3, v2

    .line 355
    :goto_0
    if-ge v3, p2, :cond_6

    .line 376
    sget v4, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v4, v4, 0x71

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 351
    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 359
    shl-int v4, v3, p1

    .line 362
    aget-byte v6, p0, v4

    const/16 v7, 0x27

    if-lt v6, v7, :cond_1

    :goto_2
    goto :goto_3

    .line 359
    :pswitch_0
    add-int v4, v3, p1

    .line 362
    aget-byte v6, p0, v4

    const/16 v7, 0x20

    if-lt v6, v7, :cond_1

    goto :goto_2

    :goto_3
    aget-byte v4, p0, v4

    if-gt v4, v1, :cond_1

    .line 363
    add-int v4, v3, p1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    .line 364
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 376
    :goto_4
    :pswitch_1
    goto :goto_7

    .line 366
    :cond_1
    add-int v4, v3, p1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 367
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_2

    .line 351
    move v6, v5

    goto :goto_5

    :cond_2
    move v6, v2

    :goto_5
    packed-switch v6, :pswitch_data_1

    .line 367
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "0"

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 376
    sget v6, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v6, v6, 0x39

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    .line 351
    move v5, v2

    goto :goto_6

    :cond_3
    nop

    :goto_6
    packed-switch v5, :pswitch_data_2

    .line 376
    goto :goto_4

    .line 369
    :goto_7
    :pswitch_2
    if-eqz p4, :cond_5

    .line 376
    sget v5, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v5, v5, 0x45

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_4

    .line 370
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 372
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 374
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 376
    :cond_7
    const-string p0, ""

    return-object p0

    .line 351
    :cond_8
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static getHexString([B)Ljava/lang/String;
    .locals 3

    .line 255
    nop

    .line 251
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 255
    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 252
    array-length v1, p0

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/visa/vac/tc/emvconverter/Utils;->getHexString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 255
    :pswitch_0
    const/4 p0, 0x0

    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :goto_1
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getHexString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 294
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v1, v0, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 285
    const/16 v1, 0x2b

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 277
    goto :goto_2

    :pswitch_0
    if-eqz p0, :cond_5

    :goto_1
    goto :goto_3

    :goto_2
    const/16 v1, 0x11

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_5

    goto :goto_1

    .line 278
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 279
    nop

    .line 294
    move v1, v2

    .line 279
    :goto_4
    if-ge v1, p2, :cond_4

    .line 277
    sget v3, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v3, v3, 0x41

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 284
    sub-int v3, v1, p1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0x4ff9

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_5

    :cond_1
    move v4, v2

    :goto_5
    packed-switch v4, :pswitch_data_1

    goto :goto_6

    .line 284
    :cond_2
    add-int v3, v1, p1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 286
    :pswitch_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 289
    :cond_3
    :goto_6
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 292
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 294
    :cond_5
    nop

    .line 285
    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 294
    const-string p0, ""

    return-object p0

    .line 285
    :cond_6
    const/4 p0, 0x0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    .line 294
    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static getInstance(Ljava/lang/String;)[B
    .locals 4

    .line 247
    nop

    .line 233
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 247
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 234
    const/4 p0, 0x0

    return-object p0

    .line 237
    :pswitch_0
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array p0, p0, [B

    .line 240
    nop

    .line 247
    nop

    .line 242
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 247
    sget v2, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v2, v2, 0x4f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 243
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 244
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 247
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/16 v0, 0x52

    goto :goto_2

    :cond_2
    const/16 v0, 0x60

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 242
    :pswitch_1
    move v0, v3

    goto :goto_1

    .line 247
    :cond_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_1
    .end packed-switch
.end method

.method public static getQualifier(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 23
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {v3, p0, v2, v2}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object p0

    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    goto :goto_1

    :cond_1
    const/16 v0, 0x42

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object p0

    :goto_2
    const/16 v0, 0x26

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_1
    .end packed-switch
.end method

.method public static getString([B)Ljava/lang/String;
    .locals 3

    .line 387
    nop

    .line 385
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 384
    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x4c

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    if-eqz p0, :cond_2

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :catchall_0
    move-exception p0

    throw p0

    .line 387
    :goto_1
    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 384
    const/4 v1, 0x3

    goto :goto_2

    :cond_1
    const/16 v1, 0x5a

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 385
    const/4 v1, 0x0

    goto :goto_3

    :pswitch_1
    const/4 v1, 0x1

    :goto_3
    array-length v2, p0

    invoke-static {p0, v1, v2, v0}, Lcom/visa/vac/tc/emvconverter/Utils;->getHexString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 387
    return-object p0

    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method static getTerminalData(B)Ljava/lang/String;
    .locals 2

    .line 309
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 305
    :cond_0
    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 306
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 309
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    goto :goto_2

    .line 307
    :pswitch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 309
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/16 v0, 0x61

    goto :goto_1

    :cond_2
    const/16 v0, 0x1c

    goto :goto_1

    :goto_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static getTerminalData(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 79
    nop

    .line 69
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-eqz p0, :cond_0

    .line 79
    const/16 v1, 0x45

    goto :goto_0

    :cond_0
    const/16 v1, 0x53

    :goto_0
    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x2

    packed-switch v1, :pswitch_data_0

    sget v1, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/2addr v1, v4

    if-eqz v1, :cond_1

    .line 69
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 79
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto/16 :goto_3

    .line 75
    :pswitch_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 76
    const/16 v5, 0x32

    const/4 v6, 0x4

    const-string v7, "-"

    if-ge v1, v5, :cond_3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "20"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 79
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "19"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget v1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/2addr v1, v4

    if-nez v1, :cond_4

    const/16 v1, 0x21

    goto :goto_2

    :cond_4
    const/16 v1, 0x28

    :goto_2
    packed-switch v1, :pswitch_data_2

    return-object p0

    :pswitch_1
    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    .line 70
    :cond_5
    :goto_3
    nop

    .line 79
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x53
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x21
        :pswitch_1
    .end packed-switch
.end method

.method static getTerminalData([B)Ljava/lang/String;
    .locals 7

    .line 417
    nop

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    array-length v1, p0

    sget v2, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v2, v2, 0x59

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 417
    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 413
    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 417
    sget v5, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v5, v5, 0x4b

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    goto :goto_2

    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 413
    :goto_2
    move v5, v4

    goto :goto_3

    :cond_2
    move v5, v2

    :goto_3
    const-string v6, "%02X"

    packed-switch v5, :pswitch_data_1

    aget-byte v5, p0, v3

    .line 414
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 417
    :pswitch_1
    aget-byte v4, p0, v3

    .line 414
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    add-int/lit8 v3, v3, 0x78

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static hexToByteArray(Ljava/lang/Object;)[B
    .locals 3

    .line 427
    nop

    .line 421
    const/16 v0, 0x3f

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 423
    sget p0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/2addr p0, v0

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    .line 421
    return-object v1

    .line 423
    :cond_0
    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    .line 422
    :cond_1
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 423
    const/16 v2, 0x37

    goto :goto_0

    :cond_2
    const/16 v2, 0x3d

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 427
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    goto :goto_3

    .line 424
    :pswitch_0
    instance-of v2, p0, [B

    if-eqz v2, :cond_3

    .line 423
    goto :goto_1

    :cond_3
    const/16 v0, 0x19

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 425
    check-cast p0, [B

    goto :goto_2

    .line 427
    :pswitch_1
    nop

    .line 423
    sget p0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 p0, p0, 0x2

    .line 427
    return-object v1

    :goto_2
    return-object p0

    .line 423
    :goto_3
    const/16 v0, 0x56

    goto :goto_4

    :cond_4
    const/16 v0, 0x1a

    :goto_4
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/Utils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    packed-switch v0, :pswitch_data_2

    return-object p0

    :pswitch_2
    const/16 v0, 0x2c

    :try_start_1
    div-int/lit8 v0, v0, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    .line 427
    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x56
        :pswitch_2
    .end packed-switch
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .locals 9

    .line 448
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 435
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 436
    mul-int/lit8 v3, v0, 0x3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 435
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 436
    rem-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_2

    .line 438
    :pswitch_0
    const-string v0, "0"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 439
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 441
    :cond_2
    :goto_1
    div-int/lit8 v3, v0, 0x2

    new-array v3, v3, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_3

    .line 436
    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    packed-switch v5, :pswitch_data_1

    sget v5, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v5, v5, 0x63

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_4

    goto :goto_4

    .line 446
    :pswitch_1
    return-object v3

    .line 443
    :cond_4
    :goto_4
    :try_start_1
    div-int/lit8 v5, v4, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v8, v4, 0x1

    .line 444
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 443
    invoke-static {v8, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 442
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 447
    :catch_0
    move-exception p0

    .line 448
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static setDataOrQualifier(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 27
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, v3, v2, v1}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :pswitch_0
    invoke-static {p0, v3, v1, v2}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static setDataOrQualifier(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;
    .locals 1

    .line 55
    nop

    .line 36
    if-nez p0, :cond_9

    .line 55
    sget p0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 p0, p0, 0x43

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    .line 37
    :cond_0
    const/4 p0, 0x0

    if-eqz p1, :cond_2

    sget-object v0, Lcom/visa/vac/tc/emvconverter/Utils;->getInstance:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 55
    const/16 p1, 0x34

    goto :goto_0

    :cond_1
    const/16 p1, 0x3f

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 39
    move p2, p0

    .line 42
    :cond_2
    :pswitch_0
    const/4 p1, 0x1

    if-eqz p2, :cond_6

    .line 55
    sget p2, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 p2, p2, 0x2b

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_3

    .line 43
    :cond_3
    const-string p2, "Unavailable"

    invoke-static {p2}, Lcom/visa/vac/tc/emvconverter/model/JsonQualifier;->getQualifier(Ljava/lang/String;)Lcom/visa/vac/tc/emvconverter/model/JsonQualifier$qualifier;

    move-result-object v0

    .line 44
    if-eqz p3, :cond_4

    .line 55
    move p0, p1

    goto :goto_1

    :cond_4
    nop

    :goto_1
    packed-switch p0, :pswitch_data_1

    sget p0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 p0, p0, 0x6f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_5

    .line 44
    nop

    .line 55
    return-object p2

    :cond_5
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    .line 46
    :cond_6
    const-string p2, "NotYetAvailable"

    invoke-static {p2}, Lcom/visa/vac/tc/emvconverter/model/JsonQualifier;->getQualifier(Ljava/lang/String;)Lcom/visa/vac/tc/emvconverter/model/JsonQualifier$qualifier;

    move-result-object v0

    .line 47
    if-eqz p3, :cond_7

    .line 55
    move p3, p1

    goto :goto_2

    :cond_7
    move p3, p0

    :goto_2
    packed-switch p3, :pswitch_data_2

    :pswitch_1
    goto :goto_3

    :pswitch_2
    sget p3, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/2addr p3, p1

    rem-int/lit16 p1, p3, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    const/16 p1, 0x4e

    :try_start_1
    div-int/2addr p1, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p2

    :catchall_1
    move-exception p0

    throw p0

    .line 47
    :cond_8
    return-object p2

    .line 49
    :goto_3
    nop

    .line 55
    return-object v0

    .line 50
    :cond_9
    instance-of p1, p0, [B

    if-eqz p1, :cond_a

    .line 51
    check-cast p0, [B

    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData([B)Ljava/lang/String;

    move-result-object p0

    .line 55
    :cond_a
    return-object p0

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public static setDataOrQualifier(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3

    .line 31
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object p0

    sget p1, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    packed-switch v1, :pswitch_data_0

    return-object p0

    :pswitch_0
    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static shortToString(S)Ljava/lang/String;
    .locals 4

    .line 314
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 313
    :cond_0
    new-array v0, v1, [B

    const/4 v2, 0x0

    shr-int/lit8 v3, p0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    .line 314
    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/Utils;->getHexString([B)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/2addr v0, v1

    return-object p0
.end method

.method public static stringFormatToInteger(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 490
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v2, ""

    const-string v3, "![0-9]"

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x61

    goto :goto_1

    :cond_1
    const/16 v0, 0x4c

    :goto_1
    packed-switch v0, :pswitch_data_1

    return-object p0

    :pswitch_1
    const/16 v0, 0x4b

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    const/4 p0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_1
    .end packed-switch
.end method

.method public static toTlv(Ljava/lang/String;Ljava/lang/Object;)[B
    .locals 5

    .line 337
    nop

    .line 322
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v1, v0, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 318
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 337
    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    .line 318
    return-object v1

    .line 321
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 322
    const/16 v0, 0x18

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    :goto_0
    const/16 v3, 0x11

    packed-switch v0, :pswitch_data_0

    .line 337
    add-int/2addr v2, v3

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    goto :goto_1

    .line 324
    :pswitch_0
    check-cast p1, [B

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/Utils;->getHexString([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 322
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 328
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "0"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 329
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 332
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v2, :cond_4

    .line 322
    goto :goto_3

    :cond_4
    const/16 v3, 0x1d

    :goto_3
    packed-switch v3, :pswitch_data_1

    goto :goto_4

    .line 334
    :pswitch_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    nop

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/Utils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    .line 322
    sget p1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 p1, p1, 0x2

    .line 337
    return-object p0

    .line 322
    :cond_5
    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_1
    .end packed-switch
.end method

.method public static trimByteArray([BII)[B
    .locals 5

    .line 153
    nop

    .line 151
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 147
    :cond_0
    add-int v0, p1, p2

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v0, v2, :cond_1

    .line 151
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 153
    const/4 p0, 0x0

    goto :goto_4

    :pswitch_0
    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 151
    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 148
    new-array v0, p2, [B

    .line 150
    invoke-static {p0, p1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    :goto_2
    goto :goto_3

    .line 148
    :pswitch_1
    new-array v0, p2, [B

    .line 150
    invoke-static {p0, p1, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 153
    :goto_3
    return-object v0

    :goto_4
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static trimLeadingZero(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 301
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    if-eqz p0, :cond_1

    const/16 v0, 0xe

    goto :goto_1

    :cond_1
    const/16 v0, 0x54

    :goto_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    goto :goto_3

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 301
    :cond_2
    const-string v0, "^0+(?!$)"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 299
    :goto_3
    nop

    .line 298
    sget v0, Lcom/visa/vac/tc/emvconverter/Utils;->$$a:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    .line 301
    return-object p0

    .line 298
    :goto_4
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_1
    .end packed-switch
.end method
