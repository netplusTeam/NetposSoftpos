.class public interface abstract Lorg/jpos/emv/EMVTagType;
.super Ljava/lang/Object;
.source "EMVTagType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/emv/EMVTagType$VariableByteLength;,
        Lorg/jpos/emv/EMVTagType$FixedByteLength;,
        Lorg/jpos/emv/EMVTagType$VariableDiscreteByteLength;,
        Lorg/jpos/emv/EMVTagType$ByteLength;,
        Lorg/jpos/emv/EMVTagType$VariableDiscreteDataLength;,
        Lorg/jpos/emv/EMVTagType$VariableDataLength;,
        Lorg/jpos/emv/EMVTagType$FixedDataLength;,
        Lorg/jpos/emv/EMVTagType$ProprietaryDataLength;,
        Lorg/jpos/emv/EMVTagType$DataLength;,
        Lorg/jpos/emv/EMVTagType$DataSource;
    }
.end annotation


# virtual methods
.method public abstract getByteLength()Lorg/jpos/emv/EMVTagType$ByteLength;
.end method

.method public abstract getDataLength()Lorg/jpos/emv/EMVTagType$DataLength;
.end method

.method public abstract getDataType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/emv/ProprietaryFormatException;
        }
    .end annotation
.end method

.method public abstract getFormat()Lorg/jpos/tlv/TLVDataFormat;
.end method

.method public abstract getSource()Lorg/jpos/emv/EMVTagType$DataSource;
.end method

.method public abstract getTagDescription()Ljava/lang/String;
.end method

.method public abstract getTagNumber()I
.end method

.method public abstract getTagNumberBytes()[B
.end method

.method public abstract getTagNumberHex()Ljava/lang/String;
.end method

.method public abstract getTagShortDescription()Ljava/lang/String;
.end method

.method public abstract isProprietaryFormat()Z
.end method

.method public abstract isProprietaryTag()Z
.end method
