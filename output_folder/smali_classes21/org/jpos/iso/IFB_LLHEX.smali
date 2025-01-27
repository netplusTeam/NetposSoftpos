.class public Lorg/jpos/iso/IFB_LLHEX;
.super Lorg/jpos/iso/ISOBinaryFieldPackager;
.source "IFB_LLHEX.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    sget-object v0, Lorg/jpos/iso/LiteralBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralBinaryInterpreter;

    sget-object v1, Lorg/jpos/iso/HexNibblesPrefixer;->LL:Lorg/jpos/iso/HexNibblesPrefixer;

    invoke-direct {p0, v0, v1}, Lorg/jpos/iso/ISOBinaryFieldPackager;-><init>(Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V

    .line 30
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 33
    sget-object v0, Lorg/jpos/iso/LiteralBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralBinaryInterpreter;

    sget-object v1, Lorg/jpos/iso/HexNibblesPrefixer;->LL:Lorg/jpos/iso/HexNibblesPrefixer;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jpos/iso/ISOBinaryFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V

    .line 34
    const/16 v0, 0x63

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFB_LLHEX;->checkLength(II)V

    .line 35
    return-void
.end method


# virtual methods
.method public setLength(I)V
    .locals 1
    .param p1, "len"    # I

    .line 37
    const/16 v0, 0x63

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFB_LLHEX;->checkLength(II)V

    .line 38
    invoke-super {p0, p1}, Lorg/jpos/iso/ISOBinaryFieldPackager;->setLength(I)V

    .line 39
    return-void
.end method
