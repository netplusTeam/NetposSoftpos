.class public Lorg/jpos/iso/IFB_LLLHBINARY;
.super Lorg/jpos/iso/ISOBinaryFieldPackager;
.source "IFB_LLLHBINARY.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    sget-object v0, Lorg/jpos/iso/LiteralBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralBinaryInterpreter;

    sget-object v1, Lorg/jpos/iso/BinaryPrefixer;->BB:Lorg/jpos/iso/BinaryPrefixer;

    invoke-direct {p0, v0, v1}, Lorg/jpos/iso/ISOBinaryFieldPackager;-><init>(Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 37
    sget-object v0, Lorg/jpos/iso/LiteralBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralBinaryInterpreter;

    sget-object v1, Lorg/jpos/iso/BinaryPrefixer;->BB:Lorg/jpos/iso/BinaryPrefixer;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jpos/iso/ISOBinaryFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V

    .line 38
    const v0, 0xffff

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFB_LLLHBINARY;->checkLength(II)V

    .line 39
    return-void
.end method


# virtual methods
.method public setLength(I)V
    .locals 1
    .param p1, "len"    # I

    .line 43
    const v0, 0xffff

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFB_LLLHBINARY;->checkLength(II)V

    .line 44
    invoke-super {p0, p1}, Lorg/jpos/iso/ISOBinaryFieldPackager;->setLength(I)V

    .line 45
    return-void
.end method
