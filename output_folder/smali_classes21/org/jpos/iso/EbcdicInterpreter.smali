.class public Lorg/jpos/iso/EbcdicInterpreter;
.super Ljava/lang/Object;
.source "EbcdicInterpreter.java"

# interfaces
.implements Lorg/jpos/iso/Interpreter;


# static fields
.field public static final INSTANCE:Lorg/jpos/iso/EbcdicInterpreter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/jpos/iso/EbcdicInterpreter;

    invoke-direct {v0}, Lorg/jpos/iso/EbcdicInterpreter;-><init>()V

    sput-object v0, Lorg/jpos/iso/EbcdicInterpreter;->INSTANCE:Lorg/jpos/iso/EbcdicInterpreter;

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

    .line 57
    return p1
.end method

.method public interpret(Ljava/lang/String;[BI)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "b"    # [B
    .param p3, "offset"    # I

    .line 39
    invoke-static {p1, p2, p3}, Lorg/jpos/iso/ISOUtil;->asciiToEbcdic(Ljava/lang/String;[BI)V

    .line 40
    return-void
.end method

.method public uninterpret([BII)Ljava/lang/String;
    .locals 1
    .param p1, "rawData"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 48
    invoke-static {p1, p2, p3}, Lorg/jpos/iso/ISOUtil;->ebcdicToAscii([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
