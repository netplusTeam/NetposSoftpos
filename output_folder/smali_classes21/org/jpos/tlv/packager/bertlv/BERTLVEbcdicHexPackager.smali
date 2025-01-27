.class public Lorg/jpos/tlv/packager/bertlv/BERTLVEbcdicHexPackager;
.super Lorg/jpos/tlv/packager/bertlv/DefaultICCBERTLVPackager;
.source "BERTLVEbcdicHexPackager.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/jpos/tlv/packager/bertlv/DefaultICCBERTLVPackager;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method protected getLengthInterpreter()Lorg/jpos/iso/BinaryInterpreter;
    .locals 1

    .line 46
    sget-object v0, Lorg/jpos/iso/EbcdicHexInterpreter;->INSTANCE:Lorg/jpos/iso/EbcdicHexInterpreter;

    return-object v0
.end method

.method protected getTagInterpreter()Lorg/jpos/iso/BinaryInterpreter;
    .locals 1

    .line 41
    sget-object v0, Lorg/jpos/iso/EbcdicHexInterpreter;->INSTANCE:Lorg/jpos/iso/EbcdicHexInterpreter;

    return-object v0
.end method

.method protected getValueInterpreter()Lorg/jpos/iso/BinaryInterpreter;
    .locals 1

    .line 51
    sget-object v0, Lorg/jpos/iso/EbcdicHexInterpreter;->INSTANCE:Lorg/jpos/iso/EbcdicHexInterpreter;

    return-object v0
.end method
