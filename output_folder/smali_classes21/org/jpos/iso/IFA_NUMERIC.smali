.class public Lorg/jpos/iso/IFA_NUMERIC;
.super Lorg/jpos/iso/ISOStringFieldPackager;
.source "IFA_NUMERIC.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    sget-object v0, Lorg/jpos/iso/LeftPadder;->ZERO_PADDER:Lorg/jpos/iso/LeftPadder;

    sget-object v1, Lorg/jpos/iso/AsciiInterpreter;->INSTANCE:Lorg/jpos/iso/AsciiInterpreter;

    sget-object v2, Lorg/jpos/iso/NullPrefixer;->INSTANCE:Lorg/jpos/iso/NullPrefixer;

    invoke-direct {p0, v0, v1, v2}, Lorg/jpos/iso/ISOStringFieldPackager;-><init>(Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 6
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 39
    sget-object v3, Lorg/jpos/iso/LeftPadder;->ZERO_PADDER:Lorg/jpos/iso/LeftPadder;

    sget-object v4, Lorg/jpos/iso/AsciiInterpreter;->INSTANCE:Lorg/jpos/iso/AsciiInterpreter;

    sget-object v5, Lorg/jpos/iso/NullPrefixer;->INSTANCE:Lorg/jpos/iso/NullPrefixer;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/jpos/iso/ISOStringFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V

    .line 40
    return-void
.end method
