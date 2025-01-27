.class public Lorg/jpos/iso/EbcdicBinaryInterpreter;
.super Ljava/lang/Object;
.source "EbcdicBinaryInterpreter.java"

# interfaces
.implements Lorg/jpos/iso/BinaryInterpreter;


# static fields
.field public static final INSTANCE:Lorg/jpos/iso/EbcdicBinaryInterpreter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/jpos/iso/EbcdicBinaryInterpreter;

    invoke-direct {v0}, Lorg/jpos/iso/EbcdicBinaryInterpreter;-><init>()V

    sput-object v0, Lorg/jpos/iso/EbcdicBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/EbcdicBinaryInterpreter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackedLength(I)I
    .locals 0
    .param p1, "nDataUnits"    # I

    .line 50
    return p1
.end method

.method public interpret([B[BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "b"    # [B
    .param p3, "offset"    # I

    .line 37
    invoke-static {p1, p2, p3}, Lorg/jpos/iso/ISOUtil;->asciiToEbcdic([B[BI)V

    .line 38
    return-void
.end method

.method public uninterpret([BII)[B
    .locals 1
    .param p1, "rawData"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 42
    invoke-static {p1, p2, p3}, Lorg/jpos/iso/ISOUtil;->ebcdicToAsciiBytes([BII)[B

    move-result-object v0

    return-object v0
.end method
