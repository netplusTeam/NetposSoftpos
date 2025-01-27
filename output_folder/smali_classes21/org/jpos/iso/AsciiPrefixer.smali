.class public Lorg/jpos/iso/AsciiPrefixer;
.super Ljava/lang/Object;
.source "AsciiPrefixer.java"

# interfaces
.implements Lorg/jpos/iso/Prefixer;


# static fields
.field public static final L:Lorg/jpos/iso/AsciiPrefixer;

.field public static final LL:Lorg/jpos/iso/AsciiPrefixer;

.field public static final LLL:Lorg/jpos/iso/AsciiPrefixer;

.field public static final LLLL:Lorg/jpos/iso/AsciiPrefixer;

.field public static final LLLLL:Lorg/jpos/iso/AsciiPrefixer;

.field public static final LLLLLL:Lorg/jpos/iso/AsciiPrefixer;


# instance fields
.field private nDigits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lorg/jpos/iso/AsciiPrefixer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/jpos/iso/AsciiPrefixer;-><init>(I)V

    sput-object v0, Lorg/jpos/iso/AsciiPrefixer;->L:Lorg/jpos/iso/AsciiPrefixer;

    .line 38
    new-instance v0, Lorg/jpos/iso/AsciiPrefixer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/jpos/iso/AsciiPrefixer;-><init>(I)V

    sput-object v0, Lorg/jpos/iso/AsciiPrefixer;->LL:Lorg/jpos/iso/AsciiPrefixer;

    .line 43
    new-instance v0, Lorg/jpos/iso/AsciiPrefixer;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/jpos/iso/AsciiPrefixer;-><init>(I)V

    sput-object v0, Lorg/jpos/iso/AsciiPrefixer;->LLL:Lorg/jpos/iso/AsciiPrefixer;

    .line 48
    new-instance v0, Lorg/jpos/iso/AsciiPrefixer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/jpos/iso/AsciiPrefixer;-><init>(I)V

    sput-object v0, Lorg/jpos/iso/AsciiPrefixer;->LLLL:Lorg/jpos/iso/AsciiPrefixer;

    .line 53
    new-instance v0, Lorg/jpos/iso/AsciiPrefixer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/jpos/iso/AsciiPrefixer;-><init>(I)V

    sput-object v0, Lorg/jpos/iso/AsciiPrefixer;->LLLLL:Lorg/jpos/iso/AsciiPrefixer;

    .line 59
    new-instance v0, Lorg/jpos/iso/AsciiPrefixer;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/jpos/iso/AsciiPrefixer;-><init>(I)V

    sput-object v0, Lorg/jpos/iso/AsciiPrefixer;->LLLLLL:Lorg/jpos/iso/AsciiPrefixer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "nDigits"    # I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lorg/jpos/iso/AsciiPrefixer;->nDigits:I

    .line 70
    return-void
.end method


# virtual methods
.method public decodeLength([BI)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/jpos/iso/AsciiPrefixer;->nDigits:I

    if-ge v1, v2, :cond_1

    .line 93
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    .line 94
    .local v2, "d":B
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v4, 0x39

    if-gt v2, v4, :cond_0

    .line 98
    mul-int/lit8 v4, v0, 0xa

    add-int/2addr v4, v2

    add-int/lit8 v0, v4, -0x30

    .line 91
    .end local v2    # "d":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .restart local v2    # "d":B
    :cond_0
    new-instance v3, Lorg/jpos/iso/ISOException;

    const-string v4, "Invalid character found. Expected digit."

    invoke-direct {v3, v4}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    .end local v1    # "i":I
    .end local v2    # "d":B
    :cond_1
    return v0
.end method

.method public encodeLength(I[B)V
    .locals 4
    .param p1, "length"    # I
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 75
    move v0, p1

    .line 77
    .local v0, "n":I
    iget v1, p0, Lorg/jpos/iso/AsciiPrefixer;->nDigits:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 79
    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 80
    div-int/lit8 v0, v0, 0xa

    .line 77
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_0
    if-nez v0, :cond_1

    .line 86
    return-void

    .line 84
    :cond_1
    new-instance v1, Lorg/jpos/iso/ISOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Prefixing digits = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jpos/iso/AsciiPrefixer;->nDigits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPackedLength()I
    .locals 1

    .line 106
    iget v0, p0, Lorg/jpos/iso/AsciiPrefixer;->nDigits:I

    return v0
.end method
