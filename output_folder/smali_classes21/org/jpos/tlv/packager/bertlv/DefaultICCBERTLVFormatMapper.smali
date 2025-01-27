.class public Lorg/jpos/tlv/packager/bertlv/DefaultICCBERTLVFormatMapper;
.super Ljava/lang/Object;
.source "DefaultICCBERTLVFormatMapper.java"

# interfaces
.implements Lorg/jpos/tlv/packager/bertlv/BERTLVFormatMapper;


# static fields
.field public static INSTANCE:Lorg/jpos/tlv/packager/bertlv/DefaultICCBERTLVFormatMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/jpos/tlv/packager/bertlv/DefaultICCBERTLVFormatMapper;

    invoke-direct {v0}, Lorg/jpos/tlv/packager/bertlv/DefaultICCBERTLVFormatMapper;-><init>()V

    sput-object v0, Lorg/jpos/tlv/packager/bertlv/DefaultICCBERTLVFormatMapper;->INSTANCE:Lorg/jpos/tlv/packager/bertlv/DefaultICCBERTLVFormatMapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTagType(Ljava/lang/Integer;)Lorg/jpos/emv/EMVTagType;
    .locals 1
    .param p1, "tagNumber"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/emv/UnknownTagNumberException;
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/jpos/emv/EMVStandardTagType;->isProprietaryTag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Lorg/jpos/tlv/packager/bertlv/DefaultICCBERTLVFormatMapper;->getProprietaryTagType(Ljava/lang/Integer;)Lorg/jpos/emv/EMVProprietaryTagType;

    move-result-object v0

    return-object v0

    .line 40
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/jpos/emv/EMVStandardTagType;->forCode(I)Lorg/jpos/emv/EMVStandardTagType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFormat(Ljava/lang/Integer;)Lorg/jpos/tlv/TLVDataFormat;
    .locals 2
    .param p1, "tagNumber"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 48
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jpos/tlv/packager/bertlv/DefaultICCBERTLVFormatMapper;->getTagType(Ljava/lang/Integer;)Lorg/jpos/emv/EMVTagType;

    move-result-object v0
    :try_end_0
    .catch Lorg/jpos/emv/UnknownTagNumberException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v0, "tagType":Lorg/jpos/emv/EMVTagType;
    nop

    .line 52
    invoke-interface {v0}, Lorg/jpos/emv/EMVTagType;->getFormat()Lorg/jpos/tlv/TLVDataFormat;

    move-result-object v1

    return-object v1

    .line 49
    .end local v0    # "tagType":Lorg/jpos/emv/EMVTagType;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Lorg/jpos/emv/UnknownTagNumberException;
    new-instance v1, Lorg/jpos/iso/ISOException;

    invoke-direct {v1, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getProprietaryTagType(Ljava/lang/Integer;)Lorg/jpos/emv/EMVProprietaryTagType;
    .locals 2
    .param p1, "tagNumber"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/emv/UnknownTagNumberException;
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/jpos/emv/UnknownTagNumberException;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/emv/UnknownTagNumberException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
