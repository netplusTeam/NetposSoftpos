.class public Lorg/jpos/iso/BcdPrefixer;
.super Ljava/lang/Object;
.source "BcdPrefixer.java"

# interfaces
.implements Lorg/jpos/iso/Prefixer;


# static fields
.field public static final L:Lorg/jpos/iso/BcdPrefixer;

.field public static final LL:Lorg/jpos/iso/BcdPrefixer;

.field public static final LLL:Lorg/jpos/iso/BcdPrefixer;

.field public static final LLLL:Lorg/jpos/iso/BcdPrefixer;

.field public static final LLLLL:Lorg/jpos/iso/BcdPrefixer;


# instance fields
.field private nDigits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lorg/jpos/iso/BcdPrefixer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/jpos/iso/BcdPrefixer;-><init>(I)V

    sput-object v0, Lorg/jpos/iso/BcdPrefixer;->L:Lorg/jpos/iso/BcdPrefixer;

    .line 37
    new-instance v0, Lorg/jpos/iso/BcdPrefixer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/jpos/iso/BcdPrefixer;-><init>(I)V

    sput-object v0, Lorg/jpos/iso/BcdPrefixer;->LL:Lorg/jpos/iso/BcdPrefixer;

    .line 41
    new-instance v0, Lorg/jpos/iso/BcdPrefixer;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/jpos/iso/BcdPrefixer;-><init>(I)V

    sput-object v0, Lorg/jpos/iso/BcdPrefixer;->LLL:Lorg/jpos/iso/BcdPrefixer;

    .line 45
    new-instance v0, Lorg/jpos/iso/BcdPrefixer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/jpos/iso/BcdPrefixer;-><init>(I)V

    sput-object v0, Lorg/jpos/iso/BcdPrefixer;->LLLL:Lorg/jpos/iso/BcdPrefixer;

    .line 49
    new-instance v0, Lorg/jpos/iso/BcdPrefixer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/jpos/iso/BcdPrefixer;-><init>(I)V

    sput-object v0, Lorg/jpos/iso/BcdPrefixer;->LLLLL:Lorg/jpos/iso/BcdPrefixer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "nDigits"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lorg/jpos/iso/BcdPrefixer;->nDigits:I

    .line 57
    return-void
.end method


# virtual methods
.method public decodeLength([BI)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/jpos/iso/BcdPrefixer;->nDigits:I

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 75
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

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public encodeLength(I[B)V
    .locals 4
    .param p1, "length"    # I
    .param p2, "b"    # [B

    .line 62
    invoke-virtual {p0}, Lorg/jpos/iso/BcdPrefixer;->getPackedLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 63
    rem-int/lit8 v1, p1, 0x64

    .line 64
    .local v1, "twoDigits":I
    div-int/lit8 p1, p1, 0x64

    .line 65
    div-int/lit8 v2, v1, 0xa

    shl-int/lit8 v2, v2, 0x4

    rem-int/lit8 v3, v1, 0xa

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 62
    .end local v1    # "twoDigits":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getPackedLength()I
    .locals 1

    .line 83
    iget v0, p0, Lorg/jpos/iso/BcdPrefixer;->nDigits:I

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method
