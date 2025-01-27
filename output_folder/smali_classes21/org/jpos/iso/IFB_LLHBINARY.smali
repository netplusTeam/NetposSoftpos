.class public Lorg/jpos/iso/IFB_LLHBINARY;
.super Lorg/jpos/iso/ISOBinaryFieldPackager;
.source "IFB_LLHBINARY.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    sget-object v0, Lorg/jpos/iso/LiteralBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralBinaryInterpreter;

    sget-object v1, Lorg/jpos/iso/BinaryPrefixer;->B:Lorg/jpos/iso/BinaryPrefixer;

    invoke-direct {p0, v0, v1}, Lorg/jpos/iso/ISOBinaryFieldPackager;-><init>(Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 38
    sget-object v0, Lorg/jpos/iso/LiteralBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralBinaryInterpreter;

    sget-object v1, Lorg/jpos/iso/BinaryPrefixer;->B:Lorg/jpos/iso/BinaryPrefixer;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jpos/iso/ISOBinaryFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V

    .line 39
    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFB_LLHBINARY;->checkLength(II)V

    .line 40
    return-void
.end method


# virtual methods
.method public setLength(I)V
    .locals 1
    .param p1, "len"    # I

    .line 44
    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFB_LLHBINARY;->checkLength(II)V

    .line 45
    invoke-super {p0, p1}, Lorg/jpos/iso/ISOBinaryFieldPackager;->setLength(I)V

    .line 46
    return-void
.end method
