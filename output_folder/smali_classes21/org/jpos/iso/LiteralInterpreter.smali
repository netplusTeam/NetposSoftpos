.class public Lorg/jpos/iso/LiteralInterpreter;
.super Ljava/lang/Object;
.source "LiteralInterpreter.java"

# interfaces
.implements Lorg/jpos/iso/Interpreter;


# static fields
.field public static final INSTANCE:Lorg/jpos/iso/LiteralInterpreter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lorg/jpos/iso/LiteralInterpreter;

    invoke-direct {v0}, Lorg/jpos/iso/LiteralInterpreter;-><init>()V

    sput-object v0, Lorg/jpos/iso/LiteralInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralInterpreter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackedLength(I)I
    .locals 0
    .param p1, "nDataUnits"    # I

    .line 59
    return p1
.end method

.method public interpret(Ljava/lang/String;[BI)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "b"    # [B
    .param p3, "offset"    # I

    .line 39
    sget-object v0, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 40
    .local v0, "raw":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    return-void
.end method

.method public uninterpret([BII)Ljava/lang/String;
    .locals 2
    .param p1, "rawData"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 49
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method
