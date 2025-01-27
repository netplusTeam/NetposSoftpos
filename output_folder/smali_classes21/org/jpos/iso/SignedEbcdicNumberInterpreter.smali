.class public Lorg/jpos/iso/SignedEbcdicNumberInterpreter;
.super Ljava/lang/Object;
.source "SignedEbcdicNumberInterpreter.java"

# interfaces
.implements Lorg/jpos/iso/Interpreter;


# static fields
.field public static final INSTANCE:Lorg/jpos/iso/SignedEbcdicNumberInterpreter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/jpos/iso/SignedEbcdicNumberInterpreter;

    invoke-direct {v0}, Lorg/jpos/iso/SignedEbcdicNumberInterpreter;-><init>()V

    sput-object v0, Lorg/jpos/iso/SignedEbcdicNumberInterpreter;->INSTANCE:Lorg/jpos/iso/SignedEbcdicNumberInterpreter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackedLength(I)I
    .locals 0
    .param p1, "nDataUnits"    # I

    .line 54
    return p1
.end method

.method public interpret(Ljava/lang/String;[BI)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "targetArray"    # [B
    .param p3, "offset"    # I

    .line 37
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 38
    .local v0, "negative":Z
    if-eqz v0, :cond_0

    .line 39
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lorg/jpos/iso/ISOUtil;->asciiToEbcdic(Ljava/lang/String;[BI)V

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x2

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xdf

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/jpos/iso/ISOUtil;->asciiToEbcdic(Ljava/lang/String;[BI)V

    .line 44
    :goto_0
    return-void
.end method

.method public uninterpret([BII)Ljava/lang/String;
    .locals 4
    .param p1, "rawData"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 47
    add-int v0, p2, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    const/16 v2, -0x30

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 48
    .local v0, "negative":Z
    :goto_0
    add-int v2, p2, p3

    sub-int/2addr v2, v1

    add-int v3, p2, p3

    sub-int/2addr v3, v1

    aget-byte v1, p1, v3

    or-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_1

    const-string v2, "-"

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2, p3}, Lorg/jpos/iso/ISOUtil;->ebcdicToAscii([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
