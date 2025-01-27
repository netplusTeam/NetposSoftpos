.class public Lorg/jpos/tlv/GenericTagSequence;
.super Lorg/jpos/tlv/TagSequenceBase;
.source "GenericTagSequence.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/jpos/tlv/TagSequenceBase;-><init>()V

    .line 30
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lorg/jpos/tlv/TagSequenceBase;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected createBinaryTagValuePair(Ljava/lang/String;[B)Lorg/jpos/tlv/TagValue;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/jpos/tlv/BinaryTagValue;

    invoke-direct {v0, p1, p2}, Lorg/jpos/tlv/BinaryTagValue;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method protected createLiteralTagValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/tlv/TagValue;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/jpos/tlv/LiteralTagValue;

    invoke-direct {v0, p1, p2}, Lorg/jpos/tlv/LiteralTagValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createTagValueSequence(Ljava/lang/String;)Lorg/jpos/tlv/TagSequence;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 38
    new-instance v0, Lorg/jpos/tlv/GenericTagSequence;

    invoke-direct {v0, p1}, Lorg/jpos/tlv/GenericTagSequence;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
