.class public Lorg/jpos/iso/IFA_LLLLLLBINARY;
.super Lorg/jpos/iso/ISOBinaryFieldPackager;
.source "IFA_LLLLLLBINARY.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    sget-object v0, Lorg/jpos/iso/LiteralBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralBinaryInterpreter;

    sget-object v1, Lorg/jpos/iso/AsciiPrefixer;->LLLLLL:Lorg/jpos/iso/AsciiPrefixer;

    invoke-direct {p0, v0, v1}, Lorg/jpos/iso/ISOBinaryFieldPackager;-><init>(Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V

    .line 30
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 36
    sget-object v0, Lorg/jpos/iso/LiteralBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralBinaryInterpreter;

    sget-object v1, Lorg/jpos/iso/AsciiPrefixer;->LLLLLL:Lorg/jpos/iso/AsciiPrefixer;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jpos/iso/ISOBinaryFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V

    .line 37
    const v0, 0xf423f

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFA_LLLLLLBINARY;->checkLength(II)V

    .line 38
    return-void
.end method


# virtual methods
.method public setLength(I)V
    .locals 1
    .param p1, "len"    # I

    .line 42
    const v0, 0xf423f

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFA_LLLLLLBINARY;->checkLength(II)V

    .line 43
    invoke-super {p0, p1}, Lorg/jpos/iso/ISOBinaryFieldPackager;->setLength(I)V

    .line 44
    return-void
.end method
