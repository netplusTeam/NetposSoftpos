.class public Lorg/jpos/emv/EMVTagSequence;
.super Lorg/jpos/tlv/TagSequenceBase;
.source "EMVTagSequence.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/jpos/tlv/TagSequenceBase;-><init>()V

    .line 31
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Lorg/jpos/tlv/TagSequenceBase;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected createBinaryTagValuePair(Ljava/lang/String;[B)Lorg/jpos/emv/EMVTag;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 54
    :try_start_0
    new-instance v0, Lorg/jpos/emv/BinaryEMVTag;

    invoke-static {p1}, Lorg/jpos/emv/EMVStandardTagType;->forHexCode(Ljava/lang/String;)Lorg/jpos/emv/EMVStandardTagType;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/jpos/emv/BinaryEMVTag;-><init>(Lorg/jpos/emv/EMVStandardTagType;[B)V
    :try_end_0
    .catch Lorg/jpos/emv/UnknownTagNumberException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Lorg/jpos/emv/UnknownTagNumberException;
    new-instance v1, Lorg/jpos/iso/ISOException;

    invoke-direct {v1, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected bridge synthetic createBinaryTagValuePair(Ljava/lang/String;[B)Lorg/jpos/tlv/TagValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/jpos/emv/EMVTagSequence;->createBinaryTagValuePair(Ljava/lang/String;[B)Lorg/jpos/emv/EMVTag;

    move-result-object p1

    return-object p1
.end method

.method protected createLiteralTagValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/emv/EMVTag;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 45
    :try_start_0
    new-instance v0, Lorg/jpos/emv/LiteralEMVTag;

    invoke-static {p1}, Lorg/jpos/emv/EMVStandardTagType;->forHexCode(Ljava/lang/String;)Lorg/jpos/emv/EMVStandardTagType;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/jpos/emv/LiteralEMVTag;-><init>(Lorg/jpos/emv/EMVStandardTagType;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jpos/emv/UnknownTagNumberException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Lorg/jpos/emv/UnknownTagNumberException;
    new-instance v1, Lorg/jpos/iso/ISOException;

    invoke-direct {v1, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected bridge synthetic createLiteralTagValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/tlv/TagValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/jpos/emv/EMVTagSequence;->createLiteralTagValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/emv/EMVTag;

    move-result-object p1

    return-object p1
.end method

.method protected createTagValueSequence(Ljava/lang/String;)Lorg/jpos/emv/EMVTagSequence;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 39
    new-instance v0, Lorg/jpos/emv/EMVTagSequence;

    invoke-direct {v0, p1}, Lorg/jpos/emv/EMVTagSequence;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic createTagValueSequence(Ljava/lang/String;)Lorg/jpos/tlv/TagSequence;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/jpos/emv/EMVTagSequence;->createTagValueSequence(Ljava/lang/String;)Lorg/jpos/emv/EMVTagSequence;

    move-result-object p1

    return-object p1
.end method
