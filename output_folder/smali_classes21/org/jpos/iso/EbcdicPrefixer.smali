.class public Lorg/jpos/iso/EbcdicPrefixer;
.super Ljava/lang/Object;
.source "EbcdicPrefixer.java"

# interfaces
.implements Lorg/jpos/iso/Prefixer;


# static fields
.field private static EBCDIC_DIGITS:[B

.field public static final L:Lorg/jpos/iso/EbcdicPrefixer;

.field public static final LL:Lorg/jpos/iso/EbcdicPrefixer;

.field public static final LLL:Lorg/jpos/iso/EbcdicPrefixer;

.field public static final LLLL:Lorg/jpos/iso/EbcdicPrefixer;


# instance fields
.field private nDigits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lorg/jpos/iso/EbcdicPrefixer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/jpos/iso/EbcdicPrefixer;-><init>(I)V

    sput-object v0, Lorg/jpos/iso/EbcdicPrefixer;->L:Lorg/jpos/iso/EbcdicPrefixer;

    .line 39
    new-instance v0, Lorg/jpos/iso/EbcdicPrefixer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/jpos/iso/EbcdicPrefixer;-><init>(I)V

    sput-object v0, Lorg/jpos/iso/EbcdicPrefixer;->LL:Lorg/jpos/iso/EbcdicPrefixer;

    .line 44
    new-instance v0, Lorg/jpos/iso/EbcdicPrefixer;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/jpos/iso/EbcdicPrefixer;-><init>(I)V

    sput-object v0, Lorg/jpos/iso/EbcdicPrefixer;->LLL:Lorg/jpos/iso/EbcdicPrefixer;

    .line 49
    new-instance v0, Lorg/jpos/iso/EbcdicPrefixer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/jpos/iso/EbcdicPrefixer;-><init>(I)V

    sput-object v0, Lorg/jpos/iso/EbcdicPrefixer;->LLLL:Lorg/jpos/iso/EbcdicPrefixer;

    .line 51
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jpos/iso/EbcdicPrefixer;->EBCDIC_DIGITS:[B

    return-void

    :array_0
    .array-data 1
        -0x10t
        -0xft
        -0xet
        -0xdt
        -0xct
        -0xbt
        -0xat
        -0x9t
        -0x8t
        -0x7t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "nDigits"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lorg/jpos/iso/EbcdicPrefixer;->nDigits:I

    .line 61
    return-void
.end method


# virtual methods
.method public decodeLength([BI)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/jpos/iso/EbcdicPrefixer;->nDigits:I

    if-ge v1, v2, :cond_0

    .line 80
    mul-int/lit8 v2, v0, 0xa

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0xf

    add-int v0, v2, v3

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public encodeLength(I[B)V
    .locals 3
    .param p1, "length"    # I
    .param p2, "b"    # [B

    .line 67
    iget v0, p0, Lorg/jpos/iso/EbcdicPrefixer;->nDigits:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 69
    sget-object v1, Lorg/jpos/iso/EbcdicPrefixer;->EBCDIC_DIGITS:[B

    rem-int/lit8 v2, p1, 0xa

    aget-byte v1, v1, v2

    aput-byte v1, p2, v0

    .line 70
    div-int/lit8 p1, p1, 0xa

    .line 67
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 72
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getPackedLength()I
    .locals 1

    .line 88
    iget v0, p0, Lorg/jpos/iso/EbcdicPrefixer;->nDigits:I

    return v0
.end method
