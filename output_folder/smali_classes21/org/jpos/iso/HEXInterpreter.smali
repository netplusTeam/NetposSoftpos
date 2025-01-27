.class public Lorg/jpos/iso/HEXInterpreter;
.super Ljava/lang/Object;
.source "HEXInterpreter.java"

# interfaces
.implements Lorg/jpos/iso/Interpreter;


# static fields
.field public static final LEFT_PADDED:Lorg/jpos/iso/HEXInterpreter;

.field public static final LEFT_PADDED_F:Lorg/jpos/iso/HEXInterpreter;

.field public static final RIGHT_PADDED:Lorg/jpos/iso/HEXInterpreter;

.field public static final RIGHT_PADDED_F:Lorg/jpos/iso/HEXInterpreter;


# instance fields
.field private fPadded:Z

.field private leftPadded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lorg/jpos/iso/HEXInterpreter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jpos/iso/HEXInterpreter;-><init>(ZZ)V

    sput-object v0, Lorg/jpos/iso/HEXInterpreter;->LEFT_PADDED:Lorg/jpos/iso/HEXInterpreter;

    .line 33
    new-instance v0, Lorg/jpos/iso/HEXInterpreter;

    invoke-direct {v0, v2, v2}, Lorg/jpos/iso/HEXInterpreter;-><init>(ZZ)V

    sput-object v0, Lorg/jpos/iso/HEXInterpreter;->RIGHT_PADDED:Lorg/jpos/iso/HEXInterpreter;

    .line 35
    new-instance v0, Lorg/jpos/iso/HEXInterpreter;

    invoke-direct {v0, v2, v1}, Lorg/jpos/iso/HEXInterpreter;-><init>(ZZ)V

    sput-object v0, Lorg/jpos/iso/HEXInterpreter;->RIGHT_PADDED_F:Lorg/jpos/iso/HEXInterpreter;

    .line 37
    new-instance v0, Lorg/jpos/iso/HEXInterpreter;

    invoke-direct {v0, v1, v1}, Lorg/jpos/iso/HEXInterpreter;-><init>(ZZ)V

    sput-object v0, Lorg/jpos/iso/HEXInterpreter;->LEFT_PADDED_F:Lorg/jpos/iso/HEXInterpreter;

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0
    .param p1, "leftPadded"    # Z
    .param p2, "fPadded"    # Z

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lorg/jpos/iso/HEXInterpreter;->leftPadded:Z

    .line 45
    iput-boolean p2, p0, Lorg/jpos/iso/HEXInterpreter;->fPadded:Z

    .line 46
    return-void
.end method


# virtual methods
.method public getPackedLength(I)I
    .locals 1
    .param p1, "nDataUnits"    # I

    .line 81
    add-int/lit8 v0, p1, 0x1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public interpret(Ljava/lang/String;[BI)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "b"    # [B
    .param p3, "offset"    # I

    .line 54
    iget-boolean v0, p0, Lorg/jpos/iso/HEXInterpreter;->leftPadded:Z

    invoke-static {p1, v0, p2, p3}, Lorg/jpos/iso/ISOUtil;->str2hex(Ljava/lang/String;Z[BI)[B

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    .line 58
    .local v0, "paddedSize":I
    iget-boolean v2, p0, Lorg/jpos/iso/HEXInterpreter;->fPadded:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v1, :cond_1

    .line 59
    iget-boolean v1, p0, Lorg/jpos/iso/HEXInterpreter;->leftPadded:Z

    if-eqz v1, :cond_0

    .line 60
    aget-byte v1, p2, p3

    or-int/lit8 v1, v1, -0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    goto :goto_0

    .line 62
    :cond_0
    add-int v1, p3, v0

    aget-byte v2, p2, v1

    or-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method public uninterpret([BII)Ljava/lang/String;
    .locals 1
    .param p1, "rawData"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 71
    iget-boolean v0, p0, Lorg/jpos/iso/HEXInterpreter;->leftPadded:Z

    invoke-static {p1, p2, p3, v0}, Lorg/jpos/iso/ISOUtil;->hex2str([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
