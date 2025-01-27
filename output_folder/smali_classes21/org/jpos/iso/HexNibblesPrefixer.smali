.class public Lorg/jpos/iso/HexNibblesPrefixer;
.super Ljava/lang/Object;
.source "HexNibblesPrefixer.java"

# interfaces
.implements Lorg/jpos/iso/Prefixer;


# static fields
.field public static final LL:Lorg/jpos/iso/HexNibblesPrefixer;

.field public static final LLL:Lorg/jpos/iso/HexNibblesPrefixer;


# instance fields
.field private nDigits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lorg/jpos/iso/HexNibblesPrefixer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/jpos/iso/HexNibblesPrefixer;-><init>(I)V

    sput-object v0, Lorg/jpos/iso/HexNibblesPrefixer;->LL:Lorg/jpos/iso/HexNibblesPrefixer;

    .line 30
    new-instance v0, Lorg/jpos/iso/HexNibblesPrefixer;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/jpos/iso/HexNibblesPrefixer;-><init>(I)V

    sput-object v0, Lorg/jpos/iso/HexNibblesPrefixer;->LLL:Lorg/jpos/iso/HexNibblesPrefixer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "nDigits"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lorg/jpos/iso/HexNibblesPrefixer;->nDigits:I

    .line 35
    return-void
.end method


# virtual methods
.method public decodeLength([BI)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/jpos/iso/HexNibblesPrefixer;->nDigits:I

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 52
    mul-int/lit8 v2, v0, 0x64

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0xf

    add-int v0, v2, v3

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "i":I
    :cond_0
    shr-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public encodeLength(I[B)V
    .locals 4
    .param p1, "length"    # I
    .param p2, "b"    # [B

    .line 39
    shl-int/lit8 p1, p1, 0x1

    .line 40
    invoke-virtual {p0}, Lorg/jpos/iso/HexNibblesPrefixer;->getPackedLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 41
    rem-int/lit8 v1, p1, 0x64

    .line 42
    .local v1, "twoDigits":I
    div-int/lit8 p1, p1, 0x64

    .line 43
    div-int/lit8 v2, v1, 0xa

    shl-int/lit8 v2, v2, 0x4

    rem-int/lit8 v3, v1, 0xa

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 40
    .end local v1    # "twoDigits":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 45
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getPackedLength()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/jpos/iso/HexNibblesPrefixer;->nDigits:I

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method
