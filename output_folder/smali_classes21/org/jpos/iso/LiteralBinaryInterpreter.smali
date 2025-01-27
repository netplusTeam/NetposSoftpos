.class public Lorg/jpos/iso/LiteralBinaryInterpreter;
.super Ljava/lang/Object;
.source "LiteralBinaryInterpreter.java"

# interfaces
.implements Lorg/jpos/iso/BinaryInterpreter;


# static fields
.field public static final INSTANCE:Lorg/jpos/iso/LiteralBinaryInterpreter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lorg/jpos/iso/LiteralBinaryInterpreter;

    invoke-direct {v0}, Lorg/jpos/iso/LiteralBinaryInterpreter;-><init>()V

    sput-object v0, Lorg/jpos/iso/LiteralBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralBinaryInterpreter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public getPackedLength(I)I
    .locals 0
    .param p1, "nBytes"    # I

    .line 63
    return p1
.end method

.method public interpret([B[BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "b"    # [B
    .param p3, "offset"    # I

    .line 44
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    return-void
.end method

.method public uninterpret([BII)[B
    .locals 2
    .param p1, "rawData"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 52
    new-array v0, p3, [B

    .line 53
    .local v0, "ret":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    return-object v0
.end method
