.class public Lorg/jpos/iso/IFE_LLLEBINARY;
.super Lorg/jpos/iso/ISOBinaryFieldPackager;
.source "IFE_LLLEBINARY.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    sget-object v0, Lorg/jpos/iso/EbcdicBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/EbcdicBinaryInterpreter;

    sget-object v1, Lorg/jpos/iso/EbcdicPrefixer;->LLL:Lorg/jpos/iso/EbcdicPrefixer;

    invoke-direct {p0, v0, v1}, Lorg/jpos/iso/ISOBinaryFieldPackager;-><init>(Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 42
    sget-object v0, Lorg/jpos/iso/EbcdicBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/EbcdicBinaryInterpreter;

    sget-object v1, Lorg/jpos/iso/EbcdicPrefixer;->LLL:Lorg/jpos/iso/EbcdicPrefixer;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jpos/iso/ISOBinaryFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V

    .line 43
    const/16 v0, 0x3e7

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFE_LLLEBINARY;->checkLength(II)V

    .line 44
    return-void
.end method


# virtual methods
.method public setLength(I)V
    .locals 1
    .param p1, "len"    # I

    .line 48
    const/16 v0, 0x3e7

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFE_LLLEBINARY;->checkLength(II)V

    .line 49
    invoke-super {p0, p1}, Lorg/jpos/iso/ISOBinaryFieldPackager;->setLength(I)V

    .line 50
    return-void
.end method
