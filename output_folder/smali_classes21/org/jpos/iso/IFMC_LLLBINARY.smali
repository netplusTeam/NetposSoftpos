.class public Lorg/jpos/iso/IFMC_LLLBINARY;
.super Lorg/jpos/iso/ISOTagBinaryFieldPackager;
.source "IFMC_LLLBINARY.java"


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 30
    sget-object v3, Lorg/jpos/iso/AsciiPrefixer;->LL:Lorg/jpos/iso/AsciiPrefixer;

    sget-object v4, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    sget-object v5, Lorg/jpos/iso/LiteralBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralBinaryInterpreter;

    sget-object v6, Lorg/jpos/iso/AsciiPrefixer;->LLL:Lorg/jpos/iso/AsciiPrefixer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Padder;Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 7
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 35
    sget-object v3, Lorg/jpos/iso/AsciiPrefixer;->LL:Lorg/jpos/iso/AsciiPrefixer;

    sget-object v4, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    sget-object v5, Lorg/jpos/iso/LiteralBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralBinaryInterpreter;

    sget-object v6, Lorg/jpos/iso/AsciiPrefixer;->LLL:Lorg/jpos/iso/AsciiPrefixer;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Padder;Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V

    .line 37
    return-void
.end method
