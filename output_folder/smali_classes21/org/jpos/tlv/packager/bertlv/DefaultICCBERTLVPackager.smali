.class public abstract Lorg/jpos/tlv/packager/bertlv/DefaultICCBERTLVPackager;
.super Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;
.source "DefaultICCBERTLVPackager.java"


# static fields
.field private static DEFAULT_TAG_FORMAT_MAPPER:Lorg/jpos/tlv/packager/bertlv/BERTLVFormatMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Lorg/jpos/tlv/packager/bertlv/DefaultICCBERTLVFormatMapper;->INSTANCE:Lorg/jpos/tlv/packager/bertlv/DefaultICCBERTLVFormatMapper;

    sput-object v0, Lorg/jpos/tlv/packager/bertlv/DefaultICCBERTLVPackager;->DEFAULT_TAG_FORMAT_MAPPER:Lorg/jpos/tlv/packager/bertlv/BERTLVFormatMapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;-><init>()V

    .line 51
    return-void
.end method

.method public static setTagFormatMapper(Lorg/jpos/tlv/packager/bertlv/BERTLVFormatMapper;)V
    .locals 0
    .param p0, "tagFormatMapper"    # Lorg/jpos/tlv/packager/bertlv/BERTLVFormatMapper;

    .line 41
    sput-object p0, Lorg/jpos/tlv/packager/bertlv/DefaultICCBERTLVPackager;->DEFAULT_TAG_FORMAT_MAPPER:Lorg/jpos/tlv/packager/bertlv/BERTLVFormatMapper;

    .line 42
    return-void
.end method


# virtual methods
.method protected getTagFormatMapper()Lorg/jpos/tlv/packager/bertlv/BERTLVFormatMapper;
    .locals 1

    .line 46
    sget-object v0, Lorg/jpos/tlv/packager/bertlv/DefaultICCBERTLVPackager;->DEFAULT_TAG_FORMAT_MAPPER:Lorg/jpos/tlv/packager/bertlv/BERTLVFormatMapper;

    return-object v0
.end method
