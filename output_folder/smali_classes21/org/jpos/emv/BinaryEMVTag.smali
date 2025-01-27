.class public Lorg/jpos/emv/BinaryEMVTag;
.super Lorg/jpos/emv/EMVTag;
.source "BinaryEMVTag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jpos/emv/EMVTag<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/jpos/emv/EMVProprietaryTagType;Ljava/lang/Integer;Lorg/jpos/tlv/TLVDataFormat;[B)V
    .locals 0
    .param p1, "tagType"    # Lorg/jpos/emv/EMVProprietaryTagType;
    .param p2, "tagNumber"    # Ljava/lang/Integer;
    .param p3, "dataFormat"    # Lorg/jpos/tlv/TLVDataFormat;
    .param p4, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jpos/emv/EMVTag;-><init>(Lorg/jpos/emv/EMVProprietaryTagType;Ljava/lang/Integer;Lorg/jpos/tlv/TLVDataFormat;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/jpos/emv/EMVProprietaryTagType;Ljava/lang/Integer;[B)V
    .locals 0
    .param p1, "tagType"    # Lorg/jpos/emv/EMVProprietaryTagType;
    .param p2, "tagNumber"    # Ljava/lang/Integer;
    .param p3, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/emv/EMVTag;-><init>(Lorg/jpos/emv/EMVProprietaryTagType;Ljava/lang/Integer;Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/jpos/emv/EMVStandardTagType;[B)V
    .locals 0
    .param p1, "tagType"    # Lorg/jpos/emv/EMVStandardTagType;
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/jpos/emv/EMVTag;-><init>(Lorg/jpos/emv/EMVStandardTagType;Ljava/lang/Object;)V

    .line 33
    return-void
.end method
