.class public final Lorg/jdom2/Verifier;
.super Ljava/lang/Object;
.source "Verifier.java"


# static fields
.field private static final CHARCNT:I = 0x10000

.field private static final CHARFLAGS:[B

.field private static final LENCONST:[I

.field private static final MASKURICHAR:B = 0x40t

.field private static final MASKXMLCHARACTER:B = 0x1t

.field private static final MASKXMLCOMBINING:B = 0x20t

.field private static final MASKXMLDIGIT:B = 0x10t

.field private static final MASKXMLLETTER:B = 0x2t

.field private static final MASKXMLLETTERORDIGIT:B = 0x12t

.field private static final MASKXMLNAMECHAR:B = 0x8t

.field private static final MASKXMLSTARTCHAR:B = 0x4t

.field private static final VALCONST:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 137
    const/16 v0, 0x26e

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/jdom2/Verifier;->VALCONST:[B

    .line 220
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jdom2/Verifier;->LENCONST:[I

    .line 310
    invoke-static {}, Lorg/jdom2/Verifier;->buildBitFlags()[B

    move-result-object v0

    sput-object v0, Lorg/jdom2/Verifier;->CHARFLAGS:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x41t
        0x1t
        0x41t
        0x49t
        0x41t
        0x59t
        0x41t
        0x1t
        0x41t
        0x1t
        0x41t
        0x4ft
        0x1t
        0x4dt
        0x1t
        0x4ft
        0x1t
        0x41t
        0x1t
        0x9t
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0x9t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0xft
        0x9t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0x9t
        0xft
        0x29t
        0x1t
        0x19t
        0x1t
        0x29t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x29t
        0xft
        0x29t
        0x1t
        0x29t
        0x1t
        0x19t
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0x29t
        0xft
        0x29t
        0x1t
        0x29t
        0x1t
        0xft
        0x29t
        0x1t
        0x19t
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0xft
        0x29t
        0x1t
        0x19t
        0xft
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0x19t
        0x29t
        0xft
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0x29t
        0xft
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0x19t
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0x29t
        0xft
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0x19t
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x19t
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0x19t
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0x19t
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0x19t
        0x1t
        0xft
        0x1t
        0xft
        0x29t
        0xft
        0x29t
        0x1t
        0xft
        0x9t
        0x29t
        0x1t
        0x19t
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x29t
        0xft
        0x29t
        0x1t
        0x29t
        0xft
        0x1t
        0xft
        0x1t
        0x9t
        0x1t
        0x29t
        0x1t
        0x19t
        0x1t
        0x29t
        0x1t
        0x19t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0xft
        0x1t
        0xft
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0x29t
        0x1t
        0x29t
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0x9t
        0x1t
        0xft
        0x1t
        0xft
        0x29t
        0x1t
        0x9t
        0x1t
        0xft
        0x1t
        0x29t
        0x1t
        0x9t
        0x1t
        0xft
        0x1t
        0x9t
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0xft
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x9
        0x2
        0x2
        0x1
        0x12
        0x1
        0x1
        0x2
        0x9
        0x2
        0x1
        0xa
        0x1
        0x2
        0x1
        0x1
        0x2
        0x1a
        0x4
        0x1
        0x1
        0x1a
        0x3
        0x1
        0x38
        0x1
        0x8
        0x17
        0x1
        0x1f
        0x1
        0x3a
        0x2
        0xb
        0x2
        0x8
        0x1
        0x35
        0x1
        0x44
        0x9
        0x24
        0x3
        0x2
        0x4
        0x1e
        0x38
        0x59
        0x12
        0x7
        0xe
        0x2
        0x2e
        0x46
        0x1a
        0x2
        0x24
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x14
        0x1
        0x2c
        0x1
        0x7
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x12
        0xd
        0xc
        0x1
        0x42
        0x1
        0xc
        0x1
        0x24
        0x1
        0x4
        0x9
        0x35
        0x2
        0x2
        0x2
        0x2
        0x3
        0x1c
        0x2
        0x8
        0x2
        0x2
        0x37
        0x26
        0x2
        0x1
        0x7
        0x26
        0xa
        0x11
        0x1
        0x17
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0xb
        0x1b
        0x5
        0x3
        0x2e
        0x1a
        0x5
        0x1
        0xa
        0x8
        0xd
        0xa
        0x6
        0x1
        0x47
        0x2
        0x5
        0x1
        0xf
        0x1
        0x4
        0x1
        0x1
        0xf
        0x2
        0x2
        0x1
        0x4
        0x2
        0xa
        0x207
        0x3
        0x1
        0x35
        0x2
        0x1
        0x1
        0x10
        0x3
        0x4
        0x3
        0xa
        0x2
        0x2
        0xa
        0x11
        0x3
        0x1
        0x8
        0x2
        0x2
        0x2
        0x16
        0x1
        0x7
        0x1
        0x1
        0x3
        0x4
        0x2
        0x1
        0x1
        0x7
        0x2
        0x2
        0x2
        0x3
        0x9
        0x1
        0x4
        0x2
        0x1
        0x3
        0x2
        0x2
        0xa
        0x2
        0x10
        0x1
        0x2
        0x6
        0x4
        0x2
        0x2
        0x16
        0x1
        0x7
        0x1
        0x2
        0x1
        0x2
        0x1
        0x2
        0x2
        0x1
        0x1
        0x5
        0x4
        0x2
        0x2
        0x3
        0xb
        0x4
        0x1
        0x1
        0x7
        0xa
        0x2
        0x3
        0xc
        0x3
        0x1
        0x7
        0x1
        0x1
        0x1
        0x3
        0x1
        0x16
        0x1
        0x7
        0x1
        0x2
        0x1
        0x5
        0x2
        0x1
        0x1
        0x8
        0x1
        0x3
        0x1
        0x3
        0x12
        0x1
        0x5
        0xa
        0x11
        0x3
        0x1
        0x8
        0x2
        0x2
        0x2
        0x16
        0x1
        0x7
        0x1
        0x2
        0x2
        0x4
        0x2
        0x1
        0x1
        0x6
        0x3
        0x2
        0x2
        0x3
        0x8
        0x2
        0x4
        0x2
        0x1
        0x3
        0x4
        0xa
        0x12
        0x2
        0x1
        0x6
        0x3
        0x3
        0x1
        0x4
        0x3
        0x2
        0x1
        0x1
        0x1
        0x2
        0x3
        0x2
        0x3
        0x3
        0x3
        0x8
        0x1
        0x3
        0x4
        0x5
        0x3
        0x3
        0x1
        0x4
        0x9
        0x1
        0xf
        0x9
        0x11
        0x3
        0x1
        0x8
        0x1
        0x3
        0x1
        0x17
        0x1
        0xa
        0x1
        0x5
        0x4
        0x7
        0x1
        0x3
        0x1
        0x4
        0x7
        0x2
        0x9
        0x2
        0x4
        0xa
        0x12
        0x2
        0x1
        0x8
        0x1
        0x3
        0x1
        0x17
        0x1
        0xa
        0x1
        0x5
        0x4
        0x7
        0x1
        0x3
        0x1
        0x4
        0x7
        0x2
        0x7
        0x1
        0x1
        0x2
        0x4
        0xa
        0x12
        0x2
        0x1
        0x8
        0x1
        0x3
        0x1
        0x17
        0x1
        0x10
        0x4
        0x6
        0x2
        0x3
        0x1
        0x4
        0x9
        0x1
        0x8
        0x2
        0x4
        0xa
        0x91
        0x2e
        0x1
        0x1
        0x1
        0x2
        0x7
        0x5
        0x6
        0x1
        0x8
        0x1
        0xa
        0x27
        0x2
        0x1
        0x1
        0x2
        0x2
        0x1
        0x1
        0x2
        0x1
        0x6
        0x4
        0x1
        0x7
        0x1
        0x3
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x1
        0x2
        0x1
        0x1
        0x1
        0x2
        0x6
        0x1
        0x2
        0x1
        0x2
        0x5
        0x1
        0x1
        0x1
        0x6
        0x2
        0xa
        0x3e
        0x2
        0x6
        0xa
        0xb
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x2
        0x8
        0x1
        0x21
        0x7
        0x14
        0x1
        0x6
        0x4
        0x6
        0x1
        0x1
        0x1
        0x15
        0x3
        0x7
        0x1
        0x1
        0xe6
        0x26
        0xa
        0x27
        0x9
        0x1
        0x1
        0x2
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
        0x5
        0x29
        0x1
        0x1
        0x1
        0x1
        0x1
        0xb
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x2
        0x3
        0x1
        0x5
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x2
        0x3
        0x2
        0x1
        0x1
        0x28
        0x1
        0x9
        0x1
        0x2
        0x1
        0x2
        0x2
        0x7
        0x2
        0x1
        0x1
        0x1
        0x7
        0x28
        0x1
        0x4
        0x1
        0x8
        0x1
        0xc06
        0x9c
        0x4
        0x5a
        0x6
        0x16
        0x2
        0x6
        0x2
        0x26
        0x2
        0x6
        0x2
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1f
        0x2
        0x35
        0x1
        0x7
        0x1
        0x1
        0x3
        0x3
        0x1
        0x7
        0x3
        0x4
        0x2
        0x6
        0x4
        0xd
        0x5
        0x3
        0x1
        0x7
        0xd3
        0xd
        0x4
        0x1
        0x44
        0x1
        0x3
        0x2
        0x2
        0x1
        0x51
        0x3
        0xe82
        0x1
        0x1
        0x1
        0x19
        0x9
        0x6
        0x1
        0x5
        0xb
        0x54
        0x4
        0x2
        0x2
        0x2
        0x2
        0x5a
        0x1
        0x3
        0x6
        0x28
        0x1cd3
        0x51a6
        0xc5a
        0x2ba4
        0x5c
        0x800
        0x1ffe
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final buildBitFlags()[B
    .locals 6

    .line 317
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 318
    .local v0, "ret":[B
    const/4 v1, 0x0

    .line 319
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lorg/jdom2/Verifier;->VALCONST:[B

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 321
    aget-byte v3, v3, v2

    .line 324
    .local v3, "v":B
    sget-object v4, Lorg/jdom2/Verifier;->LENCONST:[I

    aget v4, v4, v2

    .line 326
    .local v4, "l":I
    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_0

    .line 327
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "index":I
    .local v5, "index":I
    aput-byte v3, v0, v1

    move v1, v5

    goto :goto_1

    .line 319
    .end local v3    # "v":B
    .end local v4    # "l":I
    .end local v5    # "index":I
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 330
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public static checkAttributeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 407
    const-string/jumbo v0, "xmlns"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const-string v0, "An Attribute name may not be \"xmlns\"; use the Namespace class to manage namespaces"

    return-object v0

    .line 412
    :cond_0
    invoke-static {p0}, Lorg/jdom2/Verifier;->checkJDOMName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkCDATASection(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, "reason":Ljava/lang/String;
    invoke-static {p0}, Lorg/jdom2/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_0

    .line 509
    return-object v0

    .line 512
    :cond_0
    const-string v1, "]]>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 513
    const-string v1, "CDATA cannot internally contain a CDATA ending delimiter (]]>)"

    return-object v1

    .line 518
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static checkCharacterData(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .line 434
    if-nez p0, :cond_0

    .line 435
    const-string v0, "A null is not a legal XML value"

    return-object v0

    .line 438
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 439
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_7

    .line 450
    :cond_1
    sget-object v3, Lorg/jdom2/Verifier;->CHARFLAGS:[B

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v3, v3, v4

    if-eqz v3, :cond_2

    .line 452
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_1

    .line 454
    return-object v2

    .line 461
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom2/Verifier;->isHighSurrogate(C)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    .line 464
    add-int/lit8 v1, v1, 0x1

    .line 465
    if-lt v1, v0, :cond_3

    .line 466
    new-array v2, v4, [Ljava/lang/Object;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Truncated Surrogate Pair 0x%04x????"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 469
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom2/Verifier;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 471
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v2, v5}, Lorg/jdom2/Verifier;->decodeSurrogatePair(CC)I

    move-result v2

    invoke-static {v2}, Lorg/jdom2/Verifier;->isXMLCharacter(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 476
    new-array v2, v4, [Ljava/lang/Object;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lorg/jdom2/Verifier;->decodeSurrogatePair(CC)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "0x%06x is not a legal XML character"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 439
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Illegal Surrogate Pair 0x%04x%04x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 489
    :cond_6
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "0x%04x is not a legal XML character"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 495
    .end local v1    # "i":I
    :cond_7
    return-object v2
.end method

.method public static checkCommentData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 859
    const/4 v0, 0x0

    .line 860
    .local v0, "reason":Ljava/lang/String;
    invoke-static {p0}, Lorg/jdom2/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_0

    .line 861
    return-object v0

    .line 864
    :cond_0
    const-string v1, "--"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 865
    const-string v1, "Comments cannot contain double hyphens (--)"

    return-object v1

    .line 867
    :cond_1
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 868
    const-string v1, "Comment data cannot end with a hyphen."

    return-object v1

    .line 872
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static checkElementName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 394
    invoke-static {p0}, Lorg/jdom2/Verifier;->checkJDOMName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final checkJDOMName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 358
    if-nez p0, :cond_0

    .line 359
    const-string v0, "XML names cannot be null"

    return-object v0

    .line 363
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 364
    const-string v0, "XML names cannot be empty"

    return-object v0

    .line 368
    :cond_1
    sget-object v0, Lorg/jdom2/Verifier;->CHARFLAGS:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0x4

    const-string v2, "\""

    const-string v3, "XML name \'"

    if-nez v0, :cond_2

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' cannot begin with the character \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 374
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_4

    .line 375
    sget-object v4, Lorg/jdom2/Verifier;->CHARFLAGS:[B

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v4, v4, v5

    and-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    if-nez v4, :cond_3

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' cannot contain the character \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 374
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 382
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public static checkNamespaceCollision(Lorg/jdom2/Attribute;Lorg/jdom2/Element;)Ljava/lang/String;
    .locals 1
    .param p0, "attribute"    # Lorg/jdom2/Attribute;
    .param p1, "element"    # Lorg/jdom2/Element;

    .line 634
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Attribute;Lorg/jdom2/Element;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkNamespaceCollision(Lorg/jdom2/Attribute;Lorg/jdom2/Element;I)Ljava/lang/String;
    .locals 3
    .param p0, "attribute"    # Lorg/jdom2/Attribute;
    .param p1, "element"    # Lorg/jdom2/Element;
    .param p2, "ignoreatt"    # I

    .line 651
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    .line 652
    .local v0, "namespace":Lorg/jdom2/Namespace;
    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "prefix":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 654
    const/4 v2, 0x0

    return-object v2

    .line 657
    :cond_0
    invoke-static {v0, p1, p2}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Element;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static checkNamespaceCollision(Lorg/jdom2/Namespace;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "namespace"    # Lorg/jdom2/Namespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/Namespace;",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 745
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkNamespaceCollision(Lorg/jdom2/Namespace;Ljava/util/List;I)Ljava/lang/String;
    .locals 6
    .param p0, "namespace"    # Lorg/jdom2/Namespace;
    .param p2, "ignoreatt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/Namespace;",
            "Ljava/util/List<",
            "*>;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 762
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p1, :cond_0

    .line 763
    const/4 v0, 0x0

    return-object v0

    .line 766
    :cond_0
    const/4 v0, 0x0

    .line 767
    .local v0, "reason":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 768
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v2, -0x1

    .line 769
    .local v2, "cnt":I
    :goto_0
    if-nez v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 770
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 771
    .local v3, "obj":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    .line 772
    instance-of v4, v3, Lorg/jdom2/Attribute;

    if-eqz v4, :cond_2

    .line 773
    if-ne v2, p2, :cond_1

    .line 774
    goto :goto_0

    .line 776
    :cond_1
    move-object v4, v3

    check-cast v4, Lorg/jdom2/Attribute;

    invoke-static {p0, v4}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Attribute;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 778
    :cond_2
    instance-of v4, v3, Lorg/jdom2/Element;

    if-eqz v4, :cond_3

    .line 779
    move-object v4, v3

    check-cast v4, Lorg/jdom2/Element;

    invoke-static {p0, v4}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 781
    :cond_3
    instance-of v4, v3, Lorg/jdom2/Namespace;

    if-eqz v4, :cond_4

    .line 782
    move-object v4, v3

    check-cast v4, Lorg/jdom2/Namespace;

    invoke-static {p0, v4}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v0

    .line 783
    if-eqz v0, :cond_4

    .line 784
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with an additional namespace declared by the element"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_4
    :goto_1
    goto :goto_0

    .line 789
    :cond_5
    return-object v0
.end method

.method public static checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Attribute;)Ljava/lang/String;
    .locals 3
    .param p0, "namespace"    # Lorg/jdom2/Namespace;
    .param p1, "attribute"    # Lorg/jdom2/Attribute;

    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, "reason":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    sget-object v2, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v1, v2}, Lorg/jdom2/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 725
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v0

    .line 727
    if-eqz v0, :cond_0

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with an attribute namespace prefix on the element"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    :cond_0
    return-object v0
.end method

.method public static checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Element;)Ljava/lang/String;
    .locals 1
    .param p0, "namespace"    # Lorg/jdom2/Namespace;
    .param p1, "element"    # Lorg/jdom2/Element;

    .line 671
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Element;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Element;I)Ljava/lang/String;
    .locals 3
    .param p0, "namespace"    # Lorg/jdom2/Namespace;
    .param p1, "element"    # Lorg/jdom2/Element;
    .param p2, "ignoreatt"    # I

    .line 688
    invoke-virtual {p1}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with the element namespace prefix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 694
    :cond_0
    invoke-virtual {p1}, Lorg/jdom2/Element;->hasAdditionalNamespaces()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    invoke-virtual {p1}, Lorg/jdom2/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 697
    if-eqz v0, :cond_1

    .line 698
    return-object v0

    .line 702
    :cond_1
    invoke-virtual {p1}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 703
    invoke-virtual {p1}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    .line 704
    if-eqz v0, :cond_2

    .line 705
    return-object v0

    .line 709
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Namespace;)Ljava/lang/String;
    .locals 7
    .param p0, "namespace"    # Lorg/jdom2/Namespace;
    .param p1, "other"    # Lorg/jdom2/Namespace;

    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, "reason":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, "p1":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    .line 615
    .local v2, "u1":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    .line 616
    .local v3, "p2":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    .line 617
    .local v4, "u2":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 618
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The namespace prefix \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" collides"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    :cond_0
    return-object v0
.end method

.method public static checkNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;

    .line 531
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    invoke-static {p0}, Lorg/jdom2/Verifier;->checkJDOMName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 538
    invoke-static {p0}, Lorg/jdom2/Verifier;->checkJDOMName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 556
    :cond_1
    return-object v0

    .line 532
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static checkNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;

    .line 573
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 579
    .local v1, "first":C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 580
    const-string v0, "Namespace URIs cannot begin with a number"

    return-object v0

    .line 583
    :cond_1
    const/16 v2, 0x24

    if-ne v1, v2, :cond_2

    .line 584
    const-string v0, "Namespace URIs cannot begin with a dollar sign ($)"

    return-object v0

    .line 587
    :cond_2
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_3

    .line 588
    const-string v0, "Namespace URIs cannot begin with a hyphen (-)"

    return-object v0

    .line 592
    :cond_3
    invoke-static {v1}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 593
    const-string v0, "Namespace URIs cannot begin with white-space"

    return-object v0

    .line 597
    :cond_4
    return-object v0

    .line 574
    .end local v1    # "first":C
    :cond_5
    :goto_0
    return-object v0
.end method

.method public static checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .line 838
    invoke-static {p0}, Lorg/jdom2/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, "reason":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 841
    const-string v1, "?>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 842
    const-string v1, "Processing instructions cannot contain the string \"?>\""

    return-object v1

    .line 847
    :cond_0
    return-object v0
.end method

.method public static checkProcessingInstructionTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "target"    # Ljava/lang/String;

    .line 803
    invoke-static {p0}, Lorg/jdom2/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 804
    return-object v1

    .line 808
    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 809
    const-string v0, "Processing instruction targets cannot contain colons"

    return-object v0

    .line 813
    :cond_1
    const-string/jumbo v0, "xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    const-string v0, "Processing instructions cannot have a target of \"xml\" in any combination of case. (Note that the \"<?xml ... ?>\" declaration at the beginning of a document is not a processing instruction and should not be added as one; it is written automatically during output, e.g. by XMLOutputter.)"

    return-object v0

    .line 823
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static checkPublicID(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "publicID"    # Ljava/lang/String;

    .line 924
    const/4 v0, 0x0

    .line 926
    .local v0, "reason":Ljava/lang/String;
    if-nez p0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 929
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 930
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 931
    .local v2, "c":C
    invoke-static {v2}, Lorg/jdom2/Verifier;->isXMLPublicIDCharacter(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 932
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a legal character in public IDs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 933
    goto :goto_1

    .line 929
    .end local v2    # "c":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 937
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static checkSystemLiteral(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "systemLiteral"    # Ljava/lang/String;

    .line 950
    const/4 v0, 0x0

    .line 952
    .local v0, "reason":Ljava/lang/String;
    if-nez p0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 955
    :cond_0
    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 957
    const-string v0, "System literals cannot simultaneously contain both single and double quotes."

    goto :goto_0

    .line 961
    :cond_1
    invoke-static {p0}, Lorg/jdom2/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 964
    :goto_0
    return-object v0
.end method

.method public static checkURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "uri"    # Ljava/lang/String;

    .line 1015
    const-string v0, "Percent signs in URIs must be followed by exactly two hexadecimal digits."

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 1019
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1020
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1021
    .local v3, "test":C
    invoke-static {v3}, Lorg/jdom2/Verifier;->isURICharacter(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, "msgNumber":Ljava/lang/String;
    const/16 v1, 0x9

    if-gt v3, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1024
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URIs cannot contain "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1026
    .end local v0    # "msgNumber":Ljava/lang/String;
    :cond_2
    const/16 v4, 0x25

    if-ne v3, v4, :cond_5

    .line 1028
    add-int/lit8 v4, v2, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1029
    .local v4, "firstDigit":C
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1030
    .local v5, "secondDigit":C
    invoke-static {v4}, Lorg/jdom2/Verifier;->isHexDigit(C)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v5}, Lorg/jdom2/Verifier;->isHexDigit(C)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_3

    goto :goto_1

    .line 1040
    .end local v4    # "firstDigit":C
    .end local v5    # "secondDigit":C
    :cond_3
    goto :goto_2

    .line 1032
    .restart local v4    # "firstDigit":C
    .restart local v5    # "secondDigit":C
    :cond_4
    :goto_1
    return-object v0

    .line 1037
    .end local v4    # "firstDigit":C
    .end local v5    # "secondDigit":C
    :catch_0
    move-exception v1

    .line 1038
    .local v1, "e":Ljava/lang/StringIndexOutOfBoundsException;
    return-object v0

    .line 1019
    .end local v1    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v3    # "test":C
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1045
    .end local v2    # "i":I
    :cond_6
    return-object v1

    .line 1016
    :cond_7
    :goto_3
    return-object v1
.end method

.method public static checkXMLName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 977
    if-nez p0, :cond_0

    .line 978
    const-string v0, "XML names cannot be null"

    return-object v0

    .line 981
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 982
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 983
    const-string v1, "XML names cannot be empty"

    return-object v1

    .line 988
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom2/Verifier;->isXMLNameStartCharacter(C)Z

    move-result v2

    const-string v3, "\""

    if-nez v2, :cond_2

    .line 989
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML names cannot begin with the character \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 993
    :cond_2
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 994
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom2/Verifier;->isXMLNameCharacter(C)Z

    move-result v2

    if-nez v2, :cond_3

    .line 995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML names cannot contain the character \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 993
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1000
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method public static decodeSurrogatePair(CC)I
    .locals 2
    .param p0, "high"    # C
    .param p1, "low"    # C

    .line 882
    const v0, 0xd800

    sub-int v0, p0, v0

    mul-int/lit16 v0, v0, 0x400

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    const v1, 0xdc00

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static final isAllXMLWhitespace(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 1283
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1284
    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 1285
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1286
    const/4 v1, 0x0

    return v1

    .line 1289
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static isHexDigit(C)Z
    .locals 2
    .param p0, "c"    # C

    .line 1065
    const/4 v0, 0x1

    const/16 v1, 0x30

    if-lt p0, v1, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    return v0

    .line 1066
    :cond_0
    const/16 v1, 0x41

    if-lt p0, v1, :cond_1

    const/16 v1, 0x46

    if-gt p0, v1, :cond_1

    return v0

    .line 1067
    :cond_1
    const/16 v1, 0x61

    if-lt p0, v1, :cond_2

    const/16 v1, 0x66

    if-gt p0, v1, :cond_2

    return v0

    .line 1069
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static isHighSurrogate(C)Z
    .locals 2
    .param p0, "ch"    # C

    .line 1087
    ushr-int/lit8 v0, p0, 0xa

    const/16 v1, 0x36

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLowSurrogate(C)Z
    .locals 2
    .param p0, "ch"    # C

    .line 1100
    ushr-int/lit8 v0, p0, 0xa

    const/16 v1, 0x37

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isURICharacter(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 1114
    sget-object v0, Lorg/jdom2/Verifier;->CHARFLAGS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isXMLCharacter(I)Z
    .locals 3
    .param p0, "c"    # I

    .line 1127
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    if-lt p0, v2, :cond_1

    .line 1128
    const v2, 0x10ffff

    if-gt p0, v2, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 1130
    :cond_1
    sget-object v2, Lorg/jdom2/Verifier;->CHARFLAGS:[B

    aget-byte v2, v2, p0

    and-int/2addr v2, v1

    int-to-byte v2, v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public static isXMLCombiningChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 1196
    sget-object v0, Lorg/jdom2/Verifier;->CHARFLAGS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isXMLDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 1245
    sget-object v0, Lorg/jdom2/Verifier;->CHARFLAGS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isXMLExtender(C)Z
    .locals 3
    .param p0, "c"    # C

    .line 1216
    const/4 v0, 0x0

    const/16 v1, 0xb6

    if-ge p0, v1, :cond_0

    return v0

    .line 1219
    :cond_0
    const/16 v1, 0xb7

    const/4 v2, 0x1

    if-ne p0, v1, :cond_1

    return v2

    .line 1220
    :cond_1
    const/16 v1, 0x2d0

    if-ne p0, v1, :cond_2

    return v2

    .line 1221
    :cond_2
    const/16 v1, 0x2d1

    if-ne p0, v1, :cond_3

    return v2

    .line 1222
    :cond_3
    const/16 v1, 0x387

    if-ne p0, v1, :cond_4

    return v2

    .line 1223
    :cond_4
    const/16 v1, 0x640

    if-ne p0, v1, :cond_5

    return v2

    .line 1224
    :cond_5
    const/16 v1, 0xe46

    if-ne p0, v1, :cond_6

    return v2

    .line 1225
    :cond_6
    const/16 v1, 0xec6

    if-ne p0, v1, :cond_7

    return v2

    .line 1226
    :cond_7
    const/16 v1, 0x3005

    if-ne p0, v1, :cond_8

    return v2

    .line 1228
    :cond_8
    const/16 v1, 0x3031

    if-ge p0, v1, :cond_9

    return v0

    :cond_9
    const/16 v1, 0x3035

    if-gt p0, v1, :cond_a

    return v2

    .line 1229
    :cond_a
    const/16 v1, 0x309d

    if-ge p0, v1, :cond_b

    return v0

    :cond_b
    const/16 v1, 0x309e

    if-gt p0, v1, :cond_c

    return v2

    .line 1230
    :cond_c
    const/16 v1, 0x30fc

    if-ge p0, v1, :cond_d

    return v0

    :cond_d
    const/16 v1, 0x30fe

    if-gt p0, v1, :cond_e

    return v2

    .line 1232
    :cond_e
    return v0
.end method

.method public static isXMLLetter(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 1183
    sget-object v0, Lorg/jdom2/Verifier;->CHARFLAGS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isXMLLetterOrDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 1172
    sget-object v0, Lorg/jdom2/Verifier;->CHARFLAGS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x12

    int-to-byte v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isXMLNameCharacter(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 1144
    sget-object v0, Lorg/jdom2/Verifier;->CHARFLAGS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    if-nez v0, :cond_1

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isXMLNameStartCharacter(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 1159
    sget-object v0, Lorg/jdom2/Verifier;->CHARFLAGS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_1

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isXMLPublicIDCharacter(C)Z
    .locals 2
    .param p0, "c"    # C

    .line 897
    const/4 v0, 0x1

    const/16 v1, 0x61

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_0

    return v0

    .line 898
    :cond_0
    const/16 v1, 0x3f

    if-lt p0, v1, :cond_1

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_1

    return v0

    .line 899
    :cond_1
    const/16 v1, 0x27

    if-lt p0, v1, :cond_2

    const/16 v1, 0x3b

    if-gt p0, v1, :cond_2

    return v0

    .line 901
    :cond_2
    const/16 v1, 0x20

    if-ne p0, v1, :cond_3

    return v0

    .line 902
    :cond_3
    const/16 v1, 0x21

    if-ne p0, v1, :cond_4

    return v0

    .line 903
    :cond_4
    const/16 v1, 0x3d

    if-ne p0, v1, :cond_5

    return v0

    .line 904
    :cond_5
    const/16 v1, 0x23

    if-ne p0, v1, :cond_6

    return v0

    .line 905
    :cond_6
    const/16 v1, 0x24

    if-ne p0, v1, :cond_7

    return v0

    .line 906
    :cond_7
    const/16 v1, 0x5f

    if-ne p0, v1, :cond_8

    return v0

    .line 907
    :cond_8
    const/16 v1, 0x25

    if-ne p0, v1, :cond_9

    return v0

    .line 908
    :cond_9
    const/16 v1, 0xa

    if-ne p0, v1, :cond_a

    return v0

    .line 909
    :cond_a
    const/16 v1, 0xd

    if-ne p0, v1, :cond_b

    return v0

    .line 910
    :cond_b
    const/16 v1, 0x9

    if-ne p0, v1, :cond_c

    return v0

    .line 912
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static isXMLWhitespace(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 1260
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1263
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1261
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
