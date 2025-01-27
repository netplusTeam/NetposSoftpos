.class public Lorg/jpos/iso/IFE_LBINARY;
.super Lorg/jpos/iso/ISOBinaryFieldPackager;
.source "IFE_LBINARY.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    sget-object v0, Lorg/jpos/iso/LiteralBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralBinaryInterpreter;

    sget-object v1, Lorg/jpos/iso/EbcdicPrefixer;->L:Lorg/jpos/iso/EbcdicPrefixer;

    invoke-direct {p0, v0, v1}, Lorg/jpos/iso/ISOBinaryFieldPackager;-><init>(Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V

    .line 38
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 45
    sget-object v0, Lorg/jpos/iso/LiteralBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralBinaryInterpreter;

    sget-object v1, Lorg/jpos/iso/EbcdicPrefixer;->L:Lorg/jpos/iso/EbcdicPrefixer;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jpos/iso/ISOBinaryFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V

    .line 46
    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFE_LBINARY;->checkLength(II)V

    .line 47
    return-void
.end method


# virtual methods
.method public setLength(I)V
    .locals 1
    .param p1, "len"    # I

    .line 51
    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFE_LBINARY;->checkLength(II)V

    .line 52
    invoke-super {p0, p1}, Lorg/jpos/iso/ISOBinaryFieldPackager;->setLength(I)V

    .line 53
    return-void
.end method
