.class public Lorg/jpos/tlv/packager/BinaryHexTaggedSequencePackager;
.super Lorg/jpos/tlv/packager/TaggedSequencePackager;
.source "BinaryHexTaggedSequencePackager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/tlv/packager/BinaryHexTaggedSequencePackager$TagPackager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lorg/jpos/tlv/packager/TaggedSequencePackager;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method protected getTagPackager()Lorg/jpos/iso/ISOFieldPackager;
    .locals 3

    .line 37
    new-instance v0, Lorg/jpos/tlv/packager/BinaryHexTaggedSequencePackager$TagPackager;

    iget-object v1, p0, Lorg/jpos/tlv/packager/BinaryHexTaggedSequencePackager;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Tag"

    invoke-direct {v0, v1, v2}, Lorg/jpos/tlv/packager/BinaryHexTaggedSequencePackager$TagPackager;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
