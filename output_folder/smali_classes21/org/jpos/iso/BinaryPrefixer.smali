.class public Lorg/jpos/iso/BinaryPrefixer;
.super Ljava/lang/Object;
.source "BinaryPrefixer.java"

# interfaces
.implements Lorg/jpos/iso/Prefixer;


# static fields
.field public static final B:Lorg/jpos/iso/BinaryPrefixer;

.field public static final BB:Lorg/jpos/iso/BinaryPrefixer;


# instance fields
.field private nBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lorg/jpos/iso/BinaryPrefixer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/jpos/iso/BinaryPrefixer;-><init>(I)V

    sput-object v0, Lorg/jpos/iso/BinaryPrefixer;->B:Lorg/jpos/iso/BinaryPrefixer;

    .line 37
    new-instance v0, Lorg/jpos/iso/BinaryPrefixer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/jpos/iso/BinaryPrefixer;-><init>(I)V

    sput-object v0, Lorg/jpos/iso/BinaryPrefixer;->BB:Lorg/jpos/iso/BinaryPrefixer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "nBytes"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/jpos/iso/BinaryPrefixer;->nBytes:I

    .line 45
    return-void
.end method


# virtual methods
.method public decodeLength([BI)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/jpos/iso/BinaryPrefixer;->nBytes:I

    if-ge v1, v2, :cond_0

    .line 63
    mul-int/lit16 v2, v0, 0x100

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int v0, v2, v3

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public encodeLength(I[B)V
    .locals 2
    .param p1, "length"    # I
    .param p2, "b"    # [B

    .line 51
    iget v0, p0, Lorg/jpos/iso/BinaryPrefixer;->nBytes:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 52
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 53
    shr-int/lit8 p1, p1, 0x8

    .line 51
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 55
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getPackedLength()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/jpos/iso/BinaryPrefixer;->nBytes:I

    return v0
.end method
